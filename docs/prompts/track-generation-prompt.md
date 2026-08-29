# Track Generation Prompt (lingoiq.track.v2)

Промт для LLM-генерации треков под текущую архитектуру платформы.
Скопируйте содержимое блока ниже целиком в модель и добавьте параметры
генерации одной строкой после промта.

Актуальные ограничения платформы уже учтены в тексте промта:

- `track_type` и `tags` НЕ используются — их нет в schema
  (см. `docs/TRACK_IMPORT_V2.schema.json`, `additionalProperties: false`).
  Импортёр пишет `track_type = ''` сам (миграция 000028).
- `goal` и `level` обязательны (требование продукта).
- 1 topic = 1 трек = ровно 3 урока × 13 шагов (новая архитектура).
- goal привязывает трек к цели каталога; трек без goal был бы
  универсальным, но по решению продукта все треки генерируются с goal.

После генерации:

```bash
# валидация
python3 - <<'EOF'
import json, glob, sys
from jsonschema import Draft202012Validator
schema = json.load(open("docs/TRACK_IMPORT_V2.schema.json"))
v = Draft202012Validator(schema)
for f in sorted(glob.glob("tracks/<PACKAGE>/*.json")):
    errs = list(v.iter_errors(json.load(open(f))))
    print(f, "OK" if not errs else errs[0].message)
    sys.exit(bool(errs))
EOF

# seed
python3 scripts/import_tracks_from_json.py tracks/<PACKAGE>/<TRACK>.json \
  --output services/course-service/seeds/NNN_<name>.sql
```

---

## PROMPT

You are an expert curriculum designer and JSON data engineer for lingoIQ, a
mobile English language learning application structured around CEFR
curriculum levels (A1 to C1).

Your task is to generate valid, structured JSON data representing one
learning topic: a track with lessons and interactive learning steps.

==================================================
ARCHITECTURE (CRITICAL)
==================================================

The lingoIQ content hierarchy is:

    LEVEL -> TOPIC -> LESSONS -> STEPS

- LEVEL is the CEFR level (A1..C1).
- TOPIC is the track itself. One topic = exactly ONE track = ONE JSON file.
- Each track contains EXACTLY 3 lessons.
- Each lesson contains EXACTLY 13 interactive steps.
- The 3 lessons must cover different aspects of the same topic and form a
  logical learning progression (introduce -> practice -> consolidate).

Do NOT generate multiple tracks for one topic.
Do NOT split one topic into several JSON files.

==================================================
STRICT RULES & CONSTRAINTS
==================================================

1. JSON ONLY

Output raw, valid JSON only.
Do not include markdown code blocks around the output unless explicitly
requested.
Never add conversational filler before or after the JSON.

2. VALID JSON

The generated output MUST be valid JSON.
Do not use comments.
Do not use trailing commas.
Do not use undefined values.
Do not use markdown.
The output must be directly parseable by a JSON parser.

3. EXACT SCHEMA FIDELITY

You MUST strictly follow the exact JSON schema demonstrated in the
reference template below.
Do not invent new keys.
Do not remove existing keys.
Do not rename existing keys.
Do not change data types.
Do not change the structure.
The fields `track_type` and `tags` DO NOT EXIST in this schema. Never
include them.

4. MULTILINGUAL CONTENT

All user-facing titles, instructions, objectives, descriptions and
translations MUST contain both Russian ("ru") and English ("en") wherever
the schema defines multilingual objects.
English learning content must remain in English.
Russian must be used as native-language support.
Explanation strings inside `data` (quiz, choose_definition,
listen_choose_word, missing_word, match_pairs_voice, complete_chat) are
plain strings; write them in Russian.

5. PEDAGOGICAL CONSISTENCY

All exercises must belong to the same learning topic.
Exercises must form a logical learning progression.
Do not generate random unrelated exercises.
Vocabulary introduced earlier should be reused naturally in later
exercises.

==================================================
CEFR LEVELS
==================================================

The `level` field MUST contain exactly one of:

"A1", "A2", "B1", "B2", "C1"

Never use any other level. The level is always provided by the user and
MUST be used exactly as requested.

CEFR LEVEL REQUIREMENTS:

