# A1 Business English Tracks: проверка, фиксы, деплой

Дата: 2026-08-18

## Контекст

10 треков `A1_BUSINESS_T01`–`A1_BUSINESS_T10` (пакет
`A1_BUSINESS_ENGLISH_TRACKS_01_10_V2`) были залиты в БД сидом 2026-08-17.
При проверке на моб (вкладка «Треки» → цель «Работа и карьера») и при ручном
разборе контента обнаружился ряд проблем — от отсутствия треков в каталоге
до логически сломанных заданий внутри уроков.

## Проблема 1: треки не отображались в каталоге на моб

**Симптом:** на вкладке «Треки» → «Работа и карьера» показывалось «треков
пока нет», хотя все 10 треков были в БД и опубликованы.

**Причина (двойная):**
1. `motivation` треков в БД была `{business_english}`, а мобильный клиент
   (`eng_mob/src/app/(tabs)/tracks/index.tsx`) фильтрует цели по фиксированному
   набору `GoalKey`: `work, exam, travel, speaking, study, social, content,
   listening_shadowing` (+legacy-алиасы). `business_english` там не было.
2. У пользователя на телефоне `proficiency_level = beginner`, а трек имеет
   `level = A1`. Gateway/course-service передавал `level=beginner` в фильтр
   `GET /tracks` буквально, без маппинга на CEFR-код — треки с `level=A1`
   не проходили фильтр вообще ни у одного пользователя с `beginner`.

**Фикс:**
- `motivation` изменена на `{work}` в БД (`courses.learning_tracks`).
- В `course-service` добавлена нормализация уровня в
  `internal/api/course/v1/track.go` (`ListTracks`): функция
  `proficiencyLevelToTrackLevel` мапит `beginner/just_for_fun→A1`,
  `a1→A1`, `a2→A2`, `b1→B1`, `b2→B2` (аналогично существующей логике в
  `seeds/008_personalized_tracks.sql`). Покрыто unit-тестом
  `track_test.go`.
- Задеплоено на сервер (пересборка + перезапуск всех Go-сервисов).

**Коммит:** `bf40105` — `fix(course-service): normalize onboarding level to
CEFR in ListTracks`.

## Проблема 2: контент уроков содержал шаблонные заглушки и логические ошибки

При ручном разборе JSON (`tracks/A1_BUSINESS_ENGLISH_TRACKS_01_10_V2/*.json`)
и первоисточника
`tracks/A1_BUSINESS_ENGLISH_TRACKS_01_10_APP_ACTIVITIES_ONLY_COMBINED.json`
обнаружено, что три типа шагов были сгенерированы с шаблонными
placeholder-значениями вместо реального контента. Все 10 треков имеют
одинаковую структуру: 10 уроков × 7 шагов = 70 шагов на трек, 700 шагов
всего в пакете.

### 2.1. `match_pairs` — англ. заглушки вместо перевода (50 шагов)

**Было:** `right` = `"A simple workplace meaning of 'name'."` (шаблонная
фраза-заглушка, бессмысленная для сопоставления).

**Промежуточный неверный фикс:** сначала заменено на английское определение
(`"the word used to call a person"`) — тоже неверно: инструкция задания на
русском («Соедините рабочие слова **с их значениями**»), трек имеет
`native_language: ru`, и паттерн других треков пакета (`A1_STUDY_T01`:
`{"left": "book", "right": "книга"}`) подтверждает, что `right` должен быть
русским переводом.

**Финальный фикс:** `right` = русский перевод слова из `left`
(`name → "имя"`, `work → "работа, работать"` и т.д.). Составлен словарь
переводов на 67 уникальных слов пакета.

### 2.2. `quiz` — вопрос был скопирован из учебной цели урока (60 шагов)

**Было:** `question` = точная копия `lesson.objective` (например
«Recognize the key workplace words and phrases while practicing giving a
simple professional introduction...») — это не вопрос-ситуация, а
формулировка учебной цели. Три варианта ответа — все три «model»-фразы
урока, и `is_correct: true` был проставлен произвольно (первая по порядку
модель), без реального обоснования, почему именно этот вариант верный, а не
два других (все три фразы валидны сами по себе).

**Фикс:** для каждой из 29 уникальных «правильных» фраз написан реальный
вопрос-ситуация, при которой именно эта фраза — единственно логичный ответ
(например: «Вы встречаете нового коллегу. Как вы представитесь?» →
`"Hello, my name is Anna."`). Переписаны `question` и `explanation` для всех
60 quiz-шагов.

### 2.3. `listening_shadowing.translation_hint` — тот же баг (60 шагов)

