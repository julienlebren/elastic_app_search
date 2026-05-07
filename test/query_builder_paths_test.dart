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

  group('Query builder serialization paths', () {
    test('filterAny and filterNone are serialized in dedicated buckets', () {
      final json = engine
          .query('mountains')
          .filterAny('states', whereIn: ['California', 'Nevada'])
          .filterNone('world_heritage_site', isEqualTo: true)
          .toJson();

      final filters = json['filters'] as Map<String, dynamic>;
      expect(filters['any'], {
        'states': ['California', 'Nevada'],
      });
      expect(filters['none'], {'world_heritage_site': true});
    });

    test('numeric range filter is serialized as numbers', () {
      final json = engine
          .query('mountains')
          .filter('visitors', isGreaterThanOrEqualTo: 10, isLessThan: 20)
          .toJson();

      final filters = json['filters'] as Map<String, dynamic>;
      final all = filters['all'] as Map<String, dynamic>;
      final visitors = all['visitors'] as Map<String, dynamic>;

      expect(visitors['from'], 10.0);
      expect(visitors['to'], 20.0);
      expect(visitors['from'], isA<num>());
      expect(visitors['to'], isA<num>());
    });

    test('date range filter is serialized as UTC strings', () {
      final start = DateTime.utc(2024, 1, 1, 0, 0, 0);
      final end = DateTime.utc(2024, 12, 31, 0, 0, 0);
      final json = engine
          .query('mountains')
          .filter('created_at', isGreaterThanOrEqualTo: start, isLessThan: end)
          .toJson();

      final filters = json['filters'] as Map<String, dynamic>;
      final all = filters['all'] as Map<String, dynamic>;
      final createdAt = all['created_at'] as Map<String, dynamic>;

      expect(createdAt['from'], start.toUtc().toIso8601String());
      expect(createdAt['to'], end.toUtc().toIso8601String());
      expect(createdAt['from'], isA<String>());
      expect(createdAt['to'], isA<String>());
    });

    test('geo filter uses default unit and center serialization', () {
      final json = engine
          .query('mountains')
          .filter(
            'location',
            isFurtherThanOrAt: 5,
            from: const LatLong(37.7749, -122.4194),
          )
          .toJson();

      final filters = json['filters'] as Map<String, dynamic>;
      final all = filters['all'] as Map<String, dynamic>;
      final location = all['location'] as Map<String, dynamic>;

      expect(location['center'], '37.7749, -122.4194');
      expect(location['unit'], 'm');
      expect(location['from'], 5.0);
    });

    test('core query builder methods serialize expected payload sections', () {
      final json = engine
          .query('mountains')
          .precision(5)
          .searchField('title', weight: 8)
          .resultField('title', rawSize: 60, snippetSize: 80, fallback: false)
          .group('category', size: 2)
          .sort('visitors', descending: true)
          .page(2, size: 20)
          .recordAnalytics(false)
          .tag('mobile')
          .toJson();

      expect(json['precision'], 5);
      expect(json['search_fields'], {
        'title': {'weight': 8},
      });
      expect(json['result_fields'], {
        'title': {
          'raw': {'size': 60},
          'snippet': {'size': 80, 'fallback': false},
        },
      });
      expect(json['group'], {'field': 'category', 'size': 2});
      expect(json['sort'], [
        {'visitors': 'desc'},
      ]);
      expect(json['page'], {'size': 20, 'current': 2});
      expect(json['analytics'], {
        'tags': ['mobile'],
      });
      expect(json['record_analytics'], false);
    });
  });

  group('Suggestions query builder serialization paths', () {
    test('searchField/sort/size serialize expected payload', () {
      final json = engine
          .suggestionQuery('moun')
          .searchField('title', weight: 4)
          .sort('title', descending: false)
          .size(7)
          .toJson();

      expect(json['query'], 'moun');
      expect(json['size'], 7);
      expect(json['types'], {
        'documents': {
          'fields': ['title'],
        },
      });
      expect(json['sort'], [
        {'title': 'asc'},
      ]);
    });
  });
}
