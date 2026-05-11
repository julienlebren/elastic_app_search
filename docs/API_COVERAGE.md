# API Coverage Matrix

This package targets the App Search-native public API (including crawler and adaptive relevance APIs).

Status legend:
- `Complete`: implemented in `ElasticAppSearch`/`ElasticEngine`, covered by behavior + error tests.
- `Partial`: implemented but with scoped payload modeling (raw/dynamic maps kept where response shapes are large or evolving).
- `Planned`: not yet implemented.

## Engine-level endpoints

| API area | Endpoints | Status |
| --- | --- | --- |
| Search | `search`, `multi_search`, `search_explain` | Complete |
| Query suggestions | `query_suggestion` | Complete |
| Clickthrough | `click` | Complete |
| Analytics | `analytics/queries`, `analytics/clicks`, `analytics/counts` | Complete |
| API logs | `logs/api` (`GET` and query `POST`) | Complete |
| Documents | `documents` (`POST`, `PATCH`, `GET`, `DELETE`), `documents/list` | Complete |
| Schema | `schema` (`GET`, `POST`) | Complete |
| Search settings | `search_settings` (`GET`, `PUT`), `search_settings/reset` | Complete |
| Synonyms | `synonyms` (`GET` list/detail, `POST`, `PUT`, `DELETE`) | Complete |
| Curations | `curations` (`GET` list/detail, `POST`, `PUT`, `DELETE`) | Complete |
| Adaptive relevance | `adaptive_relevance/suggestions` (`GET`, `POST`, `PUT`), `adaptive_relevance/suggestions/{query}` (`GET`, `POST`), `adaptive_relevance/settings` (`GET`, `PUT`), `adaptive_relevance/update_process/{suggestion_type}/refresh` (`POST`) | Complete |
| Crawler core | `crawler`, `crawler/user_agent` (account-level), `crawler/crawl_requests` (active/cancel/list/create/get), `crawler/crawl_schedule` (`GET`/`PUT`/`DELETE`), `crawler/process_crawls` (list/get/create/denied_urls) | Complete |
| Crawler domains | `crawler/domains` (list/create/get/update/delete), `entry_points`, `crawl_rules`, `sitemaps` sub-resources | Complete |
| Crawler URL debugging | `crawler/validate_url`, `crawler/extract_url`, `crawler/trace_url` | Complete |
| Meta-engine sources | `source_engines` (`POST`, `DELETE`) | Complete |

## Account-level endpoints

| API area | Endpoints | Status |
| --- | --- | --- |
| Engines | `engines` (`GET` list, `POST` create), `engines/{name}` (`GET`, `DELETE`) | Complete |
| Credentials | `credentials` (`GET` list/detail, `POST`, `PUT`, `DELETE`) | Complete |
| Log settings | `log_settings` (`GET`, `PUT`, `PATCH`, `DELETE`) | Complete |
| Crawler domain validation | `crawler/validate_url` | Complete |
| Crawler user-agent | `crawler/user_agent` | Complete |

## Notes

- Crawler trace and extraction payloads include dynamic nested structures from Enterprise Search logs/events. These are intentionally modeled as typed envelopes with dynamic maps for nested details.
- Query DSL coverage (filters, facets, boosts, precision, disjunctive facets, grouping, sort, analytics tags) is fully available through the query builder API.

## Out of scope for 1.0.0

| API area | Endpoints | Reason |
| --- | --- | --- |
| Elasticsearch passthrough search | `elasticsearch/_search` (`GET`, `POST`) | This endpoint accepts Elasticsearch Query DSL and returns raw Elasticsearch responses. It does not use App Search request/response shapes, so it is intentionally excluded from the typed App Search API surface for `1.0.0`. |
