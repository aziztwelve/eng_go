# Деплой local → server (backend + mobile)

Runbook: как залить изменения в git и развернуть backend на сервере.
Последний прогон: 2026-06-21.

---

## 0. Топология

| Что | Где |
|---|---|
| Backend (Go, монорепо) | локально `microservices-course/elearning` → git `git@github.com:aziztwelve/eng_go.git` (ветка `dev`) |
| Mobile (React Native) | локально `eng_mob` → git `git@github.com:aziztwelve/eng_mob.git` (ветка `dev`) |
| Сервер | `root@178.104.217.201` (Hetzner, Ubuntu) |
| Backend на сервере | `/var/www/html/elearning` (ветка `dev`) |
| Публичный API | `https://178-104-217-201.sslip.io/api/v1` |
| TLS / reverse-proxy | контейнер `vpn-caddy` → проксирует домен на host `172.19.0.1:8080` (gateway), авто-TLS Let's Encrypt |

**Важно:** Go-сервисы запущены как обычные процессы на хосте (НЕ в Docker).
В Docker крутится только инфраструктура: `elearning-postgres` (5435), `elearning-redis` (6379),
`elearning-redpanda` (Kafka, внешний listener `19092`), `elearning-minio` (9000/9001).

### Карта портов сервисов (gRPC) — источник истины `deploy/compose/gateway/.env`

| Сервис | Порт |
|---|---|
| auth-service | 50051 |
| user-service | 50052 |
| course-service | 50053 |
| video-service | 50054 |
| quiz-service | 50055 |
| gamification-service | 50058 |
| step-validation-service | 50059 |
| srs-service | 50070 |
| social-service | 50071 |
| notifications-service | 50072 |
| ai-service | 50073 |
| gateway (HTTP) | 8080 |

---

## 1. Залить изменения в git (локально)

### Mobile
```bash
cd eng_mob
git add -A
git commit -m "feat(mobile): ..."
git push origin dev
```

### Backend
```bash
cd microservices-course/elearning
git add -A
# НЕ коммитить скомпилированные бинарники (ELF), напр.:
git reset -q HEAD services/course-service/backfill-tts services/course-service/seed-today
git commit -m "feat(...): ..."
git push origin dev
```
Проверка staged перед коммитом: `git diff --cached --stat`.

---

## 2. Деплой backend на сервере

```bash
ssh root@178.104.217.201
cd /var/www/html/elearning
export PATH=$PATH:/usr/local/go/bin:/root/go/bin   # go1.25, task
```

### 2.1 Обновить код
На сервере бывают локальные изменения (`go.mod/go.sum/Taskfile.yaml/.gitignore`). Перед pull их прячем:
```bash
git stash push -u -m "predeploy-$(date +%s)"   # ⚠️ см. грабли ниже про -u
git pull --ff-only origin dev
git log --oneline -3
```

> ⚠️ **Грабли #1 — `git stash -u` прячет untracked `start-bins.sh`.**
> Файл `start-bins.sh` не в git. `git stash push -u` уносит его в stash.
> Если после stash `start-bins.sh` пропал — восстановить:
> ```bash
> git checkout 'stash@{0}^3' -- start-bins.sh   # ^3 = коммит untracked-файлов в stash
> ```
> Stash можно оставить как бэкап; сборка проходит и без застешенных go.mod/go.sum.

### 2.2 Собрать
```bash
task build-all     # go build всех 12 сервисов в ./bin/
```
Новый AI-код (Google STT/TTS) использует stdlib `net/http` — новых тяжёлых зависимостей нет,
`go mod tidy` обычно не требуется. Если build падает на go.sum — `go mod tidy` в проблемном сервисе.

### 2.3 Перезапустить
Запуск всех сервисов — скрипт `start-bins.sh` (использует `setsid`, env из `deploy/env/*.env`).

```bash
# Остановить (см. грабли #2 — НЕ использовать путь /var/www/html/elearning/bin/ в pkill!)
pkill -9 -f "elearning/bi[n]/"
sleep 2
# Запустить
bash start-bins.sh
sleep 6
pgrep -af "elearning/bi[n]/" | wc -l    # должно быть 12
```

> ⚠️ **Грабли #2 — pkill убивает свою же ssh-сессию.**
> `pkill -9 -f "/var/www/html/elearning/bin/"` совпадает и с командной строкой самой ssh-сессии
> (паттерн присутствует в ней) → сессия умирает, `start-bins.sh` не успевает выполниться, сервисы лежат.
> **Решение:** bracket-трюк — `pkill -9 -f "elearning/bi[n]/"`. Регекс матчит `bin`, но не сам литерал `bi[n]`.

