# Phase 3 — Progress Log

> Живой статус Phase 3 (адаптивное обучение). Обновляется по мере
> закрытия задач.
> См. [phase-3-adaptive-learning.md](./phase-3-adaptive-learning.md)
> и [PHASE_2_PROGRESS.md](./PHASE_2_PROGRESS.md).

**Дата старта:** 2026-05-14
**Дата последнего обновления:** 2026-05-15
**Статус:** 🟢 **Backend Phase 3 full + Web Frontend Done. Push notifications — backend (sender adapters + доменные хуки + gateway routes) + web UI готовы. Mobile UI — следующая итерация.**

---

## 🎯 Согласованный scope (2026-05-14)

| Решение | Значение |
|---------|----------|
| **Архитектура** | Новый микросервис `srs-service` (порт `:50060`, schema `srs`), по аналогии с gamification / step-validation. AGENTS.md рекомендация. |
| **Triggers** | Из `step-validation-service.Submit` — там известны `time_spent_ms` и `attempt_index`. Course-service не дёргаем (он не знает quality). |
| **MVP scope** | SRS (SM-2 алгоритм) + mistakes. **Без** practice-session generator, skill_decay, cron, frontend. ~2-3 дня. |
| **SM-2 vs FSRS** | Классический SM-2 (план явный). FSRS — отложен. |
| **Item types** | `vocabulary` / `step` / `phrase` (CHECK constraint). На MVP step-validation создаёт только `step`-карточки. |
| **Mistakes dedup** | По `(user_id, step_id, md5(canonical_json(answer)))`. Canonical = рекурсивная сортировка ключей объектов. |
| **Failure mode** | Все SRS-вызовы из step-validation — **non-fatal**: ошибка только в лог, Submit не валится. |

---

## 🗺️ План работы

### Backend (MVP)
- [x] **3.1** Proto: `shared/proto/srs/v1/srs.proto` + `buf generate`
- [x] **3.2** Migrations: `user_srs_items`, `srs_review_history`, `user_mistakes` (up + down) + `init-db.sql` (schema + role)
- [x] **3.3** srs-service: scaffold (`cmd`, `app`, `config`, `go.mod`) + `go.work` updated
- [x] **3.4** srs-service: domain `model/srs.go` + Postgres repositories
- [x] **3.5** srs-service: SM-2 алгоритм + `CalculateQuality` эвристика + unit-тесты (16)
- [x] **3.6** srs-service: Service слой (EnsureItem, RecordReview, GetDue, GetWeak, GetStats, RecordMistake, ResolveMistakesForStep, ListMistakes) + canonical-JSON tests (4)
- [x] **3.7** srs-service: gRPC API + converters (proto↔model)
- [x] **3.8** step-validation-service: `internal/client/srs/{client,grpc,noop}.go` + хук в `Submit` (`recordSRS`) + обновлены тесты
- [x] **3.9** Gateway: client + handler + 5 routes (`/srs/due,weak,stats,review`, `/mistakes`)
- [x] **3.10** Deploy: `srs.env.template`, `.env`, обновлены `step-validation.env.template` / `gateway.env.template`, `Taskfile.yaml` (`run-srs`, `migrate-up-srs`, `run-all-bg`, `build-all`)

