# Phase 2: Новые форматы шагов 🎯

**Срок:** 2-3 недели  
**Сложность:** Высокая  
**Зависимости:** Phase 1 (геймификация)  
**Статус:** 📝 Planning

---

## 🎯 Цели и метрики

### Цели:
Добавить **разнообразные интерактивные упражнения** вместо одних текстов и квизов. Главная фишка Duolingo — это **множество типов упражнений**, благодаря которым уроки не надоедают.

### Метрики:
- **Step completion rate** > 80%
- **Lesson completion rate** > 70%
- **Время на шаг** 30-60 секунд (sweet spot Duolingo)
- **Engagement** — пользователь делает ≥ 5 шагов за сессию

---

## 📋 Список новых форматов

| # | Формат | Сложность | Приоритет |
|---|--------|-----------|-----------|
| 1 | Translate (drag&drop) | Высокая | ⭐⭐⭐ |
| 2 | Match Pairs | Средняя | ⭐⭐⭐ |
| 3 | Listening (TTS + input) | Средняя | ⭐⭐ |
| 4 | Fill in the Blank | Средняя | ⭐⭐ |
| 5 | Tap What You Hear | Средняя | ⭐⭐ |
| 6 | Multiple Choice (улучшенный) | Низкая | ⭐⭐⭐ |
| 7 | Stories (интерактивные) | Очень высокая | ⭐ |
| 8 | Speaking (Phase 5 с AI) | Очень высокая | — |

---

## 🏗️ Архитектура

### Расширение Course Service
Не нужен новый сервис — расширяем существующий Course Service.

### Изменения в `steps`:
- Расширить enum `step_type`
- Сохранять структурированный контент в JSON поле `content`

### Новые таблицы:
- `step_attempts` — попытки выполнения интерактивных шагов
- `vocabulary` — словарь (для match pairs и т.д.)
- `tts_cache` — кэш сгенерированных аудио

---

## 💾 База данных

### Расширение `steps` (схема `courses`):
```sql
-- Добавляем новые типы
ALTER TYPE step_type ADD VALUE 'translate';
ALTER TYPE step_type ADD VALUE 'match_pairs';
ALTER TYPE step_type ADD VALUE 'listening';
ALTER TYPE step_type ADD VALUE 'fill_blank';
ALTER TYPE step_type ADD VALUE 'tap_words';
ALTER TYPE step_type ADD VALUE 'story';
ALTER TYPE step_type ADD VALUE 'speaking';
```

### `step_attempts`:
```sql
CREATE TABLE courses.step_attempts (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    step_id         UUID NOT NULL REFERENCES courses.steps(id),
    answer          JSONB NOT NULL,        -- структура зависит от типа
    is_correct      BOOLEAN NOT NULL,
    time_spent_ms   INT,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_step_attempts_user_step ON courses.step_attempts(user_id, step_id);
CREATE INDEX idx_step_attempts_created ON courses.step_attempts(created_at);
```

### `vocabulary`:
```sql
CREATE TABLE courses.vocabulary (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    language        VARCHAR(10) NOT NULL,    -- 'en', 'es', 'kk'
    word            TEXT NOT NULL,
    translation     TEXT NOT NULL,
    target_language VARCHAR(10) NOT NULL,    -- язык перевода
    audio_url       TEXT,
    image_url       TEXT,
    level           VARCHAR(5),              -- 'A1', 'A2', ...
    pos             VARCHAR(20),             -- part of speech: 'noun', 'verb'
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE UNIQUE INDEX idx_vocabulary_unique ON courses.vocabulary(language, word, target_language);
CREATE INDEX idx_vocabulary_lang_level ON courses.vocabulary(language, level);
```

### `tts_cache`:
```sql
CREATE TABLE courses.tts_cache (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    text        TEXT NOT NULL,
    language    VARCHAR(10) NOT NULL,
    voice       VARCHAR(50),
    audio_url   TEXT NOT NULL,             -- ссылка в MinIO
    duration_ms INT,
    created_at  TIMESTAMPTZ DEFAULT NOW()
);

CREATE UNIQUE INDEX idx_tts_cache_text_lang ON courses.tts_cache(MD5(text), language, voice);
```

