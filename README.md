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
    print("${data!["title"]}: ${data["description"]}");
  }
}
```

This example will query the parks containing *parks* in any field of the documents.
The results will be filtering the parks based in *California*, with the flag *world_heritage_site* set to *true*.
Only the **title** and a snippet of 140 chars of the **description** of the park will be returned by the query.
We request the first page, limited to 50 documents.

## Table of contents

* [ElasticAppSearch](#ElasticAppSearch)
* [ElasticEngine](#ElasticEngine)
* [ElasticQuery](#ElasticQuery)
  * [Precision](#Precision)
  * [Search filters](#search-filters)
  * [Search fields](#search-fields)
  * [Result fields](#result-fields)
* [ElasticResponse](#ElasticResponse)
  * [ElasticResponseMeta](#ElasticResponseMeta)
    * [ElasticResponseMetaPage](#ElasticResponseMetaPage)
  * [ElasticResult](#ElasticResult)
    * [ElasticResultMeta](#ElasticResultMeta)
    * [ElasticResultSnippet](#ElasticResultSnippet)

## ElasticAppSearch

Before any operation, you need to create an instance of `ElasticAppSearch`.

Param | Type | Description
----- | ---- | -------------
endPoint | String | The URL of your end point
searchKey | String | The search key of your deployment

Both values are available in your deployment, when going to `App Search` then `Credentials`. 
Warning: use the search-key, not the private-key!

```dart
final service = ElasticAppSearch(
    endPoint: "https://localhost:5601", 
    searchKey: "search-soaewu2ye6uc45dr8mcd54v8",
);
```

## ElasticEngine

All the queries must be sent to an engine. 
To make instantiating an engine easy, we created this syntax:

Type | Description
------------ | -------------
String | The name of your engine

```dart
final engine = service.engine("engine_name");
```

## ElasticQuery

The only required parameter to instanciate a query is a string which is the word you are looking for through your documents.

🔍 See https://www.elastic.co/guide/en/app-search/current/search.html

Type | Description
------------ | -------------
String | The keyword

```dart
final query = engine.query("query");
```

### Precision

This setting is available through the query modifier `.precision`

The value of the precision parameter must be an integer between 1 and 11, inclusive.
The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
Lower values favor recall, while higher values favor precision.

🔍 See https://www.elastic.co/guide/en/app-search/current/search-api-precision.html

```dart
final query = query.precision(5);
```

### Search filters

This setting is available through the query modifier `.filter`

This feature intends to filter documents that contain a specific field value.
It's only available on text, number, and date fields.

🔍 See https://www.elastic.co/guide/en/app-search/current/filters.html

**Important**: As for now, this object only handles "all" filters, which means that all the filters added to the query will be handled as a "AND" query.
The other filters available, "or" and "not", will be added in a future release of the package.

Param | Type | Description
----- | ---- | -------------
*(unnamed)* | String | The field name
isEqualTo | String | The value that the field must match
whereIn | List\<String\> | The field must match one of these values 

**Warning:** You cannot use `isEqualTo` and `whereIn` on the same field at the same time, otherwise it will raise an exception.

```dart
final query = query.filter("field", isEqualTo: "value");
```
```dart
final query = query.filter("field", whereIn: ["value1", "value2"]);
```

### Search fields

This setting is available through the query modifier `.searchField`

It will restrict a query to search only specific fields.
Restricting fields will result in faster queries, especially for schemas with many text fields
Only available within text fields.

Weight is given between 10 (most relevant) to 1 (least relevant).

🔍 See https://www.elastic.co/guide/en/app-search/current/search-fields-weights.html

Param | Type | Description
----- | ---- | -------------
*(unnamed)* | String | The field name
weight | int *(optionnal)* | The weight of the field in the query

```dart
final query = query
  .searchField("field1", weight: 8)
  .searchField("field2", weight: 3);
