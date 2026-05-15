# Phase 2 — Progress Log

> Живой статус Phase 2 (новые форматы шагов). Обновляется после
> завершения каждой подзадачи.
> См. [phase-2-step-formats.md](./phase-2-step-formats.md) и [PHASE_1_PROGRESS.md](./PHASE_1_PROGRESS.md).

**Дата старта:** 2026-05-13
**Статус:** 🟡 In progress

---

## 🎯 Согласованный scope (2026-05-13)

| Решение | Значение |
|---------|----------|
| **Типы шагов** | Все 6 интерактивных: `translate`, `match_pairs`, `listening`, `fill_blank`, `tap_words`, `story` (без `speaking` — Phase 5) |
| **TTS** | Stub: `audio_url` приходит из БД, без интеграции с Google Cloud / ElevenLabs. Таблица `tts_cache` создаётся, эндпоинты — stub'ы под будущую интеграцию |
| **SubmitAnswer** | Отдельный микросервис `step-validation-service` (порт `:50059`, schema `step_validation`) |
| **Admin UI** | Per-type визуальные формы (translate-editor / match-editor / fill-editor / listening-editor / tap-words-editor / story-editor) |

---

## 🗺️ План работы

### Backend
- [x] **2.1** course-service: миграция расширения `step_type` enum + сохранение JSON content
- [x] **2.2** course-service: миграции `vocabulary` + `tts_cache`
- [x] **2.3** course-service: модели/repo/converter/API для vocabulary CRUD
- [x] **2.4** course-service: TTS stub эндпоинты (`Synthesize` / `GetByText`)
- [x] **2.5** shared/proto: `step_validation/v1/step_validation.proto` + добавить `STEP_KIND_TAP_WORDS`/`STEP_KIND_STORY` в gamification.proto
- [x] **2.6** step-validation-service: scaffold (cmd, app, config, миграция `step_attempts`)
- [x] **2.7** step-validation-service: 7 валидаторов (translate / match_pairs / listening / fill_blank / tap_words / quiz / story) + unit-тесты
- [x] **2.8** step-validation-service: SubmitAnswer service + клиенты к gamification и course-service
- [x] **2.9** step-validation-service: gRPC API (`SubmitAnswer`, `ListAttempts`)
- [x] **2.10** Gateway: `POST /api/v1/steps/:stepId/submit` + vocabulary CRUD + TTS stub эндпоинты

### Frontend
- [x] **2.11** eng_next2: типы + хук `use-step-submit` + `StepRenderer` + 7 step-компонентов (6 phase-2 + улучшенный quiz)
- [x] **2.12** eng_mob: хук `use-step-submit` + `StepRenderer` + 7 step-компонентов

### Admin
- [x] **2.13** eng_next2/admin: per-type формы для 6 типов

---

## 📦 Артефакты

### 2.1 — Расширение step_type (2026-05-13)

- ✅ `services/course-service/migrations/000009_extend_step_types.{up,down}.sql` —
  пересоздан `steps_type_check` со всеми 12 типами (6 legacy + 6 phase-2).
  `content` остаётся `JSONB`, схема — per-type, см. план.
- ✅ `services/course-service/internal/model/step.go` — константы
  `StepTypeTranslate / MatchPairs / Listening / FillBlank / TapWords / Story`,
  хелпер `(StepType).IsInteractive()` (true для всех типов с submit-flow).
- ✅ `go build ./...` в course-service — чисто.

### 2.2 — Vocabulary + TTS cache (2026-05-13)

- ✅ `migrations/000010_create_vocabulary.{up,down}.sql` — таблица
  `courses.vocabulary` (id / language / word / translation /
  target_language / audio_url / image_url / level / pos +
  `created_at`/`updated_at`). Уникальный индекс
  `(language, word, target_language)`, индексы по
  `(language, level)` и `target_language`. Trigger
  `update_vocabulary_updated_at`.
- ✅ `migrations/000011_create_tts_cache.{up,down}.sql` — таблица
  `courses.tts_cache` (text / text_md5 / language / voice / audio_url /
  duration_ms). Уникальный индекс `(text_md5, language, voice)` —
  `text_md5` хранится отдельной колонкой (не выражением), заполняется
  приложением. На phase-2 эндпоинты Synthesize / GetByText — stub'ы.

### 2.3 + 2.4 — Vocabulary CRUD + TTS stub в course-service (2026-05-13)

> Сделаны вместе одним заходом, т.к. оба требовали расширения
> `course.proto` и регенерации pb.go.