### Backend (Phase 3 full)
- [x] **3.11** Practice session generator: `service/practice.go` — mix overdue/mistakes/weak (50/30/20) с дедупом по `step_id` и backfill из неиспользованных источников. Тесты — 4 (dedupe, defaults, custom-ratios, empty).
- [x] **3.12** Skill decay: миграция `000002_user_skill_decay` (schema + grants для `srs_user`) + `model.SkillDecay` + `SkillDecayRepository` (Upsert / Get / UpdateStrength / List / GetWeak / ApplyDailyDecay) + service (`InitSkill`, `StrengthenSkill`, `GetSkillStrengths`, `GetWeakSkills`, `RunDailyDecay`) + 6 unit-тестов. + `cron.Scheduler` (DailyDecay в HH:MM UTC, default `01:00`) c graceful stop через `closer`.
- [x] **3.13** API endpoints — расширены proto (`GeneratePracticeSession`, `InitSkill`, `StrengthenSkill`, `GetSkillStrengths`, `GetWeakSkills`, `RunDailyDecay`) + gRPC API в srs-service + gateway REST: `POST /api/v1/practice/session`, `GET /api/v1/skills`, `GET /api/v1/skills/weak`.
- [x] **3.14** Интеграция в course-service: новый `internal/client/srs/{client,grpc,noop}.go` (опциональный, активируется `SRS_SERVICE_ADDR`). `progress.MarkStepComplete` при первом закрытии урока вызывает `InitSkill(SKILL_TYPE_LESSON)` + при наличии `Lesson.ModuleID` — `InitSkill(SKILL_TYPE_MODULE)`. На повторных правильных прохождениях — `StrengthenSkill(amount=0.1)`. Все non-fatal.

### Frontend
- [x] **3.15** Web (eng_next2): `/practice`, `/practice/session`, `/practice/mistakes`, `/profile/strength` + `srs-api.ts` + `use-srs.ts` хуки. Typecheck зелёный.
- [ ] **3.16** Mobile (eng_mob): те же экраны + heatmap

### Push notifications (Phase 3 / расширение)

**Архитектура:** новый микросервис `notifications-service` (`:50062`,
schema `notifications`, user `notifications_user`). Сервис «тупого
отправителя»: хранит device-токены, prefs, журнал и доставляет push'и.
Бизнес-логика «когда отправлять» — в доменных сервисах через крон / хуки.

**Каналы:** `practice_reminder` (srs cron) / `streak_risk` (gamification cron) /
`daily_goal` (gamification cron) / `achievement` (gamification hook).

**Платформы:** web (VAPID Web Push) + expo (Expo HTTP API).

- [x] **3.18** Proto: `shared/proto/notifications/v1/notifications.proto`
  (8 RPC: RegisterDevice/Unregister/ListDevices, Get/UpdatePreferences,
  SendNotification, ListNotifications, MarkRead) + `buf generate`.
- [x] **3.19** Migrations: 3 таблицы (`device_tokens`, `user_preferences`,
  `notification_log`) + `init-db.sql` (schema + role).
- [x] **3.20** notifications-service scaffold: cmd / app / config / go.mod
  + `go.work` updated.
- [x] **3.21** Domain model + Postgres repositories (DeviceToken, Preferences,
  Log с dedup uniq + FindDedup для idempotency).
- [x] **3.22** Service layer: RegisterDevice / UnregisterDevice /
  ListDevices, GetPreferences (с defaults) / UpdatePreferences,
  **SendNotification** с проверками pref → quiet hours → dedup →
  no-devices → log queued → dispatcher → log update. ListNotifications +
  MarkRead для in-app inbox.
- [x] **3.23** Sender abstraction: `Dispatcher` + `Sender` interface +
  `LogSender` (log-only stub). Реальные WebPush/Expo адаптеры — следующая итерация.
- [x] **3.24** gRPC API + converters + 6 unit-тестов (happy path, dedup,
  prefs disabled, quiet hours, no-devices, register validation, quiet
  window math).
- [x] **3.25** Deploy: `notifications.env.template`, `.env` (NOTIFICATIONS_*
  + GATEWAY_NOTIFICATIONS_SERVICE_ADDR + GAMIFICATION_NOTIFICATIONS_ADDR +
  SRS_NOTIFICATIONS_ADDR), Taskfile (`run-notifications`,
  `migrate-up-notifications`, обновлены MODULES/SERVICES/run-all-bg/build-all).
- [x] **3.26** SDD: `docs/sdd/notifications-service.md`.

**Закрыто (2026-05-15):**
- [x] **3.27** Sender adapters: `WebPushSender` (VAPID, RFC 8030 через
  `webpush-go`) + `ExpoPushSender` (Expo HTTP `/api/v2/push/send`).
  Revoke по 404/410 / `DeviceNotRegistered` через `outcome.ShouldRevoke
  → devices.RevokeByID`. Регистрация в Dispatcher по платформам в
  `app/app.go` (WebPushSender активируется при наличии VAPID-ключей).
