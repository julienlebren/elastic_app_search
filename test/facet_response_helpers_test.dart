import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ElasticFacet helpers', () {
    test('count returns value only for single data entry', () {
      final single = ElasticFacet(
        type: ElasticFacetType.value,
        data: [ElasticFacetData(value: 'California', count: 3)],
      );
      final multiple = ElasticFacet(
        type: ElasticFacetType.value,
        data: [
          ElasticFacetData(value: 'California', count: 3),
          ElasticFacetData(value: 'Nevada', count: 2),
        ],
      );

      expect(single.count, 3);
      expect(multiple.count, isNull);
    });

    test('countForValue and countForValues aggregate expected counts', () {
      final facet = ElasticFacet(
        type: ElasticFacetType.value,
        data: [
          ElasticFacetData(value: 'California', count: 3),
          ElasticFacetData(value: 'Nevada', count: 2),
          ElasticFacetData(value: 'Utah', count: 4),
        ],
      );

      expect(facet.countForValue('California'), 3);
      expect(facet.countForValue('Unknown'), 0);
      expect(facet.countForValues(['California', 'Utah']), 7);
    });

    test('countForRange matches range bounds', () {
      final facet = ElasticFacet(
        type: ElasticFacetType.range,
        data: [
          ElasticFacetData(from: '10.0', to: '20.0', count: 5),
          ElasticFacetData(from: '20.0', to: '30.0', count: 8),
        ],
      );

      expect(facet.countForRange(from: 10.0, to: 20.0), 5);
      expect(facet.countForRange(from: 30.0, to: 40.0), 0);
    });
  });

  group('ElasticResponse helpers', () {
    test('facets(field) and facet(field) expose expected facet values', () {
      final oneFacet = ElasticFacet(
        type: ElasticFacetType.value,
        data: [ElasticFacetData(value: 'California', count: 3)],
      );
      final response = ElasticResponse(
        meta: ElasticResponseMeta(
          requestId: 'req-1',
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
        rawFacets: {
          'states': [oneFacet],
          'multiple': [
            oneFacet,
            ElasticFacet(
              type: ElasticFacetType.value,
              data: [ElasticFacetData(value: 'Nevada', count: 2)],
            ),
          ],
        },
      );

      expect(response.facets('states')?.length, 1);
      expect(response.facet('states')?.countForValue('California'), 3);
      expect(response.facet('multiple'), isNull);
      expect(response.facets('missing'), isNull);
    });
  });
}