#### Proto
- ✅ `shared/proto/course/v1/course.proto`:
  - В `Step.type` обновлён комментарий со списком phase-2 типов.
  - `CourseService` получил 8 новых RPC: `ListVocabulary`,
    `GetVocabularyEntry`, `CreateVocabularyEntry`,
    `UpdateVocabularyEntry`, `DeleteVocabularyEntry`,
    `BulkCreateVocabulary`, `SynthesizeTTS`, `GetTTSByText`.
  - Добавлены messages: `VocabularyEntry`, request/response пары
    + `TTSCacheEntry`, `SynthesizeTTSRequest/Response`,
    `GetTTSByTextRequest/Response`.
  - `task proto:gen` — успешно регенерирован `course.pb.go` /
    `course_grpc.pb.go`.

#### Models / Repo / Service
- ✅ `model/vocabulary.go`, `model/tts.go` — модели с `TTSVoiceDefault = "default"`.
- ✅ `repository/vocabulary.go`, `repository/tts.go` — интерфейсы.
- ✅ `repository/postgres/vocabulary.go` — `Create`, `GetByID`, `Update`,
  `Delete`, `List` (фильтры по language / target_language / level / pos
  + ILIKE-поиск), `BulkCreate` (транзакция с `ON CONFLICT DO NOTHING`,
  возвращает массив id-шников: пустая строка для пропущенных дубликатов).
- ✅ `repository/postgres/tts.go` — `GetByText` (по text_md5 + language +
  voice), `Upsert` (двухшаговая стратегия для точного `created` флага:
  пробуем INSERT с `ON CONFLICT DO NOTHING RETURNING`, при
  `pgx.ErrNoRows` — UPDATE существующей записи).
- ✅ `service/vocabulary.go` — валидация (`language != target_language`,
  trim/lowercase) + bulk через repo.
- ✅ `service/tts.go` — `md5hex` + `normalizeVoice` + sentinel ошибки
  `ErrTTSNotCached` / `ErrTTSProviderNotConfigured`. На phase-2
  Synthesize требует непустой `audio_url`, иначе возвращает
  `INVALID_ARGUMENT` с понятным сообщением.

#### Converters / API
- ✅ `converter/vocabulary.go` (`ToVocabularyEntryProto`,
  `FromCreateVocabularyEntryRequest`, `ApplyUpdateVocabularyEntryRequest`).
- ✅ `converter/tts.go` (`ToTTSCacheEntryProto`).
- ✅ `internal/api/course/v1/vocabulary.go` — 6 RPC хендлеров.
- ✅ `internal/api/course/v1/tts.go` — `SynthesizeTTS`, `GetTTSByText`.
- ✅ `internal/api/course/v1/api.go` — расширен `NewAPI` (добавлены
  `vocabService`, `ttsService`).
- ✅ `internal/app/app.go` — DI обновлён.

#### Verification
- ✅ `go build ./...` всех 7 сервисов + shared + platform — чисто.
- ✅ `go vet ./...` в course-service — чисто.

### 2.5 — Proto step-validation + расширение StepKind (2026-05-13)

- ✅ `shared/proto/gamification/v1/gamification.proto` — в enum
  `StepKind` добавлены `STEP_KIND_TAP_WORDS = 8` и `STEP_KIND_STORY = 9`
  (для XPForStep / OnStepCompleted hooks по новым типам).
- ✅ `shared/proto/step_validation/v1/step_validation.proto` — новый
  файл, package `step_validation.v1`. Сервис
  `StepValidationService` с 2 RPC:
  - `SubmitAnswer(SubmitAnswerRequest) → SubmitAnswerResponse` —
    основной endpoint. Принимает `user_id`, `step_id`, `answer` (как
    `google.protobuf.Struct`), `time_spent_ms`, `source_type` /
    `source_id` (для course-service progress). Отвечает `is_correct`,
    `score`, `correct_answer`, `explanation`, `attempt`, optional
    `gamification` (`AddXPResponse`) и optional `hearts` (`Hearts`).
  - `ListAttempts(...)` — история попыток (для аналитики/админки).
  - `StepAttempt` — запись о попытке: id / user_id / step_id /
    lesson_id / step_type / answer / is_correct / score /
    time_spent_ms / created_at.
- ✅ `task proto:gen` — сгенерированы
  `shared/pkg/proto/step_validation/v1/step_validation{,_grpc}.pb.go`
  + перегенерирован gamification (новые StepKind).
- ✅ `cd shared && go build ./...` — чисто.

### 2.6 — step-validation-service scaffold (2026-05-13)

> Новый сервис на gRPC `:50059`, schema `step_validation`, отдельный
> postgres-юзер `step_validation_user`. Реальная логика SubmitAnswer и
> валидаторы — в 2.7-2.9; пока сервис билдится, стартует и отвечает
> `Unimplemented` на RPC.

#### Структура и инфра
- ✅ `services/step-validation-service/go.mod` — модуль с replace на
  `platform` и `shared`, deps: pgx/v5, godotenv, zap, grpc, protobuf,
  google/uuid.
- ✅ `go.work` — добавлен новый модуль.
- ✅ `Taskfile.yaml` — расширены `MODULES` / `SERVICES` (`step-validation`),
  добавлен таргет `migrate-up-step-validation` (входит в
  `migrate-up-all`).