**Было:** `translation_hint` = копия `lesson.objective`, хотя по паттерну
остальных треков пакета (например `007_english_a1_mvp.sql`:
`audio_text: "My name is John"` → `translation_hint: "Меня зовут Джон"`)
это поле должно быть переводом фразы `audio_text` на русский.

**Фикс:** составлен перевод для 30 уникальных фраз, `translation_hint`
переписан во всех 60 шагов.

### Что проверено и признано корректным (без изменений)

- `choose_definition` (40 шагов) — англ. определения корректны: подтверждено
  паттерном `A1_GREETINGS` (`word: "hello"` → `options: ["A greeting", ...]`).
  В отличие от `match_pairs`, здесь методически верно оставлять определение
  на изучаемом языке, а не переводить.
- `complete_chat` (100), `story` (40) — диалоговые продолжения, один вариант
  явно бессмысленный («I know the word X»), два других приемлемы как
  продолжение диалога.
- `translate`, `fill_blank`, `tap_words`, `missing_word`,
  `listen_choose_word` — грамматически однозначны; «лишние» слова в
  `word_bank` — намеренные distractor-слова, не баг.
- `match_pairs_voice` (40) — `audio_text == text` ожидаемо для этого типа
  задания («услышь слово, найди его написание»).
- `text`, `listening` — просто контент/аудио, логических ошибок не найдено.

## Проблема 3: track/lesson title и description были только на английском

**Симптом:** эталонный пример пакета
(`docs/TRACK_IMPORT_V2_MINIMAL_EXAMPLE.json`, трек `A1_GREETINGS`) показывает,
что `track.title`, `track.description`, `lesson.title`, `lesson.objective`
должны иметь **обе** локализации (`en` + `ru`), так как `native_language: ru`.
В `A1_BUSINESS_ENGLISH_TRACKS_01_10_V2` у всех 10 треков и 100 уроков эти
поля существовали только на `en`. `seed_sql()` в
`normalize_business_tracks_v2.py` делает `title['ru'] or title['en']` —
из-за отсутствия `ru` в БД сохранялся английский текст на экране трека и
урока, хотя весь остальной UI-текст (инструкции внутри шагов) на русском.

**Фикс:** добавлены `ru`-переводы для `track.title`/`description` (10 треков)
и `lesson.title`/`objective` (100 уроков, по 10 на трек) — все они строго
шаблонные (10 фиксированных типов урока × 10 тем трека), переведены
программно по словарю. Итого 220 добавленных переводов
(`scripts/add_russian_titles.py`).

**Важно про регенерацию сида:** обычный путь
(`normalize_business_tracks_v2.py`) перегенерирует V2-файлы **из
одноязычного** `COMBINED.json`, что уничтожило бы добавленные `ru`-переводы
при следующем запуске. Поэтому создан отдельный скрипт
`scripts/regenerate_seed_from_v2.py`, который читает уже финальные,
локализованные V2-файлы напрямую и вызывает ту же `seed_sql()`-функцию
(тот же модуль, импортированный напрямую) — не трогая V2-файлы и не
регенерируя их из COMBINED. Использовать именно его для всех последующих
регенераций сида, если V2-файлы содержат правки, которых нет в COMBINED.

**Коммит:** `0e9e80e` — `fix(course-service): add Russian
title/description/objective to A1 Business tracks`.

## Процесс фикса контента (применялся 4 раза, по одному на каждую проблему)

1. Правится первоисточник:
   `tracks/A1_BUSINESS_ENGLISH_TRACKS_01_10_APP_ACTIVITIES_ONLY_COMBINED.json`
   (структура `tracks[].lessons[].lesson_flow[]`).
2. Правятся производные V2-файлы:
   `tracks/A1_BUSINESS_ENGLISH_TRACKS_01_10_V2/A1_BUSINESS_T0*.json`
   (структура `lessons[].steps[]`) — можно поправить точечным скриптом или
   перегенерировать из первоисточника через
   `microservices-course/elearning/scripts/normalize_business_tracks_v2.py`.
3. `normalize_business_tracks_v2.py` перегенерирует SQL-сид
   `services/course-service/seeds/109_a1_business_tracks_01_10.sql` (upsert
   по стабильным UUID `uuid5(namespace, "lingoiq.track.v2:" + code)`).
4. Коммит + push в `dev`, `git pull --ff-only` на сервере, применение сида:
   `docker exec -i elearning-postgres psql -U course_user -d elearning <
   seeds/109_a1_business_tracks_01_10.sql`.