- [x] **3.28** gamification-service:
  `internal/client/notifications/{client,grpc,noop}.go` + хук в
  `service/achievements.go.CheckAchievements` (channel=`achievement`,
  dedup `achievement:<id>`). Новый `internal/cron/reminders.go`
  `RemindersScheduler` (hourly tick + timezone-bucket через
  user-client) — `streak_risk` (default local hour 20) + `daily_goal`
  (default local hour 21). `Service.userLocation` →
  `Service.UserLocation` (экспорт для cron). Env:
  `NOTIFICATIONS_ADDR`, `REMINDER_STREAK_HOUR`, `REMINDER_DAILY_GOAL_HOUR`.
- [x] **3.29** srs-service:
  `internal/client/notifications/{client,grpc,noop}.go` +
  `internal/client/user/{client,grpc,noop}.go` (только `Timezone`,
  TTL-кэш 5 мин). Новый репо-метод
  `SRSItemRepository.ListUserIDsWithDue(cutoff, limit, offset)` для
  enumerate'а кандидатов. Новый `internal/cron/practice_reminders.go`
  `RemindersScheduler` (hourly + DueNow>0 && ReviewedToday==0).
  Env: `NOTIFICATIONS_ADDR`, `USER_SERVICE_ADDR`,
  `PRACTICE_REMINDER_HOUR` (def 19).
- [x] **3.30** Gateway: `internal/client/notifications.go` +
  `internal/handler/notifications.go` + **8 REST routes** (auto-skip
  если `NOTIFICATIONS_SERVICE_ADDR` пуст):
  ```
  POST   /api/v1/notifications/devices
  GET    /api/v1/notifications/devices
  DELETE /api/v1/notifications/devices/:id
  GET    /api/v1/notifications/preferences
  PUT    /api/v1/notifications/preferences
  GET    /api/v1/notifications?read=&limit=&offset=
  POST   /api/v1/notifications/:id/read
  POST   /api/v1/notifications/read-all
  ```
- [x] **3.31** Web (eng_next2):
  - `public/sw.js` — service worker (push handler + click deeplinks
    по `data.kind`).
  - `src/lib/web-push.ts` — `detectPushSupport`, `ensureServiceWorker`,
    `subscribeToPush`/`unsubscribeFromPush` + base64url helpers.
  - `src/lib/notifications-api.ts` + типы (`DeviceToken`,
    `UserPreferences`, `NotificationLog`, ...) в `src/types/api.ts`.
  - `src/hooks/use-notifications.ts` — `useNotifications`,
    `useNotificationPreferences`, `useUpdateNotificationPreferences`,
    `useNotificationDevices`, `usePushSubscription`.
  - `src/app/profile/notifications/page.tsx` — subscribe + 4 канала +
    quiet hours + devices.
  - `src/components/notifications/subscribe-banner.tsx` — sticky-баннер
    в `components/layout.tsx`, dismiss на 7 дней через localStorage.
  - `NEXT_PUBLIC_VAPID_PUBLIC_KEY` в `.env.local`.

**Что осталось (next sessions):**
- [ ] **3.32** Mobile (eng_mob): expo-notifications token registration +
  prefs UI + inbox.

---

## 📦 Артефакты

### 3.1 — Proto (2026-05-14)

- ✅ `shared/proto/srs/v1/srs.proto` — service `SRSService` с **8 RPC**:
  - **SRS:** `EnsureItem`, `RecordReview`, `GetDueItems`, `GetWeakItems`, `GetStats`
  - **Mistakes:** `RecordMistake`, `ResolveMistakesForStep`, `ListMistakes`
- ✅ Enum `ItemType` (`UNSPECIFIED`/`VOCABULARY`/`STEP`/`PHRASE`).
- ✅ Messages: `SRSItem`, `ReviewHistory`, `Mistake` (incl. `incorrect_answer` как `google.protobuf.Struct`).
- ✅ `ListMistakesRequest.resolved` — tri-state `int32` (`-1`=all, `0`=unresolved, `1`=resolved): proto3 без `optional bool` тут оверкилл.
- ✅ `task proto:gen` → `shared/pkg/proto/srs/v1/{srs.pb.go, srs_grpc.pb.go}` сгенерированы.