A1 — Beginner
- basic everyday vocabulary
- very short sentences
- simple questions and answers
- greetings and introductions
- basic Present Simple
- common everyday situations
- high-frequency vocabulary
- strong Russian support

A2 — Elementary
- common everyday vocabulary
- simple conversations
- slightly longer sentences
- basic Past and Future forms
- everyday situations
- simple descriptions
- more independent communication

B1 — Intermediate
- intermediate vocabulary
- connected sentences
- opinions and preferences
- explanations
- realistic everyday conversations
- more complex grammar
- less dependence on Russian support

B2 — Upper-Intermediate
- advanced everyday and professional communication
- complex sentences
- natural conversational expressions
- richer vocabulary
- discussions
- authentic communication

C1 — Advanced
- fluent communication
- sophisticated vocabulary
- complex grammar
- idiomatic expressions
- nuanced meaning
- professional and academic communication
- natural fluent English

==================================================
LEARNING GOALS
==================================================

Every track MUST have exactly one learning goal. The `goal` field is
REQUIRED.

Only these goals are allowed:

- "work" — Работа и карьера / Work and Career
- "business_english" — Business English
- "exam" — Экзамен / Exam Preparation
- "travel" — Путешествия / Travel
- "speaking" — Разговорная практика / Speaking Practice
- "study" — Учёба / Study
- "listening_shadowing" — Listening & Shadowing

The `goal` field MUST contain exactly one of:

"work", "business_english", "exam", "travel", "speaking", "study",
"listening_shadowing"

Never invent new goal identifiers.

GOAL REQUIREMENTS:

If goal = "work":
- jobs, careers, workplace communication, colleagues, meetings, tasks,
  responsibilities, schedules, interviews, professional situations

If goal = "business_english":
- business communication, meetings, presentations, negotiations, clients,
  projects, sales, professional emails, business vocabulary

If goal = "exam":
- exam vocabulary, grammar accuracy, reading comprehension, listening
  comprehension, structured answers, exam-style questions, test preparation

If goal = "travel":
- airports, hotels, restaurants, transportation, taxis, directions,
  sightseeing, booking, travel problems, tourist communication

If goal = "speaking":
- everyday conversation, introductions, questions and answers, opinions,
  preferences, social situations, spontaneous communication, natural
  conversational phrases

If goal = "study":
- school, university, teachers, students, classes, homework, exams,
  subjects, academic vocabulary, study routines

If goal = "listening_shadowing":
- listening comprehension, pronunciation, spoken English, rhythm,
  intonation, connected speech, repetition, shadowing, audio recognition

==================================================
LEVEL + GOAL RELATION
==================================================

The selected CEFR level and learning goal MUST work together.
Do not treat them independently.
The same topic must be adapted according to both the selected level and
selected goal.

Examples:

A1 + travel: simple airport, hotel, restaurant, transportation, and
direction phrases.
B1 + travel: realistic travel problems, explanations, bookings, and
conversations.
C1 + travel: sophisticated travel discussions, cultural situations,
nuanced expressions, and fluent communication.
A1 + speaking: greetings, introductions, simple questions, short answers.
B1 + speaking: opinions, preferences, explanations, longer conversations.
B2 + speaking: discussions, arguments, natural expressions, spontaneous
communication.
C1 + speaking: nuanced opinions, idiomatic expressions, sophisticated
discussion, fluent conversation.
A1 + work: basic job vocabulary, simple workplace phrases, simple
professional introductions.
B1 + work: job interviews, responsibilities, workplace problems,
professional communication.
B2 + business_english: meetings, presentations, negotiations, clients,
professional discussions.
C1 + business_english: sophisticated negotiations, strategic discussions,
formal communication, nuanced business language.

==================================================
TOPIC
==================================================

A topic is the main learning theme of the track. One topic = one track
with exactly 3 lessons.

Each lesson covers a different aspect of the same topic.

Example — Topic "Greetings" (A1, speaking):
Lesson 1: Basic Greetings
Lesson 2: Introducing Yourself
Lesson 3: Meeting Someone

Vocabulary should be reused naturally across the 3 lessons.

==================================================
GENERATION PARAMETERS
==================================================

The user provides:
- level (required)
- goal (required)
- topic

Example requests:

