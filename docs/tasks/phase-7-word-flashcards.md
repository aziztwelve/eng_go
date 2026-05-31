# Phase 7 — Word Flashcards (Повтор слов)

**Статус:** 📋 Planning
**Срок:** ~2 недели (Full feature scope + минимальный AI suggestions)
**Зависимости:** Phase 2 (vocabulary), Phase 3 (SRS / SM-2), Phase 5 (AI mock provider)

---

## 🎯 Цели

Дать пользователю инструмент работы с личным словарём в стиле Quizlet/Anki:
библиотека слов, добавление вручную или автоматически из уроков, практика
flashcard-стилем (tap-flip + бинарный «Помню/Не помню») с интеграцией в
существующий SRS (SM-2).

### Метрики
- D7 retention пользователей, открывших library ≥ 1 раз: target +10pp
- Среднее число review-сессий в неделю: target +30%
- Доля выученных слов (strength ≥ 0.8) на пользователя через 30 дней:
  target ≥ 50

---

## 🖼️ UX (по mock-up'ам в `/home/aziz/Pictures/eng/words/`)

### Экран 1 — Practice Hub (`practice/index.tsx`)
Главный экран таба «Тренировка». Карточный grid 2×2:
- **Чат** — AI-чат (Phase 5, существует).
- **Повтор слов** — переход в `practice/library.tsx` (новый).
- **Письмо** — AI writing (Phase 5, существует).
- **Уроки** — стандартные уроки (Phase 0).

Сверху — круг «Ежедневная цель» (X из Y звёзд).

### Экран 2 — Library (`practice/library.tsx`)
- Header: «Библиотека слов», back, мусорка (clear all с confirm).
- Stats grid:
  - **На сегодня** (X из N) — большой круг.
  - **Учу** (count карточек с reps>0 && strength<0.8).
  - **Выучено** (strength ≥ 0.8).
- Search bar.
- Список карточек: word + TTS-icon, краткое определение (English),
  toggle «На сегодня» (orange chip).
- AI-suggestions widget (если есть suggestions): 5 чипов «+ word»
  под search-bar.
- Bottom CTA: `[ ДОБАВИТЬ ]` (вторичная) + `[ Повторить N слов ]`
  (primary, выделено оранжевым).

### Экран 3 — Add flashcard (bottom sheet)
- Header: ОТМЕНА · Add flashcard · ДОБАВИТЬ.
- Section «New card».
- 2 input field в карточке: front (target language) + back (native).
- Optional: definition + example (collapsed → expand link).
- Validation: front и back required, ≤120 символов каждое.
- На submit: POST `/flashcards` → закрыть sheet, обновить library.

### Экран 4 — Flashcard Practice (`practice/flashcards.tsx`)
- Header: back, progress pill `0/5`, ?.
- Card area (фуллсайз): tap-flip 3D animation.
  - **Front**: только перевод (или только слово — рандомизация front-side
    направления, configурируется в settings).
    Иконка undo (top-left) для возврата на предыдущую карточку.
    Подсказка «Коснитесь, чтобы перевернуть».
  - **Back**: слово + TTS (auto-play 1×) + example sentence.
    Иконка book (top-left) — открыть dictionary modal.
    Иконка skip (top-right) — пропустить эту карточку (вернётся в конец).
- Bottom: `[ Не помню ]` (orange) + `[ Помню ]` (green). Disabled пока
  карточка не перевёрнута.
- Submit: POST `/srs/review` с quality:
  - «Помню» → `q=5`
  - «Не помню» → `q=2`
- После последней — переход на Results.

### Экран 5 — Results (`practice/flashcard-results.tsx`)
- Top: yellow gradient + Lottie кот-в-чашке (fallback emoji).
- «Your results».
- Stat tiles 2×1: **Words** (количество правильных) + **Stars** (заработано).
- Bottom CTA: `[ Продолжить ]` → router back в Practice Hub.

### Экран 6 — Dictionary Modal (BottomSheet)
- Открывается с back-side карточки по book-icon.
- Word + TTS + полное определение + 2-3 примера + part of speech +
  level (A1/A2/...). Если у нас в БД нет этих данных — fetch'им из
  внешнего dictionary API (deferred — для MVP оставляем minimal).

---

## 🏗️ Архитектура

### Гибридная модель данных

