# Phase 4 — Progress Log

> Живой статус Phase 4 (социальное: leagues, cohorts, weekly rotation,
> leaderboards). Friends отложены в Phase 4.5.
> См. [phase-4-social.md](./phase-4-social.md) и
> [PHASE_3_PROGRESS.md](./PHASE_3_PROGRESS.md).

**Дата старта:** 2026-05-15
**Дата последнего обновления:** 2026-05-15
**Статус:** 🟢 **Backend MVP done (infra + social-service + gamification producer + gateway). Frontend и unit-coverage repos — TODO.**

---

## 🎯 Согласованный scope (2026-05-15)

| Решение | Значение |
|---------|----------|
| **Архитектура** | Новый микросервис `social-service` (порт `:50061`, schema `social`, role `social_user`), по аналогии с `srs-service`. Отдельный домен → чистое разделение. |
| **Leaderboard storage** | **Redis Sorted Sets** (`leaderboard:cohort:{cohort_id}`). Postgres хранит «истину» (snapshot rank каждые 10 мин), Redis — горячий путь чтения/обновления. |
| **XP интеграция** | **Kafka topic `xp.gained`**. Gamification-service публикует event при `AddXP`, social-service consumer обновляет `weekly_xp` + Redis ZIncrBy. Async, decoupled. |
| **Friends** | **Отложены в Phase 4.5** — фокус MVP на лигах. Friends будут отдельной итерацией. |
| **Frontend** | Отложен до конца backend. После — `/leagues`, `/leagues/history` (web + mobile). |
| **Cron** | Weekly rotation: воскресенье 23:59 UTC. Rank snapshot: каждые 10 минут (Redis → Postgres). |
| **Failure mode** | Kafka events at-least-once. Social-service consumer идемпотентен (insert ON CONFLICT). Gamification.AddXP — non-fatal: ошибка publisher не валит AddXP. |

---

## 🗺️ План работы

### Инфраструктура
- [x] **4.1** Docker compose: Redis + Redpanda (Kafka API совместимый, single-binary) добавлены в `deploy/compose/core/docker-compose.yml` + env (`REDIS_*`, `KAFKA_*`).
- [x] **4.2** `platform/pkg/redis` — обёртка над `github.com/redis/go-redis/v9` (config, ping, close, no-op при пустом addr).
- [x] **4.3** `platform/pkg/kafka` — обёртка над `github.com/segmentio/kafka-go`:
  - `Producer` interface + `kafkaProducer` (sync, RequireAll) + `noopProducer`
  - `Consumer` (ConsumerGroup) с явным `Run(ctx, onError)` — sync commit после успешного handler
  - `SplitBrokers()` helper для парсинга comma-separated env

### Proto + миграции
- [x] **4.4** `shared/proto/social/v1/social.proto` — `SocialService` с 6 RPCs:
  - `ListLeagues`, `EnsureUserInLeague`, `GetMyLeague`, `GetMyLeaderboard`, `GetHistory`, `RunWeeklyRotation`
  - Messages: `League`, `UserLeague`, `LeaderboardEntry` (с `is_me`), `LeagueHistoryEntry`
  - Также добавлен `BatchGetProfiles` в `user.proto` для enrichment
- [x] **4.5** Migrations:
  - `000001_create_leagues.{up,down}.sql` + seed 10 лиг (idempotent через ON CONFLICT)
  - `000002_create_cohorts.{up,down}.sql`
  - `000003_create_user_leagues.{up,down}.sql`
  - `000004_create_league_history.{up,down}.sql`
- [x] **4.6** `deploy/compose/core/init-db.sql` — `CREATE SCHEMA social`, role `social_user` с GRANT'ами.

### social-service backend
- [x] **4.7** Scaffold: `services/social-service/` — cmd/main.go, internal/{app,config,model,repository,service,api/v1,converter,client/users,kafka,cron} + go.mod + добавлен в go.work + Taskfile.
- [x] **4.8** `model/model.go` — `League`, `Cohort`, `UserLeague`, `LeagueHistoryEntry`, `LeaderboardEntry` + helpers (`CycleBoundaries`, `PromotionGems`, `IsFull`).
- [x] **4.9** Postgres repos:
  - `LeagueRepository` (List, GetByID)
  - `CohortRepository` (FindOpen, Create, IncrementMemberCount, MarkFinished, ListActiveExpired, GetByID)
  - `UserLeagueRepository` (Get, Upsert ON CONFLICT user_id, IncrementWeeklyXP, UpdateRank, ResetWeeklyXPInCohort, ListByCohort)
  - `LeagueHistoryRepository` (Create idempotent через `(user_id, cycle_start_at)`, ListByUser с total)