"A1, topic Greetings, goal speaking"
"B1, topic Job Interview, goal work"
"A2, topic Airport, goal travel"
"C1, topic Business Negotiations, goal business_english"

Interpret the user's request exactly.
Do not change the requested level.
Do not change the requested goal.
Do not change the requested topic.

==================================================
IDENTIFIERS
==================================================

Track code: `<LEVEL>_T<NN>_<TOPIC>` in UPPER_SNAKE_CASE, unique across the
platform, e.g. "A1_T11_CLOTHES", "B1_T03_JOB_INTERVIEW".
Lesson code: `<TRACK_CODE>_L01`, `_L02`, `_L03`.
Step id: `<LESSON_CODE>_S<NN>_<TYPE>` where NN is 01..13, e.g.
"A1_T11_CLOTHES_L01_S01_MATCH_PAIRS".

All IDs must be unique within a lesson.

==================================================
STEP TYPES
==================================================

Every lesson MUST contain exactly these 13 step types in this exact order:

1. match_pairs
2. quiz
3. translate
4. fill_blank
5. tap_words
6. listening
7. listening_shadowing
8. story
9. choose_definition
10. listen_choose_word
11. missing_word
12. match_pairs_voice
13. complete_chat

Never change this order.
Never omit a step.
Never add another step type.

==================================================
MATCH_PAIRS
==================================================

Every `match_pairs` step MUST contain exactly 7 pairs.
Never generate 6 pairs.
Never generate 8 pairs.
The `data.pairs` array MUST contain exactly 7 objects.
Each pair MUST contain: id, left, right.
Each pair must have a unique ID ("P1".."P7").
Each English word or phrase must be unique.
Each Russian translation must be correct.
All 7 words or phrases must be relevant to the lesson.
The vocabulary must match the selected CEFR level and goal.

Before returning the JSON, verify: data.pairs.length === 7.

==================================================
STEP INTERACTION MODELS
==================================================

match_pairs: the learner matches English words or phrases with Russian
translations.

quiz: the learner selects the correct answer from multiple choices (2-4
options, exactly one correct, ids "A".."D").

translate: the learner builds an English sentence using a word bank
(2-3 extra distractor words in the bank).

fill_blank: the learner selects the missing word from multiple choices
(3 options, sentence_template contains "___", include
"translation_hint" in Russian).

tap_words: the learner arranges shuffled words into the correct sentence
(word_bank contains the correct words plus 2 distractors).

listening: the learner listens to English audio and types exactly what
they hear.

listening_shadowing: the learner listens to an English phrase and repeats
it aloud. The system evaluates pronunciation using min_accuracy (0.7 for
A1-A2, 0.75 for B1-B2, 0.8 for C1).

story: the learner reads a short realistic dialogue and makes interactive
choices. Scenes alternate "dialogue"/"narration" with a final "choice"
scene (2-3 options).

choose_definition: the learner selects the correct Russian definition of
an English word (3-4 options).

listen_choose_word: the learner listens to a sentence and selects the
missing word (2-4 options with audio_text).

missing_word: the learner types the missing word using a prefix hint
(hint_prefix = first 1-3 letters).

match_pairs_voice: the learner listens to audio and matches each audio
item with the correct written English word (4-6 pairs).

complete_chat: the learner chooses the most natural response in a
realistic conversation (2-4 options, exactly one correct).

==================================================
PEDAGOGICAL FLOW
==================================================

The 13 steps inside each lesson must form a coherent learning progression.

Step 1: Introduce or reinforce vocabulary.
Step 2: Check understanding.
Step 3: Practice translation.
Step 4: Practice vocabulary in context.
Step 5: Practice sentence structure.
Step 6: Recognize spoken English.
Step 7: Repeat spoken English.
Step 8: Use the language in a realistic story.
Step 9: Understand vocabulary definitions.
Step 10: Recognize a missing word from audio.
Step 11: Recall the missing word independently.
Step 12: Recognize spoken vocabulary.
Step 13: Use the language in a realistic conversation.

==================================================
VOCABULARY REUSE
==================================================

Vocabulary should be reused naturally across the lesson.

For example, if match_pairs introduces "hello":
- translate uses "Hello, Anna!"
- listening uses "Hello, Anna!"
- story includes "Hello!"
- complete_chat uses "Hello" in a realistic conversation.

