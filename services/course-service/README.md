# Course Service (Сервис Курсов)

Сервис управления каталогом курсов, учебным контентом и записями пользователей на обучение.

## Архитектура

Сервис построен на основе микросервисной архитектуры с использованием:
- **gRPC** для синхронного взаимодействия между сервисами
- **Kafka** для асинхронных событий
- **PostgreSQL** для хранения данных (схема `courses`)

## Структура данных

### Иерархия контента (модель Stepik/Stax English)

```
Course (Курс)
  └── Module (Модуль) - логический раздел курса
      └── Lesson (Урок) - контейнер для серии шагов
          └── Step (Шаг) - атомарная единица контента
```

### Типы шагов (Steps)

Каждый шаг имеет тип и содержимое в формате JSONB:

- **`video`** - видео из Video Service
  ```json
  {
    "video_id": "uuid-from-video-service",
    "duration_seconds": 300,
    "subtitles": ["en", "ru"]
  }
  ```

- **`text`** - статьи/лекции
  ```json
  {
    "body": "Markdown или HTML контент",
    "reading_time_minutes": 5
  }
  ```

- **`quiz`** - тесты
  ```json
  {
    "questions": [
      {
        "question": "Вопрос?",
        "options": ["A", "B", "C", "D"],
        "correct_answer": 0,
        "explanation": "Объяснение..."
      }
    ]
  }
  ```

- **`task`** - интерактивные упражнения
  ```json
  {
    "instructions": "Заполните пропуск",
    "template": "I ___ to the store",
    "correct_answers": ["went", "go"],
    "hints": ["Past tense"]
  }
  ```

- **`brain_game`** - мини-игры для памяти
  ```json
  {
    "game_type": "matching",
    "pairs": [
      {"word": "hello", "translation": "привет"}
    ]
  }
  ```

- **`ai_writing`** - упражнения на базе ИИ
  ```json
  {
    "prompt": "Напишите короткий параграф о...",
    "min_words": 50,
    "evaluation_criteria": ["grammar", "vocabulary", "coherence"]
  }
  ```

## gRPC API

### Студенческие эндпоинты

- **`ListCourses`** - список курсов с фильтрацией по уровням (A1-C2), языкам, цене
- **`GetCourse`** - полное дерево курса (курс → модули → уроки → шаги)
- **`GetLesson`** - урок со всеми шагами
- **`GetStepContent`** - содержимое конкретного шага (с видео URL если тип=video)
- **`EnrollUser`** - запись пользователя на курс
- **`CheckAccess`** - проверка доступа пользователя к курсу

### Административные эндпоинты

**Управление курсами:**
- `CreateCourse` - создание курса
- `UpdateCourse` - обновление курса
- `DeleteCourse` - удаление курса
- `PublishCourse` - публикация/снятие с публикации

**Управление модулями:**
- `CreateModule` - создание модуля
- `UpdateModule` - обновление модуля
- `DeleteModule` - удаление модуля

**Управление уроками:**
- `CreateLesson` - создание урока
- `UpdateLesson` - обновление урока
- `DeleteLesson` - удаление урока

**Управление шагами:**
- `CreateStep` - создание шага
- `UpdateStep` - обновление шага
- `DeleteStep` - удаление шага

## Интеграция с Kafka

### Потребляемые события (Consumed)

- **`order.paid`** → автоматическая запись пользователя на курс после оплаты
  ```json
  {
    "order_id": "uuid",
    "user_id": "uuid",
    "course_id": "uuid",
    "paid_at": "2026-04-13T00:00:00Z"
  }
  ```

### Публикуемые события (Produced)

- **`progress.updated`** → обновление прогресса пользователя (для Progress Service)
  ```json
  {
    "user_id": "uuid",
    "course_id": "uuid",
    "step_id": "uuid",
    "step_type": "video",
    "completed_at": "2026-04-13T00:00:00Z"
  }
  ```

## Интеграция с другими сервисами

### Video Service (gRPC)
- При запросе шага типа `video`, сервис делает gRPC вызов к Video Service
- Получает подписанный URL с временем истечения
- Возвращает URL клиенту

### Progress Service (Kafka)
- Публикует события `progress.updated` при завершении шагов
- Progress Service отслеживает SM-2 алгоритм для карточек/лексики
- Поддерживает процент завершения курса

## База данных

### Схема: `courses`

**Таблицы:**
- `courses` - метаданные курса, цена, уровень, язык
- `modules` - модули курса с порядком
- `lessons` - уроки с порядком
- `steps` - шаги с типом и JSONB контентом
- `enrollments` - записи пользователей на курсы

