# 02. Квизы и тесты (Quizzes & Tests)

## Описание

Система создания и прохождения квизов для проверки знаний студентов. Поддержка разных типов вопросов, автоматическая проверка, оценки и результаты.

## Цели

- Проверять усвоение материала студентами
- Мотивировать к повторению материала
- Давать обратную связь по результатам
- Требовать минимальный балл для завершения курса
- Собирать статистику по сложным темам

## Требования

### Функциональные

1. **Типы вопросов**
   - Multiple choice (один правильный ответ)
   - Multiple select (несколько правильных ответов)
   - True/False
   - Text input (короткий ответ)
   - Matching (сопоставление)

2. **Создание квизов (Instructor/Admin)**
   - Добавление вопросов к уроку
   - Настройка параметров (время, попытки, проходной балл)
   - Перемешивание вопросов
   - Банк вопросов для повторного использования

3. **Прохождение квизов (Student)**
   - Таймер (опционально)
   - Сохранение прогресса
   - Возможность пропустить вопрос
   - Показ правильных ответов после завершения

4. **Оценивание**
   - Автоматическая проверка (кроме text input)
   - Ручная проверка text input (instructor)
   - Процент правильных ответов
   - Проходной балл (например, 70%)
   - Количество попыток

5. **Результаты**
   - История попыток
   - Детальный разбор ошибок
   - Рекомендации по повторению материала
   - Экспорт результатов

### Нефункциональные

- Быстрая проверка ответов (< 200ms)
- Защита от читерства (таймер, перемешивание)
- Масштабируемость (тысячи одновременных прохождений)

## Архитектура

### База данных

```sql
-- Квизы
CREATE TABLE quizzes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    time_limit_minutes INT, -- NULL = без ограничения
    max_attempts INT DEFAULT 3,
    passing_score_percentage DECIMAL(5,2) DEFAULT 70.00,
    shuffle_questions BOOLEAN DEFAULT TRUE,
    show_correct_answers BOOLEAN DEFAULT TRUE,
    is_required BOOLEAN DEFAULT FALSE, -- обязателен для завершения урока
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Вопросы
CREATE TABLE quiz_questions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    quiz_id UUID NOT NULL REFERENCES quizzes(id) ON DELETE CASCADE,
    question_type VARCHAR(50) NOT NULL, -- multiple_choice, multiple_select, true_false, text_input, matching
    question_text TEXT NOT NULL,
    explanation TEXT, -- объяснение правильного ответа
    points INT DEFAULT 1,
    order_index INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Варианты ответов
CREATE TABLE quiz_answers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    question_id UUID NOT NULL REFERENCES quiz_questions(id) ON DELETE CASCADE,
    answer_text TEXT NOT NULL,
    is_correct BOOLEAN DEFAULT FALSE,
    order_index INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Попытки прохождения
CREATE TABLE quiz_attempts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    quiz_id UUID NOT NULL REFERENCES quizzes(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    attempt_number INT NOT NULL,
    started_at TIMESTAMP NOT NULL DEFAULT NOW(),
    completed_at TIMESTAMP,
    score_percentage DECIMAL(5,2),
    total_points INT,
    earned_points INT,
    is_passed BOOLEAN DEFAULT FALSE,
    time_spent_seconds INT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Ответы студента
CREATE TABLE quiz_attempt_answers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    attempt_id UUID NOT NULL REFERENCES quiz_attempts(id) ON DELETE CASCADE,
    question_id UUID NOT NULL REFERENCES quiz_questions(id) ON DELETE CASCADE,
    selected_answer_ids UUID[], -- массив ID выбранных ответов
    text_answer TEXT, -- для text_input
    is_correct BOOLEAN,
    points_earned INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Индексы
CREATE INDEX idx_quizzes_lesson ON quizzes(lesson_id);
CREATE INDEX idx_quiz_questions_quiz ON quiz_questions(quiz_id);
CREATE INDEX idx_quiz_answers_question ON quiz_answers(question_id);
CREATE INDEX idx_quiz_attempts_quiz ON quiz_attempts(quiz_id);
CREATE INDEX idx_quiz_attempts_user ON quiz_attempts(user_id);
CREATE INDEX idx_quiz_attempt_answers_attempt ON quiz_attempt_answers(attempt_id);
```