### 3.2 — Миграции (2026-05-14)

- ✅ `services/srs-service/migrations/000001_create_user_srs_items.{up,down}.sql`
  - SM-2 параметры: `easiness_factor DOUBLE PRECISION DEFAULT 2.5`,
    `interval_days INT DEFAULT 0`, `repetitions INT DEFAULT 0`.
  - Расписание: `next_review_at TIMESTAMPTZ DEFAULT NOW()`, `last_reviewed_at` nullable.
  - Статистика: `total_reviews`, `correct_reviews`, `incorrect_reviews`, `avg_response_time_ms`.
  - `strength DOUBLE PRECISION DEFAULT 0.0` — производная.
  - Уникальный `(user_id, item_type, item_id)`.
  - CHECKs: `item_type IN ('vocabulary','step','phrase')`, `easiness_factor >= 1.3`, `strength ∈ [0..1]`.
  - Индексы: `(user_id, next_review_at)`, `(user_id, strength)`, `(user_id, item_type)`.
- ✅ `000002_create_srs_review_history.{up,down}.sql`
  - FK `srs_item_id → user_srs_items.id ON DELETE CASCADE`.
  - Snapshot после SM-2: `new_interval_days`, `new_easiness_factor`, `new_repetitions`.
  - CHECK `quality 0..5`.
  - Индексы `(user_id, reviewed_at DESC)`, `(srs_item_id, reviewed_at DESC)`.
- ✅ `000003_create_user_mistakes.{up,down}.sql`
  - Дедупликация: `UNIQUE (user_id, step_id, answer_hash)`.
  - `answer_hash TEXT` — отдельная колонка (не функциональный индекс),
    заполняется в service-слое из canonical JSON.
  - Индексы: `(user_id, is_resolved, last_made_at DESC)`, `(user_id, step_id)`.
- ✅ `deploy/compose/core/init-db.sql` — `CREATE SCHEMA srs`, role `srs_user` с GRANT'ами по аналогии с step-validation.

### 3.3 — Scaffold srs-service (2026-05-14)

- ✅ `services/srs-service/`
  - `cmd/main.go` — signal.NotifyContext + closer + app.Run.
  - `internal/app/app.go` — pgxpool init, repos, service, gRPC server `:50060`.
  - `internal/config/config.go` — godotenv, env-defaults (`GRPC_PORT=50060`, `POSTGRES_SCHEMA=srs`).
  - `go.mod` — `github.com/elearning/srs-service` + replace platform/shared.
- ✅ `go.work` — добавлен `./services/srs-service`.

### 3.4 — Model + Postgres repos (2026-05-14)

- ✅ `internal/model/srs.go` — `SRSItem`, `ReviewHistory`, `Mistake`, тип `ItemType` + helpers (`IsValid`, `IsDue`, `IsMastered`). Константы `DefaultEasinessFactor=2.5`, `MinEasinessFactor=1.3`, `MasteredThreshold=0.9`.
- ✅ `internal/repository/repository.go` — 3 интерфейса: `SRSItemRepository`, `ReviewHistoryRepository`, `MistakeRepository`. `SRSStats` структура.
- ✅ `internal/repository/postgres/srs_item.go` — Upsert через
  `INSERT ... ON CONFLICT DO UPDATE SET updated_at = updated_at`
  (no-op) + `RETURNING ..., (xmax = 0) AS was_inserted`. Это даёт
  атомарный «get-or-create» с флагом `created`.
  Stats: один запрос `COUNT(*) FILTER` по статусам + отдельный для `reviewed_today`.
- ✅ `internal/repository/postgres/review_history.go` — Create с `RETURNING reviewed_at`.
- ✅ `internal/repository/postgres/mistake.go` — Upsert
  `ON CONFLICT (user, step, hash) DO UPDATE SET times_made = times_made+1, last_made_at = NOW(), is_resolved = FALSE, resolved_at = NULL`.
