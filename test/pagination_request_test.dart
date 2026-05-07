import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ElasticPageRequest', () {
    test('serializes to body and query parameters', () {
      const page = ElasticPageRequest(current: 2, size: 15);

      expect(page.toBody(), {
        'page': {'current': 2, 'size': 15},
      });
      expect(page.toQueryParameters(), {'page[current]': 2, 'page[size]': 15});
    });

    test('supports default values', () {
      const page = ElasticPageRequest();
      expect(page.current, 1);
      expect(page.size, 10);
    });
  });
}
