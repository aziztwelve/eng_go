#!/usr/bin/env bash
# Phase 0 — End-to-end smoke test для standalone content + learning tracks.
#
# Шаги:
#   1. register + login → JWT
#   2. GET /tracks                           — каталог треков
#   3. GET /tracks/daily-english?include_lessons=true
#   4. GET /lessons/:standalone_id           — проверяем is_standalone=true
#   5. POST /progress/steps/:step_id/complete
#   6. psql: SELECT source_type FROM courses.step_progress … → должно быть 'standalone'
#
# Требования: gateway поднят на $API_URL, БД доступна с теми же creds что и
# bin/test_auth_me.sh, applied миграции до 000008 и seeds/006_tracks.sql.
#
# Использование:
#   ./scripts/e2e_phase0.sh                  # запуск с дефолтами
#   API_URL=http://localhost:8081/api/v1 ./scripts/e2e_phase0.sh
#
set -euo pipefail

API_URL="${API_URL:-http://localhost:8081/api/v1}"
DB_HOST="${DB_HOST:-localhost}"
DB_PORT="${DB_PORT:-5432}"
DB_USER="${DB_USER:-admin}"
DB_PASSWORD="${DB_PASSWORD:-change_me_in_production}"
DB_NAME="${DB_NAME:-elearning}"

# Известные ID из seeds/006_tracks.sql (daily-english → 1й урок → 1й шаг).
TRACK_CODE="${TRACK_CODE:-daily-english}"
STANDALONE_LESSON_ID="${STANDALONE_LESSON_ID:-a1111111-0001-0001-0001-000000000001}"
STANDALONE_STEP_ID="${STANDALONE_STEP_ID:-c1111111-0001-0001-0001-000000000001}"

# Уникальный пользователь на запуск, чтобы не зависеть от чужих state.
SUFFIX="$(date +%s)"
EMAIL="phase0_e2e_${SUFFIX}@example.com"
PASSWORD="password123"
USERNAME="phase0e2e${SUFFIX}"

# --- helpers ----------------------------------------------------------------

step()    { echo -e "\n\033[1;34m▶ $*\033[0m"; }
ok()      { echo -e "  \033[0;32m✓\033[0m $*"; }
fail()    { echo -e "  \033[0;31m✗\033[0m $*"; exit 1; }
require() {
  command -v "$1" >/dev/null 2>&1 || fail "Не найден '$1' в PATH"
}

require curl
require jq
require psql

# Аккуратно вытаскиваем поле из JSON; падаем понятно, если пусто.
jq_field() {
  local json="$1" path="$2"
  local v
  v=$(echo "$json" | jq -r "$path // empty")
  [[ -n "$v" ]] || fail "Не удалось извлечь $path из ответа: $json"
  echo "$v"
}

# --- 0. health --------------------------------------------------------------

step "0. Проверяем доступность gateway: $API_URL"
HEALTH=$(curl -s -o /dev/null -w "%{http_code}" "$API_URL/tracks?limit=1" || true)
[[ "$HEALTH" =~ ^(200|401)$ ]] || fail "Gateway недоступен (HTTP=$HEALTH)"
ok "gateway отвечает (HTTP=$HEALTH)"

# --- 1. register + login ----------------------------------------------------

step "1. Регистрация: $EMAIL"
REGISTER=$(curl -s -X POST "$API_URL/auth/register" \
  -H "Content-Type: application/json" \
  -d "{\"email\":\"$EMAIL\",\"password\":\"$PASSWORD\",\"username\":\"$USERNAME\"}")
USER_ID=$(jq_field "$REGISTER" '.user_id')
ok "user_id=$USER_ID"

step "1b. Login"
LOGIN=$(curl -s -X POST "$API_URL/auth/login" \
  -H "Content-Type: application/json" \
  -d "{\"email\":\"$EMAIL\",\"password\":\"$PASSWORD\"}")
TOKEN=$(jq_field "$LOGIN" '.access_token')
AUTH=(-H "Authorization: Bearer $TOKEN")
ok "token получен (${#TOKEN} символов)"

# --- 2. list tracks ---------------------------------------------------------

step "2. GET /tracks"
TRACKS=$(curl -s "$API_URL/tracks?limit=20" "${AUTH[@]}")
TRACK_TOTAL=$(echo "$TRACKS" | jq -r '.total // 0')
[[ "$TRACK_TOTAL" -gt 0 ]] || fail "tracks.total=0 — забыл seed? (./bin/seed.sh course)"
ok "tracks.total=$TRACK_TOTAL"

DAILY_ID=$(echo "$TRACKS" | jq -r ".tracks[] | select(.code==\"$TRACK_CODE\") | .id")
[[ -n "$DAILY_ID" ]] || fail "Трек $TRACK_CODE не найден среди опубликованных"
ok "$TRACK_CODE id=$DAILY_ID"

# --- 3. track + lessons -----------------------------------------------------

step "3. GET /tracks/$TRACK_CODE?include_lessons=true (по code)"
TRACK_FULL=$(curl -s "$API_URL/tracks/$TRACK_CODE?include_lessons=true" "${AUTH[@]}")
LESSONS_LEN=$(echo "$TRACK_FULL" | jq -r '.lessons | length // 0')
[[ "$LESSONS_LEN" -gt 0 ]] || fail "У трека нет уроков: $TRACK_FULL"
ok "lessons.length=$LESSONS_LEN"

