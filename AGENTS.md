# Backend (microservices-course/elearning)

Микросервисный E-learning стек. Phase 0 (guest mode + onboarding,
Sprint 1) + Phase 1 (gamification) + Phase 2 (новые форматы шагов) —
done. Phase 3 backend full (SM-2 SRS + mistakes + practice session
generator + skill decay + DailyDecay cron + course-service hook +
gateway REST) — done. Phase 3 web frontend (`/practice/*`,
`/profile/strength`) — done.

Phase 3 push notifications — done (backend):
  - notifications-service `:50062` (3 таблицы, gRPC API).
  - Sender adapters: WebPushSender (VAPID, RFC 8030 через `webpush-go`)
    и ExpoPushSender (Expo HTTP API). LogSender fallback при отсутствии VAPID.
  - Доменные хуки:
    - gamification: achievement push в `unlockAchievement` (`channel=achievement`).
    - gamification cron `RemindersScheduler`: `streak_risk` + `daily_goal`
      (hourly tick + timezone-bucket по user TZ).
    - srs cron `RemindersScheduler`: `practice_reminder` (hourly tick +
      DueNow > 0 && ReviewedToday == 0).
  - Gateway REST: 8 endpoints (`/notifications/devices`, `/preferences`, inbox).
  - Web UI (eng_next2): `public/sw.js`, `lib/web-push.ts`, `use-notifications`
    хук, `/profile/notifications` (subscribe + prefs + quiet hours + devices),
    auto-subscribe banner в Layout.
  - Mobile UI — следующая итерация.

## Сервисы

| Сервис | Порт gRPC | Schema | Назначение |
|--------|-----------|--------|------------|
| auth-service | 50051 | auth | JWT login/refresh + Phase 0 guest mode (`is_guest`, `device_id`, claim, cleanup-cron) |
| user-service | 50052 | users | Profile (`date_of_birth`, `timezone`) + Phase 0 onboarding (`proficiency_level`, `daily_goal_xp`, `motivation`, `signup_source`, `placement_score`, `onboarded_at`) |
| course-service | 50053 | courses | Курсы / уроки / шаги / прогресс / vocabulary / tts_cache |
| video-service | 50054 | videos | MinIO upload, manifests |
| quiz-service | 50055 | quiz_service | Quizzes, attempts, answers |
| gateway | :8080 (HTTP) | — | REST API, agg, JWT validation |
| gamification-service | 50058 | gamification | XP / hearts / streak / achievements / daily-goal |
| step-validation-service | 50059 | step_validation | Phase 2: validate interactive step answers + side-effects |
| **srs-service** | **50060** | **srs** | **Phase 3: SM-2 spaced repetition + mistakes** |
| social-service | 50061 | social | Phase 4: leagues / cohorts / leaderboards (in progress) |
| notifications-service | 50062 | notifications | Phase 3 push notifications (skeleton) |
| **ai-service** | **50063** | **ai** | **Phase 5: AI conversations / explain / writing / pronunciation / tutor (mock provider)** |

## Основные команды

```bash
# Из корня elearning/
task migrate-up-all                       # Накатить миграции всех сервисов
task seed-gamification                    # 32 achievements seed
task proto:gen                            # Сгенерировать .pb.go из .proto

# Сервис локально
cd services/<name> && go run ./cmd

# Build + test всего
for s in services/*/; do (cd "$s" && go build ./... && go test ./...); done
```

## Конвенции

- `platform/pkg/{logger,closer,postgres}` — общая инфра (zap, graceful
  shutdown, pgxpool).
- godotenv-конфиг через `internal/config/config.go`. Адреса других сервисов
  — `<NAME>_SERVICE_ADDR` env.
- gRPC clients в `internal/client/<dep>/{client,grpc,noop}.go` —
  интерфейс + реальная реализация + no-op fallback (если адрес пуст).
  No-op гарантирует, что сервис стартует и без зависимости.
- Слои: `api → service → repository → postgres`. Конвертеры
  proto↔model — в `internal/converter/`.
- `repository.ErrNotFound` маппится в `codes.NotFound` на gRPC.
- Generated proto: `shared/pkg/proto/<svc>/v1/`.

## Phase 0 — Guest mode + Onboarding (Sprint 1)

См. `docs/tasks/onboarding-spec.md`. Bootstrap-фаза учёта юзера: гость
создаётся одним кликом (без email), проходит онбординг, потом —
optional — клеймится в registered user без потери прогресса.