---

## 📐 Структуры контента (JSON в `steps.content`)

### 1. Translate
```json
{
  "type": "translate",
  "instruction": "Translate this sentence",
  "source_text": "I drink coffee every morning",
  "source_language": "en",
  "target_language": "es",
  "correct_translation": "Bebo café todas las mañanas",
  "word_bank": [
    "Bebo", "café", "todas", "las", "mañanas",
    "Como", "té", "todos", "los", "días"
  ],
  "alternative_answers": [
    "Yo bebo café todas las mañanas",
    "Tomo café todas las mañanas"
  ],
  "hints": ["café = coffee", "mañanas = mornings"]
}
```

### 2. Match Pairs
```json
{
  "type": "match_pairs",
  "instruction": "Match the pairs",
  "pairs": [
    { "left": "Hello", "right": "Hola", "audio": "url" },
    { "left": "Goodbye", "right": "Adiós", "audio": "url" },
    { "left": "Thank you", "right": "Gracias", "audio": "url" },
    { "left": "Please", "right": "Por favor", "audio": "url" },
    { "left": "Sorry", "right": "Lo siento", "audio": "url" }
  ]
}
```

### 3. Listening
```json
{
  "type": "listening",
  "instruction": "Type what you hear",
  "audio_text": "El gato come pescado",
  "language": "es",
  "audio_url": "url-to-audio",
  "translation_hint": "The cat eats fish",
  "alternative_answers": ["el gato come pescado", "El gato come pescado."]
}
```

### 4. Fill in the Blank
```json
{
  "type": "fill_blank",
  "instruction": "Fill in the blank",
  "sentence_template": "Yo ___ café",
  "options": ["bebo", "como", "miro", "voy"],
  "correct_answer": "bebo",
  "translation_hint": "I drink coffee",
  "explanation": "Bebo (drink) is the correct verb"
}
```

### 5. Tap What You Hear
```json
{
  "type": "tap_words",
  "instruction": "Tap what you hear",
  "audio_url": "url",
  "audio_text": "I want to drink water",
  "word_bank": [
    "I", "want", "to", "drink", "water",
    "you", "eat", "the", "milk", "coffee"
  ],
  "correct_words": ["I", "want", "to", "drink", "water"]
}
```

### 6. Multiple Choice (improved)
```json
{
  "type": "quiz",
  "instruction": "Choose the correct translation",
  "question": "What does 'agua' mean?",
  "image_url": "optional",
  "audio_url": "optional",
  "options": [
    { "text": "water", "is_correct": true },
    { "text": "fire", "is_correct": false },
    { "text": "air", "is_correct": false },
    { "text": "earth", "is_correct": false }
  ],
  "explanation": "Agua means water in Spanish"
}
```

### 7. Story (упрощенная)
```json
{
  "type": "story",
  "title": "At the Restaurant",
  "scenes": [
    {
      "image_url": "url",
      "character": "Waiter",
      "text": "¿Qué desea?",
      "translation": "What do you want?"
    },
    {
      "type": "choice",
      "question": "What should you answer?",
      "options": [
        { "text": "Un café, por favor", "is_correct": true },
        { "text": "Adiós", "is_correct": false }
      ]
    }
  ]
}
```

---

## 🔌 API Endpoints

### Step interaction:
```
GET    /api/v1/steps/:stepId                      — получить контент шага
POST   /api/v1/steps/:stepId/submit               — отправить ответ
       { "answer": {...}, "time_spent_ms": 15000 }
```

**Response submit:**
```json
{
  "is_correct": true,
  "score": 1.0,
  "correct_answer": "Bebo café todas las mañanas",
  "explanation": "...",
  "xp_earned": 15,
  "hearts_remaining": 4,
  "achievements_unlocked": []
}
```

