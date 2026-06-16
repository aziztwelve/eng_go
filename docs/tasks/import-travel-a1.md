# Import: TRAVEL A1 Tracks

**Created:** 2026-06-16  
**Status:** ready for execution  
**Goal:** parse 4 docx files → generate SQL seed with vocabulary + 40 lessons + ~560 steps

---

## Source files

```
/home/aziz/Documents/startup/eng/TRACKS FOLDER/TRAVEL/
  LEVEL A1 GOAL 2 TRAVEL TRACK 1-10.docx   → lessons 1-10
  LEVEL A1 TRAVEL TRACK 11-20.docx          → lessons 11-20
  LEVEL A1 TRAVEL TRACK 21-30.docx          → lessons 21-30 (internal nums 81-90 — ignore)
  LEVELA1 TRAVEL TRACK 31-40.docx           → lessons 31-40 (internal nums 91-99+91 — ignore)
```

Each file contains 10 lessons ("📌 Track N: Title"), each with 10 vocabulary words + 1 Sentence Formation Test.  
Total: **40 lessons, 400 words, 40 tests**. Source is English-only — no Russian translations.

### Parsing (verified 100% match)

**docx text extraction:**
```python
import zipfile, re, html
z = zipfile.ZipFile(filepath)
xml = z.read('word/document.xml').decode('utf-8')
paras = []
for p in xml.split('</w:p>'):
    t = ''.join(re.findall(r'<w:t[^>]*>(.*?)</w:t>', p, re.S))
    if t.strip():
        paras.append(html.unescape(t))
```

**Lesson header:** `📌 Track N: <Title>` — key off title, ignore N (broken)

**Word line regex:**
```python
re.compile(r'^\s*(\d+)\.\s*(.+?)\s*[–-]\s*Explanation:\s*(.+?)\s*"(.+?)"')
# groups: (num, word, explanation, example)
```

**Sentence test regex:**
```python
re.compile(r'Scrambled:\s*(.+?)\s*\$?\\?rightarrow\$?\s*Target:\s*(.+?)\s*$')
# groups: (scrambled_slash_separated, target_sentence)
```

---

## DB target structure

```
learning_tracks (1 row)
  code        = 'travel-a1'
  title       = 'Travel — A1'
  track_type  = 'thematic'
  language    = 'en'
  level       = 'A1'
  motivation  = '{travel}'
  is_published = true

lessons (40 rows, module_id=NULL standalone)
  order_index = 0..39

vocabulary (400 rows)
  language        = 'en'
  target_language = 'ru'
  level           = 'A1'
  word            = <EN word>
  translation     = <RU translation — from OpenAI>
  definition      = <EN explanation>
  example_sentence = <EN example>

steps (~560 rows, per lesson, order_index 0..13)
  type: text, match_pairs, fill_blank(×5), quiz(×3), translate(×3), tap_words

track_lessons (40 rows)
  track_id + lesson_id + order_index 0..39
```

---

## Steps per lesson (14 steps, order_index 0-13)

| order | type | source → content |
|---|---|---|
| 0 | `text` | markdown: 10 words with explanation + example |
| 1 | `match_pairs` | 10 pairs `{left: EN word, right: RU translation}` |
| 2-6 | `fill_blank` | 5 words: example with word blanked, 4 options (word + 3 distractors from same lesson), translation_hint |
| 7-9 | `quiz` | 3 words: guess word by explanation, 3 options per question |
| 10-12 | `translate` | 3 examples: RU → EN, word_bank from example words |
| 13 | `tap_words` | Sentence Formation Test: word_bank = scrambled.split('/'), correct_words = target.split() |

### JSONB schemas (from live DB)

**text:**
```json
{"text": "## Buying a Ticket\n\n**ticket** — A paper or digital document... *\"I need to buy a plane ticket.\"*\n\n..."}
```

**match_pairs:**
```json
{"instruction": "Match the word to its Russian translation", "pairs": [{"left": "ticket", "right": "билет"}, ...]}
```

**fill_blank:**
```json
{
  "instruction": "Fill in the blank",
  "sentence_template": "I need to buy a plane ___.",
  "correct_answer": "ticket",
  "options": ["ticket", "seat", "flight", "passport"],
  "translation_hint": "билет",
  "explanation": "A paper or digital document showing you paid for a journey."
}
```

**quiz (single question):**
```json
{
  "instruction": "Choose the correct word",
  "question": "A paper or digital document showing you paid for a journey",
  "options": [{"text": "ticket", "is_correct": true}, {"text": "seat", "is_correct": false}, {"text": "flight", "is_correct": false}],
  "explanation": "Ticket = билет"
}
```

**translate:**
```json
{
  "instruction": "Translate to English",
  "source_text": "Мне нужно купить билет на самолёт.",
  "source_language": "ru",
  "target_language": "en",
  "correct_translation": "I need to buy a plane ticket.",
  "word_bank": ["I", "need", "to", "buy", "a", "plane", "ticket", "seat", "flight"],
  "alternative_answers": ["i need to buy a plane ticket"],
  "hints": ["билет = ticket"]
}
```

**tap_words:**
```json
{
  "instruction": "Put the words in the correct order",
  "word_bank": ["plane", "need", "buy", "ticket", "a", "I", "to", "flight", "cheap"],
  "correct_words": ["I", "need", "to", "buy", "a", "plane", "ticket"],
  "audio_url": ""
}
```

---

## Script to write

**Path:** `scripts/import_travel_tracks.py`

**Dependencies:** `python-docx` or raw zipfile (use raw — no extra deps), `openai`, `uuid`, `json`, `re`