### Schema

- `auth.users` (миграция auth `00X_guest_mode.sql`):
  - `is_guest BOOLEAN DEFAULT FALSE`,
  - `device_id TEXT UNIQUE` (UUID v4 от клиента, idempotency),
  - `email`/`password_hash`/`username` теперь nullable для гостей.
- `users.profiles` (миграция user `002_onboarding_fields.sql`) — поверх
  существующих `native_lang`, `target_lang`, `date_of_birth` добавлено:
  `proficiency_level`, `daily_goal_xp`, `motivation TEXT[]`,
  `signup_source`, `placement_score`, `onboarded_at TIMESTAMPTZ`.

### auth-service (Sprint 1.4)

- `service/auth/guest.go` — `CreateGuestSession` (idempotent на `device_id`),
  `ClaimGuestAccount` (выставляет email/password/username, `is_guest=false`,
  user_id сохраняется), `CleanupExpiredGuests`.
- `service/auth/token.go` — `is_guest` claim в JWT (для `ValidateToken`).
- `internal/cron/cron.go` — `Scheduler.GuestCleanup`:
  раз в сутки в `GUEST_CLEANUP_DAILY_AT` (UTC HH:MM, default `03:00`)
  удаляет гостей старше `GUEST_CLEANUP_CUTOFF_DAYS` (default 90).
  Отключается через `GUEST_CLEANUP_ENABLED=false`.

### user-service onboarding (Sprint 1.5)

- Отдельный `service.OnboardingService` + `repository.OnboardingRepository`
  поверх той же таблицы `profiles`. Слой и API-handlers: `internal/service/
  onboarding/{service,get_state,patch_state,complete}.go`,
  `internal/api/user/v1/{get,patch,complete}_onboarding_state.go`.
- `PatchState` — partial-update + upsert (`INSERT ON CONFLICT (user_id) DO
  UPDATE SET ... = COALESCE($N, profiles.X)`). Особый флаг
  `motivation_set` чтобы отличить «не передавали» от «явно очистили».
- Валидация: `proficiency_level ∈ {beginner,a1,a2,b1,b2,just_for_fun}`,
  `daily_goal_xp ∈ {10,20,30,50}`, `placement_score ∈ [0..5]`,
  `date_of_birth` — ISO `YYYY-MM-DD`. Невалид → `codes.InvalidArgument`.

### gRPC RPCs

```
# auth.v1.AuthService
CreateGuestSession   (device_id) → user_id, access_token, refresh_token, expires_at, created
ClaimGuestAccount    (guest_user_id, email, password, username) → tokens (user_id preserved)
CleanupExpiredGuests (cutoff_days) → deleted_count

# user.v1.UserService
GetOnboardingState   (user_id) → OnboardingState
PatchOnboardingState (user_id, native_language?, target_language?,
                      proficiency_level?, daily_goal_xp?, motivation,
                      motivation_set, signup_source?, placement_score?,
                      date_of_birth?) → OnboardingState
CompleteOnboarding   (user_id) → OnboardingState (onboarded_at=NOW())
```

### Gateway routes (Sprint 1.6)

```
# Public
POST   /api/v1/auth/guest                 { device_id }

# Protected (JWT, может быть guest-токеном)
POST   /api/v1/auth/claim                 { email, password, username }
GET    /api/v1/onboarding
PATCH  /api/v1/onboarding                 { native_language?, ... }
POST   /api/v1/onboarding/complete

# Admin (auth + admin)
POST   /api/v1/admin/auth/cleanup-guests  { cutoff_days? }
```

### Failure mode / идемпотентность

- `CreateGuestSession` идемпотентен: один и тот же `device_id` → один guest
  user. Повторный вызов возвращает свежие токены и `created=false`.
- `CompleteOnboarding` идемпотентен: повторный вызов не перетирает
  `onboarded_at` (COALESCE).
- `PatchOnboardingState` — partial-update, безопасно вызывать после
  каждого шага онбординга.

### Что НЕ сделано (next iterations)

- Web UI `/onboarding/*` (eng_next2) и mobile equivalent.
- Привязка соцсетей (`signup_source` пока чисто аналитика).
- A/B-тест воронки онбординга.
- JWT-middleware enforcement: жёстко ограничить `/auth/claim` только
  guest-токенами (сейчас принимаем любой валидный JWT, что менее
  строго, но безопасно — пытаться claim'ить registered user → ошибка
  на стороне auth-service).