### TTS:
```
POST   /api/v1/tts/synthesize                      — сгенерировать аудио (admin only)
       { "text": "...", "language": "es", "voice": "default" }
       
GET    /api/v1/tts/by-text?text=...&lang=es        — получить URL (с кэшем)
```

### Vocabulary:
```
GET    /api/v1/vocabulary?lang=es&level=A1         — список слов
POST   /api/v1/vocabulary                          — добавить (admin)
PUT    /api/v1/vocabulary/:id                      — обновить
DELETE /api/v1/vocabulary/:id                      — удалить
```

---

## 💾 Бэкенд задачи

### 2.1 Course Service — расширение
- [ ] Миграция: добавить новые типы в enum `step_type`
- [ ] Миграция: создать таблицы `step_attempts`, `vocabulary`, `tts_cache`
- [ ] Обновить модель `Step` — поле `content` с типизацией
- [ ] Создать converters для каждого типа шагов
- [ ] Validation контента при создании step через admin API:
  - [ ] Translate: проверить word_bank содержит все слова correct_translation
  - [ ] Match Pairs: минимум 4 пары
  - [ ] Listening: должен быть audio_url или auto-generation
  - [ ] и т.д.

### 2.2 Step Submission Service
- [ ] Новый сервис `step-validation-service` ИЛИ расширение Course Service
- [ ] Метод `SubmitAnswer(stepID, userID, answer)`:
  - [ ] Получить step
  - [ ] Switch по type → вызвать соответствующий validator
  - [ ] Записать attempt в `step_attempts`
  - [ ] Если correct → вызвать gamification.AddXP
  - [ ] Если incorrect → вызвать gamification.LoseHeart
  - [ ] Если correct → пометить progress.completed = true

### 2.3 Validators (по типам)

```go
// service/validators/translate.go
type TranslateValidator struct{}

func (v *TranslateValidator) Validate(step *Step, answer interface{}) (*Result, error) {
    // answer = { "words": ["Bebo", "café", ...] }
    submitted := strings.Join(answer.Words, " ")
    correct := step.Content.CorrectTranslation
    
    if normalize(submitted) == normalize(correct) {
        return &Result{IsCorrect: true, Score: 1.0}, nil
    }
    
    // проверить alternative_answers
    for _, alt := range step.Content.AlternativeAnswers {
        if normalize(submitted) == normalize(alt) {
            return &Result{IsCorrect: true, Score: 1.0}, nil
        }
    }
    
    return &Result{
        IsCorrect: false,
        Score: 0,
        CorrectAnswer: correct,
    }, nil
}
```

- [ ] `validators/translate.go`
- [ ] `validators/match_pairs.go` — все ли пары правильные
- [ ] `validators/listening.go` — fuzzy match (учитывать опечатки до 2 символов)
- [ ] `validators/fill_blank.go` — точное совпадение / case insensitive
- [ ] `validators/tap_words.go` — порядок слов важен
- [ ] `validators/quiz.go` — выбран правильный option

### 2.4 TTS интеграция

#### Выбор провайдера:
- **Google Cloud TTS** — лучшее качество, $4 за 1M символов
- **AWS Polly** — много голосов, $4 за 1M
- **ElevenLabs** — самое естественное звучание, дороже
- **Coqui TTS** — open source, бесплатно (self-hosted)

**Рекомендация:** Начать с Google Cloud TTS, позже добавить ElevenLabs для premium.

#### Реализация:
- [ ] `service/tts/tts_service.go`:
  - [ ] `Synthesize(text, language, voice) → audio bytes`
  - [ ] Проверить кэш в БД (MD5 hash)
  - [ ] Если нет → вызвать API
  - [ ] Сохранить в MinIO (bucket `tts-cache`)
  - [ ] Записать в `tts_cache` таблицу
  - [ ] Вернуть URL

#### Pre-generation:
- [ ] При создании step с audio — фоновая генерация всех audio
- [ ] Vocabulary seed — генерация audio для всех слов