- [x] **4.10** `repository/redis/leaderboard.go`:
  - `AddXP` → `ZIncrBy`, `SetXP` → `ZAdd`, `GetTop` → `ZRevRangeWithScores`,
    `GetRank` → `ZRevRank` (1-based), `GetScore` → `ZScore`, `Reset` → `Del`
  - Ключ: `leaderboard:cohort:{cohort_id}`
- [x] **4.11** Service (`service/service.go`):
  - `EnsureUserInLeague` — idempotent, переназначает в актуальный цикл если cohort устарела
  - `assignToCohort` — Postgres + Redis bootstrap
  - `OnXPGained` — Postgres увеличение + Redis ZIncrBy (Redis non-fatal — snapshot восстановит)
  - `GetMyLeague` — обогащает rank свежим Redis ZRevRank
  - `GetMyLeaderboard` — Redis top 30 (fallback Postgres) + enrichment через user-service.BatchGetProfiles
  - `GetHistory`
  - `SnapshotRanks` — Redis → user_leagues.rank_in_cohort (для запросов между ZIncrBy)
  - `RunWeeklyRotation` — full pipeline: ranking → history → promotion/demotion → reassign в next-week cohort → Redis Reset → MarkFinished
- [x] **4.12** `cron/scheduler.go` — две горутины (Weekly "Day HH:MM" UTC + Snapshot ticker), graceful stop через context cancel + WaitGroup.
- [x] **4.13** `kafka/consumer.go` — XPConsumer с handler'ом, парсит JSON XPGainedEvent, вызывает `service.OnXPGained`. Невалидный JSON / user_id → лог + skip (committed). Если KAFKA_BROKERS пуст — consumer не создаётся, сервис стартует без него.
- [x] **4.14** gRPC API (`internal/api/v1/api.go`) + `internal/converter/converter.go` — все 6 RPCs.
- [x] **4.15** `client/users/{client,grpc,noop}.go` — `BatchGetProfiles` для enrichment.

### Gamification → Kafka
- [x] **4.16** `gamification-service`:
  - Новый `internal/publisher/xp.go` — `XPPublisher` interface + `kafkaPublisher` + `NoopPublisher`
  - В `AddXP` после CheckAchievements вызывается `publishXPGained` — non-fatal
  - DI в `app.go`: `publisher.New(brokers, topic)` → `svc.WithXPPublisher(...)`
  - Config: `KAFKA_BROKERS`, `KAFKA_TOPIC_XP_GAINED`
- [x] **4.17** user-service: реализован `BatchGetProfiles` RPC:
  - `repository.UserRepository.BatchGetProfiles` (PG `WHERE user_id = ANY($1)`)
  - `service.UserService.BatchGetProfiles`
  - `api/user/v1/batch_get_profiles.go` (handler)

### Gateway
- [x] **4.18** `internal/client/social.go` — `SocialClient` wrapper (6 методов + Close).
- [x] **4.19** `internal/handler/social.go` — `SocialHandler`:
  - `ListLeagues` — public
  - `GetMyLeague`, `GetMyLeaderboard` — protected, перед чтением вызывают `EnsureUserInLeague` (idempotent bootstrap)
  - `GetHistory` — protected, с пагинацией
- [x] **4.20** `internal/config/{interfaces.go, env/services.go}` — `SocialServiceAddr()` метод.
- [x] **4.21** `internal/app/{di.go, app.go}` — `SocialClient(ctx)` DI + регистрация роутов:
  - Public: `GET /api/v1/leagues`
  - Protected: `GET /api/v1/leagues/mine`, `/leagues/mine/leaderboard`, `/leagues/history`

### Deploy / Taskfile
- [x] **4.22** `deploy/env/social.env.template` + расширен `.env` (SOCIAL_*, REDIS_*, KAFKA_*).
- [x] **4.23** `deploy/env/gamification.env.template` — `KAFKA_BROKERS`, `KAFKA_TOPIC_XP_GAINED`.
- [x] **4.24** `deploy/env/gateway.env.template` — `SOCIAL_SERVICE_ADDR`.
- [x] **4.25** `Taskfile.yaml` — `run-social`, `migrate-up-social`, social в `run-all-bg`, `build-all`, `migrate-up-all`. `MODULES`/`SERVICES` обновлены.