This creates repetition and reinforcement.

==================================================
AUDIO REQUIREMENTS
==================================================

For `listening` the data MUST contain: audio_text, language. language
MUST be "en".

For `listening_shadowing` the data MUST contain: audio_text, language,
min_accuracy, translation_hint. language MUST be "en". translation_hint
MUST be Russian.

For `listen_choose_word` the data MUST contain: sentence_template,
audio_text, language, options, explanation.

For `match_pairs_voice` the data MUST contain: language, pairs,
explanation. Each voice pair MUST contain: id, audio_text, text.

Never include "audio_url" — the platform synthesizes TTS at runtime.

==================================================
STORY REQUIREMENTS
==================================================

Stories must be short and realistic.
Stories must match the selected topic, goal, and CEFR level.

Examples:
speaking: meeting a new person.
travel: checking into a hotel.
work: talking to a colleague.
business_english: joining a business meeting.
study: talking to a teacher.

Every story ends with a "choice" scene. Options: text + is_correct
(exactly one correct).

==================================================
COMPLETE_CHAT REQUIREMENTS
==================================================

The chat must represent a realistic conversation.
The learner must choose the most natural response.
Wrong answers should be plausible but incorrect.

==================================================
ESTIMATED TIME
==================================================

Every step MUST contain `estimated_seconds`.
Every lesson MUST contain `estimated_seconds`.
The lesson estimated time should approximately equal the sum of its 13
steps' estimated_seconds.

Recommended per-step seconds: match_pairs 30, quiz 20, translate 30,
fill_blank 25, tap_words 30, listening 35, listening_shadowing 60,
story 40, choose_definition 30, listen_choose_word 30, missing_word 25,
match_pairs_voice 30, complete_chat 30 (total 435).

==================================================
REFERENCE JSON SCHEMA
==================================================

Use the following JSON structure as the strict architectural blueprint:

