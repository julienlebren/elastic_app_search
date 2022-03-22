part of elastic_app_search;

class Engine {
  const Engine({
    required this.name,
    required this.service,
  });

  final String name;
  final ElasticAppSearch service;

  Query query(String query) => Query(engine: this, query: query);

  Future<Response> get(Query query) => service.post(query);
}
