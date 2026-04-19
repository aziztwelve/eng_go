# 01. Прогресс обучения (Progress Tracking)

## Описание

Система отслеживания прогресса студентов по курсам. Позволяет видеть, какие уроки пройдены, сколько времени потрачено, какой процент курса завершен.

## Цели

- Мотивировать студентов завершать курсы
- Показывать визуальный прогресс (progress bar)
- Сохранять позицию просмотра видео
- Отслеживать время обучения
- Выдавать сертификаты при завершении

## Требования

### Функциональные

1. **Отметка о прохождении урока**
   - Студент может отметить урок как пройденный
   - Автоматическая отметка при просмотре видео до конца
   - Возможность снять отметку

2. **Прогресс по курсу**
   - Процент завершения курса (пройденные уроки / всего уроков)
   - Процент завершения модуля
   - Визуальный progress bar

3. **Позиция просмотра видео**
   - Сохранение текущей позиции при паузе/закрытии
   - Возобновление с последней позиции
   - Отметка "просмотрено" при достижении 90%

4. **История обучения**
   - Дата начала курса
   - Дата последнего просмотра
   - Общее время обучения
   - Список пройденных уроков

5. **Сертификаты**
   - Автоматическая генерация при 100% завершении
   - PDF с именем студента, названием курса, датой
   - Уникальный ID для верификации

### Нефункциональные

- Быстрое обновление прогресса (< 100ms)
- Надежное сохранение позиции видео (каждые 5 сек)
- Масштабируемость (миллионы записей прогресса)

## Архитектура

### База данных

```sql
-- Прогресс по курсу
CREATE TABLE course_progress (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    course_id UUID NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    started_at TIMESTAMP NOT NULL DEFAULT NOW(),
    last_accessed_at TIMESTAMP NOT NULL DEFAULT NOW(),
    completed_at TIMESTAMP,
    total_time_seconds INT DEFAULT 0,
    completion_percentage DECIMAL(5,2) DEFAULT 0.00,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, course_id)
);

-- Прогресс по уроку
CREATE TABLE lesson_progress (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    course_id UUID NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    is_completed BOOLEAN DEFAULT FALSE,
    completed_at TIMESTAMP,
    time_spent_seconds INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, lesson_id)
);

-- Прогресс по видео
CREATE TABLE video_progress (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    video_id UUID NOT NULL REFERENCES videos(id) ON DELETE CASCADE,
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    current_position_seconds INT DEFAULT 0,
    duration_seconds INT NOT NULL,
    is_completed BOOLEAN DEFAULT FALSE,
    completed_at TIMESTAMP,
    last_watched_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, video_id, lesson_id)
);

-- Сертификаты
CREATE TABLE certificates (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    course_id UUID NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    certificate_number VARCHAR(50) UNIQUE NOT NULL,
    issued_at TIMESTAMP NOT NULL DEFAULT NOW(),
    pdf_url TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, course_id)
);

-- Индексы
CREATE INDEX idx_course_progress_user ON course_progress(user_id);
CREATE INDEX idx_course_progress_course ON course_progress(course_id);
CREATE INDEX idx_lesson_progress_user ON lesson_progress(user_id);
CREATE INDEX idx_lesson_progress_lesson ON lesson_progress(lesson_id);
CREATE INDEX idx_video_progress_user ON video_progress(user_id);
CREATE INDEX idx_video_progress_video ON video_progress(video_id);
CREATE INDEX idx_certificates_user ON certificates(user_id);
CREATE INDEX idx_certificates_number ON certificates(certificate_number);
```

### Сервисы

**Progress Service** (новый микросервис)
- Управление прогрессом студентов
- Расчет процента завершения
- Генерация сертификатов
- gRPC API для Gateway

**Certificate Service** (часть Progress Service)
- Генерация PDF сертификатов
- Хранение в MinIO
- Верификация сертификатов

## План реализации

### Этап 1: База данных и миграции (1 день)
1. Создать миграции для таблиц
2. Добавить seed данные для тестирования
3. Протестировать миграции

### Этап 2: Progress Service (3 дня)
1. Создать структуру сервиса
2. Реализовать repository слой
3. Реализовать service слой
4. Создать proto файлы
5. Реализовать gRPC API

### Этап 3: Gateway интеграция (1 день)
1. Добавить Progress Client в Gateway
2. Создать HTTP эндпоинты
3. Добавить middleware для проверки доступа

### Этап 4: Frontend (2 дня)
1. Создать API клиент
2. Компонент Progress Bar
3. Страница "Мои курсы"
4. Страница прогресса по курсу
5. Видео плеер с сохранением позиции

### Этап 5: Сертификаты (2 дня)
1. Интеграция с PDF библиотекой (go-pdf)
2. Шаблон сертификата
3. Генерация и сохранение в MinIO
4. Страница просмотра сертификатов

### Этап 6: Тестирование (1 день)
1. Unit тесты
2. Integration тесты
3. E2E тесты

**Общая оценка: 10 дней**

## API спецификация

### gRPC API (Progress Service)