### Сервисы

**Quiz Service** (новый микросервис)
- Управление квизами и вопросами
- Проверка ответов
- Расчет оценок
- gRPC API для Gateway

## План реализации

### Этап 1: База данных и миграции (1 день)
1. Создать миграции для таблиц
2. Добавить seed данные (примеры квизов)
3. Протестировать миграции

### Этап 2: Quiz Service - Backend (4 дня)
1. Создать структуру сервиса
2. Реализовать repository слой
3. Реализовать service слой (логика проверки)
4. Создать proto файлы
5. Реализовать gRPC API

### Этап 3: Gateway интеграция (1 день)
1. Добавить Quiz Client в Gateway
2. Создать HTTP эндпоинты
3. Добавить middleware для проверки доступа

### Этап 4: Admin Panel - Создание квизов (3 дня)
1. Страница создания квиза
2. Компонент добавления вопросов
3. Drag & drop для сортировки
4. Предпросмотр квиза

### Этап 5: Student UI - Прохождение квизов (3 дня)
1. Страница прохождения квиза
2. Таймер
3. Навигация по вопросам
4. Страница результатов
5. История попыток

### Этап 6: Тестирование (1 день)
1. Unit тесты (логика проверки)
2. Integration тесты
3. E2E тесты

**Общая оценка: 13 дней**

## API спецификация

### gRPC API (Quiz Service)

```protobuf
service QuizService {
  // Admin/Instructor
  rpc CreateQuiz(CreateQuizRequest) returns (CreateQuizResponse);
  rpc UpdateQuiz(UpdateQuizRequest) returns (UpdateQuizResponse);
  rpc DeleteQuiz(DeleteQuizRequest) returns (DeleteQuizResponse);
  rpc GetQuiz(GetQuizRequest) returns (GetQuizResponse);
  rpc ListQuizzes(ListQuizzesRequest) returns (ListQuizzesResponse);
  
  rpc AddQuestion(AddQuestionRequest) returns (AddQuestionResponse);
  rpc UpdateQuestion(UpdateQuestionRequest) returns (UpdateQuestionResponse);
  rpc DeleteQuestion(DeleteQuestionRequest) returns (DeleteQuestionResponse);
  
  // Student
  rpc StartQuizAttempt(StartQuizAttemptRequest) returns (StartQuizAttemptResponse);
  rpc SubmitAnswer(SubmitAnswerRequest) returns (SubmitAnswerResponse);
  rpc CompleteQuizAttempt(CompleteQuizAttemptRequest) returns (CompleteQuizAttemptResponse);
  rpc GetQuizAttempt(GetQuizAttemptRequest) returns (GetQuizAttemptResponse);
  rpc ListUserAttempts(ListUserAttemptsRequest) returns (ListUserAttemptsResponse);
}
```

### HTTP API (Gateway)

```
# Admin/Instructor
POST   /api/v1/admin/quizzes
PUT    /api/v1/admin/quizzes/:id
DELETE /api/v1/admin/quizzes/:id
GET    /api/v1/admin/quizzes/:id
GET    /api/v1/admin/lessons/:lessonId/quizzes

POST   /api/v1/admin/quizzes/:quizId/questions
PUT    /api/v1/admin/questions/:id
DELETE /api/v1/admin/questions/:id

# Student
POST   /api/v1/quizzes/:quizId/attempts
POST   /api/v1/attempts/:attemptId/answers
POST   /api/v1/attempts/:attemptId/complete
GET    /api/v1/attempts/:attemptId
GET    /api/v1/quizzes/:quizId/my-attempts
```

### Примеры запросов