#### Перезапуск ОДНОГО сервиса (без трогания остальных)
Пример для `ai-service` (svc=`ai`, bin=`ai-service`, env=`ai.env`):
```bash
ROOT=/var/www/html/elearning
pkill -9 -f "elearning/bi[n]/ai-service"
sleep 2
( cd "$ROOT/services/ai-service"
  set -a; . "$ROOT/deploy/env/ai.env"; set +a
  setsid "$ROOT/bin/ai-service" > "$ROOT/logs/ai.log" 2>&1 < /dev/null & )
```
Соответствие svc → bin → env-файл см. в `start-bins.sh`.

---

## 3. Конфигурация (env) — отличия local vs server

Env-файлы НЕ в git (секреты). Загружаются на сервере через `deploy/env/<svc>.env`
(симлинки на `deploy/compose/<svc>/.env`). Запуск через `start-bins.sh` делает `. deploy/env/<svc>.env`.

### Чем сервер отличается от локального (на момент 2026-06-21)
- **Ожидаемо разное:** `POSTGRES_PORT` (5435), `*_SERVICE_ADDR`/порты, `MINIO_*` (на сервере реальный), Google/OpenAI ключи.
- **Сравнить env local vs server** (значения по хешу, без раскрытия секретов):
  ```bash
  # запустить локально и на сервере, сравнить diff
  for f in deploy/compose/*/.env; do svc=$(basename $(dirname "$f"));
    while IFS= read -r l; do case "$l" in ""|\#*) continue;; esac;
      k=${l%%=*}; v=${l#*=};
      [ -z "$v" ] && h=EMPTY || h=$(printf "%s" "$v" | sha256sum | cut -c1-8);
      echo "$svc $k $h"; done < "$f"; done | sort
  ```

### Ключи/настройки, которые ОБЯЗАТЕЛЬНО задать на сервере

**AI (`deploy/compose/ai/.env`):**
```
GOOGLE_TTS_API_KEY=<ключ>        # STT/TTS (Google). Локально хранится в deploy/compose/ai/.env.local
AI_PROVIDER=openai               # mock | openai | anthropic | router
AI_OPENAI_API_KEY=<ключ>
AI_DEFAULT_MODEL_CHAT=gpt-4o-mini
AI_DEFAULT_MODEL_HEAVY=gpt-4o
AI_TTS_MODEL=tts-1
AI_TTS_VOICE=alloy
AI_WHISPER_MODEL=whisper-1
```
Проверка инициализации после рестарта (`logs/ai.log`):
`provider: openai`, `Google TTS synthesizer initialized`, `Google STT transcriber initialized`.

**Kafka / межсервисные адреса (включают XP-конвейер и обогащение):**

`deploy/compose/gamification/.env`:
```
KAFKA_BROKERS=localhost:19092
KAFKA_TOPIC_XP_GAINED=xp.gained
```
`deploy/compose/social/.env`:
```
KAFKA_BROKERS=localhost:19092
KAFKA_TOPIC_XP_GAINED=xp.gained
KAFKA_GROUP_ID=social-xp-consumer
USER_SERVICE_ADDR=localhost:50052
AUTH_SERVICE_ADDR=localhost:50051
NOTIFICATIONS_SERVICE_ADDR=localhost:50072
```
`deploy/compose/ai/.env`: `USER_SERVICE_ADDR=localhost:50052`
`deploy/compose/course/.env`: `GAMIFICATION_SERVICE_ADDR=localhost:50058`, `SRS_SERVICE_ADDR=localhost:50070`
`deploy/compose/step-validation/.env`: `GAMIFICATION_SERVICE_ADDR=localhost:50058`, `COURSE_SERVICE_ADDR=localhost:50053`, `SRS_SERVICE_ADDR=localhost:50070`

> Передавать секреты на сервер без вывода в консоль:
> ```bash
> # локально, из microservices-course/elearning
> grep -E '^GOOGLE_TTS_API_KEY=' deploy/compose/ai/.env.local \
>  | ssh root@178.104.217.201 'F=/var/www/html/elearning/deploy/compose/ai/.env; L=$(cat); \
>      cp "$F" "$F.bak.$(date +%s)"; sed -i "/^GOOGLE_TTS_API_KEY=/d" "$F"; printf "%s\n" "$L" >> "$F"'
> ```
> После правки env нужного сервиса — перезапустить именно его (см. §2.3).

### НЕ настроено на сервере (опционально, фичи выключены по дефолту)
- Push: `notifications` VAPID keys, `EXPO_PUSH_API`; в gamification `NOTIFICATIONS_ADDR`, `USER_SERVICE_ADDR` (birthday achievement).
- AI-квоты/тюнинг: `AI_FREE_*`/`AI_PREMIUM_*`, `AI_MODERATION`, `AI_QUOTA_RETENTION_DAYS`, `CRON_DAILY_AT`.
- Gamification-тюнинг: `DEFAULT_DAILY_XP`, `MAX_HEARTS`, `HEART_REGEN_INTERVAL`, `STREAK_FREEZE_MAX`.

