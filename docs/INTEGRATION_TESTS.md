# Live Integration Tests

The package includes a live smoke test:

- `test/live_enterprise_search_integration_test.dart`

It is disabled by default unless required environment variables are provided.

## Required environment variables

- `ELASTIC_APP_SEARCH_ENDPOINT`
  - Example: `https://your-enterprise-search-host`
- `ELASTIC_APP_SEARCH_PRIVATE_KEY`
  - App Search private key with permissions to create/delete engines.

## Optional environment variable

- `ELASTIC_APP_SEARCH_TEST_ENGINE_PREFIX`
  - Prefix for temporary engine names.
  - Default: `integration`

## Run command

```bash
ELASTIC_APP_SEARCH_ENDPOINT="https://your-enterprise-search-host" \
ELASTIC_APP_SEARCH_PRIVATE_KEY="private-xxxxxxxxxxxxxxxxxxxx" \
flutter test test/live_enterprise_search_integration_test.dart
```

## What the smoke test validates

- Engine creation and engine info retrieval.
- Document indexing and retrieval.
- Search and query suggestions endpoints.
- Account-level engine listing.
- Engine cleanup at the end of the run.

## Notes

- The test creates a temporary engine and deletes it in teardown.
- Search/index operations can be eventually consistent; the test uses retries.
- Keep this test isolated from production engines by using a dedicated test account or namespace.