**Создать квиз**
```bash
POST /api/v1/admin/quizzes
Authorization: Bearer <token>
Content-Type: application/json

{
  "lesson_id": "l1",
  "title": "Module 1 Quiz",
  "description": "Test your knowledge",
  "time_limit_minutes": 30,
  "max_attempts": 3,
  "passing_score_percentage": 70,
  "shuffle_questions": true,
  "show_correct_answers": true,
  "is_required": true
}
```

**Добавить вопрос**
```bash
POST /api/v1/admin/quizzes/q1/questions
Authorization: Bearer <token>
Content-Type: application/json

{
  "question_type": "multiple_choice",
  "question_text": "What is the capital of France?",
  "explanation": "Paris is the capital and largest city of France.",
  "points": 1,
  "answers": [
    {"answer_text": "London", "is_correct": false},
    {"answer_text": "Paris", "is_correct": true},
    {"answer_text": "Berlin", "is_correct": false},
    {"answer_text": "Madrid", "is_correct": false}
  ]
}
```

**Начать попытку**
```bash
POST /api/v1/quizzes/q1/attempts
Authorization: Bearer <token>

Response:
{
  "attempt_id": "a1",
  "quiz_id": "q1",
  "attempt_number": 1,
  "started_at": "2026-04-19T15:00:00Z",
  "time_limit_minutes": 30,
  "questions": [
    {
      "question_id": "qst1",
      "question_type": "multiple_choice",
      "question_text": "What is the capital of France?",
      "points": 1,
      "answers": [
        {"answer_id": "a1", "answer_text": "London"},
        {"answer_id": "a2", "answer_text": "Paris"},
        {"answer_id": "a3", "answer_text": "Berlin"},
        {"answer_id": "a4", "answer_text": "Madrid"}
      ]
    }
  ]
}
```

**Отправить ответ**
```bash
POST /api/v1/attempts/a1/answers
Authorization: Bearer <token>
Content-Type: application/json

{
  "question_id": "qst1",
  "selected_answer_ids": ["a2"]
}

Response:
{
  "success": true
}
```

**Завершить попытку**
```bash
POST /api/v1/attempts/a1/complete
Authorization: Bearer <token>

Response:
{
  "attempt_id": "a1",
  "score_percentage": 85.5,
  "is_passed": true,
  "total_points": 10,
  "earned_points": 9,
  "time_spent_seconds": 1200,
  "completed_at": "2026-04-19T15:20:00Z",
  "results": [
    {
      "question_id": "qst1",
      "question_text": "What is the capital of France?",
      "your_answer": "Paris",
      "correct_answer": "Paris",
      "is_correct": true,
      "points_earned": 1,
      "explanation": "Paris is the capital and largest city of France."
    }
  ]
}
```

## UI/UX

### Admin - Создание квиза
- Форма с настройками квиза
- Список вопросов с drag & drop
- Кнопка "Добавить вопрос"
- Модальное окно для редактирования вопроса
- Предпросмотр квиза

### Admin - Редактирование вопроса
- Выбор типа вопроса
- Текст вопроса (rich text editor)
- Список вариантов ответов
- Чекбокс "Правильный ответ"
- Поле "Объяснение"
- Баллы за вопрос

### Student - Прохождение квиза
- Таймер (если установлен)
- Прогресс (вопрос 3 из 10)
- Текст вопроса
- Варианты ответов (radio/checkbox)
- Кнопки: Назад, Пропустить, Далее
- Кнопка "Завершить" на последнем вопросе

### Student - Результаты
- Общий балл (большими цифрами)
- Статус: Пройден/Не пройден
- Время прохождения
- Детальный разбор по вопросам
- Кнопка "Попробовать снова" (если есть попытки)
- Кнопка "Вернуться к уроку"

## Тестирование

### Unit тесты
- Проверка правильности ответа (multiple choice)
- Проверка правильности ответа (multiple select)
- Расчет процента правильных ответов
- Проверка проходного балла

### Integration тесты
- Создание квиза с вопросами
- Начало попытки
- Отправка ответов
- Завершение попытки
- Проверка ограничения попыток