## Gamification — ключевые моменты

- `service/service.go` — `today()` (UTC, deprecated для пользовательских
  процессов), `todayInTZ(ctx, userID)` / `nowInTZ` — для streak / daily-goal
  / matchCriteria. Используют кэшированный `user.Client.Timezone` (TTL 5
  мин внутри grpcClient).
- Cross-service hooks: `OnStepCompleted`, `OnLessonCompleted`,
  `OnCourseCompleted` (course-service), `OnQuizCompleted` (quiz-service),
  `OnWrongAnswer`/`LoseHeart` (quiz-service + step-validation-service).
- XP reasons: `step_completed`, `lesson_completed`, `course_completed`,
  `quiz_completed`, `quiz_perfect`, `daily_goal`, `achievement`,
  `streak_bonus`, `practice`.
- `user_stats.learned_languages text[]` — денормализация языков
  завершённых курсов (для `languages` achievement).
- Achievement criteria types: `streak`, `total_xp`, `daily_goal_completed`,
  `steps_completed`, `lessons_completed`, `time_of_day`, `date`,
  `weekend_pair`, `comeback`, `courses_completed`, `quiz_completed`,
  `perfect_quizzes`, `languages`, `birthday`. Все — implemented.

## Phase 2 — ключевые моменты

### Типы шагов

12 типов в `courses.steps.type` (CHECK constraint, миграция 000009):

- **Legacy (Phase 0)**: `video`, `text`, `quiz`, `task`, `brain_game`, `ai_writing`.
- **Phase 2 interactive**: `translate`, `match_pairs`, `listening`,
  `fill_blank`, `tap_words`, `story`.

`steps.content` — `JSONB`, схема per-type. См.
`docs/tasks/phase-2-step-formats.md` секцию «Структуры контента».
`model.StepType.IsInteractive()` — хелпер для маршрутизации submit.

### Vocabulary / TTS

- `courses.vocabulary` (uniq `(language, word, target_language)`) —
  для match_pairs / fill_blank / listening и админ-словарей.
- `courses.tts_cache` (uniq `(text_md5, language, voice)`) — кэш
  синтезированного аудио. На phase-2 `SynthesizeTTS` — stub: ожидает
  `audio_url` в запросе. Реальная интеграция (Google Cloud TTS /
  ElevenLabs) — Phase 5.
- `course-service` CourseService RPC: `ListVocabulary`,
  `GetVocabularyEntry`, `CreateVocabularyEntry`, `UpdateVocabularyEntry`,
  `DeleteVocabularyEntry`, `BulkCreateVocabulary`, `SynthesizeTTS`,
  `GetTTSByText`.

### step-validation-service

- **gRPC** `:50059`, schema `step_validation`, user `step_validation_user`.
- **RPCs**: `SubmitAnswer`, `ListAttempts`.
- **Pipeline** (`internal/service/service.go`):
  1. `courseClient.GetStep(stepID)` — через `GetStepContent` course-service.
  2. `validators.Registry.ValidateFor(stepType, content, answer)`.
  3. `attempts.Create(...)` в `step_validation.step_attempts`.
  4. **При correct**: `gamification.AddXP(STEP_COMPLETED)` +
     `courseClient.MarkStepComplete(...)`.
  5. **При wrong**: `gamification.LoseHeart(stepID)`.
- **Validators** (`internal/service/validators/`):
  - `translate`, `match_pairs`, `listening`, `fill_blank`, `tap_words`,
    `quiz`, `story`. 24 unit-теста зелёные.
  - `normalize()` — UTF-8 NFD-strip-marks + lowercase + срез
    пунктуации + collapse whitespace (`golang.org/x/text`).
  - `levenshtein()` — для `listening` (fuzzy match, до 2 опечаток
    или 15% длины).
- **XP**: quiz perfect = 30 / passed = 20, listening / story = 20,
  translate / match_pairs / fill_blank / tap_words = 15.
- **Sentinel ошибки**: `ErrStepNotFound`, `ErrInvalidAnswer`,
  `ErrInvalidStep` — мапятся в gRPC коды (NotFound / InvalidArgument /
  FailedPrecondition).
- **Идемпотентность**: один step может иметь много attempts (`step_attempts`
  без unique-индекса). Caller отвечает за client-side guard от dual-submit.

