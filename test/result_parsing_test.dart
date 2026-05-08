import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ElasticResult.fromJson parsing', () {
    test('ignores non-map document fields', () {
      final result = ElasticResult.fromJson({
        'title': 'unexpected-shape',
        '_meta': {'score': 1.0},
      });

      expect(result.data ?? const <String, dynamic>{}, isEmpty);
      expect(
        result.snippets ?? const <String, ElasticResultSnippet>{},
        isEmpty,
      );
      expect(result.score, 1.0);
    });

    test('coerces non-string snippets without throwing', () {
      final result = ElasticResult.fromJson({
        'title': {'snippet': 123, 'raw': null},
        '_meta': {'score': 2.0},
      });

      expect(result.snippets?['title']?.fullText, '123');
      expect(result.snippets?['title']?.highlights, isEmpty);
    });

    test('keeps highlight extraction for valid snippets', () {
      final result = ElasticResult.fromJson({
        'description': {'snippet': 'A <em>great</em> park'},
        '_meta': {'score': 3.0},
      });

      expect(result.snippets?['description']?.fullText, 'A great park');
      expect(result.snippets?['description']?.highlights, ['great']);
    });

    test('supports map values with non-string keys in document fields', () {
      final result = ElasticResult.fromJson({
        'title': {'raw': 'Yosemite', 1: 'ignored'},
        '_meta': {'score': 4.0},
      });

      expect(result.data?['title'], 'Yosemite');
      expect(result.score, 4.0);
    });
  });

  group('Result model fromJson', () {
    test('parses ElasticResultSnippet from JSON', () {
      final snippet = ElasticResultSnippet.fromJson({
        'fullText': 'A great park',
        'textParts': ['A ', 'great', ' park'],
        'highlights': ['great'],
      });

      expect(snippet.fullText, 'A great park');
      expect(snippet.highlights, ['great']);
    });

    test('parses suggestion models from JSON', () {
      final document = ElasticSuggestionDocument.fromJson({
        'suggestion': 'mountain',
      });
      final result = ElasticSuggestionResult.fromJson({
        'documents': [
          {'suggestion': 'mountain'},
        ],
      });

      expect(document.suggestion, 'mountain');
      expect(result.documents?.first.suggestion, 'mountain');
    });

    test('parses response meta when request_id is null', () {
      final response = ElasticResponse.fromJson({
        'meta': {
          'request_id': null,
          'warnings': [],
          'alerts': [],
          'page': {
            'current': 1,
            'size': 10,
            'total_pages': 1,
            'total_results': 0,
          },
        },
        'results': [],
      });

      expect(response.meta.requestId, isEmpty);
    });

    test('parses suggestion response when request_id is null', () {
      final response = ElasticQuerySuggestionResponse.fromJson({
        'results': {
          'documents': [
            {'suggestion': 'mountain'},
          ],
        },
        'meta': {'request_id': null},
      });

      expect(response.meta.requestId, isEmpty);
    });

    test('parses search explain response when request_id is null', () {
      final response = ElasticSearchExplainResponse.fromJson({
        'meta': {
          'request_id': null,
          'warnings': [],
          'alerts': [],
          'precision': 2,
          'engine': {'name': 'parks', 'type': 'default'},
        },
        'query_string': 'GET engine/_search',
        'query_body': {
          'query': {'bool': {}},
        },
      });

      expect(response.meta.requestId, isEmpty);
    });
  });
}