```protobuf
service ProgressService {
  // Начать курс
  rpc StartCourse(StartCourseRequest) returns (StartCourseResponse);
  
  // Получить прогресс по курсу
  rpc GetCourseProgress(GetCourseProgressRequest) returns (GetCourseProgressResponse);
  
  // Отметить урок как пройденный
  rpc CompleteLesson(CompleteLessonRequest) returns (CompleteLessonResponse);
  
  // Обновить позицию видео
  rpc UpdateVideoProgress(UpdateVideoProgressRequest) returns (UpdateVideoProgressResponse);
  
  // Получить прогресс по видео
  rpc GetVideoProgress(GetVideoProgressRequest) returns (GetVideoProgressResponse);
  
  // Получить список курсов студента
  rpc GetUserCourses(GetUserCoursesRequest) returns (GetUserCoursesResponse);
  
  // Получить сертификат
  rpc GetCertificate(GetCertificateRequest) returns (GetCertificateResponse);
  
  // Сгенерировать сертификат
  rpc GenerateCertificate(GenerateCertificateRequest) returns (GenerateCertificateResponse);
}
```

### HTTP API (Gateway)

```
POST   /api/v1/progress/courses/:courseId/start
GET    /api/v1/progress/courses/:courseId
POST   /api/v1/progress/lessons/:lessonId/complete
POST   /api/v1/progress/videos/:videoId
GET    /api/v1/progress/videos/:videoId
GET    /api/v1/progress/my-courses
GET    /api/v1/certificates/:certificateId
POST   /api/v1/certificates/generate/:courseId
GET    /api/v1/certificates/verify/:certificateNumber
```

### Примеры запросов

**Начать курс**
```bash
POST /api/v1/progress/courses/123/start
Authorization: Bearer <token>

Response:
{
  "course_id": "123",
  "started_at": "2026-04-19T15:00:00Z",
  "completion_percentage": 0
}
```

**Получить прогресс**
```bash
GET /api/v1/progress/courses/123
Authorization: Bearer <token>

Response:
{
  "course_id": "123",
  "completion_percentage": 45.5,
  "started_at": "2026-04-19T15:00:00Z",
  "last_accessed_at": "2026-04-19T16:30:00Z",
  "total_time_seconds": 3600,
  "completed_lessons": 5,
  "total_lessons": 11,
  "modules": [
    {
      "module_id": "m1",
      "completion_percentage": 100,
      "lessons": [
        {
          "lesson_id": "l1",
          "is_completed": true,
          "completed_at": "2026-04-19T15:30:00Z"
        }
      ]
    }
  ]
}
```

**Обновить позицию видео**
```bash
POST /api/v1/progress/videos/456
Authorization: Bearer <token>
Content-Type: application/json

{
  "lesson_id": "l1",
  "current_position_seconds": 120,
  "duration_seconds": 300
}

Response:
{
  "video_id": "456",
  "current_position_seconds": 120,
  "is_completed": false
}
```

## UI/UX

### Страница "Мои курсы"
- Список всех курсов студента
- Progress bar для каждого курса
- Кнопка "Продолжить" (переход к последнему уроку)
- Фильтры: В процессе / Завершенные
- Сортировка: По дате начала / По прогрессу

### Страница курса
- Общий прогресс курса (большой progress bar)
- Список модулей с прогрессом
- Список уроков с галочками (пройдено/не пройдено)
- Кнопка "Получить сертификат" (если 100%)

### Видео плеер
- Автоматическое возобновление с последней позиции
- Сохранение позиции каждые 5 секунд
- Кнопка "Отметить как пройденное"
- Автоматическая отметка при 90% просмотра

### Страница сертификатов
- Список всех сертификатов студента
- Превью сертификата
- Кнопка "Скачать PDF"
- Кнопка "Поделиться" (ссылка для верификации)

## Тестирование

### Unit тесты
- Расчет процента завершения
- Логика отметки урока как пройденного
- Генерация номера сертификата

### Integration тесты
- Создание прогресса при начале курса
- Обновление прогресса при завершении урока
- Генерация сертификата при 100% завершении

### E2E тесты
1. Студент начинает курс
2. Проходит первый урок
3. Проверяет прогресс (должен быть > 0%)
4. Проходит все уроки
5. Получает сертификат
6. Скачивает PDF

## Зависимости

- ✅ Аутентификация (JWT)
- ✅ Курсы (courses, modules, lessons)
- ✅ Видео (videos)
- ✅ MinIO (хранение сертификатов)

## Технологии

- **Backend**: Go, gRPC, PostgreSQL
- **PDF**: github.com/jung-kurt/gofpdf
- **Frontend**: React, TypeScript
- **Video Player**: video.js или react-player

## Метрики успеха

- Процент студентов, завершающих курсы (> 30%)
- Среднее время до завершения курса
- Количество выданных сертификатов
- Процент студентов, возвращающихся к курсу

## Будущие улучшения

- Геймификация (бейджи, достижения)
- Streak (дни подряд обучения)
- Leaderboard (топ студентов)
- Напоминания о незавершенных курсах
- Экспорт прогресса в CSV
