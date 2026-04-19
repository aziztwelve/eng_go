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

- Банк вопросов (переиспользование)
- Случайная выборка вопросов из банка
- Адаптивные квизы (сложность зависит от ответов)
- Peer review (студенты проверяют друг друга)
- Экспорт квизов в Moodle/Canvas формат
- AI-генерация вопросов по материалу урока