- ✅ `internal/repository/postgres/util.go` — `isUniqueViolation` (`23505`), `nullTime`, `itoa`.

### 3.5 — SM-2 алгоритм + CalculateQuality (2026-05-14)

- ✅ `internal/service/sm2.go` — `ApplySM2(item, quality, responseTimeMs, now)`:
  - `q >= 3`: `n == 0 → I=1`, `n == 1 → I=6`, `n >= 2 → I=round(I_prev · EF)`, `n++`.
  - `q < 3`: `n=0, I=1`.
  - `EF += 0.1 - (5-q)(0.08 + (5-q)·0.02)`, floor `1.3`.
  - `avg_response_time_ms` — incremental mean: `avg += (rt - avg) / N`.
  - `strength = accuracy · min(1, reps/10)`.
- ✅ Также в этом же файле `CalculateQuality` (для unit-тестов в srs-service).
- ✅ Дублирована эвристика `CalculateQuality` в `services/step-validation-service/internal/service/srs_quality.go` —
  это часть policy step-validation (как `xpForStep`); srs-service остаётся domain-pure.
- ✅ Юнит-тесты (`sm2_test.go`) — **16 case-ов**:
  - `FirstReview_Correct` (I=1, reps=1, EF>2.5)
  - `SecondReview_Correct` (I=6, reps=2)
  - `ThirdReview_UsesEF` (I = round(6·EF_prev))
  - `FailResetsReps` (reps=0, I=1 после q=0)
  - `EFFloor` — 20 неуд → EF ровно `1.3`
  - `StrengthGrowsWithSuccess` — монотонно растёт
  - `StrengthClamped` — `[0..1]` всегда
  - `QualityClamps` — `q=99 → 5`, `q=-5 → 0`
  - `AvgResponseTime` — incremental mean (2000 → 3000)
  - `CalculateQuality_IncorrectCases` (1 / 0)
  - `CalculateQuality_CorrectFast` (5)
  - `CalculateQuality_CorrectSlow` (4 / 3)
  - `CalculateQuality_CorrectWithHint` (3)
  - `CalculateQuality_CorrectAfterMistake` (3)
  - `CalculateQuality_NeverBelow3WhenCorrect` (≥ 3 даже при hint+25s+retry)

### 3.6 — Service слой (2026-05-14)

- ✅ `internal/service/service.go` — интерфейс `Service` с 8 методами.
  - Sentinel errors: `ErrInvalidArgument`, `ErrInvalidItemType`, `ErrInvalidQuality`, `ErrNotFound`.
  - `clock func() time.Time` — внутренний, для тестов.
  - `RecordReview` лениво создаёт карточку через `EnsureItem` (idempotent Upsert).
- ✅ `canonicalJSON` + `hashAnswer` — md5 от рекурсивно отсортированных
  ключей объектов; массивы остаются упорядоченными.
- ✅ Юнит-тесты (`service_test.go`) — **4 case-а**:
  - `HashAnswer_StableForKeyOrder` (объекты)
  - `HashAnswer_DifferentForDifferentValues`
  - `HashAnswer_StableForArrayOrder` — массивы значимы (set-логику не делаем)
  - `HashAnswer_NestedObjects`

### 3.7 — gRPC API + converters (2026-05-14)

- ✅ `internal/api/v1/api.go` — 8 RPC + `mapServiceError`
  (InvalidArgument / NotFound / Internal).
- ✅ `internal/converter/converter.go`:
  - `ItemTypeFromProto` / `ItemTypeToProto` (UNSPECIFIED ↔ "").
  - `ToSRSItemProto`, `ToReviewHistoryProto`, `ToMistakeProto`.
  - `StructToJSON` (`protojson.Marshal`), `JSONToStruct` (через `structpb.NewStruct`).

### 3.8 — Интеграция в step-validation-service (2026-05-14)

- ✅ `internal/client/srs/client.go` — узкий `Client` интерфейс (3 метода):
  - `RecordReview(req RecordReviewRequest)` — wrapper только для step-карточек (ItemType=ITEM_TYPE_STEP).
  - `RecordMistake(userID, stepID, answer json.RawMessage)`.
  - `ResolveMistakesForStep(userID, stepID)`.
