# Phase 8 — Track Dictionaries and Flashcards Architecture

**Статус:** Implemented on backend and mobile; deployed to production
**Зависимости:** Phase 2 (tracks/vocabulary), Phase 3 (SRS), Phase 7 (word flashcards)

## Цель

Добавить в мобильный каталог трека отдельный словарь трека и связать его с
личной библиотекой flashcards без дублирования системного словаря. Пользователь
должен видеть слова, относящиеся к выбранному треку, выбирать отдельные слова
или весь набор, добавлять их в личные карточки и повторять их через существующий
SM-2/SRS pipeline.

## Архитектурное решение

```text
track import JSON (match_pairs and other vocabulary-bearing steps)
          |
          | importer upsert + ordered relation
          v
courses.vocabulary <--- courses.track_vocabulary
          |                       |
          |                       +--- track_id, vocabulary_id, lesson_id,
          |                            first_seen_order
          |
          | AddVocabularyAsFlashcard (idempotent)
          v
courses.user_flashcards  -- user-owned selection
          |
          v
srs.user_srs_items (item_type='flashcard')
```

- `courses.vocabulary` остаётся единственным источником системных слов.
- `user_flashcards` остаётся пользовательской библиотекой и единственным
  источником личного статуса: added, archived и SRS-прогресса.
- Словарь трека не создаёт личные карточки автоматически при открытии экрана.
- Добавление слова идемпотентно по `(user_id, vocabulary_id)` и возвращает
  существующую карточку, если слово уже добавлено.
- Уже существующий SRS-прогресс никогда не сбрасывается при повторном добавлении.
- Track JSON сейчас не содержит `vocabulary_id`, поэтому импортёр извлекает
  пары из vocabulary-bearing шагов, upsert-ит `courses.vocabulary` по
  `(language, normalized_word, target_language)` и записывает явную связь в
  `courses.track_vocabulary`.
- GET endpoint читает только материализованную связь и никогда не парсит JSONB
  шагов и не создаёт данные во время чтения.

## Database changes

```sql
CREATE TABLE courses.track_vocabulary (
    track_id UUID NOT NULL REFERENCES courses.learning_tracks(id) ON DELETE CASCADE,
    vocabulary_id UUID NOT NULL REFERENCES courses.vocabulary(id) ON DELETE CASCADE,
    lesson_id UUID REFERENCES courses.lessons(id) ON DELETE SET NULL,
    first_seen_order INTEGER NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (track_id, vocabulary_id)
);

CREATE INDEX idx_track_vocabulary_order
    ON courses.track_vocabulary(track_id, first_seen_order);
```

`first_seen_order` детерминированно вычисляется из порядка урока, шага и пары.
Повтор слова в следующих уроках не создаёт новую связь.

## Backend contract

### New endpoint

`GET /api/v1/tracks/:idOrCode/dictionary`

Query parameters:

- `search` — optional search by word/translation;
- `limit` — default 50, maximum 100;
- `offset` — default 0;
- `include_added` — default true; when true each entry includes the user's
  current flashcard status.

Response (actual gateway shape; vocabulary fields are nested under `vocabulary`):

```json
{
  "track_id": "uuid",
  "track_code": "A1_TRAVEL_T01",
  "total": 2,
  "entries": [
    {
      "vocabulary": {
        "id": "uuid",
        "word": "boarding pass",
        "translation": "посадочный талон",
        "language": "en",
        "target_language": "ru",
        "definition": "...",
        "example_sentence": "...",
        "audio_url": "https://..."
      },
      "lesson_id": "uuid",
      "first_seen_order": 101,
      "added": false,
      "flashcard": null
    }
  ]
}
```

### New action

`POST /api/v1/tracks/:idOrCode/dictionary/add`

```json
{ "vocabulary_ids": ["uuid-1", "uuid-2"] }
```

Rules:

- request size: 1..100 IDs;
- every ID must belong to the selected track dictionary;
- operation is idempotent and returns `created`, `skipped` and the resulting
  flashcards;
- source is `lesson` for consistency with auto-add from lesson steps;
- no DELETE or destructive synchronization endpoint is introduced.

## Data derivation

Importer materializes dictionary entries and the read query must:

1. resolve track by UUID or code;
2. traverse `track_vocabulary`;
3. join `courses.vocabulary` and preserve `first_seen_order`;
5. left join the current user's active `user_flashcards`;
6. optionally project SRS fields without making SRS a hard dependency for the
   public dictionary read.

