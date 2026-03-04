import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ElasticQuery.fromJson', () {
    test('restores filters/search fields/result fields/sort', () {
      final query = ElasticQuery.fromJson({
        'query': 'mountains',
        'filters': {
          'all': {'states': 'California'},
          'any': [
            {
              'visitors': {'from': 10, 'to': 20},
            },
            {
              'location': {
                'center': '37.7749,-122.4194',
                'unit': 'mi',
                'from': 5,
              },
            },
          ],
        },
        'search_fields': {
          'title': {'weight': 8},
          'description': {},
        },
        'result_fields': {
          'title': {
            'raw': {'size': 50},
          },
          'description': {
            'raw': {},
            'snippet': {'size': 80, 'fallback': false},
          },
        },
        'sort': [
          {'visitors': 'desc'},
          {'title': 'asc'},
        ],
      });

      final serialized = query.toJson();

      expect(serialized['query'], 'mountains');

      final filters = serialized['filters'] as Map<String, dynamic>;
      expect(filters['all'], {'states': 'California'});
      final anyFilters = filters['any'] as List<dynamic>;
      expect(
        anyFilters.any((element) {
          if (element is! Map) return false;
          final visitors = element['visitors'];
          return visitors is Map &&
              visitors['from'] == 10.0 &&
              visitors['to'] == 20.0;
        }),
        isTrue,
      );
      expect(
        anyFilters.any((element) {
          if (element is! Map) return false;
          final location = element['location'];
          return location is Map &&
              location['center'] == '37.7749, -122.4194' &&
              location['unit'] == 'mi' &&
              location['from'] == 5.0;
        }),
        isTrue,
      );

      final searchFields = serialized['search_fields'] as Map;
      expect(searchFields['title'], {'weight': 8});
      expect(searchFields['description'], {});

      final resultFields = serialized['result_fields'] as Map;
      expect(resultFields['title'], {
        'raw': {'size': 50},
      });
      expect(resultFields['description'], {
        'raw': {},
        'snippet': {'size': 80, 'fallback': false},
      });

      final sorts = serialized['sort'] as List<dynamic>;
      expect(
        sorts.any((element) => element is Map && element['visitors'] == 'desc'),
        isTrue,
      );
      expect(
        sorts.any((element) => element is Map && element['title'] == 'asc'),
        isTrue,
      );
    });
  });

  group('ElasticSuggestionsQuery.fromJson', () {
    test('restores search fields and sort', () {
      final query = ElasticSuggestionsQuery.fromJson({
        'query': 'mount',
        'size': 7,
        'search_fields': {
          'title': {'weight': 5},
        },
        'sort': [
          {'title': 'asc'},
        ],
      });

      final serialized = query.toJson();

      expect(serialized['query'], 'mount');
      expect(serialized['size'], 7);
      expect(serialized['search_fields'], {
        'title': {'weight': 5},
      });
      expect(serialized['sort'], [
        {'title': 'asc'},
      ]);
    });
  });
}