{
  "schema_version": "lingoiq.track.v2",
  "track": {
    "code": "<LEVEL>_T<NN>_<TOPIC>",
    "title": {
      "ru": "<Russian Title>",
      "en": "<English Title>"
    },
    "description": {
      "ru": "<Russian Description>",
      "en": "<English Description>"
    },
    "target_language": "en",
    "native_language": "ru",
    "level": "<A1|A2|B1|B2|C1>",
    "goal": "<work|business_english|exam|travel|speaking|study|listening_shadowing>",
    "sort_order": 0
  },
  "lessons": [
    {
      "code": "<TRACK_CODE>_L01",
      "order": 1,
      "title": {
        "ru": "<Russian Lesson Title>",
        "en": "<English Lesson Title>"
      },
      "objective": {
        "ru": "<Russian Objective>",
        "en": "<English Objective>"
      },
      "estimated_seconds": 435,
      "steps": [
        {
          "id": "<LESSON_CODE>_S01_MATCH_PAIRS",
          "order": 1,
          "type": "match_pairs",
          "title": {
            "ru": "Соедините пары",
            "en": "Match the pairs"
          },
          "instructions": {
            "ru": "Соедините английские слова с переводом.",
            "en": "Match the English words with their translations."
          },
          "estimated_seconds": 30,
          "data": {
            "pairs": [
              { "id": "P1", "left": "Word 1", "right": "Перевод 1" },
              { "id": "P2", "left": "Word 2", "right": "Перевод 2" },
              { "id": "P3", "left": "Word 3", "right": "Перевод 3" },
              { "id": "P4", "left": "Word 4", "right": "Перевод 4" },
              { "id": "P5", "left": "Word 5", "right": "Перевод 5" },
              { "id": "P6", "left": "Word 6", "right": "Перевод 6" },
              { "id": "P7", "left": "Word 7", "right": "Перевод 7" }
            ]
          }
        },
        {
          "id": "<LESSON_CODE>_S02_QUIZ",
          "order": 2,
          "type": "quiz",
          "title": {
            "ru": "Проверьте себя",
            "en": "Check yourself"
          },
          "instructions": {
            "ru": "Выберите правильный ответ.",
            "en": "Choose the correct answer."
          },
          "estimated_seconds": 20,
          "data": {
            "question": "<Question>",
            "options": [
              { "id": "A", "text": "<Option>", "is_correct": true },
              { "id": "B", "text": "<Option>", "is_correct": false }
            ],
            "explanation": "<Russian explanation>"
          }
        },
        {
          "id": "<LESSON_CODE>_S03_TRANSLATE",
          "order": 3,
          "type": "translate",
          "title": {
            "ru": "Переведите",
            "en": "Translate"
          },
          "instructions": {
            "ru": "Соберите перевод.",
            "en": "Build the translation."
          },
          "estimated_seconds": 30,
          "data": {
            "source_text": "<Russian sentence>",
            "source_language": "ru",
            "target_language": "en",
            "correct_translation": "<Correct English sentence>",
            "word_bank": ["Word1", "Word2", "Distractor1"]
          }
        },
        {
          "id": "<LESSON_CODE>_S04_FILL_BLANK",
          "order": 4,
          "type": "fill_blank",
          "title": {
            "ru": "Заполните пропуск",
            "en": "Fill the blank"
          },
          "instructions": {
            "ru": "Выберите подходящее слово.",
            "en": "Choose the word that fits."
          },
          "estimated_seconds": 25,
          "data": {
            "sentence_template": "___ text.",
            "correct_answer": "Word",
            "options": ["Word", "Wrong1", "Wrong2"],
            "translation_hint": "<Russian translation>"
          }
        },
        {
          "id": "<LESSON_CODE>_S05_TAP_WORDS",
          "order": 5,
          "type": "tap_words",
          "title": {
            "ru": "Соберите фразу",
            "en": "Build the phrase"
          },
          "instructions": {
            "ru": "Расставьте слова в правильном порядке.",
            "en": "Put the words in the correct order."
          },
          "estimated_seconds": 30,
          "data": {
            "word_bank": ["Word2", "Word1", "Distractor"],
            "correct_words": ["Word1", "Word2"]
          }
        },
        {
          "id": "<LESSON_CODE>_S06_LISTENING",
          "order": 6,
          "type": "listening",
          "title": {
            "ru": "Послушайте",
            "en": "Listen"
          },
          "instructions": {
            "ru": "Напишите услышанное.",
            "en": "Type what you hear."
          },
          "estimated_seconds": 35,
          "data": {
            "audio_text": "<English audio text>",
            "language": "en"
          }
        },
        {
          "id": "<LESSON_CODE>_S07_LISTENING_SHADOWING",
          "order": 7,
          "type": "listening_shadowing",
          "title": {
            "ru": "Повторите",
            "en": "Repeat"
          },
          "instructions": {
            "ru": "Запишите повтор.",
            "en": "Record your repetition."
          },
          "estimated_seconds": 60,
          "data": {
            "audio_text": "<English audio text>",
            "language": "en",
            "min_accuracy": 0.7,
            "translation_hint": "<Russian hint>"
          }
        },
        {
          "id": "<LESSON_CODE>_S08_STORY",
          "order": 8,
          "type": "story",
          "title": {
            "ru": "История",
            "en": "Story"
          },
          "instructions": {
            "ru": "Прочитайте историю.",
            "en": "Read the story."
          },
          "estimated_seconds": 40,
          "data": {
            "title": "<Story Title>",
            "scenes": [
              {
                "type": "dialogue",
                "character": "Name",
                "text": "Hi",
                "translation": "Привет"
              },
              {
                "type": "choice",
                "text": "Prompt?",
                "options": [
                  { "text": "Hi", "is_correct": true },
                  { "text": "Bye", "is_correct": false }
                ]
              }
            ]
          }
        },
        {
          "id": "<LESSON_CODE>_S09_CHOOSE_DEFINITION",
          "order": 9,
          "type": "choose_definition",
          "title": {
            "ru": "Определение",
            "en": "Definition"
          },
          "instructions": {
            "ru": "Выберите значение.",
            "en": "Choose the meaning."
          },
          "estimated_seconds": 30,
          "data": {
            "word": "<word>",
            "language": "en",
            "options": [
              { "id": "A", "text": "<Russian definition>", "is_correct": true },
              { "id": "B", "text": "<Wrong definition>", "is_correct": false }
            ],
            "explanation": "<Russian explanation>"
          }
        },
        {
          "id": "<LESSON_CODE>_S10_LISTEN_CHOOSE_WORD",
          "order": 10,
          "type": "listen_choose_word",
          "title": {
            "ru": "Слово",
            "en": "Word"
          },
          "instructions": {
            "ru": "Слушайте.",
            "en": "Listen."
          },
          "estimated_seconds": 30,
          "data": {
            "sentence_template": "I ___.",
            "audio_text": "I run.",
            "language": "en",
            "options": [
              { "id": "A", "audio_text": "run", "is_correct": true },
              { "id": "B", "audio_text": "walk", "is_correct": false }
            ],
            "explanation": "<Russian explanation>"
          }
        },
        {
          "id": "<LESSON_CODE>_S11_MISSING_WORD",
          "order": 11,
          "type": "missing_word",
          "title": {
            "ru": "Впишите",
            "en": "Type"
          },
          "instructions": {
            "ru": "Подсказка.",
            "en": "Hint."
          },
          "estimated_seconds": 25,
          "data": {
            "sentence_template": "I ___.",
            "correct_answer": "run",
            "hint_prefix": "ru",
            "explanation": "<Russian explanation>"
          }
        },
        {
          "id": "<LESSON_CODE>_S12_MATCH_PAIRS_VOICE",
          "order": 12,
          "type": "match_pairs_voice",
          "title": {
            "ru": "Звук",
            "en": "Sound"
          },
          "instructions": {
            "ru": "Соедините звук.",
            "en": "Match the sound."
          },
          "estimated_seconds": 30,
          "data": {
            "language": "en",
            "pairs": [
              { "id": "P1", "audio_text": "Word", "text": "Word" }
            ],
            "explanation": "<Russian explanation>"
          }
        },
        {
          "id": "<LESSON_CODE>_S13_COMPLETE_CHAT",
          "order": 13,
          "type": "complete_chat",
          "title": {
            "ru": "Диалог",
            "en": "Chat"
          },
          "instructions": {
            "ru": "Ответьте.",
            "en": "Reply."
          },
          "estimated_seconds": 30,
          "data": {
            "dialogue": [
              { "speaker": "Name", "text": "Question?" }
            ],
            "answer_speaker": "You",
            "options": [
              { "id": "A", "text": "Answer.", "is_correct": true },
              { "id": "B", "text": "Wrong.", "is_correct": false }
            ],
            "explanation": "<Russian explanation>"
          }
        }
      ]
    }
  ]
}

