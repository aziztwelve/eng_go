# Vocabulary Bank — Improvements v2 (поиск, статусы, XP, рандом фида)

**Статус:** 🚧 In progress
**Дата:** 2026-09-27
**Зависимости:** Vocabulary Bank (миграции 000033/000034), gamification-service (AddXP), SRS hook (уже есть)

---

## 🎯 Цели

Улучшить продуктовый цикл Vocabulary Bank (список → слово → урок из 15 шагов):

1. **Поиск по переводу** — сейчас `search` ищет только по `word/lemma/meaning`
   (англ. полям). Пользователь, набирающий «актер», не находит ACTOR.
2. **Статусы слов в списке** — list-endpoint не отдаёт per-user статус
   (`new` / `in_progress` / `completed`). UI не может показать выученные слова.
3. **XP за завершение слова** — 15 шагов работы не дают никакой награды,
   при том что XP — ключевая метрика на главном экране.
4. **Рандом фида новых слов** — `ORDER BY cefr_level, word LIMIT 5`:
   все пользователи всегда видят одни и те же слова.
5. **Производительность поиска** — `ILIKE '%…%'` без trigram-индекса.

### Не-цели (осознанно вне скоупа)

- Per-step XP за каждый шаг слова (см. решение в §4).
- ETag/HTTP-кэширование иммутабельного контента.
- Вынос валидации активностей в step-validation-service.
- Экспозирование `audio` из БД через proto (мобайл использует expo-speech).

---

## 1. Поиск по переводу

**Файлы:** `services/course-service/internal/repository/postgres/vocabulary_bank.go`

- Условие поиска в `List` расширяем: `w.word ILIKE $n OR w.lemma ILIKE $n OR
  w.meaning ILIKE $n OR t.text ILIKE $n` (t — уже существующий LEFT JOIN
  `vocabulary_bank_translations` по `locale`).
- COUNT-запрос сегодня не джойнит переводы — при поиске добавляем туда тот же
  LEFT JOIN (иначе total расходится со списком).
- Индекс: см. §6 (миграция 000035).

**Контракт REST не меняется:** `GET /vocabulary-bank?search=актер&locale=ru`.

## 2. Статусы слов в list API

**Proto** (`shared/proto/course/v1/course.proto`):

```diff
 message VocabularyBankWordSummary {
   ...
   bool has_audio = 6;
+  // Статус для текущего пользователя: new | in_progress | completed.
+  // Пустая строка = запрос без user_id (публичный контекст).
+  string status = 7;
+  int32 current_step = 8;
 }
 message ListVocabularyBankWordsRequest {
   ...
+  // Опционально: заполнить статусы для пользователя.
+  string user_id = 6;
 }
```

**Репозиторий:** при `UserID != ""` —
`LEFT JOIN user_vocabulary_progress p ON p.word_id = w.id AND p.user_id = $N`,
селектим `p.current_step, (p.completed_at IS NOT NULL)`. Статус вычисляем в Go:
`completed` > `in_progress (current_step > 1)` > `new`.

**Сортировка:** без фильтра уровня меняем `ORDER BY cefr_level, word` →
`ORDER BY word` (иначе алфавитные секции UI перемешиваются; с фильтром уровня
порядок не меняется).

**Gateway:**
- Новый `middleware.OptionalAuth` — как `AuthMiddleware`, но при
  отсутствии/невалидности токена продолжает без `user_id` (не 401).
- `GET /vocabulary-bank` (List) вешаем под OptionalAuth; при наличии
  `user_id` в контексте прокидываем в gRPC-запрос.
- `GET /vocabulary-bank/:externalId` (Get) — тоже под OptionalAuth
  (единообразие, поле пока не используется).

**Обратная совместимость:** анонимный вызов возвращает `status: ""` —
старые клиенты игнорируют.

## 3. Рандом фида новых слов

**Файл:** репозиторий `ListFeed`, ветка new words.

- `ORDER BY w.cefr_level, w.word` → `ORDER BY random()`.
- `in_progress` остаётся `ORDER BY p.last_activity_at DESC` (это резюм-лента,
  рандом там вреден).
- Банк ~тысячи строк, `random()` с LIMIT 5 — дёшево.

## 4. XP за завершение слова + `just_completed`

**Проблема идемпотентности:** повторная запись шага 15 не должна
начислять XP повторно. Response `RecordAttempt` не отличает «только что
завершили» от «давно завершено».

**Proto:**

```diff
 message RecordVocabularyBankAttemptResponse {
   VocabularyBankProgress progress = 1;
+  // true только если THIS attempt перевела слово в completed.
+  bool just_completed = 2;
 }
```