```
┌──────────────────────┐
│  courses.vocabulary  │  ← system-wide словарь (auto-added words)
│  +definition (NEW)   │
│  +example_sentence   │
└──────────────────────┘
         ▲
         │ vocabulary_id (NULL для manual)
         │
┌──────────────────────┐    ┌─────────────────────────┐
│  user_flashcards     │◀───│  flashcard_today_queue  │
│  (manual + ref)      │    │  (priority pin)         │
└──────────────────────┘    └─────────────────────────┘
         │
         │ item_type='flashcard', item_id=user_flashcards.id
         ▼
┌──────────────────────┐
│  srs.user_srs_items  │  ← SM-2 параметры (existing, polymorphic)
└──────────────────────┘
```

**Ключевые решения:**
1. `user_flashcards` — единая точка для manual и auto-from-lessons. Если
   карточка из урока, держит `vocabulary_id`-FK; если manual — все поля
   inline (word/translation/definition/example).
2. SRS-items расширяем `item_type ∈ {vocabulary, step, phrase, flashcard}`
   — карточка одна, item_id = user_flashcards.id.
3. `flashcard_today_queue` — приоритетная очередь для «На сегодня» — не
   ломает SM-2 расписание, просто фильтр для UI и фронт-of-queue для
   практики.

---

## 💾 База данных

### Migration `000011_extend_vocabulary.up.sql` (course-service)

```sql
SET search_path TO courses;

ALTER TABLE vocabulary
    ADD COLUMN IF NOT EXISTS definition       TEXT,
    ADD COLUMN IF NOT EXISTS example_sentence TEXT;

-- Эти поля nullable: для legacy слов их нет.
-- AI/admin может проставить позже через UpdateVocabularyEntry.
```

### Migration `000012_user_flashcards.up.sql` (course-service)

```sql
SET search_path TO courses;

CREATE TABLE IF NOT EXISTS user_flashcards (
    id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id          UUID NOT NULL,

    -- Источник: 'manual' | 'lesson' | 'mistake' | 'ai_suggestion'.
    source           VARCHAR(20) NOT NULL,

    -- Если карточка референсит system vocabulary — FK; иначе NULL и
    -- inline-поля ниже.
    vocabulary_id    UUID REFERENCES vocabulary(id) ON DELETE SET NULL,

    -- Inline-поля (используются если vocabulary_id IS NULL).
    -- Дублируют семантику vocabulary.{word,translation,...} для manual.
    word             TEXT NOT NULL,
    translation      TEXT NOT NULL,
    language         VARCHAR(10) NOT NULL,
    target_language  VARCHAR(10) NOT NULL,
    definition       TEXT,
    example_sentence TEXT,
    audio_url        TEXT,

    -- Метаинфо.
    archived_at      TIMESTAMPTZ,
    created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CHECK (source IN ('manual', 'lesson', 'mistake', 'ai_suggestion'))
);

-- Дедуп: один и тот же vocabulary_id у одного user — только одна запись
-- (manual может быть много).
CREATE UNIQUE INDEX IF NOT EXISTS uq_user_flashcards_vocab
    ON user_flashcards(user_id, vocabulary_id)
    WHERE vocabulary_id IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_user_flashcards_user
    ON user_flashcards(user_id, archived_at)
    WHERE archived_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_user_flashcards_user_word
    ON user_flashcards(user_id, lower(word))
    WHERE archived_at IS NULL;
```

### Migration `000013_flashcard_today_queue.up.sql` (course-service)

```sql
SET search_path TO courses;

CREATE TABLE IF NOT EXISTS flashcard_today_queue (
    user_id      UUID NOT NULL,
    flashcard_id UUID NOT NULL REFERENCES user_flashcards(id) ON DELETE CASCADE,
    added_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    -- Дата для "На сегодня": сбрасывается на NOW() AT TIME ZONE user_tz.
    -- Чистка не нужна — фильтр по queued_for_date == today.
    queued_for_date DATE NOT NULL,
    PRIMARY KEY (user_id, flashcard_id)
);

CREATE INDEX IF NOT EXISTS idx_today_queue_user_date
    ON flashcard_today_queue(user_id, queued_for_date);
```

### Migration `000005_extend_srs_item_types.up.sql` (srs-service)

`user_srs_items.item_type` уже `VARCHAR(20)` с CHECK. Расширяем CHECK:

```sql
SET search_path TO srs;

ALTER TABLE user_srs_items
    DROP CONSTRAINT IF EXISTS user_srs_items_item_type_check;

ALTER TABLE user_srs_items
    ADD CONSTRAINT user_srs_items_item_type_check
    CHECK (item_type IN ('vocabulary', 'step', 'phrase', 'flashcard'));
```

---

## 🔌 gRPC API

### `course-service` — новые RPC