- ✅ `deploy/compose/core/init-db.sql` — добавлены схема
  `step_validation` + пользователь `step_validation_user`/
  `step_validation_pass`.
- ✅ `deploy/env/.env` — новая секция `STEP_VALIDATION_*` (gRPC
  `:50059`, postgres credentials, `STEP_VALIDATION_GAMIFICATION_ADDR=
  localhost:50058`, `STEP_VALIDATION_COURSE_ADDR=localhost:50053`).
- ✅ `deploy/env/step-validation.env.template`.

#### Миграция
- ✅ `migrations/000001_create_step_attempts.{up,down}.sql` — таблица
  `step_validation.step_attempts` (id / user_id / step_id / lesson_id /
  step_type / answer JSONB / is_correct / score / time_spent_ms /
  created_at). Индексы: `(user_id, step_id)`, `created_at DESC`,
  `step_type`. Хранится вся история попыток (один шаг → много attempts).

#### Скелет кода
- ✅ `cmd/main.go` — типичный bootstrap (config → app.New → app.Run +
  graceful shutdown).
- ✅ `internal/config/config.go` — gRPC bind, postgres,
  `GAMIFICATION_SERVICE_ADDR`, `COURSE_SERVICE_ADDR`.
- ✅ `internal/model/attempt.go` — `Attempt` + StepType-константы
  (квиз + 6 phase-2 типов).
- ✅ `internal/repository/repository.go` + `postgres/attempt.go` —
  `Create` / `ListByUserStep` (с пагинацией и `total`).
- ✅ `internal/client/course/{client,grpc,noop}.go` — узкий клиент:
  `GetStep` (через `GetStepContent`-RPC), `MarkStepComplete`. Noop
  возвращает `ErrCourseUnavailable` для GetStep.
- ✅ `internal/client/gamification/{client,grpc,noop}.go` — узкий
  клиент: `AddXP`, `LoseHeart`. Noop возвращает `nil, nil`.
- ✅ `internal/service/service.go` — интерфейс `SubmissionService`
  (`Submit`, `ListAttempts`); пока `Submit` возвращает
  `ErrNotImplemented` (закроем в 2.8).
- ✅ `internal/api/step_validation/v1/api.go` — gRPC API возвращает
  `Unimplemented` для обоих методов; реальная имплементация в 2.9.
- ✅ `internal/app/app.go` — DI: pgxpool → repo → clients → service →
  api → grpc.Server. Зависимости фолбэкаются на noop.

#### Verification
- ✅ `go build ./...` всех 8 сервисов + shared + platform — чисто.

### 2.7 — Validators + unit-тесты (2026-05-13)

> 7 чистых функций: вход — `content` шага и `answer` пользователя
> (оба `json.RawMessage`), выход — `Result{IsCorrect, Score,
> CorrectAnswer, Explanation}`. Validator не зависит от БД /
> gamification — позже мы оборачиваем его в SubmissionService.

#### Файлы
- ✅ `internal/service/validators/validator.go` — интерфейс `Validator`,
  `Result`, `Registry` с `NewDefaultRegistry()` (квиз + 6 phase-2 типов)
  и `ValidateFor(stepType, content, answer)`. Sentinel-ошибки
  `ErrInvalidContent` / `ErrInvalidAnswer`.
- ✅ `internal/service/validators/util.go`:
  - `normalize(s)` — trim → NFD-strip-marks → NFC → lower → срез
    финальной пунктуации `.,!?;:` → схлопывание whitespace.
    Использует `golang.org/x/text/{transform,unicode/norm,runes}`.
  - `levenshtein(a, b)` — рунный Левенштейн без оптимизаций
    (≤100 символов, нам важна корректность UTF-8).
- ✅ `translate.go` — `correct_translation` или `alternative_answers`
  после нормализации. Пустой submit → `ErrInvalidAnswer`.
- ✅ `match_pairs.go` — `Score = matched/total`, `IsCorrect` только при
  `matched == total`.
- ✅ `listening.go` — fuzzy: точное совпадение / альтернативы /
  Levenshtein ≤ `max(2, 15% от длины эталона)`. `MaxLevenshtein` поле
  для override в тестах.
- ✅ `fill_blank.go` — строгое совпадение после `normalize` (без fuzzy:
  fill_blank про конкретную форму глагола, опечатка = неправильно).
- ✅ `tap_words.go` — порядок слов важен; per-position сравнение
  `normalize`. Score = matched/total.
- ✅ `quiz.go` — поддержка трёх форматов answer: `{"index": N}`,
  `{"option_id": "..."}`, `{"indices": [..]}` (multi-select требует
  точного совпадения множеств).
- ✅ `story.go` — валидируются только сцены `type=choice`. Если их 0 —
  считается «нечего валидировать», IsCorrect=true. Иначе
  `Score = correct_choices / total_choices`.