**gamification.proto:**

```diff
 enum XPReason {
   ...
   XP_REASON_PRACTICE = 6;
+  XP_REASON_VOCABULARY_WORD = 7;
 }
```

**Репозиторий** (`RecordAttempt`, в той же транзакции):
до upsert читаем `completed_at` существующего ряда (PK lookup, дёшево),
после — сравниваем: `just_completed = completed_at IS NOT NULL && было NULL`.
Прокидываем в `model.VocabularyBankProgress.JustCompleted`.

**Правила XP** (`gamification-service/internal/service/xp_rules.go`):

- `XPForVocabularyWord() int { return 25 }` — между lesson bonus (10)
  и course bonus (100): слово = 15 шагов, это больше урока, но меньше курса.
- **Решение:** per-step XP НЕ начисляем. Причины: (а) шаги слова отличаются
  от lesson-steps (нет StepKind-маппинга), (б) повторные прохождения шагов
  (retry) раздули бы XP, (в) плоский бонус проще аудитить. Пересмотрим, если
  метрики покажут недоинвестирование в банк.

**Начисление — в gateway** (`handler.RecordAttempt`):
- course-service возвращает `just_completed`;
- если true → `gamification.AddXP(user_id, 25, XP_REASON_VOCABULARY_WORD,
  source_id=external_id)`;
- gRPC-клиент `GamificationClient.AddXP` — новый метод (сегодня его нет);
- **ошибка AddXP не роняет попытку** (progress уже записан) — логируем и
  отвечаем без XP-блока;
- REST-ответ обогащаем: `{ "progress": {…}, "xp": { "amount": 25,
  "leveled_up": bool, "new_level": int } }` — только при начислении.

**Конвертер gamification-service:** маппинг нового reason
`vocabulary_word` ↔ enum (иначе InvalidArgument).

## 5. Мелочи репозитория

- `GetByExternalID`: убрать второй запрос `SELECT id` — включить `w.id`
  в первый скан.
- (сортировка без уровня — уже в §2.)

## 6. Миграция 000035: trigram-индексы

`services/course-service/migrations/000035_vocabulary_bank_search_trgm.up.sql`:

```sql
SET search_path TO courses;
CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_words_word_trgm
    ON vocabulary_bank_words USING gin (word gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_words_lemma_trgm
    ON vocabulary_bank_words USING gin (lemma gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_translations_text_trgm
    ON vocabulary_bank_translations USING gin (text gin_trgm_ops);
```

Down: дроп индексов (расширение не дропаем — общее).

## 7. Тесты

- **course-service:** unit-тесты сервиса (fake-репозиторий):
  - List: валидация level/search как раньше;
  - RecordAttempt: `just_completed` прокидывается, SRS-хук на шаге 15;
  - ListFeed: нормализация лимитов/локали.
- **gateway:** handler-тесты (по паттерну flashcards-тестов):
  - List с/без `user_id` в контексте;
  - RecordAttempt: XP-блок в ответе при `just_completed`, отсутствие блока
    при ошибке gamification.

## 8. Деплой

Стандартный процесс (`docs/development-workflow.md`, корень eng):

```bash
# локально: тесты + commit + push
task test   # или go test ./... в course-service и gateway
git push origin dev

# сервер
ssh -A root@167.233.103.233
cd /var/www/html/elearning
git pull --ff-only origin dev
# миграция (новая 000035)
task migrate-up course-service   # или утилитой миграций сервиса
# пересборка затронутых сервисов: course-service, gamification-service, gateway
… go build … && restart && health-check
```

**Порядок совместимости:** proto-изменения аддитивные (новые поля/enum),
старые клиенты работают. deploy course+gamification+gateway одним коммитом.

## 9. Мобайл (отдельная задача, кратко)

Потребляет: статусы в списке (бейджи), `xp`-блок на финише урока,
поиск по переводу — без изменений клиента (сервер), рандом фида — без
изменений. Детали — в мобильной задаче.

---

## Чек-лист реализации

- [x] proto: course (status/current_step/user_id/just_completed/xp), gamification (reason)
- [x] `task proto:gen`
- [x] course-service: model + converter + repo (search, status join, random, just_completed, GetByExternalID fix)
- [x] gamification-service: model reason + converter + XPForVocabularyWord (25 XP)
- [x] gateway: OptionalAuth + AddXP client + List userID + RecordAttempt XP-блок
- [x] миграция 000035 (up/down)
- [x] тесты: course-service (5), gateway (6)
- [x] go build + go test всех трёх сервисов
- [ ] деплой на сервер + smoke: search по переводу, статусы, XP на финише