```proto
service CourseService {
  // ... existing ...

  // === Flashcards (Phase 7) ===
  rpc ListFlashcards         (ListFlashcardsRequest)         returns (ListFlashcardsResponse);
  rpc GetFlashcard           (GetFlashcardRequest)            returns (GetFlashcardResponse);
  rpc CreateFlashcard        (CreateFlashcardRequest)         returns (Flashcard);
  rpc UpdateFlashcard        (UpdateFlashcardRequest)         returns (Flashcard);
  rpc ArchiveFlashcard       (ArchiveFlashcardRequest)        returns (google.protobuf.Empty);
  rpc BulkCreateFlashcards   (BulkCreateFlashcardsRequest)    returns (BulkCreateFlashcardsResponse);
  rpc AddVocabularyAsFlashcard (AddVocabularyAsFlashcardRequest) returns (Flashcard);

  // === Today Queue ===
  rpc PinForToday            (PinForTodayRequest)             returns (google.protobuf.Empty);
  rpc UnpinFromToday         (UnpinFromTodayRequest)          returns (google.protobuf.Empty);
  rpc ListTodayQueue         (ListTodayQueueRequest)          returns (ListTodayQueueResponse);
  rpc GetFlashcardStats      (GetFlashcardStatsRequest)       returns (GetFlashcardStatsResponse);
}

message Flashcard {
  string id              = 1;
  string user_id         = 2;
  string source          = 3;  // manual | lesson | mistake | ai_suggestion
  string vocabulary_id   = 4;  // optional
  string word            = 5;
  string translation     = 6;
  string language        = 7;
  string target_language = 8;
  string definition      = 9;  // optional
  string example_sentence = 10; // optional
  string audio_url       = 11;
  string created_at      = 12;
  bool   pinned_today    = 13; // computed
  // SM-2 проекция (опционально, если caller хочет видеть стаусы).
  optional double strength      = 14;
  optional int32  repetitions   = 15;
  optional string next_review_at = 16;
}

message GetFlashcardStatsResponse {
  int32 today_due           = 1;  // карточек на сегодня (SRS due ∪ today_queue)
  int32 today_completed     = 2;
  int32 learning_count      = 3;  // reps>0 && strength<0.8
  int32 mastered_count      = 4;  // strength>=0.8
  int32 total_count         = 5;
}
```

### `ai-service` — `SuggestFlashcards` (mock provider)

```proto
service AIService {
  // ... existing ...
  rpc SuggestFlashcards (SuggestFlashcardsRequest) returns (SuggestFlashcardsResponse);
}

message SuggestFlashcardsRequest {
  string user_id   = 1;
  string level     = 2;  // a1/a2/b1/...
  string goal      = 3;  // motivation[0]
  string pain_point = 4;
  string target_language = 5;  // 'en'
  int32 count      = 6;        // default 5, max 10
}

message SuggestFlashcardsResponse {
  message Suggestion {
    string word            = 1;
    string translation     = 2;
    string definition      = 3;
    string example_sentence = 4;
    string reason          = 5;  // "часто встречается в work + b1"
  }
  repeated Suggestion items = 1;
}
```

Mock provider: возвращает hard-coded словарь по level+goal (см.
`services/ai-service/internal/providers/mock_provider.go`). Реальный
LLM-вызов — Phase 8.

### `srs-service` — изменения

`item_type='flashcard'` поддерживается без proto-изменений (string).
Bot, конвертер `flashcardToSRS` в course-service вызывает
`srs.EnsureItem(user, type='flashcard', flashcard.id)` при создании карточки
и `srs.RecordReview(user, type='flashcard', flashcard.id, q)` при review.

---

## 🌐 Gateway REST

```
# Protected (auth, supports guest JWT)
GET    /api/v1/flashcards?source=&search=&pinned_today=&limit=&offset=
GET    /api/v1/flashcards/:id
POST   /api/v1/flashcards                    { word, translation, definition?, example_sentence?, source='manual' }
PUT    /api/v1/flashcards/:id                { ... }
DELETE /api/v1/flashcards/:id                 (soft archive)
POST   /api/v1/flashcards/bulk                { items: [...] }
POST   /api/v1/flashcards/from-vocabulary    { vocabulary_id }

# Today queue
POST   /api/v1/flashcards/today/:flashcardId
DELETE /api/v1/flashcards/today/:flashcardId
GET    /api/v1/flashcards/today              ← список + stats
GET    /api/v1/flashcards/stats              ← {today_due, learning_count, mastered_count, ...}

# AI suggestions
GET    /api/v1/ai/flashcard-suggestions?count=5
```

`POST /flashcards/:id/review` — **не нужен**, переиспользуем существующий
`POST /api/v1/srs/review` с `item_type='flashcard'`.

---

## 🔁 Auto-add из уроков