### E2E тесты
1. Instructor создает квиз
2. Добавляет 5 вопросов
3. Student начинает попытку
4. Отвечает на все вопросы
5. Завершает попытку
6. Видит результаты

## Зависимости

- ✅ Аутентификация (JWT)
- ✅ Курсы (lessons)
- 🔄 Прогресс обучения (опционально, для блокировки следующего урока)

## Технологии

- **Backend**: Go, gRPC, PostgreSQL
- **Frontend**: React, TypeScript
- **Rich Text**: TipTap или Quill
- **Drag & Drop**: react-beautiful-dnd

## Метрики успеха

- Процент студентов, проходящих квизы с первой попытки
- Средний балл по квизам
- Самые сложные вопросы (низкий процент правильных ответов)
- Время прохождения квизов

## Будущие улучшения

### Приоритет 1: Мультимедиа и интерактивность (5 дней)

**1.1. Картинки в вопросах (1 день)**
- Добавить поле `image_url` в таблицу `quiz_questions`
- Поддержка загрузки изображений через admin panel
- Отображение картинок в вопросах (student UI)
- Use cases: vocabulary (показать картинку, выбрать слово), grammar (выбрать правильное описание картинки)

**1.2. Аудио вопросы (2 дня)**
- Добавить поле `audio_url` в таблицу `quiz_questions`
- Интеграция с video-service для хранения аудио
- Audio player в student UI
- Use cases: listening comprehension, pronunciation recognition
- Типы: "Послушай и выбери правильный ответ", "Послушай и напиши что услышал"

**1.3. Fill-in-the-blank вопросы (2 дня)**
- Новый тип вопроса: `fill_in_blank`
- Формат: "The cat ___ on the mat" (пропуски обозначены `___`)
- Варианты ответов или свободный ввод
- Поддержка нескольких пропусков в одном предложении
- Автоматическая проверка с учетом регистра и пунктуации

**База данных:**
```sql
ALTER TABLE quiz_questions ADD COLUMN image_url TEXT;
ALTER TABLE quiz_questions ADD COLUMN audio_url TEXT;
ALTER TABLE quiz_questions ADD COLUMN blank_positions JSONB; -- [{"index": 1, "correct_answers": ["is", "sits"]}]
```

---

### Приоритет 2: Геймификация и мотивация (8 дней)

**2.1. XP (Experience Points) система (2 дня)**

**Начисление XP:**
- Прохождение квиза: `базовые_баллы * (score_percentage / 100)`
- Бонус за первую попытку: +50%
- Бонус за идеальный результат (100%): +100%
- Бонус за скорость (< 50% времени): +25%
- Штраф за повторные попытки: -20% за каждую

**База данных:**
```sql
CREATE TABLE user_xp (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    total_xp INT DEFAULT 0,
    level INT DEFAULT 1,
    xp_to_next_level INT DEFAULT 100,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id)
);

CREATE TABLE xp_transactions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    source_type VARCHAR(50) NOT NULL, -- quiz, lesson, achievement
    source_id UUID NOT NULL,
    xp_amount INT NOT NULL,
    reason TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_user_xp_user ON user_xp(user_id);
CREATE INDEX idx_xp_transactions_user ON xp_transactions(user_id);
```

**Уровни:**
- Level 1: 0-100 XP
- Level 2: 100-250 XP
- Level 3: 250-500 XP
- Level N: экспоненциальный рост (level * 100 * 1.5)

**UI:**
- XP bar в header (прогресс до следующего уровня)
- Анимация +XP после завершения квиза
- История транзакций XP в профиле

**2.2. Streak система (2 дня)**

**Логика:**
- Streak = количество дней подряд с активностью
- Активность = завершен хотя бы 1 квиз или урок
- Streak сбрасывается если пропущен день
- Freeze streak (1 раз в неделю можно пропустить день)