**Индексы:**
- По уровню, языку, цене для быстрой фильтрации
- По user_id и course_id для проверки доступа
- По order_index для правильной сортировки контента

## Запуск

### 1. Запуск инфраструктуры

```bash
# Запуск PostgreSQL
cd elearning
task up-core

# Запуск Kafka (когда будет готово)
# task up-kafka
```

### 2. Запуск миграций

```bash
task migrate-up-course
```

### 3. Запуск сервиса

```bash
cd services/course-service
go run cmd/main.go
```

Или через Task:
```bash
task run-course
```

## Переменные окружения

Файл: `deploy/compose/course/.env`

```env
# gRPC Server
GRPC_HOST=0.0.0.0
GRPC_PORT=50053

# Logger
LOGGER_LEVEL=info
LOGGER_AS_JSON=false

# PostgreSQL
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=elearning
POSTGRES_SCHEMA=courses
POSTGRES_USER=course_user
POSTGRES_PASSWORD=course_pass

# Kafka
KAFKA_BROKERS=localhost:9092
KAFKA_CONSUMER_GROUP=course-service
```

## Структура проекта

```
course-service/
├── cmd/
│   └── main.go                 # Точка входа
├── internal/
│   ├── api/
│   │   └── course/v1/          # gRPC handlers
│   │       └── api.go
│   ├── app/
│   │   └── app.go              # Инициализация приложения
│   ├── config/
│   │   └── config.go           # Конфигурация
│   ├── consumer/
│   │   └── kafka/              # Kafka consumers
│   │       └── order_paid.go
│   ├── converter/
│   │   └── course.go           # Proto ↔ Domain конвертеры
│   ├── model/                  # Domain модели
│   │   ├── course.go
│   │   ├── module.go
│   │   ├── lesson.go
│   │   ├── step.go
│   │   └── enrollment.go
│   ├── repository/             # Интерфейсы репозиториев
│   │   ├── course.go
│   │   ├── enrollment.go
│   │   └── postgres/           # PostgreSQL реализация
│   │       ├── course.go
│   │       └── enrollment.go
│   └── service/                # Бизнес-логика
│       ├── course.go
│       ├── enrollment.go
│       └── video_client.go     # Mock Video Service
├── migrations/                 # SQL миграции
│   ├── 000001_create_courses.up.sql
│   ├── 000001_create_courses.down.sql
│   └── ...
├── go.mod
└── README.md
```

## Примеры использования

### Создание курса (Admin)

```bash
grpcurl -plaintext \
  -d '{
    "title": "English for Beginners",
    "description": "Learn English from scratch",
    "price": 29.99,
    "instructor_id": "uuid",
    "level": "A1",
    "language": "en",
    "thumbnail_url": "https://..."
  }' \
  localhost:50053 course.v1.CourseService/CreateCourse
```

### Получение списка курсов (Student)

```bash
grpcurl -plaintext \
  -d '{
    "level": "A1",
    "language": "en",
    "limit": 20,
    "offset": 0
  }' \
  localhost:50053 course.v1.CourseService/ListCourses
```

### Проверка доступа

```bash
grpcurl -plaintext \
  -d '{
    "user_id": "uuid",
    "course_id": "uuid"
  }' \
  localhost:50053 course.v1.CourseService/CheckAccess
```

## Тестирование

```bash
# Запуск тестов
go test ./...

# С покрытием
go test -cover ./...

# Интеграционные тесты (требуется PostgreSQL)
go test -tags=integration ./...
```

## Мониторинг и логирование

Сервис использует структурированное логирование через `zap`:

```
2026-04-13T02:30:00.000Z INFO 🚀 Starting Course Service grpc_address=0.0.0.0:50053
2026-04-13T02:30:01.000Z INFO ✅ Connected to PostgreSQL host=localhost schema=courses
2026-04-13T02:30:01.000Z INFO ✅ gRPC server initialized
2026-04-13T02:30:01.000Z INFO 🎧 gRPC server listening address=0.0.0.0:50053
2026-04-13T02:30:01.000Z INFO 🎧 Starting Kafka consumer for order.paid topic
```

## Roadmap

- [ ] Интеграция с реальным Video Service
- [ ] Публикация событий `progress.updated`
- [ ] Кэширование часто запрашиваемых курсов (Redis)
- [ ] Полнотекстовый поиск по курсам (Elasticsearch)
- [ ] Рейтинги и отзывы на курсы
- [ ] Рекомендательная система
- [ ] Экспорт курсов в SCORM формат

## Поддержка

При возникновении проблем:
1. Проверьте логи сервиса
2. Убедитесь что PostgreSQL доступен
3. Проверьте что миграции применены
4. Проверьте переменные окружения