Хук в `step-validation-service.SubmitAnswer` (после `srs.RecordReview`):

```go
// При correct ответе на match_pairs / fill_blank / translate / listening
// извлекаем словарные пары из step.content и добавляем как flashcards
// (если ещё нет).
if isCorrect && step.HasVocabularyPairs() {
    for _, pair := range step.ExtractVocabularyPairs() {
        _, _ = courseClient.AddVocabularyAsFlashcard(ctx, &AddVocabularyAsFlashcardRequest{
            UserId:       userID,
            VocabularyId: pair.VocabularyID,
            Source:       "lesson",
        })
    }
}
```

`source='mistake'` — аналогично из `OnWrongAnswer` хука (когда юзер
дважды ошибается на одном слове).

**Идемпотентность** обеспечена UNIQUE INDEX `uq_user_flashcards_vocab`.

---

## 📱 Mobile UI

### Routing

```
app/(tabs)/practice/
  ├─ index.tsx                 (existing) — Practice Hub, добавить «Повтор слов» card
  ├─ library.tsx               (NEW)
  ├─ flashcards.tsx            (NEW) — practice flow
  ├─ flashcard-results.tsx     (NEW)
  ├─ session.tsx               (existing) — step-based practice
  └─ mistakes.tsx              (existing)
```

### Hooks (`hooks/use-flashcards.ts`)

```ts
export const FLASHCARDS_KEY = ['flashcards'] as const;
export const FLASHCARD_STATS_KEY = ['flashcards', 'stats'] as const;
export const TODAY_QUEUE_KEY = ['flashcards', 'today'] as const;

useFlashcards(filter)              // GET /flashcards
useFlashcard(id)                    // GET /flashcards/:id
useCreateFlashcard()                // POST /flashcards (optimistic)
useUpdateFlashcard()
useArchiveFlashcard()
useBulkCreateFlashcards()           // for AI suggestions accept-all
useFlashcardStats()                 // for header tiles
useTodayQueue()
usePinForToday()                    // POST /flashcards/today/:id (optimistic)
useUnpinFromToday()
useFlashcardSuggestions()           // GET /ai/flashcard-suggestions
```

Все mutation invalidate `FLASHCARDS_KEY` + `FLASHCARD_STATS_KEY`.

### Components (`components/flashcards/`)

```
FlashcardView.tsx           — front/back с Reanimated 3D-flip:
                              rotateY interpolation 0..180,
                              backfaceVisibility 'hidden',
                              tap → withSpring rotate.
AddFlashcardSheet.tsx       — bottom sheet (gorhom/bottom-sheet или
                              expo-router's modal). 2 inputs +
                              optional collapse.
FlashcardResults.tsx        — top yellow gradient + Lottie/emoji
                              (lottie-manifest.ts: 'flashcard-results').
DictionaryModal.tsx         — full-screen modal с word + definition +
                              examples + TTS.
SuggestionsWidget.tsx       — горизонтальная карусель chip'ов.
TodayChip.tsx               — orange/grey toggle.
```

### Анимации

- **Tap-flip**: `rotateY` 0deg → 180deg, 350ms, easeInOut.
  Front абсолютно позиционирован; back повёрнут на 180deg по умолчанию;
  оба `backfaceVisibility: 'hidden'`. Один Reanimated SharedValue.
- **Card swap**: при «Помню/Не помню» — slide-out left/right + scale
  fade, 250ms. Новая карточка вход — slide-in right + fade-in.
- **Results**: Lottie cat-trophy одноразовая анимация.
- **TTS auto-play**: на back-side появлении (после flip) — 200ms delay,
  один раз. Disabled через `fx-prefs.ts` toggle.

### FX

Из существующего `lib/fx.ts`:
- `fx.tap()` — на flip-card.
- `fx.onCorrect()` — на «Помню».
- `fx.onWrong()` — на «Не помню».
- `fx.onXPGain()` — на end-of-session XP.

---

## 🧪 Тесты

### Backend
- `course-service/internal/service/flashcards/...` — unit для CRUD,
  dedup, archive (≥10 кейсов).
- `course-service/internal/service/today_queue/...` — pin/unpin,
  date-roll-over (≥5 кейсов).
- `srs-service/internal/service/sm2_test.go` — добавить кейс с
  `item_type='flashcard'` (полиморфизм).
- `step-validation-service/internal/service/auto_flashcards_test.go` —
  что при correct ответе создаются flashcards.

### Gateway
- `gateway/internal/handler/flashcards_test.go` — 6 endpoint'ов
  (happy path + auth check + 404 on wrong user).

### Mobile
- `__tests__/flashcards-flow.test.tsx` — интеграция: render library
  → tap «Повторить N» → tap-flip → tap «Помню» → results.
