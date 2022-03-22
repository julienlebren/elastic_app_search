part of elastic_app_search;

class ElasticAppSearch {
  ElasticAppSearch({
    required this.endPoint,
    required this.searchKey,
  });

  final String endPoint;
  final String searchKey;
  final dio = Dio();

  static const String _errorMessage = "Unable to get response from API server";

  Future<Response> post(Query query) async {
    final response = await dio.post<Map>(
      '$endPoint/api/as/v1/engines/${query.engine!.name}/search',
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $searchKey",
        },
      ),
      data: query.toJson(),
    );

    if (response.statusCode == 200 && response.data != null) {
      return Response.fromJson(response.data as Map<String, dynamic>);
    } else {
      throw _errorMessage;
    }
  }

  Engine engine(String name) {
    assert(
      name.isNotEmpty,
      'an engine name must be a non-empty string',
    );
    return Engine(service: this, name: name);
  }
}