### Gateway routes (Phase 2)

```
# Public
GET    /api/v1/vocabulary?language=&target_language=&level=&pos=&search=&limit=&offset=
GET    /api/v1/vocabulary/:id
GET    /api/v1/tts/by-text?text=&language=&voice=

# Protected (auth required, регистрируется если step-validation подключён)
POST   /api/v1/steps/:stepId/submit       { answer, time_spent_ms, source_type?, source_id? }
GET    /api/v1/steps/:stepId/attempts?limit=&offset=

# Admin (auth + admin)
POST   /api/v1/admin/vocabulary
POST   /api/v1/admin/vocabulary/bulk
PUT    /api/v1/admin/vocabulary/:id
DELETE /api/v1/admin/vocabulary/:id
POST   /api/v1/admin/tts/synthesize       { text, language, voice?, audio_url, duration_ms? }
```

## Phase 3 — ключевые моменты (MVP: SRS + mistakes)

### srs-service (`:50060`, schema `srs`, user `srs_user`)

Три таблицы:
- `user_srs_items` — карточки SM-2: `(user_id, item_type, item_id)` →
  `EF, interval_days, repetitions, next_review_at, strength`.
  `item_type ∈ {vocabulary, step, phrase}`.
- `srs_review_history` — журнал ревью со snapshot (new_interval /
  new_EF / new_reps).
- `user_mistakes` — ошибки юзера, дедуплицируются по
  `(user_id, step_id, md5(canonical_json(answer)))`, увеличивают
  `times_made`, снимаются `is_resolved=TRUE` при первом correct.

### SM-2 алгоритм (`internal/service/sm2.go`)

Классический SuperMemo 2:
- `q ∈ [0..5]` — quality ответа.
- `q >= 3` → `n == 0 ? 1 : n == 1 ? 6 : round(I_prev * EF)`, `n++`.
- `q < 3`  → `n = 0, I = 1`.
- `EF = EF + (0.1 - (5-q)*(0.08 + (5-q)*0.02))`, floor `1.3`.
- `strength = accuracy * min(1, reps/10)` ∈ [0..1].

### Quality эвристика (`internal/service/srs_quality.go` в step-validation)

`CalculateQuality(isCorrect, timeSpentMs, usedHint, attemptIndex)`:
- wrong + 1-я попытка → 1; wrong + повтор → 0.
- correct: base = 5, −2 за hint, −1 за >10s, −1 за >20s, capped 3 если
  attempt > 0; clamp `[3..5]`.

### Pipeline

```
step-validation-service.Submit
  ├─ validate → save attempt
  ├─ if correct → gamification.AddXP + course.MarkStepComplete
  │              + srs.RecordReview(q=3..5) + srs.ResolveMistakes
  └─ if wrong   → gamification.LoseHeart
                + srs.RecordReview(q=0..1) + srs.RecordMistake
```

Все SRS-вызовы **non-fatal** — отказ srs не валит Submit.

### gRPC RPCs

```
EnsureItem               (user, type, item_id) → SRSItem, created
RecordReview             (user, type, item_id, quality, time, hint) → SRSItem, History
GetDueItems              (user, type?, limit) → [SRSItem]
GetWeakItems             (user, type?, limit) → [SRSItem]
GetStats                 (user) → {total, due_now, mastered, learning, fresh, reviewed_today}
RecordMistake            (user, step_id, answer-struct)
ResolveMistakesForStep   (user, step_id) → resolved_count
ListMistakes             (user, resolved={-1=all,0=no,1=yes}, limit, offset)
```

### Gateway routes (Phase 3, регистрируются если `SRS_SERVICE_ADDR` задан)

```
# Protected
GET    /api/v1/srs/due?item_type=&limit=
GET    /api/v1/srs/weak?item_type=&limit=
GET    /api/v1/srs/stats
POST   /api/v1/srs/review    { item_type, item_id, quality, response_time_ms, used_hint }
GET    /api/v1/mistakes?resolved=&limit=&offset=
```

### Phase 3 full — что добавилось поверх MVP

- **Practice session generator** (`GeneratePracticeSession`): микс
  overdue / mistakes / weak (default 50/30/20, нормализуется), дедуп по
  `step_id`, backfill из неиспользованных источников. Read-only — фронт
  прогоняет items через обычный `/steps/:id/submit`.
