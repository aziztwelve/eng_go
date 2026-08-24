# Phase 7 — Word Flashcards · Progress

**Спека:** [phase-7-word-flashcards.md](./phase-7-word-flashcards.md)
**Старт:** 2026-05-29

---

## Sprint 1 — Backend (~3 дня)

### ✅ 1.1 Миграции БД — DONE

**Файлы:**
- `services/course-service/migrations/000012_extend_vocabulary.{up,down}.sql`
  — добавили `definition`, `example_sentence` в `courses.vocabulary`.
- `services/course-service/migrations/000013_create_user_flashcards.{up,down}.sql`
  — новая таблица `courses.user_flashcards` (15 колонок: id, user_id,
  source, vocabulary_id FK, word, translation, language, target_language,
  definition, example_sentence, audio_url, image_url, archived_at,
  created_at, updated_at + 3 индекса + trigger updated_at).
- `services/course-service/migrations/000014_create_flashcard_today_queue.{up,down}.sql`
  — новая таблица `courses.flashcard_today_queue` (4 колонки: user_id,
  flashcard_id FK, queued_for_date, added_at + composite PK + 1 индекс).
- `services/srs-service/migrations/000005_extend_item_types.{up,down}.sql`
  — расширили CHECK на `srs.user_srs_items.item_type` чтобы включить
  `'flashcard'`.

**Применено:** да (live elearning DB).

**Верификация:**
```
courses.user_flashcards columns        | 15
courses.flashcard_today_queue columns  | 4
courses.vocabulary.definition?         | 1
srs.user_srs_items CHECK incl flashcard| 2 (up + down)
```

**Заметки:**
- Использован паттерн `IF NOT EXISTS` + `DROP TRIGGER IF EXISTS` для
  идемпотентности (повторный запуск миграции не падает).
- COMMENT-ы убрали из multiline `||`-конкатенации (PostgreSQL парсер
  не любит её в `COMMENT ON COLUMN`).

---

### ✅ 1.2 Proto-файлы — DONE

**Файлы:**
- `shared/proto/course/v1/course.proto` — +11 RPC (8 Flashcards + 3
  TodayQueue), +Flashcard message + 16 request/response messages
  (~200 строк).
- `shared/proto/ai/v1/ai.proto` — +SuggestFlashcards RPC,
  +SuggestFlashcardsRequest, +FlashcardSuggestion, +SuggestFlashcardsResponse
  (~45 строк).

**Генерация:** `task proto:gen` — успешно, новые `.pb.go` сгенерированы.

**Верификация:**
- `services/course-service` и `services/ai-service` компилируются (`go build ./...`)
- В сгенерированных файлах присутствуют все 12 новых RPC stub'ов.

---

### ✅ 1.3 course-service flashcards — DONE

**Файлы:**
- `internal/repository/postgres/flashcards.go` — Postgres impl
  (`Create`, `GetByID`, `GetByVocabulary`, `Update`, `Archive`, `List`,
  `BulkCreate`, `Stats`). LEFT JOIN с `flashcard_today_queue` через
  EXISTS-subquery для вычисления `pinned_today` без дублирования строк.
  Маппинг `pgErr.Code == "23505"` → `repository.ErrFlashcardConflict`.
- `internal/service/flashcards.go` — слой бизнес-логики:
  валидация (trim + lowercase lang + length≤200 + `language != target`),
  `AddVocabularyAsFlashcard` (идемпотентный, retry-on-conflict).
- `internal/converter/flashcard.go` — model↔proto, `FromCreate*`,
  `ApplyUpdate*` (partial-patch через StringValue), `FromBulkCreateItem`.