**База данных:**
```sql
CREATE TABLE user_streaks (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    current_streak INT DEFAULT 0,
    longest_streak INT DEFAULT 0,
    last_activity_date DATE NOT NULL,
    freeze_available BOOLEAN DEFAULT TRUE,
    freeze_used_at DATE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id)
);

CREATE TABLE streak_history (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    date DATE NOT NULL,
    activity_count INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, date)
);

CREATE INDEX idx_user_streaks_user ON user_streaks(user_id);
CREATE INDEX idx_streak_history_user_date ON streak_history(user_id, date);
```

**UI:**
- Flame icon 🔥 с числом дней
- Календарь активности (зеленые дни)
- Уведомление "Не потеряй streak!"
- Кнопка "Use freeze" (если доступна)

**2.3. Достижения (Achievements) (2 дня)**

**Типы достижений:**
- **Quiz Master**: Пройти 10/50/100 квизов
- **Perfect Score**: Получить 100% в 5/10/25 квизах
- **Speed Demon**: Пройти квиз за < 50% времени (10 раз)
- **Persistent**: Пройти квиз с 3-й попытки
- **First Try**: Пройти 10 квизов с первой попытки
- **Week Warrior**: 7 дней streak
- **Month Master**: 30 дней streak
- **Level Up**: Достичь уровня 5/10/20/50
- **Early Bird**: Пройти квиз до 9:00 (10 раз)
- **Night Owl**: Пройти квиз после 22:00 (10 раз)

**База данных:**
```sql
CREATE TABLE achievements (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code VARCHAR(50) UNIQUE NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    icon VARCHAR(50), -- emoji или icon name
    category VARCHAR(50), -- quiz, streak, level, time
    tier INT DEFAULT 1, -- 1=bronze, 2=silver, 3=gold
    xp_reward INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE user_achievements (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    achievement_id UUID NOT NULL REFERENCES achievements(id) ON DELETE CASCADE,
    progress INT DEFAULT 0, -- текущий прогресс
    target INT NOT NULL, -- цель (например, 10 квизов)
    unlocked_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, achievement_id)
);

CREATE INDEX idx_user_achievements_user ON user_achievements(user_id);
CREATE INDEX idx_user_achievements_unlocked ON user_achievements(unlocked_at) WHERE unlocked_at IS NOT NULL;
```

**UI:**
- Страница "Achievements" в профиле
- Прогресс бары для незавершенных
- Popup уведомление при разблокировке
- Фильтры: All / Unlocked / Locked
- Категории: Quiz / Streak / Level / Time

**2.4. Leaderboard (Таблица лидеров) (2 дня)**

**Типы:**
- **Global**: Все пользователи по XP
- **Friends**: Только друзья
- **Course**: Студенты одного курса
- **Weekly**: Кто набрал больше XP за неделю

**База данных:**
```sql
CREATE TABLE leaderboard_cache (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    leaderboard_type VARCHAR(50) NOT NULL, -- global, course, weekly
    scope_id UUID, -- course_id для course leaderboard
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    rank INT NOT NULL,
    score INT NOT NULL, -- XP или другая метрика
    period_start DATE,
    period_end DATE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_leaderboard_type_scope ON leaderboard_cache(leaderboard_type, scope_id, rank);
CREATE INDEX idx_leaderboard_user ON leaderboard_cache(user_id);
```

**UI:**
- Топ 10/50/100 пользователей
- Аватар, имя, уровень, XP
- Highlight текущего пользователя
- Tabs: Global / Friends / Course / Weekly
- Обновление каждые 5 минут (кеш)

---

### Приоритет 3: AI и адаптивность (12 дней)

**3.1. Spaced Repetition (Интервальное повторение) (4 дня)**

**Алгоритм SM-2 (SuperMemo):**
- Каждый неправильный ответ = карточка для повторения
- Интервалы: 1 день → 3 дня → 7 дней → 14 дней → 30 дней
- Качество ответа (0-5) влияет на следующий интервал
- Easiness Factor (EF) для каждой карточки