### 2.5 Vocabulary management
- [ ] CRUD API для vocabulary (admin)
- [ ] Импорт из CSV/JSON
- [ ] Bulk operations
- [ ] Связь vocabulary ↔ steps (many-to-many)

### 2.6 Тесты
- [ ] Unit для каждого validator
- [ ] Integration: создать step → submit answer → проверить result
- [ ] Edge cases: пустой ответ, неполный ответ, дубликаты в word_bank

---

## 🎨 Фронтенд задачи

### Универсальный StepRenderer

```tsx
// components/lesson/StepRenderer.tsx
type StepProps = {
  step: Step;
  onSubmit: (answer: any) => Promise<SubmitResult>;
};

export function StepRenderer({ step, onSubmit }: StepProps) {
  switch (step.type) {
    case 'text':         return <TextStep {...} />;
    case 'video':        return <VideoStep {...} />;
    case 'quiz':         return <QuizStep {...} />;
    case 'translate':    return <TranslateStep {...} />;
    case 'match_pairs':  return <MatchPairsStep {...} />;
    case 'listening':    return <ListeningStep {...} />;
    case 'fill_blank':   return <FillBlankStep {...} />;
    case 'tap_words':    return <TapWordsStep {...} />;
    case 'story':        return <StoryStep {...} />;
    default:             return <UnknownStep />;
  }
}
```

### Компоненты по типам:

#### 1. TranslateStep
- [ ] Header: исходное предложение + audio button
- [ ] Drag & drop bank слов (Framer Motion / react-dnd)
- [ ] Answer area: куда складываются слова (можно убрать обратно)
- [ ] Кнопка "Check" (disabled пока не выбрано ни слова)
- [ ] Анимация правильно/неправильно
- [ ] Показать correct answer если ошибка
- [ ] Hint button (показать перевод за gem)

#### 2. MatchPairsStep
- [ ] Двойная колонка карточек (left + right)
- [ ] Tap на левую → tap на правую → проверка
- [ ] Если match → fade out + tick
- [ ] Если mismatch → shake animation + lose heart
- [ ] Audio play при тапе (если есть)
- [ ] Победа когда все пары найдены

#### 3. ListeningStep
- [ ] Большая кнопка Play (с анимацией waveform во время play)
- [ ] Slow play button (50% speed)
- [ ] Input field для ввода
- [ ] Skip button (-30 XP)
- [ ] Submit button
- [ ] Показать correct + diff highlighting

#### 4. FillBlankStep
- [ ] Предложение с пропуском (input в середине)
- [ ] Options кнопками (если есть)
- [ ] Hint: перевод предложения
- [ ] Submit → feedback

#### 5. TapWordsStep
- [ ] Audio + waveform
- [ ] Word bank
- [ ] Tap слова → добавляется в answer area
- [ ] Tap в answer area → убирается обратно
- [ ] Check button

#### 6. QuizStep (improved)
- [ ] Question с optional image/audio
- [ ] 4 кнопки options
- [ ] При нажатии → подсветка зеленым/красным
- [ ] Explanation после ответа

#### 7. StoryStep
- [ ] Сцены с персонажами (картинки)
- [ ] Speech bubbles
- [ ] Tap для следующей сцены
- [ ] Choice points → выбор → branching

### Общий UX:

#### Feedback анимации:
- [ ] **Correct:** зеленая подсветка, sound, +XP анимация, smooth transition
- [ ] **Incorrect:** красная подсветка, shake, lose heart animation
- [ ] **Lottie animations** для перехода между шагами

#### Progress bar в уроке:
- [ ] Топ урока — прогресс бар (зеленые/красные сегменты)
- [ ] Каждый сегмент = шаг
- [ ] Зеленый = выполнен правильно, красный = ошибка, серый = ещё не сделан
- [ ] Если все правильно → "Perfect Lesson!" бонус XP

