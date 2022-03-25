[![@hikeland](https://img.shields.io/twitter/follow/hikeland?label=Hikeland&style=social)](https://twitter.com/hikeland)
![https://dart.dev/](https://img.shields.io/badge/Dart-2.0-blue)
![https://flutter.dev/](https://img.shields.io/badge/Flutter-2.0-blue)

# Dart/Flutter package for using Elastic App Search through a simple API returning easy to handle objects

![Elastic](https://raw.githubusercontent.com/julienlebren/elastic_app_search/main/assets/logo_light.png#gh-light-mode-only)
![Elastic](https://raw.githubusercontent.com/julienlebren/elastic_app_search/main/assets/logo_dark.png#gh-dark-mode-only)

This package is a ready-to-use API for Elastic App Search.

⚠️  You need an active deployment on [Elastic](https://cloud.elastic.co/home) to use this service.

This package does not intend to learn you how Elastic App Search is working, it is just intended to help you make queries and manipulate results easily, assuming that you already know Elastic App Search principles.

Here is a simple example of how you can query your Elastic engine:

```dart
final service = ElasticAppSearch(
    endPoint: "https://localhost:5601", 
    searchKey: "search-soaewu2ye6uc45dr8mcd54v8",
);

ElasticQuery response = await service
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
    print("${data!["title"]}: ${data!["description"]}");
  }
}
```

This example will query the parks containing "parks" in any field of the documents.
The results will be filtering the parks based in California, with the flag world_heritage_site set to true.
Only the title and a snippet of 140 chars of the description of the park will be returned by the query.
We request the first page, limited to 50 documents.

### Elastic Service

Before any operation, you need to create an instance of `ElasticAppSearch`.

```dart
final service = ElasticAppSearch(
    endPoint: "https://localhost:5601", 
    searchKey: "search-soaewu2ye6uc45dr8mcd54v8",
);
```

Param | Description
------------ | -------------
String endPoint | The URL of your end point
String searchKey = false | The search key of your deployment

Both values are available in your deployment, when going to `App Search` then `Credentials`. 
Warning: use the search-key, not the private-key!

### Elastic Engine

All the queries must be sent to an engine. 
To make instantiating an engine easy, we created this syntax:

```dart
final engine = service.engine("engine_name");
);
```

Param | Description
------------ | -------------
String | The name of your engine

### Elastic Query

The only required parameter to instanciate a query is a string which is the word you are looking for through your documents.
See [https://www.elastic.co/guide/en/app-search/current/search.html]

```dart
final query = engine.query("query");
```

Type | Description
------------ | -------------
String | The keyword

## Optional parameters

# Search filters

This feature intends to filter documents that contain a specific field value.
It's only available on text, number, and date fields.
See [https://www.elastic.co/guide/en/app-search/current/filters.html]

**Important**: As for now, this object only handles "all" filters, which means that all the filters added to the query will be handled as a "AND" query.
The other filters available, "or" and "not", will be added in a future release of the package.

```dart
final query = query.filter("field", isEqualTo: "value");
final query = query.filter("field", whereIn: ["value1", "value2"]);
```

Param | Type | Description
----- | ---- | -------------
*(unnamed)* | String | The field name
isEqualTo | String | The value that the field must match
whereIn | List<String> | The values that the field can match

**Warning:** You cannot use `isEqualTo` and `whereIn` on the same field at the same time, otherwise it will raise an exception.