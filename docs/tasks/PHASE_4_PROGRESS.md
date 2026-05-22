# Phase 4 — Progress Log

> Живой статус Phase 4 (социальное: leagues, cohorts, weekly rotation,
> leaderboards). Friends отложены в Phase 4.5.
> См. [phase-4-social.md](./phase-4-social.md) и
> [PHASE_3_PROGRESS.md](./PHASE_3_PROGRESS.md).

**Дата старта:** 2026-05-15
**Дата последнего обновления:** 2026-05-15
**Статус:** 🟢 **Backend full done (infra + social + gamification producer + gateway + promotion push hook + Phase 4.5 Friends backend). Тесты: service (40+) + redis miniredis (12) + postgres testcontainers (26). Frontend web Leagues (`/leagues`, `/leagues/history`) + Friends (`/friends`, `/friends/leaderboard` + notifications toggle) — done. Mobile — TODO.**

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
- [x] **4.27** Postgres-репозитории — `internal/repository/postgres/postgres_test.go` через `testcontainers-go/modules/postgres`. 19 тестов: leagues (2) + cohorts (5) + user_leagues (6) + history (4). Накат миграций в TestMain. Пропуск через `SKIP_PG_INTEGRATION=1`.
- [x] **4.28** Redis-репозиторий — `internal/repository/redis/leaderboard_test.go` через `alicebob/miniredis/v2`. 12 тестов: AddXP/SetXP/GetTop/GetRank/GetScore/Reset + isolation между cohort-ами + negative amount.
- [x] **4.29** Service-слой — `internal/service/service_test.go` с in-memory моками для всех 5 repos + users + notifications. 26 тестов: EnsureUserInLeague (5) + OnXPGained (4) + GetMyLeague (2) + GetMyLeaderboard (3) + SnapshotRanks (2) + RunWeeklyRotation (6) + GetHistory (1) + Promotion push (3).

### Промо push (social → notifications)
- [x] **4.30** Новый клиент `services/social-service/internal/client/notifications/{client,grpc,noop}.go` (по образцу gamification / srs).
- [x] **4.31** `service.Service.WithNotifications` + `sendPromotionPush` в `RunWeeklyRotation` (только для promoted; channel=`achievement`, `ignore_quiet_hours=true`, dedup_key = `league_promotion:<cohort>:<user>`).
- [x] **4.32** `app.go` подхватывает `NOTIFICATIONS_SERVICE_ADDR`; `social.env.template` + `deploy/env/.env` (`SOCIAL_NOTIFICATIONS_SERVICE_ADDR`) расширены.
- [x] **4.33** Fix миграций: `000002_create_cohorts.up.sql` / `000003_create_user_leagues.up.sql` — убран невалидный `COMMENT ON ... 'a' || 'b'` (Postgres не принимает выражения в COMMENT IS, только literals). До этого миграции бы упали на свежем PG.

### Frontend web (eng_next2)
- [x] **4.34** Hooks: `src/hooks/use-leagues.ts` — `useLeaguesCatalog` / `useMyLeague` / `useMyLeaderboard` / `useLeagueHistory` (TanStack Query, кешируются под auth-флагом).
- [x] **4.35** API client: `src/lib/social-api.ts` — обёртка над gateway `/api/v1/leagues*`.
- [x] **4.36** Types: `src/types/api.ts` — `League`, `UserLeague`, `LeaderboardEntry`, `LeagueHistoryEntry`, response shapes.
- [x] **4.37** Page `/leagues`: Hero (текущая лига + cycle timer + my rank + my XP) + zone hints (promotion top-N / demotion bottom-M) + Leaderboard (топ 30 с avatar + zone-окрашиванием рядов + `is_me` подсветкой).
- [x] **4.38** Page `/leagues/history`: rows с League name + final_rank + cycle dates + gems + promo/demo badges + пагинация (PAGE_SIZE=20).
- [x] **4.39** Nav: пункт «Лиги» / «Leagues» добавлен в `components/navbar.tsx` + `lib/i18n.tsx` (ru/en).

### Mobile (отложено)
- [ ] **4.40** Mobile (eng_mob): те же экраны + Lottie promotion celebration animation.

### Phase 4.5 — Friends (backend full done 2026-05-15)
- [x] **4.41a** Миграция `000005_create_friendships.up.sql` — таблица `friendships`
  с нормализованной парой `(user_id_1 < user_id_2)`, status check
  (`pending`/`accepted`/`blocked`), unique pair, 3 индекса (по обеим сторонам +
  partial по pending).
- [x] **4.41b** `model/friendship.go` — `Friendship`, `FriendshipStatus`,
  `NormalizePair`, `OtherSide`, `IsParticipant`, `ErrSelfFriendship`.
- [x] **4.41c** `repository/postgres/friendships.go` — `FriendshipRepository`:
  Get / GetByID / Create (с unique-violation → ErrAlreadyExists) / UpdateStatus /
  Delete / ListByUser (с total) / ListAcceptedFriendIDs.
