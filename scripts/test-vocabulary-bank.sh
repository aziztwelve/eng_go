#!/usr/bin/env bash
set -euo pipefail
repo_dir=$(cd "$(dirname "$0")/.." && pwd)
pg_bin=${PG_BINDIR:-/usr/lib/postgresql/12/bin}
if [[ ! -x "$pg_bin/initdb" ]]; then
  echo 'Set PG_BINDIR to the directory containing initdb and pg_ctl.' >&2
  exit 1
fi
scratch_dir=$(mktemp -d /tmp/lingoiq-vocabulary-test.XXXXXX)
cleanup() {
  "$pg_bin/pg_ctl" -D "$scratch_dir/db" -m fast stop >/dev/null 2>&1 || true
  rm -rf "$scratch_dir"
}
trap cleanup EXIT
# Unix socket only: no TCP port or production configuration involved.
"$pg_bin/initdb" -D "$scratch_dir/db" --auth=trust --no-locale >"$scratch_dir/init.log"
"$pg_bin/pg_ctl" -D "$scratch_dir/db" -l "$scratch_dir/postgres.log" -o "-h '' -k $scratch_dir" start >/dev/null
export VOCABULARY_TEST_DATABASE_URL="postgres:///postgres?host=$scratch_dir&sslmode=disable"
cd "$repo_dir/services/course-service"
go test ./internal/service ./internal/repository/postgres ./internal/api/course/v1 ./cmd/import-vocabulary-bank -count=1
cd "$repo_dir/services/gateway"
go test ./internal/handler ./internal/client
