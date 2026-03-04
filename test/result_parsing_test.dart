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
  });
}
