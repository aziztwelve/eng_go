# Track Import Contract v2

`lingoiq.track.v2` (`docs/TRACK_IMPORT_V2.schema.json`) is the **only**
supported track import format. There is no other supported JSON shape for
importing tracks into `courses.learning_tracks` — legacy single-file
(`track_info`/`lessons[].steps[].content`) and canonical-package
(`{"package": ..., "tracks": [...]}`) formats have been removed from
`scripts/import_tracks_from_json.py`. Every step has the same envelope:

```json
{
  "id": "STEP_MATCH_GREETINGS",
  "order": 1,
  "type": "match_pairs",
  "title": { "ru": "Новые слова", "en": "New words" },
  "instructions": { "ru": "Соедините пары.", "en": "Match the pairs." },
  "estimated_seconds": 45,
  "data": { "pairs": [] }
}
```

Use an array for `match_pairs.data.pairs`, not a key-value object. It preserves a stable pair ID and allows audio/image metadata later.

| Type | Required `data` |
|---|---|
| `video` | `video_id`, `duration_seconds` |
| `text` | `body`, `reading_time_minutes` |
| `quiz` | `question`, `options`, `explanation` |
| `translate` | `source_text`, languages, `correct_translation`, `word_bank` |
| `match_pairs` | `pairs[{id,left,right}]` |
| `match_pairs_voice` | `language`, `pairs[{id,audio_text,text}]`; `audio_url` is optional for each pair because mobile has a TTS fallback |
| `listening` | `audio_text`, `language`; `audio_url` is optional because mobile has TTS fallback |
| `listening_shadowing` | `audio_text`, `language`, `min_accuracy`; the learner hears one phrase, repeats it aloud, and receives pronunciation feedback. `audio_url` is optional because mobile has a TTS fallback. |
| `fill_blank` | `sentence_template` with `___`, `correct_answer` |
| `tap_words` | `word_bank`, `correct_words` |
| `story` | `title`, `scenes` |
| `task` | `instructions`, `template`, `correct_answers` |
| `brain_game` | `game_type`, `pairs` |
| `ai_writing` | `prompt`, `min_words`, `evaluation_criteria` |
| `activity` | `activity_type` plus the subtype's required fields |

`activity` is only for mechanics that standard validators cannot represent: `repeat_after_me`, `pronunciation_drill`, `guided_dialogue`, `ai_roleplay`, and `real_world_mission`. Use `type: "listening_shadowing"` for a checked repeat-after-the-speaker phrase, and `goal: "listening_shadowing"` for tracks focused on this practice.

Use `docs/TRACK_IMPORT_V2_MINIMAL_EXAMPLE.json` as the reference track for new JSON imports. Import a received track with:

```bash
python3 scripts/import_tracks_from_json.py docs/TRACK_IMPORT_V2_MINIMAL_EXAMPLE.json --output services/course-service/seeds/NNN_track.sql
```

## JSON Track Intake Workflow

For each new track, provide one JSON file in the `lingoiq.track.v2` format
modelled on `docs/TRACK_IMPORT_V2_MINIMAL_EXAMPLE.json`. The file is the
source of truth; do not send SQL manually. The intake process is:

1. Validate the JSON against `docs/TRACK_IMPORT_V2.schema.json` and verify that step `id` values and `order` values are unique within each lesson.
2. Read every step's `type` and validate `data` against the corresponding row in the table above.
3. For an already supported type, generate a seed with `scripts/import_tracks_from_json.py`, review the generated SQL, and add it under `services/course-service/seeds/`.
4. For an unknown type, do not silently replace it with `quiz`, `text`, or another existing type. First add its JSON schema, database migration, course and validation models, renderer, and tests; then import the track.
5. Apply course migrations before the generated seed. The seed is safe to inspect and rerun only when it uses stable identifiers or the intended upsert behavior.

When a new JSON track is received, state which step types it contains and whether all of them are already supported. If a type is new, implement its platform support before loading that track.

## Migration tools (not part of the import contract)

`scripts/normalize_business_tracks_v2.py` and
`scripts/regenerate_seed_from_v2.py` are one-off tools for the A1 Business
English pack specifically — they are not an alternative import format.
`normalize_business_tracks_v2.py` converts the pre-v2 authoring source
(`tracks/A1_BUSINESS_ENGLISH_TRACKS_01_10_APP_ACTIVITIES_ONLY_COMBINED.json`,
plain single-language strings) into `lingoiq.track.v2` files and a seed.
Because it regenerates the v2 files from an English-only source, running it
again discards any manual edits made directly to the v2 files (e.g. added
Russian translations). Use `regenerate_seed_from_v2.py` instead when the v2
files themselves are the source of truth and only the seed needs
refreshing.

## Adding tracks after the app is published (content-only releases)

New tracks appear in the already-published mobile app **without an app
update**. The mobile client contains no track data: everything is fetched
from the API on every screen open (`GET /tracks`, `/tracks/:code`,
`/lessons/:id`), with a React Query cache of at most 5 minutes. Once a
seed is applied on the server, users see the track either within 5
minutes (running app) or on the next cold start.

```
1. Receive JSON (lingoiq.track.v2, bilingual title/instructions ru+en)
2. python3 scripts/import_tracks_from_json.py track.json \
      --output services/course-service/seeds/1NN_track.sql
3. Review the seed (sort_order, is_published=true), commit, push
4. Deploy to the server and apply the seed:
   docker exec -i elearning-postgres psql -U admin -d elearning \
     -v ON_ERROR_STOP=1 < services/course-service/seeds/1NN_track.sql
5. Done — no APK release needed
```

Conditions (all already hold):

- **Step types**: the track uses only types the mobile `StepRenderer`
  already supports (the 13 types in the table above). A new type requires
  an app release.
- **Goal**: the track's `goal` is one of the goals the mobile app lists
  (`work`, `business_english`, `exam`, `travel`, `speaking`, `study`,
  `listening_shadowing`). A new goal requires an app release.
- **Deterministic IDs**: seeds use `uuid5` from track/lesson/step codes,
  so seeds are idempotent and safe to re-apply.
- **Visibility**: seeds set `is_published=true`. To stage a track before
  a marketing date, set `is_published=false` in the seed and publish
  later via the admin API.

What is server-side only (no app release ever needed): track/lesson/step
content and translations (`title_i18n`/`description_i18n` JSONB, served
per `Accept-Language`), vocabulary, ordering, track-lesson composition,
level and motivation assignment.

What requires an app release: a new step type, a new goal, changes to
the step content contract, or changes to the import contract itself.