---

## 4. Проверка (smoke + health)

```bash
# health (локально на сервере и публично)
ssh root@178.104.217.201 'curl -s -o /dev/null -w "%{http_code}\n" http://localhost:8080/health'
curl -s -o /dev/null -w "%{http_code}\n" https://178-104-217-201.sslip.io/health        # 200

# маршруты /api/v1 (401 = маршрут есть, нужна авторизация; сам /api/v1 = 404, это префикс)
B=https://178-104-217-201.sslip.io/api/v1
for e in /tracks /auth/me /ai/conversations; do
  echo "$e -> $(curl -s -o /dev/null -w '%{http_code}' "$B$e")"; done
curl -s -o /dev/null -w "login -> %{http_code}\n" -X POST "$B/auth/login" -H "Content-Type: application/json" -d '{}'  # 400

# ошибки в логах сервисов
ssh root@178.104.217.201 'for f in /var/www/html/elearning/logs/*.log; do
  e=$(grep -iE "error|panic|fatal|refused|dial tcp" "$f" | tail -2); [ -n "$e" ] && { echo "--- $f ---"; echo "$e"; }; done'

# Kafka: топик, consumer group, lag
ssh root@178.104.217.201 'docker exec elearning-redpanda rpk topic list; \
  docker exec elearning-redpanda rpk group describe social-xp-consumer | grep -E "STATE|TOTAL-LAG|xp.gained"'
```

---

## 5. Сквозной тест XP-конвейера (e2e)

Проверяет цепочку: `complete step → course → gamification.AddXP → Kafka(xp.gained) → social consumer`.

```bash
B=https://178-104-217-201.sslip.io/api/v1

# 1) гость (нужен device_id)
RESP=$(curl -s -X POST "$B/auth/guest" -H "Content-Type: application/json" -d "{\"device_id\":\"e2e-$(date +%s)\"}")
TOKEN=$(echo "$RESP" | python3 -c "import sys,json;print(json.load(sys.stdin)['access_token'])")

# 2) взять step_id и его course_id из БД (creds из course env)
ssh root@178.104.217.201 'cd /var/www/html/elearning; set -a; . deploy/compose/course/.env; set +a;
  docker exec -e PGPASSWORD="$POSTGRES_PASSWORD" elearning-postgres psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -At -F" | " \
   -c "SELECT s.id, m.course_id FROM courses.steps s JOIN courses.lessons l ON s.lesson_id=l.id JOIN courses.modules m ON l.module_id=m.id LIMIT 1;"'
# => STEP, COURSE

# 3) enroll + complete (шаг привязан к курсу → нужна запись на курс)
curl -s -X POST "$B/courses/$COURSE/enroll" -H "Authorization: Bearer $TOKEN" -d '{}'
curl -s -X POST "$B/progress/steps/$STEP/complete" -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" -d '{"time_spent_seconds":30,"score":1.0}'

# 4) проверить XP и Kafka
curl -s -H "Authorization: Bearer $TOKEN" "$B/gamification/xp/history"     # transactions с amount
ssh root@178.104.217.201 'docker exec elearning-redpanda rpk topic describe xp.gained -p | tail -2'  # HIGH-WATERMARK растёт
ssh root@178.104.217.201 'docker exec elearning-redpanda rpk group describe social-xp-consumer | grep -E "TOTAL-LAG|xp.gained"'  # LAG=0
```

Результат прошлого прогона: enroll `201`, complete `200`, XP `+100` (enroll) и `+10` (step),
`xp.gained` HIGH-WATERMARK `0→3`, social consumer `CURRENT-OFFSET=3, LAG=0`. ✅

> Тест создаёт гостевой аккаунт на проде. Подчистить гостей: `POST /api/v1/admin/auth/cleanup-guests` (admin).

---

## 6. Частые проблемы

| Симптом | Причина / решение |
|---|---|
| `complete` → 500 "User does not have access to this course" | гость не записан → сначала `POST /courses/:id/enroll` |
| `/api/v1` → 404 | это префикс, а не маршрут. Реальные эндпоинты под ним (`/api/v1/tracks` и т.д.) |
| После рестарта сервисы лежат | сработали грабли #2 (pkill убил сессию). Перезайти, `bash start-bins.sh` |
| `start-bins.sh: No such file` | грабли #1, восстановить из stash (`git checkout 'stash@{0}^3' -- start-bins.sh`) |
| ai.log: `provider: mock` | не задан `AI_PROVIDER=openai` / ключ. Править ai/.env, рестарт ai |
| gamification.log: `KAFKA_BROKERS empty — ... disabled` | задать `KAFKA_BROKERS=localhost:19092`, рестарт |
| Не используй `./gradlew clean` (mobile) | удаляет generated Codegen. Только `./gradlew assembleDebug` |
