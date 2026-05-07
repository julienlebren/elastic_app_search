import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ElasticEngine engine;

  setUp(() {
    final service = ElasticAppSearch(
      endPoint: 'https://example.com',
      searchKey: 'search-key',
    );
    engine = service.engine('parks');
  });

  group('Query serialization regressions', () {
    test('geo facet defaults unit to meters', () {
      final json = engine
          .query('mountains')
          .facet(
            'location',
            isFurtherThanOrAt: 1,
            from: const LatLong(37.7749, -122.4194),
          )
          .toJson();

      final facets = json['facets'] as Map<String, dynamic>;
      final locationFacet = facets['location'] as Map<String, dynamic>;

      expect(locationFacet['unit'], 'm');
    });

    test('range facets keep numeric bounds as numeric values', () {
      final json = engine
          .query('mountains')
          .facet('visitors', isGreaterThanOrEqualTo: 10, isLessThan: 20)
          .toJson();

      final facets = json['facets'] as Map<String, dynamic>;
      final visitorsFacet = facets['visitors'] as Map<String, dynamic>;
      final ranges = visitorsFacet['ranges'] as List<dynamic>;
      final range = ranges.first as Map<String, dynamic>;

      expect(range['from'], isA<num>());
      expect(range['to'], isA<num>());
      expect(range['from'], 10);
      expect(range['to'], 20);
    });

    test('filters omit empty any/none buckets when unused', () {
      final json = engine
          .query('mountains')
          .filter('states', isEqualTo: 'California')
          .toJson();

      final filters = json['filters'] as Map<String, dynamic>;
      expect(filters['all'], {'states': 'California'});
      expect(filters.containsKey('any'), isFalse);
      expect(filters.containsKey('none'), isFalse);
    });
  });

  group('Response model toJson regressions', () {
    test('ElasticResponse.toJson materializes nested models', () {
      final response = ElasticResponse(
        meta: ElasticResponseMeta(
          requestId: 'id',
          warnings: const [],
          alerts: const [],
          page: ElasticResponseMetaPage(
            current: 1,
            size: 10,
            totalPages: 1,
            totalResults: 1,
          ),
        ),
        results: [ElasticResult(meta: ElasticResultMeta(score: 1.0))],
      );

      final json = response.toJson();
      expect(json['meta'], isA<Map<String, dynamic>>());
      expect(json['results'], isA<List<dynamic>>());
      expect(
        (json['results'] as List<dynamic>).first,
        isA<Map<String, dynamic>>(),
      );
    });

    test(
      'ElasticQuerySuggestionResponse.toJson materializes nested models',
      () {
        final response = ElasticQuerySuggestionResponse(
          results: ElasticSuggestionResult(
            documents: [ElasticSuggestionDocument(suggestion: 'mountain')],
          ),
        );

        final json = response.toJson();
        expect(json['results'], isA<Map<String, dynamic>>());
        final results = json['results'] as Map<String, dynamic>;
        expect(results['documents'], isA<List<dynamic>>());
        expect(
          (results['documents'] as List<dynamic>).first,
          isA<Map<String, dynamic>>(),
        );
      },
    );
  });
}