- **Skill decay** (`user_skill_decay`):
  - модель + таблица `(user_id, skill_id)` с `skill_type ∈ {module,lesson}`,
    `initial_strength`, `current_strength`, `decay_rate` (default 0.05/day),
    `last_practiced_at`.
  - `service.ApplyDailyDecay`: `current_strength = max(0, current - rate * days_since_last)`.
  - **`cron.Scheduler`**: в `srs-service/internal/cron/cron.go` — горутина,
    которая каждый день в `CRON_DAILY_AT` (UTC HH:MM, default `01:00`)
    вызывает `RunDailyDecay("")` для всех юзеров. Управляется через
    `closer` для graceful shutdown.
- **Course-service hook**: `internal/client/srs/{client,grpc,noop}.go` +
  `progress.MarkStepComplete` — при первом закрытии урока вызывает
  `InitSkill(SKILL_TYPE_LESSON)` и (если есть `Lesson.ModuleID`)
  `InitSkill(SKILL_TYPE_MODULE)`. На повторных правильных прохождениях —
  `StrengthenSkill(amount=0.1)`. Все вызовы non-fatal.

### gRPC RPCs (Phase 3 full дополнение)

```
# Practice
GeneratePracticeSession  (user, size, ratio_*?) → [PracticeItem{source, srs_item?, mistake?, step_id}]

# Skill decay
InitSkill                (user, skill_id, skill_type, decay_rate?)   → SkillDecay, created
StrengthenSkill          (user, skill_id, amount)                    → SkillDecay
GetSkillStrengths        (user, skill_type?, limit, offset)          → [SkillDecay]
GetWeakSkills            (user, skill_type?, limit)                  → [SkillDecay]
RunDailyDecay            (user_id="" → все юзеры, иначе одного)      → affected
```

### Gateway routes (Phase 3 full дополнение)

```
# Protected
POST /api/v1/practice/session   { size?, ratio_overdue?, ratio_mistake?, ratio_weak? }
GET  /api/v1/skills?skill_type=&limit=&offset=
GET  /api/v1/skills/weak?skill_type=&limit=
```

### Phase 3 — что НЕ сделано (next iterations)

- Frontend mobile (страницы `/practice/*`, `/profile/strength`,
  `/profile/notifications` в eng_mob — web уже готов).
- Push notifications mobile (Expo subscribe flow + inbox UI).
- See `docs/tasks/phase-3-adaptive-learning.md` для полного объёма.

## Phase 3 — Push notifications (notifications-service)

Сервис «тупого отправителя»: хранит device-токены, prefs, журнал
отправок и физически шлёт push'и. **Когда отправлять** решают
доменные сервисы через крон / хуки.

### Каналы (4)

| Channel | Триггер | Где живёт |
|---|---|---|
| `practice_reminder` | due_now > 0 && reviewed_today == 0, локальный hour == `PRACTICE_REMINDER_HOUR` (def 19) | `srs-service/internal/cron/practice_reminders.go` |
| `streak_risk` | локальный hour == `REMINDER_STREAK_HOUR` (def 20), streak за сегодня не сохранён | `gamification-service/internal/cron/reminders.go` |
| `daily_goal` | локальный hour == `REMINDER_DAILY_GOAL_HOUR` (def 21), daily-goal не выполнен | `gamification-service/internal/cron/reminders.go` |
| `achievement` | разблокирована ачивка | `gamification-service/internal/service/achievements.go` (hook в `CheckAchievements`) |

### Платформы доставки

- `web` — Web Push (VAPID, RFC 8030). Требует `VAPID_PUBLIC_KEY` /
  `VAPID_PRIVATE_KEY` / `VAPID_SUBJECT` в `notifications.env`.
- `expo` — Expo HTTP API (`https://exp.host/--/api/v2/push/send`).
- `ios` / `android` — зарезервировано, через Expo пока не нужно.

### Pipeline `SendNotification`

```
1. validate (user_id, channel, title)
2. prefs = GetPreferences(user)             ← defaults если в БД нет
3. !ignore_prefs && !prefs.enabled(ch)      → SKIPPED:pref
4. !ignore_quiet && inQuietHours(prefs)     → SKIPPED:quiet_hours
5. dedupKey = req.dedup_key or `<channel>:YYYY-MM-DD`
   FindDedup в окне (default 24ч) ≠ ErrNotFound  → SKIPPED:dedup (idempotent)
6. devices = ListActive(user)
   empty                                    → SKIPPED:no_devices
7. log.Create(status=queued)                ← unique violation = race → dedup
8. dispatcher.SendAll(devices, msg)
9. outcome.ShouldRevoke (404/410)           → devices.RevokeByID
10. log.UpdateStatus(sent | failed, devices_succeeded)
```