- [x] **4.41d** `repository/postgres/util.go` — общий `isUniqueViolation` (по
  образцу notifications-service).
- [x] **4.41e** Friends leaderboard — on-the-fly через
  `UserLeagueRepo.BatchGetByUserIDs` (вместо денормализованного
  `leaderboard:friends:{user_id}` ZSET — поддержка N множеств per friend
  слишком дорогая на каждом xp.gained event).
- [x] **4.41f** `auth-service.SearchByUsername` — public RPC (proto + repo +
  service + api). ILIKE prefix-search в `auth.users`. Min query length 2.
- [x] **4.41g** `social-service/internal/client/auth/{client,grpc,noop}.go` —
  client с SearchByUsername + BatchGetUsernames (N единичных GetUserInfo,
  noop fallback).
- [x] **4.41h** `service/friends.go` — 8 методов: SendFriendRequest (с
  mutual auto-accept на встречный запрос + idempotent), AcceptFriendRequest /
  RejectFriendRequest (только target), RemoveFriend, ListFriends,
  ListPendingRequests (incoming/outgoing/all), SearchUsersByUsername (auth +
  enrichment + текущий статус дружбы), GetFriendsLeaderboard (друзья + self,
  sort DESC by weekly_xp).
- [x] **4.41i** Push hooks: новый канал `friend_request` для friend_request +
  friend_accepted событий. Миграция `notifications/000004_add_friend_request_channel`,
  CHECK extension, новое поле `friend_request_enabled`, обновлены proto +
  converter + repo + DefaultPreferences.
- [x] **4.41j** `proto/social/v1/social.proto` — 8 новых RPCs +
  `FriendshipStatus` enum + `Friendship`/`FriendInfo`/`LeaderboardFriendEntry`
  messages.
- [x] **4.41k** `internal/api/v1/friends.go` + `internal/converter/friends.go` —
  gRPC API + конвертеры. mapFriendError маппит ErrFriendshipDisabled →
  FailedPrecondition.
- [x] **4.41l** `app.go` DI: client/auth + friendship repo + WithFriendship.
  Config `AUTH_SERVICE_ADDR`. social.env.template + deploy/env/.env обновлены.
- [x] **4.41m** Gateway: SocialClient расширен 8 friend-методами,
  `handler/friends.go` (8 REST endpoints), регистрация в app.go под
  `protected.Group("/friends")`:
  - `GET /api/v1/friends`
  - `GET /api/v1/friends/pending?direction=incoming|outgoing|all`
  - `POST /api/v1/friends/request { user_id }`
  - `POST /api/v1/friends/accept/:friendshipId`
  - `POST /api/v1/friends/reject/:friendshipId`
  - `DELETE /api/v1/friends/:friendId`
  - `GET /api/v1/friends/search?q=&limit=`
  - `GET /api/v1/friends/leaderboard?limit=`
- [x] **4.41n** Tests:
  - service-слой (in-memory моки FriendshipRepo + auth + users + notif): 14
    тестов — Self/NewPair/Mutual/Idempotent/Accept/Reject/Remove/List/Search/
    Leaderboard/Disabled.
  - postgres testcontainers: 7 тестов на FriendshipRepository (Create+Get,
    Duplicate, NotFound, UpdateStatus, Delete, ListByUser, ListAcceptedFriendIDs).
- [x] **4.41o** `for s in services/*/; do go build ./... && go test ./...; done`
  — все 12 сервисов зелёные.

### Phase 4.5 Friends — Frontend web (eng_next2, done 2026-05-15)
- [x] **4.42a** Types `src/types/api.ts`: `FriendshipStatus`, `FriendInfo`,
  `Friendship`, `LeaderboardFriendEntry` + 8 request/response shapes
  (`FriendsListResponse`, `PendingFriendsResponse`, `SendFriendRequestRequest`/`Response`,
  `AcceptFriendRequestResponse`, `FriendSearchResponse`, `FriendsLeaderboardResponse`).
  Также `friend_request_enabled` в `UserPreferences`/`UpdatePreferencesRequest`
  + `ChannelFriendRequest` в `channelToShort`.
- [x] **4.42b** API client `src/lib/social-api.ts` — 8 friends-эндпойнтов
  (`listFriends`, `listPending`, `sendFriendRequest`, `acceptFriendRequest`,
  `rejectFriendRequest`, `removeFriend`, `searchUsers`, `getFriendsLeaderboard`).
- [x] **4.42c** Hooks `src/hooks/use-friends.ts` — 8 query/mutation хуков
  с invalidation на пересекающихся ключах (mutations инвалидируют friends + pending +
  leaderboard).
