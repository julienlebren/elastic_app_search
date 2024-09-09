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
  endPoint: "https://host-2376rb.api.swiftype.com",
  searchKey: "search-371auk61r2bwqtdzocdgutmg",
);

ElasticResponse response = await service
  .engine("search-ui-examples")
  .query("mountains")
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
```

This example will query the parks containing *parks* in any field of the documents.
The results will be filtering the parks based in *California*, with the flag *world_heritage_site* set to *true*.
Only the **title** and a snippet of 140 chars of the **description** of the park will be returned by the query.
We request the first page, limited to 50 documents.

### A full use case is available in the example folder, with the following rendering: 

* The search bar makes dynamic queries to Elastic
* The popup menu allows you to filter parks if they are World Heritage or not

![App preview](https://raw.githubusercontent.com/julienlebren/elastic_app_search/main/assets/screenshots.png)

## Table of contents

* [ElasticAppSearch](#ElasticAppSearch)
* [ElasticEngine](#ElasticEngine)
* [ElasticQuery](#ElasticQuery)
  * [Precision](#Precision)
  * [Search filters](#search-filters)
  * [Search fields](#search-fields)
  * [Result fields](#result-fields)
  * [Facets](#facets)
  * [Disjunctive facets](#disjunctive-facets)
* [ElasticSuggestionQuery](#ElasticSuggestionQuery)
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

There are three types of filters:
* all: All of the filters must match. This functions as an AND condition. To add a filter to "all" filters, `.filter`.
* any: At least one of the filters must match. This functions as an OR condition. To add a filter to "any" filters, use `.filterAny`.
* none: All of the filters must not match. This functions as a NOT condition. To add a filter to "none" filters, use `.filterNone`.

🔍 See https://www.elastic.co/guide/en/app-search/current/filters.html

Param | Type | Description
----- | ---- | -------------
*(unnamed)* | String | The field name
isEqualTo | dynamic *(optionnal)*  | The value that the field must match
whereIn | List\<dynamic\> *(optionnal)*  | The field must match one of these values 
isGreaterThanOrEqualTo | DateTime or double *(optionnal)*  | Inclusive lower bound of the range
isLessThan | DateTime or double *(optionnal)*  | Exclusive upper bound of the range
isFurtherThanOrAt | double *(optionnal)*  | Inclusive lower bound of the range
isLessFarThan | double *(optionnal)*  | Exclusive upper bound of the range
from | LatLong *(optionnal)*  | The base point from which distance params will be applied 
unit | GeoUnit *(optionnal)*  | The base unit of measurement

```dart
final query = query.filter("field", isEqualTo: "value");
```
```dart
final query = query.filter("field", isEqualTo: true);
```
```dart
final query = query.filter("field", whereIn: ["value1", "value2"]);
```
```dart
final query = query.filter("field", isGreaterThanOrEqualTo: 50, isLessThan: 100);
```
```dart
final query = query.filter("field", 
  isFurtherThanOrAt: 50, 
  unit: GeoUnit.miles, 
  from: LatLong(37.7749, -122.4194)
);
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

### Facets

This setting is available through the query modifier `.facet`

Provides the counts of each value (or each range of value if you provide a range) for a field.

🔍 See https://www.elastic.co/guide/en/app-search/current/facets.html

Param | Type | Description
----- | ---- | -------------
*(unnamed)* | String | The field name
name | String *(optionnal)* | Name given to facet.
isMoreThanOrEqualTo | DateTime or double *(optionnal)* | Inclusive lower bound of the range. 
isLessThan | DateTime or double *(optionnal)* | Exclusive upper bound of the range.
isFurtherThanOrAt | double *(optionnal)*  | Inclusive lower bound of the range
isLessFarThan | double *(optionnal)*  | Exclusive upper bound of the range
from | LatLong *(optionnal)*  | The base point from which distance params will be applied 
unit | GeoUnit *(optionnal)*  | The base unit of measurement

```dart
final query = query
  .facet("dateField",
    isLessThan: DateTime.utc(1984),
    name: "Before 1984",
  )
  .facet("dateField",
    isMoreThanOrEqualTo: DateTime.utc(1984),
    isLessThan: DateTime.utc(2014),
    name: "From 1984 to 2014",
  )
  .facet("dateField",
    isMoreThanOrEqualTo: DateTime.utc(2014),
    name: "Since 2014",
  );
```

### Disjunctive facets

Disjunctive facets are useful when you have many filters in your form, and especially when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set, it will return all the available facets as if that filter was not applied.

```dart
final query = query.disjunctiveFacet("field");
```

## ElasticSuggestionQuery

The only parameter required to instantiate a query suggestion is a string that is the word for which you want to get query suggestions.

🔍 See https://www.elastic.co/guide/en/app-search/current/query-suggestions-guide.html

Type | Description
------------ | -------------
String | The keyword

```dart
final suggestionQuery = engine.suggestionQuery("query");
```

Configuration | Type                  | Description
----- |-----------------------| -------------
size | int                   | Limits the number of results
searchFields | List\<ElasticSearchField\> | See [Search fields](#search-fields)
sortBy | List\<ElasticSort\> | Allows you to add one or more sorts on specific fields.  See https://www.elastic.co/guide/en/elasticsearch/reference/current/sort-search-results.html

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

- [x] [freezed](https://pub.dev/packages/freezed) to generate immutable models
- [x] [dio](https://pub.dev/packages/dio) for http requests
- [x] [html_unescape](https://pub.dev/packages/html_unescape) to strip html tags from results

## Roadmap for upcoming versions

- [x] Support facets
- [x] Support geo filters
- [ ] Support boosts
- [ ] Support nested filters
- [ ] Pass a converter to query to build response with your own objects from json response

## Credits

This package was originally created for my personnal needs but feel free to use it, it does not covers all the features available in Elastic App Search, but I will try to cover all the features over time.

I am not related to Elastic in any way, I am just a developer who needed to use Elastic through a library, so I created this library to do so.

If you have questions, feel free to ask on [Twitter](https://twitter.com/hikeland).

## [LICENSE: MIT](LICENSE.md)