# Все уроки трека должны быть standalone (module_id == "").
NON_STANDALONE=$(echo "$TRACK_FULL" | jq -r '[.lessons[] | select(.module_id != "")] | length')
[[ "$NON_STANDALONE" == "0" ]] || fail "В треке есть course-bound уроки ($NON_STANDALONE шт)"
ok "все уроки standalone (module_id == \"\")"

# Берём заявленный standalone-урок (или первый из ответа).
HAS_KNOWN=$(echo "$TRACK_FULL" | jq -r "[.lessons[] | select(.id==\"$STANDALONE_LESSON_ID\")] | length")
if [[ "$HAS_KNOWN" != "1" ]]; then
  STANDALONE_LESSON_ID=$(echo "$TRACK_FULL" | jq -r '.lessons[0].id')
  ok "seed-id не найден; беру первый: $STANDALONE_LESSON_ID"
fi

# --- 4. universal lesson endpoint ------------------------------------------

step "4. GET /lessons/$STANDALONE_LESSON_ID"
LESSON=$(curl -s "$API_URL/lessons/$STANDALONE_LESSON_ID" "${AUTH[@]}")
IS_STANDALONE=$(echo "$LESSON" | jq -r '.lesson.is_standalone // false')
[[ "$IS_STANDALONE" == "true" ]] || fail "lesson.is_standalone != true: $LESSON"
ok "lesson.is_standalone=true"

STEPS_LEN=$(echo "$LESSON" | jq -r '.steps | length // 0')
[[ "$STEPS_LEN" -gt 0 ]] || fail "У урока нет шагов: $LESSON"
ok "steps.length=$STEPS_LEN"

# Если знакомого STEP_ID нет в ответе — берём первый.
HAS_STEP=$(echo "$LESSON" | jq -r "[.steps[] | select(.id==\"$STANDALONE_STEP_ID\")] | length")
if [[ "$HAS_STEP" != "1" ]]; then
  STANDALONE_STEP_ID=$(echo "$LESSON" | jq -r '.steps[0].id')
  ok "seed-step-id не найден; беру первый: $STANDALONE_STEP_ID"
fi

# --- 5. mark step complete --------------------------------------------------

step "5. POST /progress/steps/$STANDALONE_STEP_ID/complete"
COMPLETE=$(curl -s -X POST "$API_URL/progress/steps/$STANDALONE_STEP_ID/complete" \
  "${AUTH[@]}" \
  -H "Content-Type: application/json" \
  -d '{"time_spent_seconds": 42}')

STEP_COMPLETED=$(echo "$COMPLETE" | jq -r '.step_progress.completed // false')
[[ "$STEP_COMPLETED" == "true" ]] || fail "step_progress.completed != true: $COMPLETE"
ok "step_progress.completed=true"

LESSON_PCT=$(echo "$COMPLETE" | jq -r '.lesson_progress.progress_percentage // 0')
LESSON_COURSE_ID=$(echo "$COMPLETE" | jq -r '.lesson_progress.course_id // ""')
ok "lesson_progress.progress_percentage=$LESSON_PCT, course_id='$LESSON_COURSE_ID' (ожидаем '')"
[[ "$LESSON_COURSE_ID" == "" ]] || fail "course_id для standalone должен быть пустым"

# --- 6. DB check: source_type='standalone' ---------------------------------

step "6. psql: проверяем step_progress.source_type"
SOURCE_ROW=$(PGPASSWORD="$DB_PASSWORD" psql \
  -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" \
  -At -F '|' \
  -c "SELECT source_type, COALESCE(source_id::text,'NULL'), completed
       FROM courses.step_progress
       WHERE step_id = '$STANDALONE_STEP_ID' AND user_id = '$USER_ID'
       LIMIT 1;")

[[ -n "$SOURCE_ROW" ]] || fail "Запись step_progress не найдена для user=$USER_ID step=$STANDALONE_STEP_ID"

IFS='|' read -r SOURCE_TYPE SOURCE_ID DB_COMPLETED <<< "$SOURCE_ROW"
ok "row → source_type=$SOURCE_TYPE, source_id=$SOURCE_ID, completed=$DB_COMPLETED"

[[ "$SOURCE_TYPE" == "standalone" ]] || fail "ожидали source_type='standalone', получили '$SOURCE_TYPE'"
[[ "$DB_COMPLETED" == "t" ]]         || fail "ожидали completed=true, получили '$DB_COMPLETED'"
ok "source_type='standalone' ✓"

# Заодно: lesson_progress.course_id IS NULL.
LP_COURSE=$(PGPASSWORD="$DB_PASSWORD" psql \
  -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" \
  -At \
  -c "SELECT COALESCE(course_id::text,'NULL') FROM courses.lesson_progress
       WHERE lesson_id='$STANDALONE_LESSON_ID' AND user_id='$USER_ID' LIMIT 1;")
[[ "$LP_COURSE" == "NULL" ]] || fail "lesson_progress.course_id должен быть NULL, а тут '$LP_COURSE'"
ok "lesson_progress.course_id IS NULL ✓"

echo -e "\n\033[1;32m✅ Phase 0 E2E прошёл успешно\033[0m"
