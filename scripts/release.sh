#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${REPO_ROOT}"

PUBSPEC_FILE="pubspec.yaml"
CHANGELOG_FILE="CHANGELOG.md"
LIVE_TEST_FILE="test/live_enterprise_search_integration_test.dart"

NO_PUBLISH=1
PUBLISH_ONLY=0
SKIP_LIVE_TESTS=0
SKIP_TESTS=0
BUMP_TYPE=""
NEW_VERSION=""

usage() {
  cat <<'EOF'
Usage: scripts/release.sh [options]

Options:
  --bump <patch|minor|major>  Set the version bump type (otherwise prompted)
  --publish-only              Publish current committed version to pub.dev
  --no-publish                Keep compatibility with previous behavior (default)
  --skip-live-tests           Skip live Enterprise Search smoke tests
  --skip-tests                Skip all tests and analysis (not recommended)
  -h, --help                  Show this help
EOF
}

log() {
  echo ""
  echo "==> $1"
}

fail() {
  echo "Error: $1" >&2
  exit 1
}

confirm() {
  local prompt="$1"
  local answer
  read -r -p "${prompt} [y/N] " answer
  [[ "${answer}" =~ ^[Yy]$ ]]
}

parse_args() {
  while [[ $# -gt 0 ]]; do
    case "$1" in
      --bump)
        [[ $# -ge 2 ]] || fail "Missing value for --bump"
        BUMP_TYPE="$2"
        shift 2
        ;;
      --no-publish)
        NO_PUBLISH=1
        shift
        ;;
      --publish-only)
        PUBLISH_ONLY=1
        NO_PUBLISH=0
        shift
        ;;
      --skip-live-tests)
        SKIP_LIVE_TESTS=1
        shift
        ;;
      --skip-tests)
        SKIP_TESTS=1
        shift
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        fail "Unknown option: $1"
        ;;
    esac
  done
}

ensure_clean_worktree() {
  if [[ -n "$(git status --porcelain)" ]]; then
    fail "Git worktree is not clean. Commit or stash changes before releasing."
  fi
}

current_version() {
  awk '/^version:/ {print $2}' "${PUBSPEC_FILE}"
}

base_version() {
  local version="$1"
  version="${version%%+*}"
  version="${version%%-*}"
  echo "${version}"
}

validate_bump_type() {
  case "$1" in
    patch|minor|major) ;;
    *) fail "Invalid bump type '$1'. Expected: patch|minor|major" ;;
  esac
}

prompt_bump_type() {
  local answer
  read -r -p "Bump version type [patch/minor/major] (default: patch): " answer
  answer="${answer:-patch}"
  echo "${answer}"
}

next_version() {
  local version="$1"
  local bump="$2"
  local major minor patch

  IFS='.' read -r major minor patch <<< "${version}"
  [[ "${major}" =~ ^[0-9]+$ ]] || fail "Invalid version '${version}'"
  [[ "${minor}" =~ ^[0-9]+$ ]] || fail "Invalid version '${version}'"
  [[ "${patch}" =~ ^[0-9]+$ ]] || fail "Invalid version '${version}'"

  case "${bump}" in
    patch) patch=$((patch + 1)) ;;
    minor)
      minor=$((minor + 1))
      patch=0
      ;;
    major)
      major=$((major + 1))
      minor=0
      patch=0
      ;;
  esac

  echo "${major}.${minor}.${patch}"
}

update_pubspec_version() {
  local new_version="$1"
  perl -i -pe "s/^version:\s+.*/version: ${new_version}/" "${PUBSPEC_FILE}"
}

last_release_range() {
  local last_tag last_changelog_commit

  last_tag="$(git describe --tags --abbrev=0 2>/dev/null || true)"
  if [[ -n "${last_tag}" ]]; then
    echo "${last_tag}..HEAD"
    return
  fi

  last_changelog_commit="$(git log -n 1 --pretty=format:%H -- "${CHANGELOG_FILE}" 2>/dev/null || true)"
  if [[ -n "${last_changelog_commit}" ]]; then
    echo "${last_changelog_commit}..HEAD"
    return
  fi

  echo ""
}

collect_release_commits() {
  local range="$1"
  if [[ -n "${range}" ]]; then
    git log --no-merges --pretty=format:'- %s (%h)' "${range}"
  else
    git log --no-merges --pretty=format:'- %s (%h)'
  fi
}

prepend_changelog_release_from_commits() {
  local new_version="$1"
  local range commits today tmp_file

  range="$(last_release_range)"
  commits="$(collect_release_commits "${range}")"
  today="$(date +%Y-%m-%d)"

  if [[ -z "${commits}" ]]; then
    commits="- Maintenance release"
  fi

  tmp_file="$(mktemp)"
  {
    echo "## ${new_version} - ${today}"
    echo ""
    echo "${commits}"
    echo ""
    cat "${CHANGELOG_FILE}"
  } > "${tmp_file}"
  mv "${tmp_file}" "${CHANGELOG_FILE}"
}

