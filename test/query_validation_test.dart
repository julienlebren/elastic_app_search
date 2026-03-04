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
}
