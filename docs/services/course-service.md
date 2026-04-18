# Course Service - Архитектурная документация

## Обзор

Course Service — это микросервис для управления каталогом курсов, учебным контентом и записями пользователей на обучение. Сервис реализует расширенную архитектуру с поддержкой атомарных единиц контента (Steps) по модели Stepik и Stax English.

## Основные возможности

### 1. Управление курсами
- Создание, редактирование, удаление курсов
- Публикация/снятие с публикации
- Фильтрация по уровням (A1-C2), языкам, цене
- Поддержка метаданных: описание, цена, инструктор, обложка

### 2. Иерархическая структура контента
```
Course (Курс)
  └── Module (Модуль) - логический раздел
      └── Lesson (Урок) - группа шагов
          └── Step (Шаг) - атомарная единица контента
```

### 3. Типы контента (Steps)
- **Video** - интеграция с Video Service
- **Text** - статьи, лекции
- **Quiz** - тесты с вариантами ответов
- **Task** - интерактивные упражнения
- **Brain Game** - игры для тренировки памяти
- **AI Writing** - упражнения на базе ИИ

### 4. Управление доступом
- Запись пользователей на курсы
- Проверка активного доступа
- Поддержка временного и пожизненного доступа
- Автоматическая запись после оплаты (через Kafka)

## Архитектура

### Технологический стек
- **Язык**: Go 1.24+
- **gRPC**: Синхронное взаимодействие
- **Kafka**: Асинхронные события
- **PostgreSQL**: Хранение данных
- **Protocol Buffers**: Контракты API

### Слои приложения

```
┌─────────────────────────────────────┐
│         gRPC API Layer              │
│  (internal/api/course/v1)           │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│       Service Layer                 │
│  (internal/service)                 │
│  - CourseService                    │
│  - EnrollmentService                │
│  - VideoClient (mock)               │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│     Repository Layer                │
│  (internal/repository/postgres)     │
│  - CourseRepository                 │
│  - EnrollmentRepository             │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│         PostgreSQL                  │
│      Schema: courses                │
└─────────────────────────────────────┘
```

### Kafka Integration

```
┌─────────────────┐
│  Order Service  │
└────────┬────────┘
         │ publishes
         ▼
    order.paid
         │
         ▼ consumes
┌─────────────────┐
│ Course Service  │
│  (Consumer)     │
└────────┬────────┘
         │ enrolls user
         ▼
   enrollments
```

## Схема базы данных