update_changelog() {
  local new_version="$1"
  local today

  if grep -q "^## ${new_version}\b" "${CHANGELOG_FILE}"; then
    fail "CHANGELOG already contains version ${new_version}"
  fi

  today="$(date +%Y-%m-%d)"
  if grep -q "^## Unreleased$" "${CHANGELOG_FILE}"; then
    perl -i -pe "s/^## Unreleased$/## ${new_version} - ${today}/" "${CHANGELOG_FILE}"
    return
  fi

  prepend_changelog_release_from_commits "${new_version}"
}

has_live_test_env() {
  [[ -n "${ELASTIC_APP_SEARCH_ENDPOINT:-}" ]] &&
    { [[ -n "${ELASTIC_APP_SEARCH_API_KEY:-}" ]] ||
      [[ -n "${ELASTIC_APP_SEARCH_PRIVATE_KEY:-}" ]]; }
}

run_offline_tests() {
  (
    unset ELASTIC_APP_SEARCH_ENDPOINT
    unset ELASTIC_APP_SEARCH_API_KEY
    unset ELASTIC_APP_SEARCH_PRIVATE_KEY
    unset ELASTIC_APP_SEARCH_TEST_ENGINE_PREFIX
    unset ELASTIC_APP_SEARCH_SEARCH_ENGINE
    flutter test
  )
}

run_checks() {
  if [[ "${SKIP_TESTS}" -eq 1 ]]; then
    log "Skipping checks (--skip-tests)"
    return
  fi

  log "Running flutter analyze"
  flutter analyze

  log "Running offline tests"
  run_offline_tests

  if [[ "${SKIP_LIVE_TESTS}" -eq 1 ]]; then
    log "Skipping live tests (--skip-live-tests)"
    return
  fi

  if has_live_test_env; then
    log "Running live Enterprise Search smoke tests"
    flutter test "${LIVE_TEST_FILE}"
  else
    log "Skipping live tests (ELASTIC_APP_SEARCH_ENDPOINT and API key are not set)"
  fi
}

publish_package() {
  if [[ "${NO_PUBLISH}" -eq 1 ]]; then
    log "Skipping publish (default behavior)"
    return
  fi

  if [[ -n "$(git status --porcelain)" ]]; then
    fail "Publish requires a clean git state. Commit release files first, then run scripts/release.sh --publish-only."
  fi

  log "Running publish dry-run"
  flutter pub publish --dry-run

  if confirm "Publish ${NEW_VERSION} to pub.dev now?"; then
    log "Publishing package to pub.dev"
    flutter pub publish
  else
    log "Publish cancelled"
  fi
}

main() {
  parse_args "$@"

  if [[ "${PUBLISH_ONLY}" -eq 1 ]]; then
    [[ -z "${BUMP_TYPE}" ]] || fail "--bump cannot be used with --publish-only"

    ensure_clean_worktree
    NEW_VERSION="$(current_version)"
    [[ -n "${NEW_VERSION}" ]] || fail "Could not read current version from ${PUBSPEC_FILE}"

    log "Publish-only mode for version: ${NEW_VERSION}"
    run_checks
    publish_package
    log "Done"
    exit 0
  fi

  ensure_clean_worktree

  local current base bump next
  current="$(current_version)"
  [[ -n "${current}" ]] || fail "Could not read current version from ${PUBSPEC_FILE}"
  base="$(base_version "${current}")"

  if [[ -z "${BUMP_TYPE}" ]]; then
    bump="$(prompt_bump_type)"
  else
    bump="${BUMP_TYPE}"
  fi
  validate_bump_type "${bump}"

  next="$(next_version "${base}" "${bump}")"
  NEW_VERSION="${next}"

  log "Current version: ${current}"
  log "Next version: ${NEW_VERSION}"

  run_checks

  log "Updating ${PUBSPEC_FILE}"
  update_pubspec_version "${NEW_VERSION}"

  log "Updating ${CHANGELOG_FILE}"
  update_changelog "${NEW_VERSION}"

  log "Release files updated"
  git --no-pager diff -- "${PUBSPEC_FILE}" "${CHANGELOG_FILE}"

  publish_package

  log "Done"
  echo "Next steps:"
  echo "  1) Review changes"
  echo "  2) git add ${PUBSPEC_FILE} ${CHANGELOG_FILE}"
  echo "  3) git commit -m \"Release ${NEW_VERSION}\""
  echo "  4) git tag v${NEW_VERSION} && git push --follow-tags"
  echo "  5) scripts/release.sh --publish-only"
}

main "$@"
