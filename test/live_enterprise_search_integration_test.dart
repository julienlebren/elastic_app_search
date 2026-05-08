import 'dart:io';

import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

const _endPointEnv = 'ELASTIC_APP_SEARCH_ENDPOINT';
const _privateKeyEnv = 'ELASTIC_APP_SEARCH_PRIVATE_KEY';
const _enginePrefixEnv = 'ELASTIC_APP_SEARCH_TEST_ENGINE_PREFIX';

String? _readRequiredEnv(String key) {
  final value = Platform.environment[key]?.trim();
  if (value == null || value.isEmpty) return null;
  return value;
}

String _sanitizeEnginePrefix(String value) {
  final cleaned = value
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9-]'), '-')
      .replaceAll(RegExp(r'-{2,}'), '-')
      .replaceAll(RegExp(r'^-+|-+$'), '');

  if (cleaned.isEmpty) return 'integration';
  return cleaned.length <= 32 ? cleaned : cleaned.substring(0, 32);
}

Future<T> _retryUntil<T>({
  required Future<T> Function() run,
  required bool Function(T value) accept,
  int maxAttempts = 12,
  Duration delay = const Duration(seconds: 1),
}) async {
  late T last;
  for (var attempt = 1; attempt <= maxAttempts; attempt++) {
    last = await run();
    if (accept(last)) return last;
    if (attempt < maxAttempts) {
      await Future<void>.delayed(delay);
    }
  }

  return last;
}

void main() {
  final endpoint = _readRequiredEnv(_endPointEnv);
  final privateKey = _readRequiredEnv(_privateKeyEnv);

  if (endpoint == null || privateKey == null) {
    test(
      'live integration tests are skipped without required environment',
      () {
        expect(endpoint, isNull);
        expect(privateKey, isNull);
      },
      skip:
          'Set $_endPointEnv and $_privateKeyEnv to run live Enterprise Search integration tests.',
    );
    return;
  }

  group('Live Enterprise Search integration', () {
    late ElasticAppSearch service;
    late ElasticEngine engine;
    late String engineName;

    setUpAll(() async {
      service = ElasticAppSearch(endPoint: endpoint, searchKey: privateKey);
      final rawPrefix = Platform.environment[_enginePrefixEnv] ?? 'integration';
      final prefix = _sanitizeEnginePrefix(rawPrefix);
      final suffix = DateTime.now().microsecondsSinceEpoch;
      engineName = '$prefix-$suffix';

      final created = await service.createEngine(
        name: engineName,
        language: 'en',
      );
      expect(created.name, engineName);
      engine = service.engine(engineName);
    });

    tearDownAll(() async {
      try {
        await service.deleteEngine(engineName);
      } catch (_) {
        // Best-effort cleanup in case the test already removed the engine.
      }
    });

    test('engine, documents, search, and account APIs round-trip', () async {
      final info = await engine.info();
      expect(info.name, engineName);

      final indexResults = await engine.indexDocuments([
        {
          'id': 'doc-live-1',
          'title': 'Yosemite mountains',
          'category': 'park',
          'visitors': 4200000,
        },
        {
          'id': 'doc-live-2',
          'title': 'Rocky mountain trails',
          'category': 'park',
          'visitors': 4800000,
        },
      ]);
      expect(indexResults, hasLength(2));
      expect(indexResults.every((item) => item.accepted), isTrue);

      final getDocs = await _retryUntil<List<Map<String, dynamic>?>>(
        run: () => engine.getDocuments(const ['doc-live-1', 'doc-live-2']),
        accept: (docs) => docs.every((doc) => doc != null),
      );
      expect(getDocs.first?['id'], 'doc-live-1');

      final response = await _retryUntil<ElasticResponse>(
        run: () => engine.query('mountain').page(1, size: 10).get(),
        accept: (value) => value.results.isNotEmpty,
      );
      expect(response.results, isNotEmpty);

      final suggestions = await engine
          .suggestionQuery('moun')
          .searchField('title', weight: 8)
          .withSize(5)
          .get();
      expect(suggestions.results.documents, isNotNull);

      final list = await service.listEngines(
        page: const ElasticPageRequest(current: 1, size: 25),
      );
      expect(list.results.any((summary) => summary.name == engineName), isTrue);
    });
  });
}