- ✅ `internal/client/srs/grpc.go` — реальный gRPC. `RecordMistake` оборачивает не-объектный answer в `{value: <raw>}` чтобы попасть в `structpb`.
- ✅ `internal/client/srs/noop.go` — пустые стабы, используется при пустом `SRS_SERVICE_ADDR`.
- ✅ `internal/config/config.go` — добавлен `SRSServiceAddr`.
- ✅ `internal/app/app.go` — DI: `srs.NewNoopClient()` → `srs.NewGRPCClient(...)` если addr задан.
- ✅ `internal/repository/repository.go` + `postgres/attempt.go` — новый метод
  `CountByUserStep` для расчёта `attempt_index` ДО создания нового attempt.
- ✅ `internal/service/service.go`:
  - Конструктор `NewSubmissionService` принимает **4-й** аргумент `srs.Client` (nil → noop).
  - В `Submit` после блока gamification вызывается `recordSRS`:
    - `quality = CalculateQuality(isCorrect, time_ms, false, attemptIndex)`.
    - `srs.RecordReview(...)` — всегда.
    - `correct` → `srs.ResolveMistakesForStep(...)` (снимаем накопленные ошибки).
    - `wrong` → `srs.RecordMistake(attempt.Answer)`.
  - Все вызовы **non-fatal**: ошибки только логируются (`zap.Warn` / `Info`).
- ✅ `internal/service/srs_quality.go` — локальная копия `CalculateQuality` (см. 3.5).
- ✅ Тесты обновлены:
  - `inMemoryAttempts.CountByUserStep` добавлен.
  - Новый `stubSRS` со счётчиками.
  - `TestSubmit_CorrectFiresAddXPAndMarkComplete` — проверяет `reviewCalled==1`, `quality >= 3`, `resolveCalled==1`, `mistakeCalled==0`.
  - `TestSubmit_WrongFiresLoseHeart` — `reviewCalled==1`, `quality <= 2`, `mistakeCalled==1`, `resolveCalled==0`.
  - `TestSubmit_NoStep_ReturnsNotFound` / `TestSubmit_RequiresFields` — `nil` SRS-клиент (тестируем noop).

### 3.9 — Gateway (2026-05-14)

- ✅ `internal/client/srs.go` — `SRSClient` wrapper (8 методов + Close).
- ✅ `internal/handler/srs.go` — `SRSHandler`:
  - `GetDue` — GET `/api/v1/srs/due?item_type=&limit=`
  - `GetWeak` — GET `/api/v1/srs/weak?item_type=&limit=`
  - `GetStats` — GET `/api/v1/srs/stats`
  - `Review` — POST `/api/v1/srs/review` `{item_type, item_id, quality, response_time_ms, used_hint}`
  - `ListMistakes` — GET `/api/v1/mistakes?resolved=&limit=&offset=` (resolved: `""|"all"` → -1, `"false"` → 0, `"true"` → 1).
- ✅ `internal/config/{interfaces.go, env/services.go}` — `SRSServiceAddr()` метод.
- ✅ `internal/app/di.go` — `SRSClient(ctx)` возвращает `nil` если addr пуст.
- ✅ `internal/app/app.go` — routes регистрируются только если `sc != nil` (по аналогии с gamification / step-validation).

### 3.10 — Deploy / Taskfile (2026-05-14)

