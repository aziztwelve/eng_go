# Vocabulary Bank — data foundation and learner interface

**Status:** Step 1 complete
**Owner:** Mobile + backend
**Source data:** LingoIQ Vocabulary System, 15-stage programmer package, and CEFR A1–C1 JSON batches.

## Goal

Add a **Vocabulary Bank** tab to the mobile learner experience. It is a
browsable bank of all imported LingoIQ words and the entry point into a word's
15-step learning flow. The tab must use canonical course-service vocabulary
data; personal progress remains separate from content.

## Scope

- **Included:** course-service, gateway, SRS/step-validation integration and
  the mobile application.
- **Excluded:** web application (`eng_next2`). Its implementation will be
  planned separately after the mobile flow is validated.

## Source-data contract

Each supplied batch contains 500 immutable entries. An entry has a permanent
external ID, word, lemma, English meaning, part of speech, CEFR level,
translation key, audio instructions, image instructions, question sets and
exactly 15 ordered activities. Import must preserve the external ID and retain
the whole activity payload. User attempts, mastery, review dates and speech
scores are never stored in the import files.

The first imported entry is `A1-VOC-001-001` / `ACTION`; it is a schema smoke
test only. Content review must improve abstract A1 prompts before learner
release.

## Target architecture

Vocabulary Bank is a **new canonical content domain**. It is not a rewrite of
the current `courses.vocabulary` table and it is not the current Flashcards
feature.

```text
LingoIQ JSON batch
  └── entry.id (external_id)
          │ validated, versioned upsert
          ▼
vocabulary_bank_words                 ← one shared word record
  ├── vocabulary_bank_translations    ← word_id + locale
  ├── vocabulary_bank_question_sets   ← word_id + grammar metadata
  └── vocabulary_bank_activities      ← word_id + step 1..15 + payload
          │
          ├── Mobile Vocabulary Bank and 15-step player
          └── user_vocabulary_progress / user_vocabulary_activity_attempts

user_flashcards                       ← existing personal feature, unchanged
  └── optional vocabulary_bank_word_id in a later compatible migration
```

### Data ownership

| Domain | Owns | Must not contain |
|---|---|---|
| `vocabulary_bank_*` | Shared imported word content and all 15 activities | User attempts or mastery |
| `user_vocabulary_*` | Per-user progress, answers, review schedule and pronunciation score | Duplicated word content |
| Existing `courses.vocabulary` | Legacy lesson vocabulary | New 15-stage bank content |
| Existing `user_flashcards` | Personal/manual cards, today queue and its current SRS behavior | A second copy of the Word Bank |

The JSON entry ID becomes `vocabulary_bank_words.external_id` and is unique.
On a repeated import, the importer finds a word by this ID and updates only
shared content. It never deletes or resets a learner's records.

## Import workflow

1. Operator selects a JSON batch (500 entries) or a manifest of batches.
2. Importer reads the file and validates `schema_version`, CEFR level,
   `entry_count`, unique external IDs and exactly 15 consecutive activities.
3. In one database transaction per batch, it upserts the word by `external_id`,
   then replaces that word's imported translations/question sets/activities.
4. It records a durable report: source filename, file checksum, schema version,
   rows created/updated/skipped, validation errors and completion time.
5. A repeated import of an unchanged checksum is a no-op; a changed file is a
   content update, never a user-progress reset.

The batch does not contain every learner-language translation. `translation_key`
is imported with the word; locale-specific translations arrive in
`vocabulary_bank_translations` and the mobile client falls back to English
meaning until a translation exists.

## Delivery plan and completion log

Each step is implemented, tested, then marked complete in this document with
the date, pull request/commit and a short verification result.

### Step 1 — Content model and import foundation

- [x] Create `vocabulary_bank_words` as the new canonical shared-word table;
  keep `courses.vocabulary` unchanged for legacy lessons.
- [x] Create tables for translations, question sets, activities and immutable
  import reports, all linked to the Word Bank word ID.
- [x] Make `external_id` from the source JSON unique and use it as the
  idempotent upsert key.
- [x] Add a versioned importer that reads a selected JSON batch and stores the
  word first, then its related content by the saved word ID.
- [x] Validate: JSON schema, 500 entries per batch, unique external IDs and
  exactly 15 ordered activities per entry.
- [x] Persist checksum, created/updated/skipped counts and validation errors in
  an import report; unchanged files must be no-ops.

**Completion record:** 2026-09-19, commit `1649123` — course-service tests and
full build passed; dry-run accepted a real 500-entry B2 batch. The migration was
applied on the server; all five Vocabulary Bank tables were verified and the
public health check passed.

### Step 2 — Backend learner APIs and translations

- [ ] Expose paginated search and CEFR filters for the Vocabulary Bank.
- [ ] Expose a single enriched vocabulary entry by `external_id`.
- [ ] Import/resolve translations by `translation_key`; fall back to the
  English meaning when a translation is absent.
- [ ] Keep technical IDs, translation keys and image prompts out of learner API
  responses where they are not required.

**Completion record:** _not started_

### Step 3 — Mobile Vocabulary Bank

- [ ] Add the **Vocabulary Bank** tab to mobile Lessons.
- [ ] Show level selector, debounced search, loading/error/empty states and
  paginated word cards.
- [ ] Show only learner-facing data: word, translation, part of speech, level
  and available audio.
- [ ] Open a word detail/lesson preview from a card.

**Completion record:** _not started_

### Step 4 — Mobile 15-step word lesson

- [ ] Implement the first seven activity types: discover, listen, meaning,
  pronunciation, word match, meaning choice and fill-the-blank.
- [ ] Add sentence builder and present/past/future/WH/positive/negative steps.
- [ ] Add final speaking-and-review step with accessible fallback when speech
  recognition is unavailable.
- [ ] Render one activity at a time and resume the exact unfinished activity.

**Completion record:** _not started_

### Step 5 — Progress, review and release verification

- [ ] Create separate user word-progress and activity-attempt records.
- [ ] Add an optional compatible link from a personal flashcard to a Word Bank
  word; do not alter current flashcard behavior or its SRS queue.
- [ ] Schedule reviews at 1/3/7/14/30/90 days; integrate existing SRS,
  gamification and step-validation services.
- [ ] Test offline/resume/sync, accessibility, TTS and all activity types.
- [ ] Run a pilot with one complete batch before importing all 200 batches.

**Completion record:** _not started_

## Acceptance criteria

- The mobile tab is accessible from Lessons and supports mobile screen-reader
  navigation.
- Search and level filter are reflected in API requests; loading, empty and
  error state is shown.
- Existing course browsing remains unchanged.
- No translation key, image-generation prompt or technical content ID is
  shown to learners.
- The importer rejects duplicate IDs, invalid batches and entries without 15
  activities, and produces an import report.
- Content changes never erase user progress.