If a track has no materialized vocabulary relation, the endpoint returns an
empty dictionary with `total: 0`; it must not infer or create records in a GET.

## Import contract

`scripts/import_tracks_from_json.py` must generate, in the same transaction as
the track/lesson/step seed:

1. vocabulary upserts for every valid pair from `match_pairs`;
2. `track_vocabulary` upserts with deterministic order;
3. no deletion of old vocabulary or user flashcards;
4. no replacement of an existing translation without an explicit content
   migration;
5. stable UUIDv5 vocabulary IDs based on language, normalized word and target
   language.

For current Russian-native packages, `left` is the English word and `right` is
the Russian translation only when `right` is an actual translation. Generated
explanations such as `The term '...' as it is used...` are definitions, not
translations, and must not be imported as Russian translations. Such packages
must first be enriched with a valid localized vocabulary pair or skipped with a
reported import warning.

## Mobile UX

- Track detail gets a `Словарь трека` section before the lesson list.
- The section opens a dictionary screen with search, added-state badges and
  `Добавить` / `Добавить все` actions.
- Added words use the existing flashcard library and existing flashcard practice
  screen; no second card or SRS implementation is allowed.
- The dictionary screen can navigate to the personal flashcard library after a
  successful add.
- Track identity is carried by stable code or UUID, never by display title.

## Implementation And Deployment

### Backend

- Migration: `services/course-service/migrations/000027_create_track_vocabulary.{up,down}.sql`.
- Importer: `scripts/import_tracks_from_json.py` materializes valid `match_pairs`
  into `courses.vocabulary` and `courses.track_vocabulary` in the same SQL
  transaction as the track seed.
- Conservative extraction skips generated values beginning with `The term ...`
  or `Listening word:` and prints warnings instead of creating false translations.
- Proto RPCs: `ListTrackVocabulary` and `AddTrackVocabularyAsFlashcards`.
- Gateway routes:
  - `GET /api/v1/tracks/:idOrCode/dictionary` (JWT required for current added state).
  - `POST /api/v1/tracks/:idOrCode/dictionary/add` (JWT required, 1..100 IDs).
- Add flow validates track membership, then delegates to the existing idempotent
  `AddVocabularyAsFlashcard` with `source=lesson`.
- Repeated add returns the existing personal card in `skipped` and does not reset
  SRS state.

### Mobile

- Track detail route: `src/app/(tabs)/tracks/[id].tsx`.
- Dictionary route: `src/app/(tabs)/tracks/[id]/dictionary.tsx`.
- API/hook integration: `TracksApi.dictionary`,
  `TracksApi.addDictionaryWords`, `useTrackDictionary` and
  `useAddTrackDictionaryWords`.
- The screen supports search, per-word selection, select-all, added badges and
  navigation to the existing `/flashcards` library.
- No second flashcard or SRS implementation was introduced.

### Production Rollout

- Backend commit: `94655f5`; production SQL cast fix: `b8198c6`.
- Mobile commit: `40575ff`.
- Both repositories were pushed to `dev`.
- Server backend was fast-forwarded, rebuilt and restarted.
- Migration `000027_create_track_vocabulary` was applied.
- Server importer processed `450` JSON files sequentially.
- Production database contains `1,178` track-vocabulary relations across `80` tracks.
- `GET /health` returns HTTP 200 with `{"status":"ok"}`.
- The first dictionary smoke test exposed a PostgreSQL `uuid = text` cast bug;
  it was fixed in `b8198c6` and the course-service was restarted.
- Full authenticated dictionary/add smoke test must be rerun after this fix;
  the initial failed response is not a successful E2E check.

## Acceptance criteria

- GET dictionary is scoped to one track and never leaks vocabulary from another.
- Duplicate vocabulary IDs are returned once and preserve deterministic order.
- Importing the same track twice does not change vocabulary IDs or ordering.
- Adding the same word twice does not create a second personal flashcard.
- Existing flashcard SRS fields remain unchanged after repeated add requests.
- A user cannot add a vocabulary ID that is not in the selected track.
- Empty/legacy tracks remain valid and return an empty dictionary.
- Backend tests cover extraction, authorization/scoping, idempotency and
  pagination.
- Mobile tests/typecheck cover track detail -> dictionary -> add -> library.

## Delivery sequence

1. Add this contract and backend tests/implementation.
2. Add gateway routes and public response types.
3. Add mobile dictionary route and track-detail entry point.
4. Verify with a real published track and an existing user flashcard.