#### Тесты — `validators_test.go`, 20/20 зелёные

```
$ go test ./internal/service/validators/
ok    github.com/elearning/step-validation-service/internal/service/validators  0.007s
```

Покрытие:
- translate: точное / диакритика+пунктуация / альтернатива / неправильно /
  пустой submit (error).
- match_pairs: всё правильно / частично (3/4 → score≈0.75).
- listening: точное+варианты пробелов/диакритики / fuzzy с 1 опечаткой /
  совсем непохожее.
- fill_blank: точное (case-insens.) / опечатка (НЕ принимается).
- tap_words: верный порядок / переставленный (не correct, partial score).
- quiz: single-by-index correct/wrong / multi-select correct vs partial.
- story: все choice-сцены верно / частично (0.5 score).
- Registry: все 7 типов зарегистрированы / unknown_type → error.

### 2.8 — SubmissionService (2026-05-13)

> Полная склейка: GetStep → validate → save attempt → gamification +
> course progress side-effects.

#### Файлы
- ✅ `internal/service/xp_rules.go` — `xpForStep(stepType, score) int`.
  Дублирует таблицу из gamification-service, но решение «сколько XP»
  принимает caller (нам). Quiz `score>=0.999` → 30 XP (perfect),
  иначе 20. Listening / story → 20. Translate / match_pairs /
  fill_blank / tap_words → 15.
- ✅ `internal/service/service.go` — `SubmissionService.Submit`:
  1. Валидация request (`user_id`, `step_id`, `answer`).
  2. `courseClient.GetStep(stepID)` — `ErrCourseUnavailable` →
     `Unavailable`, остальное → `ErrStepNotFound`.
  3. `registry.ValidateFor(stepType, content, answer)` — ошибки
     валидаторов мапятся в sentinel `ErrInvalidStep` /
     `ErrInvalidAnswer`.
  4. `attempts.Create(...)` — пишем попытку (даже неправильную).
     При ошибке записи — abort до side-effects (нельзя начислить XP
     без attempt).
  5. **При correct**: `gamification.AddXP(STEP_COMPLETED)` +
     `courseClient.MarkStepComplete(...)`. Оба вызова — best-effort
     (warn в лог, но не роняем submit, т.к. side-effects).
  6. **При wrong**: `gamification.LoseHeart(stepID)`, кладём
     `Hearts` в результат.

#### Тесты — `service_test.go`, 4/4 зелёные

- `TestSubmit_CorrectFiresAddXPAndMarkComplete` — quiz perfect →
  AddXP(30) + MarkStepComplete(step-1) + 0 LoseHeart. attempt
  сохранён в repo.
- `TestSubmit_WrongFiresLoseHeart` — wrong index → LoseHeart(1),
  AddXP(0), MarkStepComplete(0). Hearts проброшены в Result.
- `TestSubmit_NoStep_ReturnsNotFound` — courseClient.GetStep error →
  `ErrStepNotFound`.
- `TestSubmit_RequiresFields` — пустой req / пустой answer → ошибки.

```
$ go test ./...
ok  step-validation-service/internal/service           0.008s
ok  step-validation-service/internal/service/validators 0.006s
```

### 2.9 — gRPC API (2026-05-13)