- [x] **4.42d** Page `/friends` (`app/friends/page.tsx`) — Tabs (Friends list /
  Pending / Search). Friends-tab: список accepted с avatar / username / weekly_xp +
  кнопка Remove. Pending: incoming (Accept/Reject) + outgoing (Cancel). Search:
  debounced input по username (≥2 chars) + Add-кнопка с current_status badge.
  Компоненты — inline в page.tsx (не выносим в `components/friends/`, ~440 строк).
- [x] **4.42e** Page `/friends/leaderboard` (`app/friends/leaderboard/page.tsx`) —
  on-the-fly board (friends + self), Medal для top-3, self-row подсветка,
  weekly_xp formatted.
- [x] **4.42f** Navbar (`components/navbar.tsx`): пункт «Друзья» / «Friends»
  (mobile menu + desktop) + i18n ключи (ru/en) в `lib/i18n.tsx`.
- [x] **4.42g** Notifications page (`app/profile/notifications/page.tsx`):
  ChannelToggle для `friend_request_enabled` + добавлен в form initial / isDirty.
- [x] **4.42h** Verify: `tsc --noEmit` clean, `eslint` clean на новых файлах,
  `next build` ✓ (маршруты `/friends`, `/friends/leaderboard` зарегистрированы
  как static).

### Phase 4.5 Friends — Frontend mobile (eng_mob, done 2026-05-16)
- [x] **4.43a** Types `src/types/api.ts`: блок Phase 4 (League /
  UserLeague / LeaderboardEntry / LeagueHistoryEntry + 4 response shapes)
  и блок Phase 4.5 Friends (FriendInfo / Friendship /
  FriendshipStatusProto+Short + `friendshipStatusToShort` /
  LeaderboardFriendEntry / PendingDirection + 8 response shapes).
- [x] **4.43b** API client `src/lib/api-client.ts`: `SocialApi`
  (4 leagues методы) + `FriendsApi` (8 friends-эндпойнтов).
- [x] **4.43c** Hooks `src/hooks/use-leagues.ts` (4 query) +
  `src/hooks/use-friends.ts` (4 query + 4 mutation, общий
  `invalidateQueries(['friends'])` на каждый success).
- [x] **4.43d** `app/leagues/_layout.tsx` + `index.tsx` — Hero (Crown +
  tier + cycle timer + my rank/XP) + Zone hints + Leaderboard top-30
  (Medal top-3 + is_me highlight + zone-окраска рядов).
- [x] **4.43e** `app/leagues/history.tsx` — pagination (PAGE_SIZE=20) +
  promotion/demotion badges + gems-counter.
- [x] **4.43f** Friends sub-routes (вместо inline tabs):
  - `app/friends/index.tsx` — 3 action-карты (Search / Pending / LB) +
    accepted-list с Remove (Alert.alert confirm).
  - `app/friends/pending.tsx` — incoming/outgoing разделение.
  - `app/friends/search.tsx` — debounce 250ms + status-aware action.
  - `app/friends/leaderboard.tsx` — Medal top-3, self highlight.
- [x] **4.43g** `components/ui/avatar.tsx` — переиспользуемый Avatar
  (Image + initials fallback).
- [x] **4.43h** `(tabs)/profile.tsx` — NavRow «🏆 Лиги» → /leagues,
  «👥 Друзья» → /friends. Нижние 5 табов не трогали.
- [x] **4.43i** Verification: `npx tsc --noEmit` clean,
  `npm run lint` — новые файлы clean (pre-existing ошибки унаследованы).

### Phase 4.5 — что НЕ сделано (next iteration)
- [ ] Push deep-linking из канала `friend_request` в mobile.
- [ ] Lottie promotion celebration overlay (требует ассет).
- [x] ~~Home-tab banner / mini-card для текущей лиги~~ — done (2026-05-17,
  web). `eng_next2/src/components/leagues/LeagueBanner.tsx` + i18n
  `leagues.{openCta,myRank,weeklyXP,cycleEnds,cycleEnding,zonePromotion,zoneDemotion}`
  (ru + en). Подключён в `app/page.tsx` (после Daily lesson) и
  `app/dashboard/page.tsx` (после header). Бесшумно скрывается без
  auth / при недоступном social-service. Подсвечивает promotion/demotion
  zone через бейджи поверх лиговой карточки. Использует существующие
  хуки `useMyLeague` / `useMyLeaderboard`.

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

- [x] ~~**Phase 4.5: Friends** — friendships table, request/accept/reject, friend leaderboard.~~ Backend full done.
- [x] ~~**Phase 4.5 Frontend web** — `/friends`, `/friends/leaderboard`, notifications toggle.~~ Done 2026-05-15.
- [ ] **Phase 4.5 Frontend mobile** — eng_mob friends-экраны.
- [ ] **Diamond Tournament** — ежемесячный турнир для топ Diamond. Phase 4.6.
- [ ] **Promotion celebration UI** — Lottie animation. Frontend.
- [ ] **Push notifications** "You are in danger zone!" / "You promoted to X!". Mobile.