`ignore_quiet_hours=true` — для срочных пушей (streak-risk в 23:55).
Все вызовы из доменных сервисов **non-fatal** — провал доставки не
валит триггерящую логику.

### gRPC RPCs

```
RegisterDevice    (user, platform, token, endpoint?, p256dh?, auth?, ua?, locale?) → Device, created
UnregisterDevice  (user, device_id | platform+token)                                → unregistered
ListDevices       (user, include_revoked?)                                          → [Device]
GetPreferences    (user)                                                             → Prefs, defaults_used
UpdatePreferences (Prefs)                                                            → Prefs
SendNotification  (user, channel, title, body, data?, dedup_key?, ...)               → Log, skipped flags
ListNotifications (user, read=-1|0|1, limit, offset)                                 → [Log], total, unread
MarkRead          (user, notification_id?)                                           → marked
```

### Ключевые таблицы

- `notifications.device_tokens` — `(user_id, platform, token)` UNIQUE,
  `endpoint/p256dh/auth` для Web Push, `revoked_at` для мягкого отзыва.
- `notifications.user_preferences` — PK = `user_id`, 4 BOOL флага +
  `quiet_hours_start/end` (через полночь поддерживается) + `timezone`.
  Лениво создаются — defaults в памяти (`model.DefaultPreferences`).
- `notifications.notification_log` — `(user_id, channel, dedup_key)`
  UNIQUE как guard. Двойное назначение: дедуп + in-app inbox.

### env-template

`deploy/env/notifications.env.template` — генерируется из
`NOTIFICATIONS_*` переменных в master `.env`. Ключевые: `VAPID_*`,
`EXPO_PUSH_API`, `PUSH_DRY_RUN` (если true — реальная доставка
отключена, всё пишется в лог как sent — удобно для dev).

## Phase 5 — ключевые моменты (AI integration MVP)

### ai-service (`:50063`, schema `ai`, role `ai_user`)

Шесть таблиц:
- `ai_conversations` — AI-сессии (free chat / roleplay / tutor) с
  денормализованными `message_count / total_tokens / cost_usd`.
- `ai_messages` — сообщения с JSONB `corrections` (грамматические
  поправки) и `translation`.
- `ai_explanations` — кэш объяснений ошибок, дедуп по
  `(step_id, md5(incorrect_answer))`.
- `ai_writing_assessments` — оценки writing с 5 score'ами и JSONB feedback.
- `ai_pronunciation_attempts` — STT-попытки + word-level scores.
- `ai_usage_quota` — суточные счётчики free-плана `(user_id, date)`.

### Provider abstraction (`internal/providers/`)

- `AIProvider` interface: `Chat`, `Transcribe`, `SynthesizeTTS`.
- На MVP — `MockProvider`: возвращает реалистичные JSON-ответы
  (conversation / explain / writing / exercise) с детерминированными
  tokens / cost. Реальная интеграция (OpenAI / Anthropic / Whisper) —
  Phase 5.X-real.
- Переключение через `AI_PROVIDER=mock|openai|anthropic` в env.

### Service слой (7 фич)

- **ConversationService**: `StartConversation`, `SendMessage` (history
  last 10 в prompt), `List`/`Get`/`Delete`, `ListScenarios`.
- **ExplainService**: cache lookup → провайдер → cache write. Cache
  miss инкрементит quota chat counter.
- **WritingService**: использует heavy-model (gpt-4o), сохраняет
  оценки + structured feedback.
- **PronunciationService**: STT → нормализация (lowercase, strip
  punctuation) → word-level Levenshtein → accuracy 0..1.
- **TutorService**: однократный Q&A без persistence (если нужен
  контекст — открывайте Conversation со scenario=tutor_qa).
- **ContentGenService**: admin-only генерация упражнений (без БД).
- **QuotaService**: free (5 chats / 2 voice min / 3 writing) vs
  premium (-1 = unlimited). На MVP `is_premium` пока всегда false
  (user-service не отдаёт это поле).

### Roleplay scenarios (`internal/scenarios/`)

