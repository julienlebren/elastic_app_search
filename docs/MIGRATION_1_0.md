# Migration Guide (0.5.x -> 1.0.0)

This guide focuses on practical upgrade steps from `0.5.x` to `1.0.0`.

## What changes in 1.0.0

- Complete App Search-native public API coverage (engine + account-level), including crawler and adaptive relevance. The Elasticsearch `_search` passthrough endpoint is intentionally out of scope for `1.0.0`.
- Stronger runtime request validation across query DSL and endpoint payloads.
- Consistent HTTP/API error mapping through `ElasticAppSearchException`.
- Expanded typed request/response models for new endpoint families.

## Potentially breaking behavior

### 1. Stricter local validation

Some payloads that were previously accepted may now throw before any HTTP call:

- `ArgumentError` for malformed or missing required fields.
- `RangeError` for out-of-range values (pagination bounds, weights, precision, etc.).
- `StateError` for invalid builder state (for example disjunctive facet without matching facet).

Action:
- Audit custom payload builders and add tests for invalid-input paths.

### 2. Explicit HTTP error type

HTTP/API failures are surfaced as `ElasticAppSearchException` with:

- `operation`
- `engine`
- `statusCode`
- `url`
- `responseData`

Action:
- Catch `ElasticAppSearchException` where you need operation-level retry/logging behavior.

### 3. Endpoint-specific constraints enforced

Some endpoints now strictly enforce API limits, for example:

- Page size caps (depends on endpoint family).
- Credential scoping rules.
- Meta-engine vs default engine creation rules.
- Crawler payload shape validation.

Action:
- Verify pagination and create/update payloads in integration tests.

## Recommended upgrade checklist

1. Upgrade package version and run static analysis/tests.
2. Add or update error handling for `ElasticAppSearchException`.
3. Run a smoke suite on each API family you use:
   - Search DSL, suggestions, explain/multi-search
   - Documents/schema/settings
   - Synonyms/curations
   - Analytics/clickthrough/logs
   - Account-level APIs
   - Crawler/adaptive relevance (if used)
4. Validate all custom `current/size` pagination values against endpoint limits.
5. Validate all key names and identifiers are non-empty and normalized.

## Compatibility notes

- Existing simple search usage (`service.engine(...).query(...).get()`) remains unchanged.
- Most migration work is around stricter validation and expanded endpoint surface, not around core search syntax changes.

## Reference docs

- API coverage matrix: [API_COVERAGE.md](API_COVERAGE.md)
- Usage examples by API family: [USAGE_GUIDE.md](USAGE_GUIDE.md)