**Важный побочный эффект:** `normalize_business_tracks_v2.py` берёт
`motivation` из `track.goal` первоисточника (`business_english`), а не из
текущего значения в БД. Каждое повторное применение сида **сбрасывает**
`motivation` обратно на `business_english`, затирая ручную правку `work`.
После каждого применения сида нужно повторно выполнить:

```sql
UPDATE courses.learning_tracks
SET motivation = ARRAY['work']::text[]
WHERE code LIKE 'A1_BUSINESS%';
```

Правильное системное решение — поправить сам источник (`track.goal` в
`COMBINED.json`) на `work`, либо убрать `motivation = EXCLUDED.motivation`
из `ON CONFLICT DO UPDATE` в `normalize_business_tracks_v2.py`, чтобы сид не
перезатирал ручные правки мотивации при повторных запусках. Не сделано в
рамках этой сессии — зафиксировано как техдолг.

## Коммиты (репозиторий `microservices-course/elearning`, ветка `dev`)

| Commit | Описание |
|---|---|
| `bf40105` | Нормализация `proficiency_level → CEFR level` в `ListTracks` |
| `584203b` | `match_pairs`/`choose_definition`: заглушки → англ. определения (промежуточный, частично неверный шаг) |
| `20a1fc0` | `match_pairs`: англ. определения → русский перевод (финальный фикс) |
| `eb995c4` | `quiz`: `question`/`explanation` → логически обоснованный вопрос-ситуация |
| `c5027ca` | `listening_shadowing.translation_hint`: objective → русский перевод фразы |
| `708ed59` | `docs`: первая версия этого документа |
| `0e9e80e` | `track`/`lesson` title, description, objective → добавлены `ru`-переводы |

## Скрипты (репозиторий `eng`, каталог `scripts/`, не в git)

- `fix_business_track_definitions.py` / `_combined.py` — замена заглушек на
  англ. определения (промежуточный шаг, для `choose_definition` актуален).
- `fix_match_pairs_to_russian.py` — перевод `match_pairs.right` на русский.
- `fix_quiz_questions.py` — переписывание `quiz.question`/`explanation`.
- `fix_listening_shadowing_hints.py` — перевод `translation_hint`.
- `add_russian_titles.py` — добавление `ru` в `track`/`lesson`
  title/description/objective (только в V2-файлы, COMBINED не трогает).
- `regenerate_seed_from_v2.py` — регенерация SQL-сида **напрямую из
  V2-файлов** (не из COMBINED). Использовать вместо
  `normalize_business_tracks_v2.py`, если V2-файлы содержат правки,
  которых нет в COMBINED (например ручные переводы) — иначе они будут
  потеряны при перегенерации V2 из одноязычного источника.

Бэкапы исходных файлов до каждого фикса сохранены в `/tmp/A1_BUSINESS_*` и
`/tmp/COMBINED_*.json` (временные, не в репозитории).

## Итоговая верификация (2026-08-18)

- БД: `SELECT ... WHERE content::text LIKE '%simple workplace meaning of%'`
  → 0 строк.
- БД: `motivation = {work}` для всех 10 треков.
- БД: `title`/`description` у всех 10 треков и `title` у уроков — на русском
  (например `A1_BUSINESS_T01.title = "Представление себя на работе"`).
- API: `GET /api/v1/tracks?motivation=work&limit=50` → все 10
  `A1_BUSINESS_T01..T10` в ответе, `total: 337`, `title`/`description` на
  русском.
- API: `GET /health` → `{"status":"ok"}`.
- Пример проверенного шага (`A1_BUSINESS_T01_L01`, шаг 2 `match_pairs`):
  `{"left": "name", "right": "имя"}`.
- Пример проверенного шага (шаг 3 `quiz`): `question: "You meet a new
  colleague for the first time. How do you introduce yourself?"` →
  `correct: "Hello, my name is Anna."`.
- Пример проверенного шага (`listening_shadowing`):
  `audio_text: "I work for a small company."` →
  `translation_hint: "Я работаю в небольшой компании."`.

## Не проверено / известные ограничения

- Только `A1_BUSINESS_T01` разобран построчно вручную (все 70 шагов);
  остальные 9 треков проверены по паттернам (одинаковая генерация, те же
  типы шагов, те же баги), но не построчно.
- `choose_definition`/`complete_chat`/`story` не проверялись на предмет
  каждой конкретной пары «вопрос-ответ» внутри всех 10 треков — только
  паттерн подтверждён на выборке.
- Технический долг с перезатиранием `motivation` при повторном запуске сида
  не устранён (см. выше).