### Таблица: courses
```sql
CREATE TABLE courses (
    id UUID PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    instructor_id UUID NOT NULL,
    level VARCHAR(10) CHECK (level IN ('A1', 'A2', 'B1', 'B2', 'C1', 'C2')),
    language VARCHAR(10) NOT NULL,
    thumbnail_url TEXT,
    is_published BOOLEAN DEFAULT false,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**Индексы:**
- `idx_courses_level` - для фильтрации по уровню
- `idx_courses_language` - для фильтрации по языку
- `idx_courses_price` - для фильтрации по цене
- `idx_courses_published` - для выборки опубликованных курсов

### Таблица: modules
```sql
CREATE TABLE modules (
    id UUID PRIMARY KEY,
    course_id UUID REFERENCES courses(id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    order_index INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    UNIQUE(course_id, order_index)
);
```

### Таблица: lessons
```sql
CREATE TABLE lessons (
    id UUID PRIMARY KEY,
    module_id UUID REFERENCES modules(id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    order_index INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    UNIQUE(module_id, order_index)
);
```

### Таблица: steps
```sql
CREATE TABLE steps (
    id UUID PRIMARY KEY,
    lesson_id UUID REFERENCES lessons(id) ON DELETE CASCADE,
    type VARCHAR(50) CHECK (type IN ('video', 'text', 'quiz', 'task', 'brain_game', 'ai_writing')),
    title VARCHAR(255),
    content JSONB NOT NULL,
    order_index INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    UNIQUE(lesson_id, order_index)
);
```

**Индексы:**
- `idx_steps_lesson_id` - для выборки шагов урока
- `idx_steps_type` - для фильтрации по типу
- `idx_steps_content` (GIN) - для поиска по JSONB

### Таблица: enrollments
```sql
CREATE TABLE enrollments (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    course_id UUID REFERENCES courses(id) ON DELETE CASCADE,
    status VARCHAR(50) CHECK (status IN ('active', 'expired', 'cancelled')),
    enrolled_at TIMESTAMP DEFAULT NOW(),
    access_until TIMESTAMP,
    UNIQUE(user_id, course_id)
);
```

**Индексы:**
- `idx_enrollments_user_id` - для выборки курсов пользователя
- `idx_enrollments_course_id` - для выборки студентов курса
- `idx_enrollments_user_course` - для проверки доступа

## gRPC API

### Student Endpoints

#### ListCourses
Получение списка курсов с фильтрацией и пагинацией.

**Request:**
```protobuf
message ListCoursesRequest {
  google.protobuf.StringValue language = 1;
  google.protobuf.StringValue level = 2;
  google.protobuf.DoubleValue min_price = 3;
  google.protobuf.DoubleValue max_price = 4;
  int32 limit = 5;
  int32 offset = 6;
}
```

**Response:**
```protobuf
message ListCoursesResponse {
  repeated Course courses = 1;
  int32 total = 2;
}
```

#### GetCourse
Получение полного дерева курса (модули → уроки → шаги).

**Request:**
```protobuf
message GetCourseRequest {
  string course_id = 1;
}
```

**Response:**
```protobuf
message GetCourseResponse {
  Course course = 1;
  repeated ModuleWithLessons modules = 2;
}
```

#### GetStepContent
Получение содержимого шага с видео URL (если тип=video).

**Request:**
```protobuf
message GetStepContentRequest {
  string step_id = 1;
  string user_id = 2;
}
```

**Response:**
```protobuf
message GetStepContentResponse {
  Step step = 1;
  string video_url = 2; // Заполняется для type=video
}
```

#### CheckAccess
Проверка доступа пользователя к курсу.

**Request:**
```protobuf
message CheckAccessRequest {
  string user_id = 1;
  string course_id = 2;
}
```

**Response:**
```protobuf
message CheckAccessResponse {
  bool has_access = 1;
}
```

### Admin Endpoints

#### CreateCourse
Создание нового курса.

**Request:**
```protobuf
message CreateCourseRequest {
  string title = 1;
  string description = 2;
  double price = 3;
  string instructor_id = 4;
  string level = 5;
  string language = 6;
  string thumbnail_url = 7;
}
```

#### UpdateCourse
Обновление существующего курса (partial update).

**Request:**
```protobuf
message UpdateCourseRequest {
  string course_id = 1;
  google.protobuf.StringValue title = 2;
  google.protobuf.StringValue description = 3;
  google.protobuf.DoubleValue price = 4;
  google.protobuf.StringValue level = 5;
  google.protobuf.StringValue language = 6;
  google.protobuf.StringValue thumbnail_url = 7;
}
```

#### PublishCourse
Публикация или снятие с публикации курса.

**Request:**
```protobuf
message PublishCourseRequest {
  string course_id = 1;
  bool is_published = 2;
}
```

## Интеграция с другими сервисами

### Order Service → Course Service (Kafka)

**Топик:** `order.paid`

**Событие:**
```json
{
  "order_id": "uuid",
  "user_id": "uuid",
  "course_id": "uuid",
  "paid_at": "2026-04-13T00:00:00Z"
}
```

**Обработка:**
1. Consumer получает событие `order.paid`
2. Проверяет, не записан ли уже пользователь
3. Создает запись в `enrollments` со статусом `active`
4. Логирует успешную запись

### Course Service → Video Service (gRPC)

**Метод:** `GetVideoURL`

**Запрос:**
```protobuf
message GetVideoURLRequest {
  string video_id = 1;
  string user_id = 2;
}
```

**Ответ:**
```protobuf
message GetVideoURLResponse {
  string signed_url = 1;
  int32 expires_in = 2;
}
```

**Текущая реализация:** Mock клиент возвращает тестовый URL

### Course Service → Progress Service (Kafka)

**Топик:** `progress.updated`

**Событие:**
```json
{
  "user_id": "uuid",
  "course_id": "uuid",
  "step_id": "uuid",
  "step_type": "video",
  "completed_at": "2026-04-13T00:00:00Z"
}
```

**Статус:** Готово к реализации

## Безопасность

### Проверка доступа
- Перед выдачей контента проверяется наличие активной записи
- Проверяется срок действия доступа (`access_until`)
- Статус должен быть `active`

### Изоляция данных
- Сервис работает только со своей схемой `courses`
- Нет прямого доступа к базам других сервисов
- Все межсервисные запросы через gRPC/Kafka

## Производительность

### Оптимизации
- Индексы на часто используемых полях
- Пагинация для списков
- Каскадное удаление через ON DELETE CASCADE
- JSONB для гибкого хранения контента

### Рекомендации
- Кэширование популярных курсов (Redis)
- CDN для обложек курсов
- Connection pooling для PostgreSQL
- Batch операции для массовых обновлений

## Мониторинг

### Метрики
- Количество запросов по эндпоинтам
- Время ответа gRPC методов
- Количество обработанных Kafka событий
- Ошибки при записи пользователей

### Логирование
- Структурированные логи через `zap`
- Уровни: DEBUG, INFO, WARN, ERROR
- Контекст: request_id, user_id, course_id

## Развертывание

### Требования
- PostgreSQL 16+
- Kafka 3.0+
- Go 1.24+

### Переменные окружения
```env
GRPC_HOST=0.0.0.0
GRPC_PORT=50053
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=elearning
POSTGRES_SCHEMA=courses
POSTGRES_USER=course_user
POSTGRES_PASSWORD=course_pass
KAFKA_BROKERS=localhost:9092
KAFKA_CONSUMER_GROUP=course-service
LOGGER_LEVEL=info
```

### Миграции
```bash
# Применить миграции
task migrate-up-course

# Откатить последнюю миграцию
task migrate-down-course
```

## Roadmap

### Фаза 1 (Текущая) ✅
- [x] Базовая структура сервиса
- [x] CRUD для курсов, модулей, уроков, шагов
- [x] Kafka consumer для order.paid
- [x] Mock Video Service

### Фаза 2 (Планируется)
- [ ] Интеграция с реальным Video Service
- [ ] Публикация событий progress.updated
- [ ] Кэширование через Redis
- [ ] Метрики и трейсинг

### Фаза 3 (Будущее)
- [ ] Полнотекстовый поиск (Elasticsearch)
- [ ] Рейтинги и отзывы
- [ ] Рекомендательная система
- [ ] Экспорт в SCORM

## Контакты

При возникновении вопросов или проблем:
- Проверьте логи сервиса
- Убедитесь в доступности PostgreSQL и Kafka
- Проверьте применение миграций
