# Live Integration Tests

The package includes a live smoke test:

- `test/live_enterprise_search_integration_test.dart`

It is disabled by default unless required environment variables are provided.

## Required environment variables

- `ELASTIC_APP_SEARCH_ENDPOINT`
  - Example: `https://your-enterprise-search-host`
- `ELASTIC_APP_SEARCH_API_KEY` (preferred) or `ELASTIC_APP_SEARCH_PRIVATE_KEY` (legacy alias)
  - App Search API key.
  - `private-...` key enables full smoke coverage (create/delete engine + documents/search/account-level calls).
  - `search-...` key enables read-only smoke coverage (search/suggestions/multi-search).

## Optional environment variable

- `ELASTIC_APP_SEARCH_TEST_ENGINE_PREFIX`
  - Prefix for temporary engine names.
  - Default: `integration`
- `ELASTIC_APP_SEARCH_SEARCH_ENGINE`
  - Engine name used in read-only (`search-...` key) mode.
  - Default: `search-ui-examples`

## Run command

```bash
ELASTIC_APP_SEARCH_ENDPOINT="https://your-enterprise-search-host" \
ELASTIC_APP_SEARCH_API_KEY="private-xxxxxxxxxxxxxxxxxxxx" \
flutter test test/live_enterprise_search_integration_test.dart
```

## What the smoke test validates

- With `private-...` key:
  - Engine creation and engine info retrieval.
  - Document indexing and retrieval.
  - Search and query suggestions endpoints.
  - Account-level engine listing.
  - Engine cleanup at the end of the run.
- With `search-...` key:
  - Search endpoint.
  - Query suggestions endpoint.
  - Multi-search endpoint.
  - Note: the public Elastic docs demo credentials are skipped in CI because the
    backing endpoint availability is not guaranteed.

## Notes

- In `private-...` mode, the test creates a temporary engine and deletes it in teardown.
- Search/index operations can be eventually consistent; the test uses retries.
- Keep this test isolated from production engines by using a dedicated test account or namespace.
