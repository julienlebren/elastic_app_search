import 'package:elastic_app_search/elastic_app_search.dart';

final service = ElasticAppSearch(
  endPoint: "https://localhost:5601",
  searchKey: "search-soaewu2ye6uc45dr8mcd54v8",
);

void main() async {
  ElasticResponse response = await service
      .engine("national-parks-demo")
      .query("parks")
      .filter("states", isEqualTo: "California")
      .filter("world_heritage_site", isEqualTo: true)
      .resultField("title")
      .resultField("description", snippetSize: 140)
      .page(1, size: 50)
      .get();

  for (ElasticResult result in response.results) {
    final data = result.data;
    if (data != null) {
      print("${data["title"]}: ${data["description"]}");
    }
  }
}