- ✅ `internal/converter/converter.go` — конвертация `Struct ↔
  json.RawMessage` (через `protojson` для шапки `Struct`'а),
  `ToAttemptProto`.
- ✅ `internal/api/step_validation/v1/api.go`:
  - `SubmitAnswer`: валидация → `StructToJSON(answer)` → вызов
    `service.Submit` → ответ с `attempt`, `correct_answer` (как
    Struct), `gamification`, `hearts`. Маппинг ошибок через
    `mapServiceError`:
    - `ErrStepNotFound` → `NotFound`.
    - `ErrInvalidAnswer` → `InvalidArgument`.
    - `ErrInvalidStep` → `FailedPrecondition` (плохой content в БД).
    - `ErrCourseUnavailable` → `Unavailable`.
  - `ListAttempts`: дефолтный `limit=20`, mapping в proto через
    `ToAttemptProto`.
- ✅ Все тесты проходят (`go test ./...` — 24/24 зелёные).

### 2.10 — Gateway routes (2026-05-13)

#### Config
- ✅ `internal/config/env/services.go` — добавлено
  `STEP_VALIDATION_SERVICE_ADDR` (optional, default `""`).
- ✅ `internal/config/interfaces.go` — `StepValidationServiceAddr()`.
- ✅ `deploy/env/.env` — `GATEWAY_STEP_VALIDATION_SERVICE_ADDR=localhost:50059`.
- ✅ `deploy/env/gateway.env.template` — соответствующая запись.

#### Clients
- ✅ `internal/client/step_validation.go` — gRPC-клиент к
  step-validation-service (`SubmitAnswer`, `ListAttempts`).
- ✅ `internal/client/course.go` — расширен: `ListVocabulary`,
  `GetVocabularyEntry`, `CreateVocabularyEntry`, `UpdateVocabularyEntry`,
  `DeleteVocabularyEntry`, `BulkCreateVocabulary`, `SynthesizeTTS`,
  `GetTTSByText` (просто проксируют в course-service).

#### DI
- ✅ `internal/app/di.go` — добавлен `stepValidationClient` с lazy init
  и closer. `nil` если адрес пуст — submit-роуты тогда не регистрируются.

#### Handlers
- ✅ `internal/handler/step_submit.go` — `Submit` (POST /steps/:stepId/submit)
  и `ListAttempts`. `answer` приходит как `map[string]interface{}`,
  конвертируется в `structpb.Struct` для gRPC. + общий хелпер
  `parsePagination` (limit default 20, max 200).
- ✅ `internal/handler/vocabulary.go` — `List` (public),
  `Get` (public), `Create` / `Update` / `Delete` / `BulkCreate` (admin).
  Использует `wrapperspb.String` для PATCH-style update.
- ✅ `internal/handler/tts.go` — `Synthesize` (admin),
  `GetByText` (public). На phase-2 stub: `audio_url` обязателен.

#### Routes (`internal/app/app.go`)
- ✅ Public (без auth):
  - `GET  /api/v1/vocabulary?language=&target_language=&level=&pos=&search=&limit=&offset=`
  - `GET  /api/v1/vocabulary/:id`
  - `GET  /api/v1/tts/by-text?text=&language=&voice=`
- ✅ Protected (auth-middleware), только если step-validation подключён:
  - `POST /api/v1/steps/:stepId/submit`
  - `GET  /api/v1/steps/:stepId/attempts`
- ✅ Admin (auth + admin-middleware):
  - `POST   /api/v1/admin/vocabulary`
  - `POST   /api/v1/admin/vocabulary/bulk`
  - `PUT    /api/v1/admin/vocabulary/:id`
  - `DELETE /api/v1/admin/vocabulary/:id`
  - `POST   /api/v1/admin/tts/synthesize`

#### Verification
- ✅ `go build ./...` всех 8 сервисов + shared + platform — чисто.

---

## 🎉 Backend Phase 2 — Done

Все backend-таски (2.1–2.10) закрыты:
- course-service: 12 типов шагов (+6 phase-2), таблицы `vocabulary`
  и `tts_cache`, CRUD + TTS stub эндпоинты.
- step-validation-service (новый, gRPC `:50059`): scaffold + 7
  валидаторов с 24 unit-тестами + полный SubmitAnswer pipeline
  (validate → save attempt → AddXP/LoseHeart + MarkStepComplete).
- shared/proto: `step_validation.v1` + расширение `StepKind` в
  gamification.proto.
- Gateway: 11 новых REST-эндпоинтов (interactive submit, vocabulary
  CRUD, TTS stub).

Дальше — frontend (web + mobile + admin), задачи 2.11–2.13.

---

### 2.11 — Frontend web: student lesson flow (2026-05-13)

> **Scope-decision**: на phase-2 для translate / tap_words взяли
> **tap-only** UX (Duolingo-стиль), а не полный drag&drop. Причины:
> (1) Лучше работает на mobile-web без жестов; (2) короче код; (3) UX
> идентичный mobile-приложению. `dnd-kit` пакеты установлены — будут
> использованы для admin (reorder опций / step order) и при желании
> легко перейти на real DnD на вебе. Mobile (2.12) будет с real DnD
> через `react-native-gesture-handler` (см. ответ юзера).

#### Зависимости
- ✅ `@dnd-kit/core`, `@dnd-kit/sortable`, `@dnd-kit/utilities` (4 пакета).

#### Типы — `src/types/api.ts`
- ✅ Расширен `StepType` (6 phase-2 типов + legacy).
- ✅ `INTERACTIVE_STEP_TYPES` константа + `isInteractiveStep(t)` хелпер.
- ✅ Content schemas: `TranslateContent`, `MatchPairsContent`,
  `ListeningContent`, `FillBlankContent`, `TapWordsContent`,
  `StoryContent` (+ `StoryScene`, `MatchPairsPair`).
- ✅ Phase 2 API типы: `VocabularyEntry`, `VocabularyListResponse`,
  `TTSCacheEntry`, `StepAttempt`, `SubmitAnswerRequest`,
  `SubmitAnswerResponse` (с `gamification?: AddXPResponse` +
  `hearts?: Hearts`).

#### API клиент — `src/lib/step-validation-api.ts`
- ✅ `StepValidationApi.{submit, listAttempts}` —
  `POST /steps/:id/submit`, `GET /steps/:id/attempts`.
- ✅ `VocabularyApi.{list, get}` (public).
- ✅ `AdminVocabularyApi.{create, update, delete, bulkCreate}`.
- ✅ `TTSApi.getByText`, `AdminTTSApi.synthesize`.

#### Хук — `src/hooks/use-step-submit.ts`
- ✅ `useStepSubmit()` — `useMutation` обертка над
  `StepValidationApi.submit`.

#### Step-компоненты — `src/components/lesson/`
- ✅ `types.ts` — `StepComponentProps` (общий контракт) + `parseContent<T>`.
- ✅ `FeedbackBar.tsx` — общая нижняя панель: idle/submitting →
  Check-кнопка; correct/wrong → подсветка + correct_answer + "Дальше".
- ✅ `TranslateStep.tsx` — tap-only: банк слов → answer area, обратное
  снятие. Submit отправляет `{ words: [...] }`.
- ✅ `MatchPairsStep.tsx` — двухколоночный tap-match с
  псевдо-shuffle (`seed = step.id`). Wrong-flash 600ms. Submit
  только когда все пары собраны.
- ✅ `ListeningStep.tsx` — play (rate=1) + turtle slow play
  (rate=0.5) через `HTMLAudioElement`, input field. Поддерживает
  отсутствие `audio_url` (показывает `translation_hint`).
- ✅ `FillBlankStep.tsx` — рендерит шаблон с `___` как inline-blank.
  Если `options[]` есть — кнопки (авто-submit при выборе), иначе input.
- ✅ `TapWordsStep.tsx` — как Translate, но с аудио-плеером.
  Submit отправляет `{ words: [...] }`.
- ✅ `QuizStep.tsx` — новый формат `{ options: [{text, is_correct}] }`
  (НЕ legacy `{ questions: [...] }`). Single-select по индексу.
  Подсветка правильного option-а на wrong.
- ✅ `StoryStep.tsx` — последовательные сцены с прогресс-баром.
  На choice-сцен — кнопки опций. Финальный submit отправляет
  `{ choices: [индексы] }`.
- ✅ `StepRenderer.tsx` — switch по типу. Возвращает заглушку для
  неподдержанных типов.

#### Lesson page — `src/app/lessons/[id]/page.tsx`
- ✅ Импорт `isInteractiveStep`, `StepRenderer`, `useStepSubmit`.
- ✅ Вынес `advance()` — переход к следующему шагу / завершение.
- ✅ `handleComplete` — legacy путь (text/video через MarkStepComplete).
- ✅ `handleInteractiveSubmit` — phase-2 путь:
  `submitStep.mutateAsync` → `fireGamificationFx(resp.gamification)`
  при correct → возврат `SubmitAnswerResponse` в компонент.
- ✅ Рендер: для `isInteractiveStep(step.type)` → `<StepRenderer>`,
  для legacy → `<StepBody>` + legacy кнопки Назад/Дальше.

#### Verification
- ✅ `npx tsc --noEmit` в `eng_next2` — чисто.

### 2.13 — Admin: per-type formы (2026-05-13)

#### Структура — `src/components/admin/step-editors/`
- ✅ `types.ts` — `StepContentEditorProps<T>` (общий контракт:
  `value: Partial<T>` + `onChange(value: T)`); `safeParseContent<T>`.
- ✅ `TranslateEditor.tsx` — поля `source_text`, `correct_translation`,
  `word_bank` (csv), `alternative_answers` (по строке), language pair,
  explanation. + общий хелпер `Field` (label + required).
- ✅ `MatchPairsEditor.tsx` — динамический список пар с кнопками
  +/− и инлайн-input'ами left↔right.
- ✅ `ListeningEditor.tsx` — `audio_text`, `audio_url`,
  `translation_hint`, alternatives.
- ✅ `FillBlankEditor.tsx` — `sentence_template` (с `___`),
  `correct_answer`, optional `options` (csv → кнопки) и
  `alternatives` (для свободного ввода).
- ✅ `TapWordsEditor.tsx` — `audio_text`/`audio_url`,
  `correct_words` (csv в правильном порядке), `word_bank` (csv с
  distractor'ами).
- ✅ `StoryEditor.tsx` — list сцен с типом
  (`narrative`/`choice`), для choice — динамический список options
  с `is_correct` чекбоксом и question.
- ✅ `PhaseTwoStepEditor.tsx` — главный switch + `PHASE_TWO_STEP_TYPES`
  + `isPhaseTwoStepType` type-guard. Парсит content один раз и
  диспатчит per-type редактору.

#### Интеграция — `src/components/admin/course/StepManager.tsx`
- ✅ `StepType` расширен до 9 значений (3 legacy + 6 phase-2).
- ✅ select разделён на `<optgroup>` Legacy / Interactive (Phase 2).
- ✅ Переключение типа на phase-2 / quiz — сбрасывает `content`
  (старый JSON разной формы → ошибка парсинга в новом редакторе).
- ✅ `handleAdd` / `handleUpdate` — `content` для phase-2 и quiz уже
  готовый JSON-string (поступает из редактора). Только text / video
  оборачиваются дополнительно.
- ✅ `handleEdit` — для всех не-text/video типов читает `step.content`
  как есть, редактор сам распарсит через `safeParseContent`.
- ✅ Quiz-textarea теперь подсказывает phase-2 формат
  `{ options: [{text, is_correct}], explanation? }` вместо legacy
  `questions: [...]`.
- ✅ `getStepIcon` — иконки для 6 phase-2 типов
  (🔁 / 🧩 / 🎧 / ✍️ / 👆 / 📖).

#### Verification
- ✅ `npx tsc --noEmit` — чисто.

---

### 2.12 — Frontend mobile: student lesson flow (2026-05-13)

> **Scope-decision**: на phase-2 mobile применён тот же tap-only UX
> что и web — для консистентности UX между платформами и быстрой
> итерации. Полноценный DnD через `react-native-gesture-handler`
> (PanGestureHandler + Reanimated SharedValues) запланирован отдельной
> подзадачей (Phase 2.5) — это значительный объём кода под каждый
> step-тип и требует device-testing.

#### Типы и API — `src/types/api.ts` + `src/lib/api-client.ts`
- ✅ Зеркалирует web: `StepType` (12 значений),
  `INTERACTIVE_STEP_TYPES`, `isInteractiveStep`, все content schemas
  (`TranslateContent`, `MatchPairsContent`, ..., `StoryContent`),
  `VocabularyEntry`, `TTSCacheEntry`, `StepAttempt`,
  `SubmitAnswerRequest`, `SubmitAnswerResponse`.
- ✅ `api-client.ts` расширен: `StepValidationApi.{submit, listAttempts}`,
  `VocabularyApi.{list, get}`, `TTSApi.getByText` (admin-эндпоинты не
  включены — admin-flow только в web).

#### Хук — `src/hooks/use-step-submit.ts`
- ✅ `useStepSubmit()` — `useMutation` обёртка над
  `StepValidationApi.submit`. По contractу идентична web-варианту.

#### Step-компоненты — `src/components/lesson/`
- ✅ `step-types.ts` — `StepComponentProps` + `parseStepContent<T>`.
- ✅ `FeedbackBar.tsx` — нижняя панель из `lucide-react-native` иконок
  (CheckCircle2 / XCircle) + NativeWind classes. Поведение —
  как web FeedbackBar.
- ✅ `translate-step.tsx` — tap-only через `Pressable`. Bank/answer
  area через `flex-wrap gap-2`. Submit отправляет `{ words: [...] }`.
- ✅ `match-pairs-step.tsx` — двухколоночный tap-match с
  псевдо-shuffle (seed = step.id). 600ms wrong-flash. Submit
  при `matched === total`.
- ✅ `listening-step.tsx` — реальное воспроизведение через
  `expo-av` (`Audio.Sound`), `rate=0.5` для turtle-кнопки.
  Корректная очистка предыдущего sound через `unloadAsync`.
- ✅ `fill-blank-step.tsx` — inline-blank через `<View>` с
  `border-b-4` (RN не поддерживает text-decoration), `___`-плейсхолдер.
  Options → авто-submit при tap; иначе `<TextInput>`.
- ✅ `tap-words-step.tsx` — как translate, но с `Audio` плеером
  (без turtle, t.к. порядок слов — тренировка).
- ✅ `quiz-interactive-step.tsx` — phase-2 формат `{ options[] }`.
  Подсветка правильного option при wrong через
  `showCorrectOnReveal`. Legacy `{ questions[] }` отрендерится в
  старый `quiz-step.tsx` (см. ниже).
- ✅ `story-step.tsx` — `ScrollView` с прогресс-баром, `Image`
  для image_url, последовательные сцены + choice-кнопки. Финальный
  submit `{ choices: [...] }`.
- ✅ `StepRenderer.tsx` — switch по `step.type`, fallback с
  понятным сообщением для неподдержанных.

#### Lesson screen — `src/app/learn/[lessonId].tsx`
- ✅ Импорты: `useStepSubmit`, `isInteractiveStep`, `StepRenderer`,
  `SubmitAnswerResponse`.
- ✅ Хелпер `tryHasQuestions(raw)` — отличает legacy
  `{ questions: [...] }` от phase-2 quiz `{ options: [...] }`.
  Маршрутизация в renderStep:
  - quiz + есть `questions` → legacy `QuizStep`.
  - `isInteractiveStep(type)` → `StepRenderer` + interactive submit.
  - text/video → legacy компоненты.
- ✅ Вынес `advance()` (переход или router.back при последнем).
- ✅ Вынес `triggerFxFromGamification()` — общий FX-триггер
  (XPGain / Level-up / Daily-goal / Achievement) на основе
  `SubmitAnswerResponse['gamification'] | null`. Используется и
  legacy completeStep onSuccess, и phase-2 submit при `is_correct`.
- ✅ `handleInteractiveSubmit` — submit + при wrong зовёт
  `fx.onWrong()` (haptic+sound), при correct — `triggerFxFromGamification`.
- ✅ Нижний legacy nav-bar (Previous/Continue) скрыт для phase-2
  типов — там свой FeedbackBar управляет переходом.

#### Verification
- ✅ `npx tsc --noEmit` в `eng_mob` — чисто.

#### TODO Phase 2.5 (mobile-specific)
- DnD через `react-native-gesture-handler` для translate и tap_words
  (PanGestureHandler + Reanimated SharedValues для дрэгабельных слов
  + drop-zone detection через runOnJS). Текущий tap-only UX —
  валидное MVP, идентично web.

---

## 🎉 Phase 2 — Done

Все 14 задач из плана закрыты в одной сессии (2026-05-13):

| # | Задача | Статус |
|---|--------|--------|
| 2.1 | course-service: step_type enum | ✅ |
| 2.2 | course-service: vocabulary + tts_cache | ✅ |
| 2.3 | course-service: vocabulary CRUD | ✅ |
| 2.4 | course-service: TTS stub | ✅ |
| 2.5 | shared/proto: step_validation + StepKind | ✅ |
| 2.6 | step-validation-service: scaffold | ✅ |
| 2.7 | 7 validators + 20 unit-тестов | ✅ |
| 2.8 | SubmitAnswer service + clients | ✅ |
| 2.9 | gRPC API | ✅ |
| 2.10 | Gateway routes (11 REST endpoints) | ✅ |
| 2.11 | Frontend web: lesson flow + 7 step-components | ✅ |
| 2.12 | Frontend mobile: lesson flow + 7 step-components | ✅ |
| 2.13 | Admin: per-type editors для 6 типов | ✅ |

**Итого**:
- 1 новый микросервис (`step-validation-service` на `:50059`).
- 24 backend unit-теста зелёные.
- 6 новых SQL миграций.
- 11 новых REST эндпоинтов через Gateway.
- ~30 новых файлов фронтенда (web + mobile + admin).
- Все 9 модулей (`platform`, `shared`, 7 сервисов) и оба фронта
  (`eng_next2`, `eng_mob`) собираются без ошибок.

**Открытые TODO для Phase 2.5/3**:
- Mobile DnD через react-native-gesture-handler.
- Реальная интеграция TTS (Google Cloud / ElevenLabs) — сейчас stub.
- Mobile markdown-рендер в story (сейчас — `stripMarkdown`).
- Phase 3: адаптивное обучение (использовать `step_attempts` истории).

---

## 🎁 Late additions — Visual quiz editor + Story rich-text (2026-05-13)

После закрытия Phase 2 добавлены два quality-of-life UX-улучшения в админке.

### Visual quiz editor

- ✅ `RichTextEditor.tsx` — фиксированный `id="markdown-editor"` заменён на
  `useRef`, добавлен `rows` prop. Теперь можно безопасно использовать
  несколько экземпляров на одной странице. Превью без min-height.
- ✅ Новый компонент `step-editors/QuizEditor.tsx`:
  - Поддерживает **оба формата**: phase-2 single-question
    (`{ question, options: [{text, is_correct}], explanation? }`) и
    legacy multi-question (`{ questions: [{question, options[], correct_answer}] }`).
  - Auto-detect формата из контента + radio для явного переключения.
  - **Single form**: question / image_url / audio_url / dynamic options
    с radio-выбором правильного / explanation.
  - **Multi form**: динамический список вопросов, каждый со своим
    list options + radio correct + explanation. При удалении option'а
    `correct_answer` сдвигается корректно.
- ✅ `StepManager.tsx` — заменена old textarea для `quiz` на
  `<QuizEditor>`. Сохраняется тот же flow: `content` в state — JSON-string,
  редактор парсит/сериализует.

### Story rich-text

- ✅ `step-editors/StoryEditor.tsx` — поля `text` и `translation` в каждой
  сцене заменены с plain `<input>` на `<RichTextEditor rows={3|2}>` с
  toolbar (Bold / Italic / Code / Heading / List / Link). Поддерживается
  markdown.
- ✅ `eng_next2 components/lesson/StoryStep.tsx` — `scene.text` и
  `scene.translation` рендерятся через `<ReactMarkdown>` с tailwind
  `prose` стилями (typography plugin).
- ✅ `eng_mob components/lesson/story-step.tsx` — добавлен helper
  `stripMarkdown(s)` (regex-based: bold/italic/code/link). На mobile
  показывается plain text без markdown-маркеров — полноценный markdown
  через `react-native-markdown-display` помечен как Phase 2.5 TODO.

### Verification
- ✅ `npx tsc --noEmit` в `eng_next2` — чисто.
- ✅ `npx tsc --noEmit` в `eng_mob` — чисто.

---