- ✅ `deploy/env/srs.env.template` — новый шаблон (GRPC + Postgres + Logger).
- ✅ `deploy/env/.env` — добавлены `SRS_*` (`SRS_GRPC_PORT=50060`, schema/user/pass) + `STEP_VALIDATION_SRS_ADDR=localhost:50060` + `GATEWAY_SRS_SERVICE_ADDR=localhost:50060`.
- ✅ `deploy/env/step-validation.env.template` — добавлен `SRS_SERVICE_ADDR=${STEP_VALIDATION_SRS_ADDR}`.
- ✅ `deploy/env/gateway.env.template` — добавлен `SRS_SERVICE_ADDR=${GATEWAY_SRS_SERVICE_ADDR}`.
- ✅ `Taskfile.yaml`:
  - `MODULES` / `SERVICES` — добавлен `srs`.
  - `run-srs` / `run-step-validation` — одиночные dev-задачи.
  - `migrate-up-srs` + добавлено в `migrate-up-all`.
  - `build-all` — добавлены `gamification-service`, `step-validation-service`, `srs-service` (были пропущены).
  - `run-all-bg` — добавлены `SRS Service` и `Step Validation` (перед gateway, чтобы он подцепил их по addr).

---

## ✅ Verification

```bash
# Unit tests (Phase 3)
cd services/srs-service && go test ./...                        # 20 тестов зелёные (16 SM-2 + 4 hash)
cd services/step-validation-service && go test ./...            # Phase 2 валидаторы + Phase 3 SRS-хук

# Полная сборка
for s in services/*/; do (cd "$s" && go build ./...); done       # все зелёные

# Proto regen
task proto:gen                                                   # clean

# Применить миграции (требует поднятый postgres)
task migrate-up-srs
```

---

## 🧠 Дизайн-решения

### Почему отдельный srs-service а не расширение course-service

Чистое разделение (бэк по-фазно растёт): SRS — отдельный домен,
со своими таблицами, cron'ами (в будущем DailyDecay), специфичной
аналитикой. Course-service остаётся «контент + прогресс». Плюс
явный gRPC контракт делает рефакторинг проще.

### Почему `Upsert` через `ON CONFLICT DO UPDATE` с no-op SET

`ON CONFLICT DO NOTHING` не возвращает строку при конфликте, что
заставило бы делать 2-й SELECT. `DO UPDATE SET updated_at =
updated_at` (no-op) даёт нам RETURNING как при INSERT, и через
`xmax = 0` мы определяем — был ли это insert или update.

### Почему `answer_hash` отдельной колонкой а не функциональный индекс

Postgres не нативно умеет canonical-JSON (ключи сортируются по
позиции хранения). Считать в service-слое и сторить как обычную
TEXT-колонку проще, быстрее и переносимо.

### Почему `CalculateQuality` дублирован в step-validation

`srs-service` принимает уже посчитанный `quality`, оставаясь
domain-pure (как Anki API). Эвристика расчёта (что считать
"медленным", какой штраф за hint) — это policy step-validation,
как `xpForStep`. Если ещё кому-то понадобится — поднимем в shared.

### Почему SRS-вызовы non-fatal

Submit обязан быть надёжным — учёба не должна ломаться из-за
проблемы во вторичном сервисе. Аналогично уже сделано для
`gamification.AddXP` / `course.MarkStepComplete`.

### Why SM-2 вместо FSRS / Anki v3

План явный: "Алгоритм SM-2". FSRS более точный, но требует обучения
параметров на истории юзера и сложнее для MVP. Если retention rate
окажется хуже 80% (метрика плана) — переходим на FSRS.

---

## ❌ Открытые TODO для следующих итераций

- [x] ~~Practice session generator~~ — реализовано в `service/practice.go` (3.11).
- [x] ~~Skill decay~~ — таблица `user_skill_decay`, repo, service и `cron.Scheduler.DailyDecay` (3.12).
- [x] ~~API endpoints `/practice/*` и `/skills/*`~~ — `POST /api/v1/practice/session`, `GET /api/v1/skills`, `GET /api/v1/skills/weak` (3.13). `start/submit/recommended` сознательно не делаются — фронт прогоняет items как обычные шаги через `/steps/:id/submit`.
- [ ] **Frontend web** — `/practice`, `/practice/session`, `/practice/mistakes`, `/profile/strength` + hooks `use-srs-stats`, `use-practice-session`, `use-mistakes`, `use-skill-strength`.
- [ ] **Frontend mobile** — те же экраны + heatmap (skill strength по модулям/урокам).
- [ ] **Push notifications** "Time to practice! N items waiting" (mobile, expo-notifications).
