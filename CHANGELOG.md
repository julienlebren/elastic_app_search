## 0.5.0

* Query suggestion integrated by @Senne021 
* Updated the dependecies to maintain compatibility

## 0.4.3

* Updated the dependecies to maintain compatibility

## 0.4.2

* Updated the dependecies to maintain compatibility

## 0.4.1

* Updated the dependecies to maintain compatibility

## 0.4.0

* Added `ElasticGeoFilter` to filter results by range based on a geo point
* Added `ElasticAnalytics` to handle analytics tags
* Changed the way to combine filters, with new modifiers: `.filterAny`, `.filterAll` and `.filterNone`.
* Added disjunctive facets to handle more advanced facets when a lot of facets are used to filter results

## 0.3.0

* Added `ElasticSort` to sort document by a field rather than by score
* Added `ElasticRangeFilter` to filter results by range on a date or number field
* Added 'any' and 'not' filters to `.filter` method
* `score` in `ElasticResultMeta` is now optional because of new feature above
* Added facets (experimental state at the moment)

## 0.2.1

* Fields containing "_" were not returned
* [ElasticResultMeta] variables `id` and `engine` have been removed
* `.filter.isEqualTo` now accepts booleans
* Added a full example

## 0.2.0

* Added grouping support in an `ElasticQuery` with the `.group` modifier
* Renamed queryPrecision to precisionTuning
* Now showing Dio `CancelToken` in export to avoid to import Dio when using this package

## 0.1.3

* Some classes are now private

## 0.1.2+6

* Fixed error in `ElasticSearchPage` assert

## 0.1.2+5

* Moved `ElasticResultField` assert to its modifier

## 0.1.2+4

* Moved precision assert to modifier

## 0.1.2+3

* Rebuilt freezed classes

## 0.1.2+2

* Assert error on query precision

## 0.1.2+1

* `ElasticResult`.`fromJsonWithData` has been transformed to private method

## 0.1.2

* Removed `ElasticQuery`and `ElasticResult` extensions and moved their functions into the main classes
* Fixed lints errors to pass static analysis

## 0.1.1+3

* Fixed lints errors

## 0.1.1+2

* Fixed error in `.searchFilter` parameters

## 0.1.1+1

* Extracted `ElasticQuery` modifiers to extension class ElasticQueryX, to avoid errors in static analysis
* Modified comments with /// instead of // because there were not showing up on pub.dev

## 0.1.1

* Documented all objects and variables

## 0.1.0

* Initial release