**База данных:**
```sql
CREATE TABLE spaced_repetition_cards (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    question_id UUID NOT NULL REFERENCES quiz_questions(id) ON DELETE CASCADE,
    easiness_factor DECIMAL(3,2) DEFAULT 2.5, -- 1.3 to 2.5
    interval_days INT DEFAULT 1,
    repetitions INT DEFAULT 0,
    next_review_date DATE NOT NULL,
    last_reviewed_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, question_id)
);

CREATE TABLE review_history (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    card_id UUID NOT NULL REFERENCES spaced_repetition_cards(id) ON DELETE CASCADE,
    quality INT NOT NULL, -- 0-5 (0=complete blackout, 5=perfect)
    time_spent_seconds INT,
    reviewed_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_sr_cards_user_next_review ON spaced_repetition_cards(user_id, next_review_date);
CREATE INDEX idx_review_history_card ON review_history(card_id);
```

**Формула SM-2:**
```
EF' = EF + (0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02))
if quality < 3:
    interval = 1
    repetitions = 0
else:
    if repetitions == 0:
        interval = 1
    elif repetitions == 1:
        interval = 6
    else:
        interval = interval * EF
```

**UI:**
- Секция "Review" в dashboard
- Показывает количество карточек на сегодня
- Режим повторения (как flashcards)
- Кнопки качества ответа: Again / Hard / Good / Easy
- Прогресс: "5 из 20 карточек"

**3.2. Адаптивная сложность (4 дня)**

**Логика:**
- Каждый вопрос имеет difficulty level (1-5)
- Система отслеживает skill level студента по темам
- Подбирает вопросы соответствующей сложности
- Если студент отвечает правильно → сложность растет
- Если студент ошибается → сложность снижается

**База данных:**
```sql
ALTER TABLE quiz_questions ADD COLUMN difficulty_level INT DEFAULT 3; -- 1=easy, 5=hard
ALTER TABLE quiz_questions ADD COLUMN topic_tags TEXT[]; -- ['grammar', 'present_simple']

CREATE TABLE user_skill_levels (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    topic VARCHAR(100) NOT NULL,
    skill_level DECIMAL(3,2) DEFAULT 1.0, -- 1.0 to 5.0
    correct_answers INT DEFAULT 0,
    total_answers INT DEFAULT 0,
    last_updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, topic)
);

CREATE TABLE adaptive_quiz_sessions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    topic VARCHAR(100) NOT NULL,
    target_question_count INT DEFAULT 10,
    current_difficulty DECIMAL(3,2) DEFAULT 3.0,
    questions_answered INT DEFAULT 0,
    correct_count INT DEFAULT 0,
    started_at TIMESTAMP NOT NULL DEFAULT NOW(),
    completed_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_user_skill_levels_user ON user_skill_levels(user_id);
CREATE INDEX idx_adaptive_sessions_user ON adaptive_quiz_sessions(user_id);
```

**Алгоритм подбора:**
```python
def select_next_question(user_id, topic, current_difficulty):
    # Диапазон сложности: ±0.5 от текущего уровня
    min_diff = max(1.0, current_difficulty - 0.5)
    max_diff = min(5.0, current_difficulty + 0.5)
    
    # Выбрать вопрос, который студент еще не видел
    # или видел давно (> 7 дней)
    question = db.query("""
        SELECT * FROM quiz_questions
        WHERE topic_tags @> ARRAY[?]
        AND difficulty_level BETWEEN ? AND ?
        AND id NOT IN (
            SELECT question_id FROM quiz_attempt_answers
            WHERE attempt_id IN (
                SELECT id FROM quiz_attempts
                WHERE user_id = ?
                AND created_at > NOW() - INTERVAL '7 days'
            )
        )
        ORDER BY RANDOM()
        LIMIT 1
    """, topic, min_diff, max_diff, user_id)
    
    return question

def update_difficulty(is_correct, current_difficulty):
    if is_correct:
        return min(5.0, current_difficulty + 0.2)
    else:
        return max(1.0, current_difficulty - 0.3)
```