### Тесты
- [x] **4.26** Unit-tests: `model.CycleBoundaries` (4 cases) + `PromotionGems` (11) + `Cohort.IsFull` (3) + `cron.nextWeeklyAt` (5) — все зелёные.
- [ ] **4.27** Postgres-репозитории — нужны интеграционные (с тестовой БД через testcontainers / docker-compose).
- [ ] **4.28** Redis-репозиторий — нужен miniredis тест.
- [ ] **4.29** Service-слой — нужны in-memory моки для всех repos и unit-тесты на rotation / OnXPGained.

### Frontend (отложено)
- [ ] **4.30** Web: `/leagues` (hero + leaderboard + timer + zones), `/leagues/history` + hooks `use-my-league`, `use-leaderboard`, `use-league-history`.
- [ ] **4.31** Mobile: те же экраны + Lottie promotion celebration animation.

---

## 📦 Артефакты

_(пополняется по мере выполнения задач)_

---

## ✅ Verification

```bash
# Unit tests
cd services/social-service && go test ./...

# Build
for s in services/*/; do (cd "$s" && go build ./...); done

# Migrations
task migrate-up-social

# Manual integration:
# 1. docker compose up -d   # postgres + redis + redpanda
# 2. task run-all-bg
# 3. Регистрируем нового юзера → должен попасть в Bronze cohort
# 4. AddXP → видим в leaderboard
# 5. RunWeeklyRotation (через grpcurl) → проверяем promotion/demotion
```

---

## 🧠 Дизайн-решения

### Почему отдельный social-service а не gamification

Phase 3 показала pattern: новая фаза = новый сервис, своя schema,
свой cron, свой Kafka consumer-group. Леги — отдельный domain
(weekly cycle, cohorts, ranking) с собственной логикой ротации.
gamification остаётся core-domain «балл/жизни/streak/достижения».
gRPC контракт между ними формализуется через Kafka event.

### Почему Redis sorted sets вместо Postgres-only

Каждый AddXP → обновление leaderboard. На пиковой нагрузке (1000
юзеров одновременно делают шаг) — это 1000 transactions/sec на
Postgres + блокировки strings. Redis ZIncrBy — O(log n) lock-free.
Postgres остаётся source of truth (durable storage), Redis —
hot-path cache.

### Почему Kafka, а не sync gRPC между gamification и social

`AddXP` — критический путь обучения. Если social-service лежит,
учёба не должна страдать. Kafka буферизует events, social
догонит когда поднимется. Также при росте — можно подключить
другие consumer'ы (analytics, notifications) без изменения
gamification-service.

### Почему Redpanda а не Kafka+Zookeeper

Redpanda — single-binary Kafka API совместимый брокер. Без
Zookeeper, без JVM. Один контейнер вместо трёх (Kafka + Zookeeper
+ schema-registry). Для dev и MVP более чем достаточно. На prod
можно мигрировать на managed Kafka (Confluent Cloud / MSK).

### Почему `(user_id_1 < user_id_2)` для friendships

Симметричное отношение `A ↔ B` хранится одной строкой через
нормализацию UUID-ов: `(user_id_1, user_id_2)` всегда отсортированы.
Уникальный индекс гарантирует одну запись на пару, любой запрос
"мои друзья" ищет в обоих столбцах. (Применится в Phase 4.5.)

### Идемпотентность Kafka consumer'а

`xp.gained` event может прийти 2 раза (at-least-once). Increment'ы
на Postgres и Redis коммутативны: повторный event просто двойным
инкрементом. Это допустимый компромисс для leaderboard (точность
±20-50 XP не критична). Если потребуется exact-once — добавим
event_id + processed_events table.

### Почему cohort = 30 человек, не 10/50

Цифра из плана phase-4 (Duolingo классика). 30 — баланс между
"видно всех" (UX) и "достаточно конкуренции". Если когорт
становится много (~10000), снизим до 20.

---

## ❌ Открытые TODO

- [ ] **Phase 4.5: Friends** — friendships table, request/accept/reject, friend leaderboard.
- [ ] **Diamond Tournament** — ежемесячный турнир для топ Diamond. Phase 4.6.
- [ ] **Promotion celebration UI** — Lottie animation. Frontend.
- [ ] **Push notifications** "You are in danger zone!" / "You promoted to X!". Mobile.
