# Progress Tracking API - Документация

## Обзор

Реализованы endpoints для отслеживания прогресса пользователей по курсам, урокам и шагам.

## Новые HTTP REST Endpoints

Все endpoints требуют аутентификации (Bearer token в заголовке Authorization).

### 1. Отметить шаг как завершенный

```http
POST /api/v1/progress/steps/:stepId/complete
```

**Request Body:**
```json
{
  "time_spent_seconds": 120,
  "attempts": 1,
  "score": 85.5
}
```

**Response:**
```json
{
  "step_progress": {
    "id": "uuid",
    "user_id": "uuid",
    "step_id": "uuid",
    "lesson_id": "uuid",
    "completed": true,
    "completed_at": "2026-04-15T04:44:00Z",
    "time_spent_seconds": 120,
    "attempts": 1,
    "score": 85.5,
    "created_at": "2026-04-15T04:44:00Z",
    "updated_at": "2026-04-15T04:44:00Z"
  },
  "lesson_progress": {
    "id": "uuid",
    "user_id": "uuid",
    "lesson_id": "uuid",
    "course_id": "uuid",
    "total_steps": 10,
    "completed_steps": 5,
    "progress_percentage": 50.0,
    "started_at": "2026-04-15T04:00:00Z",
    "last_activity_at": "2026-04-15T04:44:00Z",
    "completed_at": null
  }
}
```

### 2. Получить прогресс по шагу

```http
GET /api/v1/progress/steps/:stepId
```

**Response:**
```json
{
  "progress": {
    "id": "uuid",
    "user_id": "uuid",
    "step_id": "uuid",
    "lesson_id": "uuid",
    "completed": true,
    "completed_at": "2026-04-15T04:44:00Z",
    "time_spent_seconds": 120,
    "attempts": 1,
    "score": 85.5,
    "created_at": "2026-04-15T04:44:00Z",
    "updated_at": "2026-04-15T04:44:00Z"
  },
  "exists": true
}
```

### 3. Получить прогресс по уроку

```http
GET /api/v1/progress/lessons/:lessonId
```

**Response:**
```json
{
  "progress": {
    "id": "uuid",
    "user_id": "uuid",
    "lesson_id": "uuid",
    "course_id": "uuid",
    "total_steps": 10,
    "completed_steps": 5,
    "progress_percentage": 50.0,
    "started_at": "2026-04-15T04:00:00Z",
    "last_activity_at": "2026-04-15T04:44:00Z",
    "completed_at": null
  },
  "step_progresses": [
    {
      "id": "uuid",
      "user_id": "uuid",
      "step_id": "uuid",
      "lesson_id": "uuid",
      "completed": true,
      "completed_at": "2026-04-15T04:44:00Z",
      "time_spent_seconds": 120,
      "attempts": 1,
      "score": 85.5,
      "created_at": "2026-04-15T04:44:00Z",
      "updated_at": "2026-04-15T04:44:00Z"
    }
  ]
}
```

### 4. Получить прогресс по курсу

```http
GET /api/v1/progress/courses/:courseId
```

**Response:**
```json
{
  "lesson_progresses": [
    {
      "id": "uuid",
      "user_id": "uuid",
      "lesson_id": "uuid",
      "course_id": "uuid",
      "total_steps": 10,
      "completed_steps": 10,
      "progress_percentage": 100.0,
      "started_at": "2026-04-15T04:00:00Z",
      "last_activity_at": "2026-04-15T04:44:00Z",
      "completed_at": "2026-04-15T04:44:00Z"
    }
  ],
  "total_lessons": 5,
  "completed_lessons": 1,
  "overall_progress_percentage": 20.0
}
```

## База данных

### Таблица `step_progress`

Хранит детальный прогресс по каждому шагу.