```

### Result fields

This setting is available through the query modifier `.resultField`

The fields which appear in search results and how their values are rendered.

Raw is an exact representation of the value within a field.
Snippet is a representation of the value within a field, where query matches are returned in a specific field and other parts are splitted, in order to user [RichText] to display the results and highlight the query matches.

🔍 See https://www.elastic.co/guide/en/app-search/current/result-fields-highlights.html

Param | Type | Description
----- | ---- | -------------
*(unnamed)* | String | The field name
rawSize | int *(optionnal)*  | The length of the field value which is returned
snippetSize | int *(optionnal)* | The length of the snippet value which is returned
fallback | bool *(optionnal)* | If true, return the raw text field if no snippet is found. If false, only use snippets.

```dart
final query = query
  .resultField("field1", rawSize: 80)
  .resultField("field2", snippetSize: 80)
  .resultField("field3", rawSize: 80, snippetSize: 80, fallback: true);
```

## ElasticResponse

The response object contains two parts, the meta in a `ElasticResponseMeta` object and the results in a list of `ElasticResult` objects.

🔍 See https://www.elastic.co/guide/en/app-search/current/search.html#search-api-response-body

Param | Type | Description
----- | ---- | -------------
meta | ElasticResponseMeta | Object delimiting the results meta data
results | List\<ElasticResult\> | Array of results matching the search

### ElasticResponseMeta

An object containing information about the results, especially the pagination details in `page`.

Param | Type | Description
----- | ---- | -------------
requestId | String | ID representing the request. Guaranteed to be unique
warnings | List\<dynamic\> | Array of warnings for the query
alerts | List\<dynamic\> | Array of alerts for your deployment
page | ElasticMetaPage | Object delimiting the pagination meta data

#### ElasticResponseMetaPage

Object delimiting the results meta data.

Param | Type | Description
----- | ---- | -------------
current | int | Number representing the current page of results
size | int | Number representing the results per page
totalPages | int | Number representing the total pages of results
totalResults | int | Number representing the total results across all pages

### ElasticResult

An object presenting a result to the query.

The data param is a map of the fields requested with the `.searchResult` modfifier. If this modifier was omitted, all the fields of the document are returned.

The snippets is a map of the snippets returned by the query, if requested with the `.searchResult` modfifier. By default, Elastic returns the snippets as HTML snippets. This package manipulates the result to return some stuff that can be handled by Flutter: an `ElasticResultSnippet` object.

Param | Type | Description
----- | ---- | -------------
data | Map\<String, dynamic\> | A map of the raw data of the document
snippets | Map\<String, ElasticResultSnippet\> | A map of the snippets
meta | ElasticResultMeta | An object containing information about a given result

#### ElasticResultMeta

An object containing information about a given result.

Param | Type | Description
----- | ---- | -------------
id | String | The document ID
engine | String | The engine name
score | double | The relevance of the result

#### ElasticResultSnippet

An object contaning the snippet of the result.
If you don't want to display your search results with highlights on the matching keyword, just ignore `textParts` and `highlights` and use only `fullText`.

`textParts` and `highlights` can be used to build a `RichText` widget in Flutter, please look at the example of the package to have a concrete example.

Param | Type | Description
----- | ---- | -------------
fullText | String | The full snippet
textParts | List\<String\> | The snippet splitted in parts around the matched query
highlights | List\<String\> | The words matching the query

## Third party packages

This app uses some external librairies:

- [x] [Freezed](https://pub.dev/packages/freezed) to generate immutable models
- [x] [Dio](https://pub.dev/packages/dio) for http requests
- [x] [html_unescape](https://pub.dev/packages/html_unescape) to strip html tags from results

## Credits

This package was originally created for my personnal needs but feel free to use it, it does not covers all the features available in Elastic App Search, but I will try to cover all the features over time.

I am not related to Elastic in any way, I am just a developer who needed to use this API and created this library to do so.

If you have questions, feel free to ask on [Twitter](https://twitter.com/hikeland).

## [LICENSE: MIT](LICENSE.md)