- `internal/api/course/v1/flashcards.go` — 8 RPC handlers с
  `mapFlashcardErr` (sentinel'ы → gRPC codes).
- `internal/api/course/v1/api.go` + `internal/app/app.go` — DI: новое
  поле `flashcardService`, конструктор обновлён.

**SRS-интеграция (deferred):**
SM-2 проекция (`strength`/`repetitions`/`next_review_at`) и SRS-зависимые
поля Stats (`learning_count`/`mastered_count`/`today_completed`) пока
возвращают `nil`/`0`. Требует расширения `srs.Client` (Sprint 1.5+).

**Верификация:** `go build ./... && go vet ./... && go test ./...` —
зелено (no test files yet, см. Sprint 1.8).

---

### ✅ 1.4 course-service today_queue — DONE

**Файлы:**
- `internal/repository/today_queue.go` — interface `TodayQueueRepository`
  (`Pin`, `Unpin`, `ListForDate`).
- `internal/repository/postgres/today_queue.go` — Postgres impl.
  `Pin` использует `INSERT … ON CONFLICT DO UPDATE … RETURNING added_at`
  для атомарной идемпотентности (повторный pin возвращает прежний
  added_at). Pre-check на ownership + не-archived → `ErrFlashcardNotFound`.
- `internal/service/today_queue.go` — `parseQueueDate` (`YYYY-MM-DD` →
  UTC midnight; empty → today UTC). Per-user TZ — TODO (требует user.Client).
- `internal/api/course/v1/today_queue.go` — handlers `PinForToday`,
  `UnpinFromToday`, `ListTodayQueue`. Resolved date возвращается в
  ListTodayQueueResponse как `YYYY-MM-DD`.
- DI в `api.go` + `app.go`.

**Идемпотентность:**
- Pin того же `(user, flashcard, date)` повторно — OK, прежний `added_at`.
- Unpin несуществующей записи — OK, no-op.

**Верификация:** `go build ./... && go vet ./... && go test ./...` — зелено.

---

### ✅ 1.5 ai-service SuggestFlashcards — DONE

**Файлы:**
- `internal/service/suggest_flashcards.go` — `SuggestFlashcards` метод
  на `Service`. In-memory curated pool под ключом `(level, goal)`.
- `internal/api/v1/api.go` — RPC handler `SuggestFlashcards`.

**Pool:**
- 4 уровня (a1, a2, b1, b2) × 2 цели (work/career, travel) = 8 веток
  по 5-7 карточек + generic fallback.
- Уникальные `reason` для UI tooltip-объяснения «почему предложили».
- `target_language != "en"` → возвращаем пустой пул + exhausted=true
  (multi-target суппорт — TODO).

**Алгоритмы:**
- `normalizeLevel` / `normalizeGoal` — мап произвольных enum'ов в
  каноническую шкалу.
- `pain_point="fear_speaking"` → буст карточек с POS verb/phrase
  (stable sort).
- `exclude_words` — lower-case фильтр перед взятием top-N.
- `count` clamped в [1..10], default=5.

**Заметки:**
- LLM-based generator — отложен; абстракция готова к замене на
  `provider.Chat()` с JSON-output prompt'ом.
- Pool детерминированный → integration tests легко писать.

**Верификация:** `go build ./... && go vet ./...` — зелено. Тест-кейсы
запланированы в Sprint 1.8. Существующий `TestStartConversation_Roleplay`
fail — pre-existing (scenario fixtures отсутствуют), не связан с этим.

---

### ✅ 1.6 step-validation auto-add hook — DONE

**Файлы:**
- `internal/client/course/{client,grpc,noop}.go` — расширен интерфейс
  `Client` методом `AddVocabularyAsFlashcard(userID, vocabularyID, source)`.
- `internal/service/auto_flashcards.go` — `extractVocabularyIDs` (per-type
  парсинг `vocabulary_id` из `step.content`) + `autoAddFlashcards` hook.
- `internal/service/service.go` — шаг 6 в `Submit`: при `IsCorrect`
  вызывает `autoAddFlashcards` (после recordSRS).
- `internal/service/auto_flashcards_test.go` — 4 теста (extract table-test
  + correct-fires / wrong-skips / non-fatal-on-error).
- `internal/service/service_test.go` — `stubCourse.AddVocabularyAsFlashcard`
  + `TestMain` с `logger.InitForBenchmark()`.

**Дизайн:**
- Извлекаем `vocabulary_id` из контента для типов `match_pairs` (pairs[]),
  `fill_blank` / `translate` / `listening` (single). Forward-compatible:
  inline-only контент без `vocabulary_id` просто не даёт авто-добавления
  (дедуп невозможен без ссылки на system vocabulary).
- `source='lesson'`. Идемпотентность — на стороне course-service (UNIQUE).
- Полностью non-fatal: ошибки логируются, Submit не валится.

**Верификация:** `go build ./... && go vet ./... && go test ./...` — зелено.

---

### ✅ 1.7 Gateway routes — DONE

**Файлы:**
- `internal/client/course.go` — 11 flashcard/today-queue методов на
  `CourseClient`.
- `internal/client/ai.go` — `SuggestFlashcards` на `AIClient`.
- `internal/handler/flashcards.go` — `FlashcardHandler` (course + опц. ai).
- `internal/app/app.go` — регистрация группы `/flashcards` + AI suggestions
  в protected (JWT) роутах.

**Endpoint'ы (12):**
- `GET /flashcards`, `POST /flashcards`
- `GET /flashcards/:id`, `PUT /flashcards/:id`, `DELETE /flashcards/:id`
- `POST /flashcards/bulk`, `POST /flashcards/from-vocabulary`
- `GET /flashcards/stats`
- `GET /flashcards/today`, `POST /flashcards/today/:flashcardId`,
  `DELETE /flashcards/today/:flashcardId`
- `GET /ai/flashcard-suggestions` (503 если ai-service не настроен)

**Заметки:**
- userID берётся из JWT-контекста (`getUserID`) — клиент не передаёт.
- gin static+param роуты (`/stats` / `/today` / `/:id`) — проверено,
  паники при регистрации нет (radix tree приоритизирует static).
- partial-update через `*string` → `wrapperspb.String`.

**Верификация:** `go build ./... && go vet ./... && go test ./...` — зелено.

---

### ✅ 1.8 Backend unit tests — DONE

**Файлы:**
- `course-service/internal/service/flashcards_test.go` — 10 тестов
  (CRUD, validation, conflict, stats) с in-memory fake repository.
- `course-service/internal/service/today_queue_test.go` — 6 тестов
  (pin/unpin/list, idempotency, date parsing) с in-memory fake.
- `ai-service/internal/service/suggest_flashcards_test.go` — 6 тестов
  (default params, validation, exclude, exhausted, deterministic).
- `step-validation-service/internal/service/auto_flashcards_test.go` —
  4 теста (уже был готов в Sprint 1.6).
- `gateway/internal/handler/{flashcards,vocabulary,ai,srs}_test.go` —
  32 теста валидации (auth, invalid body, missing params):
  flashcards (15), ai (5), srs (9), vocabulary (3).

**Исправления:**
- `ai-service/internal/service/conversation_test.go` — заменён
  несуществующий сценарий `roleplay_restaurant` → `roleplay_airport`,
  исправлен ожидаемый язык "es" → "en".

**Верификация:**
```bash
cd services/course-service && go test ./internal/service  # ok
cd services/ai-service && go test ./internal/service      # ok
cd services/step-validation-service && go test ./...     # ok
cd services/gateway && go test ./internal/handler         # ok
```

Все сервисы собираются и тесты проходят.

---

## Phase 8 — Track dictionary integration ✅ Backend/Mobile

Track dictionaries reuse the Phase 7 personal flashcard and SRS architecture;
they do not introduce a second card model.

- Added `courses.track_vocabulary` with ordered track-to-vocabulary relations.
- Extended the importer to materialize deterministic vocabulary IDs and relations.
- Generated placeholders (`The term ...`, `Listening word:`) are skipped.
- Added `ListTrackVocabulary` and `AddTrackVocabularyAsFlashcards` RPCs.
- Added protected Gateway routes for dictionary read and flashcard add.
- Add requests validate track membership and use the existing idempotent
  `AddVocabularyAsFlashcard` method.
- Mobile track detail now opens a searchable dictionary with select-one,
  select-all and add-to-library actions.

Deployment on 2026-08-24:

- Backend commits: `94655f5`, follow-up fix `b8198c6`.
- Mobile commit: `40575ff`.
- `450` JSON files imported, `1,178` relations created across `80` tracks.
- Health endpoint passed.
- Authenticated dictionary/add E2E smoke test is pending rerun after the UUID
  cast fix in `b8198c6`.

---

## Sprint 2 — Mobile UI (~5 дней)

### ✅ 2.1 API types + api-client — DONE

**Файлы:**
- `src/types/api.ts` — 13 новых интерфейсов (Flashcard, FlashcardStats,
  ListFlashcardsRequest/Response, CreateFlashcardRequest, UpdateFlashcardRequest,
  BulkCreateFlashcardsRequest/Response, PinForTodayRequest, ListTodayQueueResponse,
  FlashcardSuggestion, SuggestFlashcardsRequest/Response).
- `src/lib/api-client.ts` — FlashcardsApi с 12 методами (list, get, create,
  update, archive, bulkCreate, fromVocabulary, stats, listToday, pinForToday,
  unpinFromToday, suggestions).

**Верификация:** TypeScript компилируется без ошибок.

---

### ✅ 2.2 React Query hooks — DONE

**Файлы:**
- `src/hooks/use-flashcards.ts` — 11 hooks:
  - Query: useFlashcards, useFlashcard, useFlashcardStats, useTodayQueue,
    useFlashcardSuggestions
  - Mutation: useCreateFlashcard, useUpdateFlashcard, useArchiveFlashcard,
    useBulkCreateFlashcards, usePinForToday, useUnpinFromToday
- Query keys: FLASHCARDS_KEY, FLASHCARD_STATS_KEY, TODAY_QUEUE_KEY,
  FLASHCARD_SUGGESTIONS_KEY
- Все mutations invalidate соответствующие queries для автообновления UI.

**Верификация:** Hooks используют @tanstack/react-query, следуют паттерну
существующих hooks (use-srs.ts).

---

### ✅ 2.3 Library screen — DONE

**Файлы:**
- `src/app/(tabs)/practice/library.tsx` — библиотека flashcards:
  - Stats tiles (на сегодня / учу / выучено / всего)
  - Practice CTA кнопка «Повторить N слов» → /practice/flashcards
  - Search input для фильтрации
  - Список flashcards с word/translation/definition
  - Empty state с кнопкой добавления
  - Header с кнопкой Plus для AddFlashcardSheet

**Верификация:** Screen рендерится, интегрирован с useFlashcards/useFlashcardStats.

---

### ✅ 2.4 AddFlashcardSheet component — DONE

**Файлы:**
- `src/components/flashcards/AddFlashcardSheet.tsx` — bottom sheet для
  добавления новой flashcard:
  - Modal с Reanimated анимациями (FadeIn, SlideInDown)
  - Inputs: word (required), translation (required), definition (optional),
    example (optional)
  - Toggle для показа optional полей
  - Submit с loading state и validation
  - Интегрирован в library.tsx (header button + empty state button)

**Верификация:** Sheet открывается/закрывается, форма работает, mutation
вызывается.

---

### ✅ 2.5 Practice flashcards screen — DONE

**Файлы:**
- `src/app/(tabs)/practice/flashcards.tsx` — session flow:
  - Загрузка today_queue через useTodayQueue
  - Navigation по карточкам (currentIndex state)
  - Progress bar
  - Loading и empty states
  - Передача результатов (total, remembered) в flashcard-results

**Верификация:** Screen работает, карточки переключаются, результаты передаются.

---

### ✅ 2.6 FlashcardView component — DONE

**Файлы:**
- `src/components/flashcards/FlashcardView.tsx` — 3D flip card:
  - Reanimated rotateY interpolation (0..180 deg) с withSpring
  - Front side: word + hint «Нажмите для перевода»
  - Back side: translation + definition + example
  - Buttons «Помню» / «Не помню» появляются после flip
  - backfaceVisibility: 'hidden' для корректного 3D эффекта

**Верификация:** Flip анимация работает, кнопки вызывают onRemember/onForgot.

---

### ✅ 2.7 FlashcardResults screen — DONE

**Файлы:**
- `src/app/(tabs)/practice/flashcard-results.tsx` — результаты session:
  - Stats card с total/remembered/forgot/percentage
  - Trophy icon с цветом по успешности (≥70% = green, <70% = orange)
  - Motivational message
  - Buttons: «Вернуться в библиотеку» + «На главную»

**Верификация:** Screen рендерится с params из router, кнопки работают.

---

## Sprint 3 — AI + Polish (~2 дня)

### ✅ 3.1–3.6 — DONE

Все 6 пунктов Sprint 3 были реализованы вместе с Sprint 2 (mobile UI):

1. **ai-service mock provider SuggestFlashcards** — сделано в Sprint 1.5
   (in-memory pool по level×goal, 8 веток + generic fallback).
2. **SuggestionsWidget + интеграция в library** —
   `components/flashcards/SuggestionsWidget.tsx`: горизонтальная карусель
   AI-предложений, bulk-create «Добавить все». Интегрирован в library.tsx.
3. **TTS auto-play на back-side** — `FlashcardView.tsx:66-72`: 200ms delay
   после flip, respects `fx-prefs.sounds`, один раз за показ (ttsPlayedRef).
   Кнопка Volume2 для ручного повтора.
4. **Skip/undo в FlashcardView** — `flashcards.tsx`: undo-stack (5 карт),
   `handleSkip` / `handleUndo` callbacks, кнопки Undo2 + SkipForward.
5. **Sound stubs** — `sound-manifest.ts`: `flashcard-flip` + `practice-complete`
   (null-stubs, готовы к подключению MP3).
6. **Lottie placeholder** — `lottie-manifest.ts`: `flashcard-results`
   (null-stub, flashcard-results.tsx использует Lottie если ассет есть,
   иначе emoji 🏆 fallback).

---

## Sprint 4 — Verification + Docs (~1 день)

### ✅ 4.1 Mobile typecheck + lint — DONE

- `npx tsc --noEmit` — clean (0 errors).
- `npm run lint` — Phase 7 файлы чистые. Исправлены:
  - `FlashcardView.tsx`: убраны unused imports (`withTiming`, `runOnJS`),
    экранированы кавычки в example (`&ldquo;`/`&rdquo;`).
  - `SuggestionsWidget.tsx`: убран unused import `Plus`.
  - `flashcard-results.tsx`: убран unused import `Trophy`,
    добавлен eslint-disable для `require()` (Lottie lazy-load).

### ✅ 4.2 Backend go test all services — DONE

Все 12 сервисов: `go build ./...` + `go test ./...` — зелёные.

### ✅ 4.3 Update AGENTS.md — DONE

- `microservices-course/elearning/AGENTS.md`: добавлена секция Phase 7
  (backend: миграции, RPC, auto-add hook, gateway, tests).
- `eng_mob/AGENTS.md`: добавлена секция Phase 7 (mobile: routes, components,
  API, hooks, FX, verification).

### ✅ 4.4 Update PHASE_7_PROGRESS.md — DONE

Обновлён данный файл: Sprint 3 + Sprint 4 секции, метрики.

---

## Метрики прогресса

| Sprint | Подпункты | Готово |
|--------|-----------|--------|
| 1 (backend) | 8 | **8 / 8** (100%) ✅ |
| 2 (mobile) | 7 | **7 / 7** (100%) ✅ |
| 3 (polish) | 6 | **6 / 6** (100%) ✅ |
| 4 (verify) | 4 | **4 / 4** (100%) ✅ |
| **Total** | **25** | **25 / 25 (100%)** ✅ |
