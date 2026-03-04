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

  group('ElasticQuery validation', () {
    test('precision validates range', () {
      expect(() => engine.query('mountains').precision(0), throwsRangeError);
      expect(() => engine.query('mountains').precision(12), throwsRangeError);
    });

    test('page validates current and size ranges', () {
      expect(() => engine.query('mountains').page(0), throwsRangeError);
      expect(
        () => engine.query('mountains').page(1, size: -1),
        throwsRangeError,
      );
      expect(
        () => engine.query('mountains').page(101, size: 10),
        throwsRangeError,
      );
      expect(
        () => engine.query('mountains').page(1, size: 1001),
        throwsRangeError,
      );
    });

    test('searchField validates weight range', () {
      expect(
        () => engine.query('mountains').searchField('title', weight: 0),
        throwsRangeError,
      );
      expect(
        () => engine.query('mountains').searchField('title', weight: 11),
        throwsRangeError,
      );
    });

    test('resultField validates raw/snippet sizes', () {
      expect(
        () => engine.query('mountains').resultField('title', rawSize: 19),
        throwsRangeError,
      );
      expect(
        () => engine
            .query('mountains')
            .resultField('description', snippetSize: 19),
        throwsRangeError,
      );
    });

    test('filter validates required conditions and geo center', () {
      expect(
        () => engine.query('mountains').filter('states'),
        throwsArgumentError,
      );
      expect(
        () =>
            engine.query('mountains').filter('location', isFurtherThanOrAt: 10),
        throwsArgumentError,
      );
    });

    test('facet validates range/geo arguments', () {
      expect(
        () => engine
            .query('mountains')
            .facet('visitors', isGreaterThanOrEqualTo: Object()),
        throwsArgumentError,
      );
      expect(
        () =>
            engine.query('mountains').facet('location', isFurtherThanOrAt: 10),
        throwsArgumentError,
      );
    });

    test('disjunctiveFacet requires an existing facet', () {
      expect(
        () => engine.query('mountains').disjunctiveFacet('states'),
        throwsStateError,
      );
    });

    test('tag validates max length', () {
      expect(
        () => engine.query('mountains').tag('x' * 65),
        throwsArgumentError,
      );
    });

    test('tag validates max number of tags', () {
      var query = engine.query('mountains');
      for (var i = 0; i < 16; i++) {
        query = query.tag('tag-$i');
      }

      expect(() => query.tag('tag-over-limit'), throwsRangeError);
    });

    test('group validates size range', () {
      expect(
        () => engine.query('mountains').group('category', size: 0),
        throwsRangeError,
      );
      expect(
        () => engine.query('mountains').group('category', size: 11),
        throwsRangeError,
      );
    });
  });

  group('ElasticSuggestionsQuery validation', () {
    test('searchField validates weight range', () {
      expect(
        () => engine.suggestionQuery('mount').searchField('title', weight: 0),
        throwsRangeError,
      );
      expect(
        () => engine.suggestionQuery('mount').searchField('title', weight: 11),
        throwsRangeError,
      );
    });

    test('size validates range', () {
      expect(() => engine.suggestionQuery('mount').size(0), throwsRangeError);
      expect(
        () => engine.suggestionQuery('mount').size(1001),
        throwsRangeError,
      );
    });
  });

  group('Query execution preconditions', () {
    test('search query requires an engine at execution time', () {
      final query = ElasticQuery.fromJson({'query': 'mountains'});
      expect(() => query.get(), throwsStateError);
    });

    test('suggestion query requires an engine at execution time', () {
      final query = ElasticSuggestionsQuery.fromJson({'query': 'mount'});
      expect(() => query.get(), throwsStateError);
    });
  });

  group('Deserialization validation', () {
    test('search query validates precision at runtime', () {
      expect(
        () => ElasticQuery.fromJson({'query': 'mountains', 'precision': 12}),
        throwsRangeError,
      );
    });

    test('search query validates page values at runtime', () {
      expect(
        () => ElasticQuery.fromJson({
          'query': 'mountains',
          'page': {'current': 0, 'size': 10},
        }),
        throwsRangeError,
      );
      expect(
        () => ElasticQuery.fromJson({
          'query': 'mountains',
          'page': {'current': 1, 'size': 1001},
        }),
        throwsRangeError,
      );
    });

    test('search query validates analytics tags at runtime', () {
      expect(
        () => ElasticQuery.fromJson({
          'query': 'mountains',
          'analytics': {'tags': List.generate(17, (i) => 'tag-$i')},
        }),
        throwsRangeError,
      );
    });

    test('search query validates search field weights at runtime', () {
      expect(
        () => ElasticQuery.fromJson({
          'query': 'mountains',
          'search_fields': {
            'title': {'weight': 0},
          },
        }),
        throwsRangeError,
      );
    });

    test('search query validates group size at runtime', () {
      expect(
        () => ElasticQuery.fromJson({
          'query': 'mountains',
          'group': {'field': 'states', 'size': 0},
        }),
        throwsRangeError,
      );
    });

    test('search query validates geo filter center at runtime', () {
      expect(
        () => ElasticQuery.fromJson({
          'query': 'mountains',
          'filters': {
            'all': [
              {
                'location': {'unit': 'mi', 'from': 1},
              },
            ],
          },
        }),
        throwsArgumentError,
      );
    });

    test('search query validates geo coordinates at runtime', () {
      expect(
        () => ElasticQuery.fromJson({
          'query': 'mountains',
          'filters': {
            'all': [
              {
                'location': {'center': '91,-122.4194', 'unit': 'mi', 'from': 1},
              },
            ],
          },
        }),
        throwsRangeError,
      );
    });

    test('suggestion query validates size at runtime', () {
      expect(
        () => ElasticSuggestionsQuery.fromJson({'query': 'mount', 'size': 0}),
        throwsRangeError,
      );
    });

    test('suggestion query validates search field weights at runtime', () {
      expect(
        () => ElasticSuggestionsQuery.fromJson({
          'query': 'mount',
          'search_fields': {
            'title': {'weight': 11},
          },
        }),
        throwsRangeError,
      );
    });
  });
}