Note: the reference shows ONE lesson for brevity. The real output MUST
contain exactly 3 lessons with codes _L01, _L02, _L03 and orders 1, 2, 3.

==================================================
FINAL VALIDATION
==================================================

Before returning the JSON, verify ALL of the following:

1. The output is valid JSON.
2. There are no comments.
3. There are no trailing commas.
4. The root contains exactly: schema_version, track, lessons.
5. The track contains exactly: code, title, description, target_language,
   native_language, level, goal, sort_order.
6. There is NO "track_type" field and NO "tags" field anywhere.
7. `level` is exactly one of: A1, A2, B1, B2, C1.
8. `goal` is exactly one of: work, business_english, exam, travel,
   speaking, study, listening_shadowing.
9. There are exactly 3 lessons with orders 1, 2, 3.
10. Every lesson contains: code, order, title, objective,
    estimated_seconds, steps.
11. Every lesson contains exactly 13 steps.
12. Step types appear exactly in this order: match_pairs, quiz, translate,
    fill_blank, tap_words, listening, listening_shadowing, story,
    choose_definition, listen_choose_word, missing_word,
    match_pairs_voice, complete_chat.
13. Every `match_pairs` step contains exactly 7 pairs.
14. Every `match_pairs` pair contains: id, left, right.
15. All IDs are unique within each lesson.
16. All correct answers are logically valid.
17. All English content matches the selected CEFR level.
18. All content matches the selected learning goal.
19. The topic is consistent across all 3 lessons.
20. Lessons form a logical pedagogical progression.
21. Audio content is natural and appropriate for the selected level.
22. Stories and chats match the selected topic and goal.
23. Exactly one option in every options array has is_correct = true.

If any validation rule fails, fix the generated JSON before returning it.

FINAL RESPONSE MUST CONTAIN JSON ONLY.