5 сценариев в Go-коде: restaurant (es/A2), airport (en/B1), work
(en/B1), hotel (fr/A2), doctor (en/B1). Когда количество вырастет
или потребуется UGC — миграция на БД.

### gRPC RPCs

```
StartConversation        → Conversation, initial_message?
SendMessage              → user_message, assistant_message
ListConversations        → []Conversation
GetConversation          → Conversation, []Message
DeleteConversation       → soft-delete (ended_at)
ListScenarios            → []Scenario

ExplainMistake           → explanation, cached
AssessWriting            → 5 scores, corrected_text, feedback
CheckPronunciation       → accuracy, []word_scores, transcribed_text
AskTutor                 → answer, tokens, cost

GenerateExercise         → google.protobuf.Struct (admin)
GetQuotaStatus           → counters + limits + plan + resets_at
```

### Gateway routes (Phase 5, регистрируются если `AI_SERVICE_ADDR` задан)

```
# Protected
POST   /api/v1/ai/conversations                     { scenario, target_language }
GET    /api/v1/ai/conversations
GET    /api/v1/ai/conversations/:id
DELETE /api/v1/ai/conversations/:id
POST   /api/v1/ai/conversations/:id/messages        { content, want_audio }
GET    /api/v1/ai/scenarios

POST   /api/v1/ai/explain                           { step_id, incorrect_answer, correct_answer, ... }
POST   /api/v1/ai/writing/assess                    { prompt, user_text, ... }
POST   /api/v1/ai/pronunciation/check               multipart: audio + target_text + language
POST   /api/v1/ai/tutor                             { question, ... }
GET    /api/v1/ai/quota

# Admin
POST   /api/v1/admin/ai/generate-exercise           { exercise_type, vocabulary, level }
```

### Failure mode

ai-service полностью изолирован: его падение не валит обучение.
Gateway просто не зарегистрирует `/ai/*` роуты если
`AI_SERVICE_ADDR=""`. Quota exceeded → `codes.ResourceExhausted` →
HTTP 429. Provider down → `codes.Unavailable` → HTTP 503.

### Phase 5 — что НЕ сделано (next iterations)

- Frontend (web `/ai/*` страницы + mobile с expo-av для voice).
- Реальный OpenAI / Anthropic / Whisper provider (`5.X-real`).
- MinIO upload audio для pronunciation.
- Hybrid языковая маршрутизация (ru→GPT-4o, en→Claude Haiku).
- Moderation API + prompt injection protection.
- See `docs/tasks/PHASE_5_PROGRESS.md` для полного объёма.

## Документация

- `docs/tasks/PHASE_1_PROGRESS.md` — Phase 1 (gamification) + late additions.
- `docs/tasks/PHASE_2_PROGRESS.md` — Phase 2 (step formats) — все 14 задач.
- `docs/tasks/PHASE_3_PROGRESS.md` — Phase 3 MVP (SRS + mistakes).
- `docs/tasks/PHASE_4_PROGRESS.md` — Phase 4 (social/leagues, in progress).
- `docs/tasks/PHASE_5_PROGRESS.md` — Phase 5 (AI integration) — backend MVP.
- `docs/tasks/phase-{0..6}-*.md` — планы по фазам.
- `docs/sdd/<service>.md` — service design docs.

## Verification

Перед коммитом:
```bash
cd services/user-service && go test ./internal/service/onboarding/ # Phase 0 onboarding валидация
cd services/gamification-service && go test ./internal/service/    # Gamification юнит-тесты
cd services/step-validation-service && go test ./...               # Phase 2 валидаторы + Phase 3 hook
cd services/srs-service && go test ./...                           # Phase 3 SM-2 + hash (20 тестов)
cd services/ai-service && go test ./...                            # Phase 5 mock provider + service layer
go build ./...                                                      # Все сервисы билдятся
```

## Открытые TODO

- [ ] Реальная интеграция TTS (Google Cloud / ElevenLabs) — сейчас
  stub принимает готовый `audio_url`. Phase 5.
- [ ] Mobile DnD через react-native-gesture-handler для translate /
  tap_words — phase-2 mobile сделан tap-only (как Duolingo). Phase 2.5.
- [ ] Visual editor для quiz_legacy формата и rich-text внутри
  story-сцен (admin currently — JSON-textarea fallback для quiz).
- [ ] Phase 3 next: frontend (`/practice/*`, `/profile/strength`),
  push notifications "Time to practice!".