**UI:**
- Режим "Adaptive Practice" в dashboard
- Выбор темы (grammar, vocabulary, listening)
- Система автоматически подбирает вопросы
- Показывает текущий skill level по теме
- График прогресса по темам

**3.3. AI-генерация вопросов (4 дня)**

**Интеграция с OpenAI API:**
- Генерация вопросов на основе текста урока
- Типы: multiple choice, fill-in-blank, true/false
- Автоматическая проверка качества
- Ручная модерация перед публикацией

**База данных:**
```sql
CREATE TABLE ai_generated_questions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    source_text TEXT NOT NULL, -- текст из которого сгенерирован вопрос
    question_data JSONB NOT NULL, -- полный вопрос с ответами
    quality_score DECIMAL(3,2), -- 0.0 to 1.0
    status VARCHAR(50) DEFAULT 'pending', -- pending, approved, rejected
    reviewed_by UUID REFERENCES users(id),
    reviewed_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_ai_questions_lesson ON ai_generated_questions(lesson_id);
CREATE INDEX idx_ai_questions_status ON ai_generated_questions(status);
```

**Prompt для GPT-4:**
```
Generate 5 multiple-choice questions based on the following English lesson text.

Text: "{{lesson_text}}"

Requirements:
- Focus on grammar, vocabulary, and comprehension
- Difficulty level: {{difficulty}}
- Each question should have 4 options with only 1 correct answer
- Include a brief explanation for the correct answer
- Format as JSON

Output format:
{
  "questions": [
    {
      "question_text": "What is the past tense of 'go'?",
      "question_type": "multiple_choice",
      "difficulty": 2,
      "topic_tags": ["grammar", "past_tense"],
      "answers": [
        {"text": "goed", "is_correct": false},
        {"text": "went", "is_correct": true},
        {"text": "gone", "is_correct": false},
        {"text": "going", "is_correct": false}
      ],
      "explanation": "The past tense of 'go' is 'went'. It's an irregular verb."
    }
  ]
}
```

**Проверка качества:**
- Нет дублирующихся вопросов
- Правильный ответ действительно правильный
- Неправильные ответы правдоподобны
- Вопрос соответствует уровню сложности
- Грамматика и орфография корректны

**UI (Admin):**
- Кнопка "Generate Questions" на странице урока
- Выбор количества вопросов (5/10/20)
- Выбор сложности (1-5)
- Предпросмотр сгенерированных вопросов
- Кнопки: Approve / Edit / Reject
- Batch approval (одобрить все)

**API Service:**
```go
type AIQuestionGenerator struct {
    openaiClient *openai.Client
    questionRepo repository.QuestionRepository
}

func (g *AIQuestionGenerator) GenerateQuestions(
    ctx context.Context,
    lessonText string,
    count int,
    difficulty int,
) ([]*model.AIGeneratedQuestion, error) {
    prompt := buildPrompt(lessonText, count, difficulty)
    
    response, err := g.openaiClient.CreateChatCompletion(ctx, openai.ChatCompletionRequest{
        Model: "gpt-4",
        Messages: []openai.ChatCompletionMessage{
            {Role: "system", Content: "You are an English teacher creating quiz questions."},
            {Role: "user", Content: prompt},
        },
        Temperature: 0.7,
    })
    
    questions := parseResponse(response)
    
    // Проверка качества
    for _, q := range questions {
        q.QualityScore = calculateQualityScore(q)
    }
    
    return questions, nil
}
```

---

## Итоговая оценка времени

- **Приоритет 1**: 5 дней (мультимедиа)
- **Приоритет 2**: 8 дней (геймификация)
- **Приоритет 3**: 12 дней (AI и адаптивность)

**Общая оценка: 25 дней (5 недель)**

---

## Другие улучшения (низкий приоритет)

- Банк вопросов (переиспользование)
- Случайная выборка вопросов из банка
- Peer review (студенты проверяют друг друга)
- Экспорт квизов в Moodle/Canvas формат
- Matching questions (сопоставление)
- Ordering questions (расставить по порядку)