| Поле | Тип | Описание |
|------|-----|----------|
| id | UUID | Первичный ключ |
| user_id | UUID | ID пользователя |
| step_id | UUID | ID шага |
| lesson_id | UUID | ID урока |
| completed | BOOLEAN | Завершен ли шаг |
| completed_at | TIMESTAMP | Время завершения |
| time_spent_seconds | INT | Время на шаг (секунды) |
| attempts | INT | Количество попыток |
| score | FLOAT | Оценка (для квизов) |
| created_at | TIMESTAMP | Время создания |
| updated_at | TIMESTAMP | Время обновления |

**Уникальный индекс:** (user_id, step_id)

### Таблица `lesson_progress`

Хранит агрегированный прогресс по урокам.

| Поле | Тип | Описание |
|------|-----|----------|
| id | UUID | Первичный ключ |
| user_id | UUID | ID пользователя |
| lesson_id | UUID | ID урока |
| course_id | UUID | ID курса |
| total_steps | INT | Всего шагов |
| completed_steps | INT | Завершено шагов |
| progress_percentage | FLOAT | Процент прогресса (0-100) |
| started_at | TIMESTAMP | Время начала |
| last_activity_at | TIMESTAMP | Последняя активность |
| completed_at | TIMESTAMP | Время завершения |

**Уникальный индекс:** (user_id, lesson_id)

## Kafka Events

При завершении шага публикуется событие в топик `progress.updated`:

```json
{
  "event_type": "step_completed",
  "user_id": "uuid",
  "course_id": "uuid",
  "lesson_id": "uuid",
  "step_id": "uuid",
  "step_type": "video",
  "completed": true,
  "score": 85.5,
  "lesson_progress_percentage": 50.0,
  "timestamp": "2026-04-15T04:44:00Z"
}
```

## Запуск миграции

```bash
cd services/course-service
# Применить миграцию
migrate -path migrations -database "postgresql://user:password@localhost:5432/courses?sslmode=disable" up

# Откатить миграцию
migrate -path migrations -database "postgresql://user:password@localhost:5432/courses?sslmode=disable" down 1
```

## Примеры использования

### cURL

```bash
# Отметить видео-шаг как завершенный
curl -X POST http://localhost:8081/api/v1/progress/steps/{stepId}/complete \
  -H "Authorization: Bearer {token}" \
  -H "Content-Type: application/json" \
  -d '{"time_spent_seconds": 300}'

# Отметить квиз как завершенный
curl -X POST http://localhost:8081/api/v1/progress/steps/{stepId}/complete \
  -H "Authorization: Bearer {token}" \
  -H "Content-Type: application/json" \
  -d '{"time_spent_seconds": 120, "attempts": 2, "score": 90.0}'

# Получить прогресс по курсу
curl http://localhost:8081/api/v1/progress/courses/{courseId} \
  -H "Authorization: Bearer {token}"
```

## Особенности реализации

### 1. Автоматическое завершение видео-шагов
- Фронтенд отслеживает прогресс просмотра
- При достижении 90% видео автоматически вызывается `MarkStepComplete`

### 2. Свободная навигация
- Пользователь может переходить между шагами в любом порядке
- Доступ к следующим шагам не блокируется

### 3. Повторное прохождение
- При повторном завершении шага увеличивается `attempts`
- Для квизов `score` обновляется только если новый результат выше

### 4. Проверка квизов
- Логика проверки правильности ответов реализована на бэкенде
- Endpoint для проверки квизов будет добавлен в следующей итерации

### 5. Транзакционность
- `MarkStepComplete` выполняется атомарно
- Обновляются и `step_progress`, и `lesson_progress` в одной транзакции

## Архитектура

```
Frontend
   ↓
API Gateway (HTTP REST)
   ↓
Course Service (gRPC)
   ↓
PostgreSQL + Kafka
```

**Слои Course Service:**
- API Layer: gRPC handlers
- Service Layer: Бизнес-логика
- Repository Layer: Работа с БД
- Producer Layer: Публикация событий в Kafka

## Следующие шаги

1. Добавить endpoint для проверки квизов (`SubmitQuizAnswers`)
2. Реализовать историю попыток (таблица `step_attempts`)
3. Добавить аналитику и дашборды
4. Реализовать систему достижений на основе событий прогресса