**Env required:** `OPENAI_API_KEY`

### Algorithm

```
1. Parse 4 docx → list of 40 lessons
   Each lesson: {title, order_index, words:[{word, explanation, example}], test:{scrambled, target}}

2. Build translation cache
   - Load scripts/cache/travel_a1_ru.json if exists
   - For each word missing from cache: batch OpenAI translate (gpt-4o-mini, temp=0)
     Prompt system: "Translate to Russian. Reply with ONLY the Russian word/phrase. A1 learner level."
     Prompt user: the English word
   - Also translate 3 example sentences per lesson (RU → EN reverse: translate EN example to RU)
     Prompt: "Translate to Russian naturally. Reply with only the translation."
   - Save cache after each batch

3. Generate deterministic UUIDs
   NAMESPACE = uuid.UUID('6ba7b810-9dad-11d1-80b4-00c04fd430c8')  # URL namespace
   track_id  = uuid5(NAMESPACE, 'travel-a1:track')
   lesson_id = uuid5(NAMESPACE, f'travel-a1:lesson:{order_index}')
   step_id   = uuid5(NAMESPACE, f'travel-a1:step:{lesson_order}:{step_order}')
   vocab_id  = uuid5(NAMESPACE, f'travel-a1:vocab:{word.lower()}')

4. Build SQL (single transaction)
   - Header: BEGIN;
   - vocabulary INSERT (ON CONFLICT (language, word, target_language) DO UPDATE SET translation=EXCLUDED.translation, ...)
   - learning_tracks INSERT (ON CONFLICT (code) DO UPDATE SET ...)
   - lessons INSERT (ON CONFLICT (id) DO NOTHING)
   - steps INSERT (ON CONFLICT (id) DO NOTHING) -- all ~560
   - track_lessons INSERT (ON CONFLICT (track_id, lesson_id) DO NOTHING)
   - COMMIT;

5. Write to services/course-service/seeds/100_travel_a1.sql
```

### OpenAI translation details
- Model: `gpt-4o-mini`
- Temperature: `0` (determinism)
- **Word translation:** system="Translate to Russian. Reply with ONLY the Russian word/phrase.", user=`{word}`
- **Example translation (EN→RU):** system="Translate to Russian naturally. Reply with only the translation.", user=`{example_sentence}`
- Batch: process individually (400 words + 40×3=120 examples = 520 calls total)
- Cache key: `word` for vocabulary, `ex:{example}` for sentences

### fill_blank distractors
For each lesson, pick 3 distractors from the **other 9 words** of same lesson using `random.Random(word).sample(other_words, 3)` — seeded on word string for determinism.

### translate step word_bank
`word_bank = correct_translation.split() + 3_random_words_from_lesson` (deduplicated)

### tap_words word_bank
`word_bank = scrambled_words + 2_random_distractors` where scrambled_words = `[w.strip() for w in scrambled.split('/')]`

### text step markdown
```
## {Lesson Title}\n\n
for each word:
  **{word}** — {explanation}\n
  _{example}_\n\n
```

---

## Apply commands

```bash
# Ensure OpenAI key is set
export OPENAI_API_KEY=sk-...

# Run script (creates cache + SQL file)
cd /home/aziz/Documents/startup/eng/microservices-course/elearning
python3 scripts/import_travel_tracks.py

# Review generated SQL
wc -l services/course-service/seeds/100_travel_a1.sql

# Apply to DB
PGPASSWORD=change_me_in_production psql -h localhost -U admin -d elearning \
  -f services/course-service/seeds/100_travel_a1.sql

# Verify
PGPASSWORD=change_me_in_production psql -h localhost -U admin -d elearning -c "
SELECT 'vocabulary' as tbl, COUNT(*) FROM courses.vocabulary WHERE level='A1' AND target_language='ru'
UNION ALL SELECT 'lessons', COUNT(*) FROM courses.lessons l
  JOIN courses.track_lessons tl ON tl.lesson_id=l.id
  JOIN courses.learning_tracks lt ON lt.id=tl.track_id WHERE lt.code='travel-a1'
UNION ALL SELECT 'steps', COUNT(*) FROM courses.steps s
  JOIN courses.lessons l ON l.id=s.lesson_id
  JOIN courses.track_lessons tl ON tl.lesson_id=l.id
  JOIN courses.learning_tracks lt ON lt.id=tl.track_id WHERE lt.code='travel-a1';"

# Test via API (temporarily set ads@ level to a1 in DB if needed)
# PGPASSWORD=... psql ... -c "UPDATE users.profiles SET proficiency_level='a1' WHERE user_id='752c6c57-ce28-4fbc-ae94-a43280992443';"
TOKEN=$(curl -s -X POST http://localhost:8080/api/v1/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"ads@gmail.com","password":"password123"}' | grep -o '"access_token":"[^"]*"' | cut -d'"' -f4)
curl -s "http://localhost:8080/api/v1/tracks?language=en&level=a1" -H "Authorization: Bearer $TOKEN"
```

---

## Notes

- Script is idempotent: fixed UUIDs + ON CONFLICT → safe to re-run
- Cache file `scripts/cache/travel_a1_ru.json` must be committed alongside the seed for reproducibility
- Currently `ads@gmail.com` has `proficiency_level=a2` — either update to `a1` for testing, or temporarily change track level to `A2` during QA then revert
- After TRAVEL A1 is validated, same script structure can be reused for CAREER (`work`, 50 lessons) and EDUCATION (`study`, 50 lessons) by changing source folder + motivation value