- `npx tsc --noEmit` clean, `npm run lint` clean.

---

## 🚀 Sprint breakdown (~2 недели)

### Sprint 1 (backend, 3 дня)
1. Миграции (3 шт.) + `migrate-up-all`.
2. Proto: расширить `courses.proto` (+10 RPC, +Flashcard message),
   `ai.proto` (+SuggestFlashcards), `proto:gen`.
3. `course-service`: repository + service + api для flashcards и
   today_queue. Конвертеры.
4. `step-validation-service`: auto-add hook.
5. `gateway`: 8 routes + handler + DTO.
6. Backend unit tests.

### Sprint 2 (mobile UI, 5 дней)
1. `types/api.ts` + `lib/api-client.ts` (FlashcardsApi, TodayQueueApi).
2. Hooks (use-flashcards, use-today-queue).
3. `practice/library.tsx` — UI + integration.
4. `AddFlashcardSheet` + manual add flow.
5. `practice/flashcards.tsx` + `FlashcardView` (Reanimated 3D flip).
6. `flashcard-results.tsx` + `FlashcardResults` (Lottie).
7. `DictionaryModal`.

### Sprint 3 (AI + polish, 2 дня)
1. `ai-service/internal/providers/mock_provider.go`: SuggestFlashcards.
2. Mobile: `SuggestionsWidget` + integration в library.
3. TTS auto-play на back-side.
4. Skip/undo в FlashcardView (стек последних 5 карт).
5. Sound stubs в `sound-manifest.ts`.
6. Lottie placeholder в `lottie-manifest.ts`.

### Sprint 4 (verify, 1 день)
1. Mobile flow tests.
2. Gateway integration tests.
3. typecheck + lint clean.
4. Update `AGENTS.md` (backend + mobile) с новым Phase 7 разделом.
5. Update `docs/tasks/MOBILE_PROGRESS.md` и `PHASE_7_PROGRESS.md`.

---

## ✅ Acceptance criteria

1. **Library**: пользователь видит список своих flashcards (manual +
   auto-from-lessons + auto-from-mistakes), может искать, видит статы
   «На сегодня X из Y / Учу / Выучено».
2. **Manual add**: bottom sheet с word/translation (+ optional
   definition, example) → POST → появляется в library без перезагрузки.
3. **Auto-add**: после успешного `step_validation.SubmitAnswer` для
   match_pairs / fill_blank / translate / listening словарные пары
   автоматически добавляются в `user_flashcards` (deduplicate по
   `vocabulary_id`).
4. **Practice**: nav Library → «Повторить N слов» → последовательность
   flashcards с tap-flip, бинарный «Помню/Не помню» → SM-2 quality
   (5/2) → next card. После последней — Results screen.
5. **«На сегодня»**: toggle в library добавляет/убирает карточку из
   `flashcard_today_queue`. Стат «На сегодня X из Y» = COUNT(today_queue
   WHERE queued_for_date=today).
6. **TTS**: speaker icon → POST `/tts/by-text` → cached audio play.
   Auto-play на back-side при появлении (configurable).
7. **AI suggestions**: widget в library → `SuggestFlashcards(level,
   goal, pain_point)` → 5-10 предложенных слов с кнопкой «Добавить».
8. **Tests**: ≥10 unit-тестов на flashcards-service, ≥5 на gateway
   handlers, ≥3 mobile-flow тестов.
9. **Builds clean**: `npx tsc --noEmit` + `npm run lint` + `go test ./...`.

---

## ⚠️ Риски и нерешённые вопросы

- **External dictionary API** (для DictionaryModal) — на MVP оставляем
  inline-поля в БД; полный словарь — Phase 8 (или используем `/ai/explain`
  который уже есть).
- **Voice/Pronunciation flashcards** (как в speaking-tab Duolingo) —
  не входит в Phase 7. Оставляем для Phase 8.
- **Image flashcards** (картинка вместо текста на back) — поле
  `image_url` уже есть в `vocabulary`, добавим в `user_flashcards`,
  но UI MVP без картинок.
- **Cross-device sync для today_queue**: queue хранится на backend,
  никаких локальных кэшей нет → автоматически синкается через React
  Query refetch.
- **Performance**: список 1000+ flashcards у power-user — virtualized
  FlatList с initialNumToRender=20 + getItemLayout.
- **Migration на seeded users**: 1110 seeded юзеров (Phase 0/3 seed)
  не имеют flashcards. Опционально: добавить ~10-20 flashcards на
  топ-100 active users в `gen_seed_onboarding.py` для realistic-test.