#### Hearts UI:
- [ ] Топ урока показывает оставшиеся hearts
- [ ] При потере — анимация heart shatter
- [ ] Если hearts = 0 → модалка "No hearts left"
  - Купить за gems
  - Practice для восстановления
  - Подождать (с таймером)
  - Premium upgrade

#### "Use a Hint" система:
- [ ] Hint button под каждым шагом
- [ ] Стоит 5 gems
- [ ] Показывает подсказку (перевод/первую букву и т.д.)

### Hooks:
- [ ] `use-step-submit.ts` — отправка ответа + обработка результата
- [ ] `use-tts.ts` — генерация и воспроизведение audio
- [ ] `use-hint.ts` — управление подсказками

### React Native specific:
- [ ] Использовать `react-native-reanimated` для drag&drop
- [ ] `expo-av` для audio playback
- [ ] `expo-haptics` для тактильного отклика
- [ ] Звуки через `Audio.Sound`

---

## ✅ Acceptance Criteria

### Backend:
- [x] Все 6 типов шагов поддерживаются
- [x] SubmitAnswer возвращает is_correct + xp_earned + hearts_remaining
- [x] TTS работает с кэшированием
- [x] Vocabulary CRUD через admin API
- [x] Validators покрыты unit тестами
- [x] Step attempts сохраняются в БД

### Frontend:
- [x] StepRenderer корректно отображает все 6 типов
- [x] Translate: drag&drop работает плавно
- [x] Match Pairs: визуально приятная анимация
- [x] Listening: audio воспроизводится, можно замедлить
- [x] Fill Blank: input + options
- [x] Все типы интегрированы с XP/Hearts системой
- [x] Звуки и анимации работают

### UX:
- [x] Время на шаг ~30-60 сек
- [x] Анимации smooth (60fps)
- [x] Feedback мгновенный
- [x] Подсказки доступны
- [x] Mobile: gesture-friendly (большие tap areas)

---

## 🔬 Тестирование

### Manual scenarios:
1. **Translate**: правильный ответ → +15 XP
2. **Translate**: неправильный ответ → -1 heart, показ correct
3. **Match Pairs**: все пары найдены → success animation
4. **Match Pairs**: одна ошибка → shake + lose heart
5. **Listening**: правильно набран текст
6. **Listening**: с опечаткой 1 буква → принимается (fuzzy)
7. **Fill Blank**: правильный option → success
8. **Multiple Choice**: правильный → green, неправильный → red

### Edge cases:
- Translate без выбора слов → submit disabled
- Listening с пустым input → submit disabled
- Match Pairs прервать в середине → progress сохранен
- Backend timeout → retry с loading state

---

## 📚 Референсы

### Inspiration:
- **Duolingo lessons** — все типы упражнений
- **Memrise** — особенно match pairs
- **Drops** — beautiful animations
- **Mondly** — speaking exercises

### Технические:
- **react-dnd** или **dnd-kit** для drag&drop (web)
- **react-native-reanimated** для mobile
- **Framer Motion** для анимаций (web)
- **Google Cloud TTS docs**: https://cloud.google.com/text-to-speech/docs

### Звуки и анимации:
- **Lottie animations:** https://lottiefiles.com/
- **Pixabay sounds:** https://pixabay.com/sound-effects/

---

## 📝 Замечания

### Контент-менеджмент:
- Создание content в админке — критично, т.к. сложные структуры
- Нужен **визуальный редактор** для каждого типа (Phase 2.5?)
- AI-помощь для генерации (Phase 5)

### Локализация:
- Структура поддерживает любой source/target language pair
- TTS поддерживает 40+ языков (Google Cloud)
- Vocabulary унифицирована через language code

### Performance:
- Audio файлы → MinIO + CDN (важно)
- Pre-generation для частых фраз
- Lazy loading on scroll

---

**Предыдущий шаг:** [Phase 1: Геймификация](./phase-1-gamification.md)  
**Следующий шаг:** [Phase 3: Адаптивное обучение](./phase-3-adaptive-learning.md)
