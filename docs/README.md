# 📚 Documentation

Полная документация E-Learning Platform.

## 🚀 Быстрый старт

- **[QUICKSTART.md](./QUICKSTART.md)** — быстрая настройка и запуск
- **[../START.md](../START.md)** — пошаговая инструкция для новичков

## 🏗️ Архитектура

### Микросервисы

- **[Auth Service](./services/auth-service.md)** — аутентификация, JWT токены
- **[User Service](./services/user-service.md)** — профили пользователей, роли
- **[Course Service](./services/course-service.md)** — курсы, модули, уроки, прогресс
- **[Video Service](./services/video-service.md)** — видео контент, MinIO, signed URLs
- **[API Gateway](./services/gateway.md)** — HTTP REST API, роутинг

### Инфраструктура

- **PostgreSQL** — основная БД (схемы: auth, users, courses, videos)
- **MinIO** — S3-совместимое хранилище для видео
- **Docker Compose** — оркестрация контейнеров

## 📡 API

### REST API (Gateway)

**Base URL:** `http://localhost:8080/api/v1`

#### Authentication

```bash
# Регистрация
POST /auth/register
{
  "email": "user@example.com",
  "password": "password123",
  "full_name": "John Doe"
}

# Логин
POST /auth/login
{
  "email": "user@example.com",
  "password": "password123"
}

# Обновить токен
POST /auth/refresh
{
  "refresh_token": "..."
}

# Получить профиль (требует auth)
GET /auth/me
Authorization: Bearer <access_token>
```

#### Courses

```bash
# Список курсов
GET /courses?page=1&page_size=20

# Получить курс
GET /courses/{id}

# Записаться на курс (требует auth)
POST /courses/{id}/enroll
Authorization: Bearer <access_token>
```

#### Progress (требует auth)

```bash
# Отметить шаг как завершенный
POST /progress/steps/{stepId}/complete
Authorization: Bearer <access_token>

# Прогресс по шагу
GET /progress/steps/{stepId}

# Прогресс по уроку
GET /progress/lessons/{lessonId}

# Прогресс по курсу
GET /progress/courses/{courseId}
```

#### Videos

```bash
# Получить signed URL для видео
GET /videos/{video_id}/url

# Метаданные видео
GET /videos/{video_id}
```

**Подробнее:**
- [PROGRESS_API.md](./PROGRESS_API.md) — API прогресса
- [API_AUTH_ME.md](./API_AUTH_ME.md) — эндпоинт /auth/me

## 🗄️ База данных

### Схемы

**auth** — пользователи, аутентификация
```sql
users (id, email, password_hash, role, ...)
```

**users** — профили
```sql
profiles (id, user_id, full_name, bio, avatar_url, ...)
```

**courses** — образовательный контент
```sql
courses (id, title, description, level, language, ...)
modules (id, course_id, title, order_index, ...)
lessons (id, module_id, title, order_index, ...)
steps (id, lesson_id, type, content, order_index, ...)
enrollments (id, user_id, course_id, status, ...)
step_progress (id, user_id, step_id, completed, ...)
lesson_progress (id, user_id, lesson_id, completed_steps, ...)
```

**videos** — видео контент
```sql
videos (id, title, storage_key, bucket_name, status, ...)
```

## 🎯 Функциональность

### Реализовано ✅

- [x] Регистрация и аутентификация (JWT)
- [x] Управление профилями
- [x] Каталог курсов (многоуровневая структура)
- [x] Модули, уроки, шаги
- [x] Типы шагов: text, video, quiz
- [x] Запись на курсы
- [x] Отслеживание прогресса (шаги, уроки, курсы)
- [x] Видео сервис с MinIO
- [x] Signed URLs для безопасного доступа к видео
- [x] API Gateway (HTTP REST)
- [x] Тестовые данные (9 пользователей, 7 курсов, 8 видео)

### В разработке 🚧

- [ ] Квизы и проверка ответов
- [ ] Сертификаты о прохождении
- [ ] Поиск по курсам
- [ ] Рейтинги и отзывы
- [ ] Уведомления
- [ ] Admin панель

**Подробнее:** [FEATURES.md](./FEATURES.md)

## 🛠️ Разработка

### Структура сервиса

```
services/my-service/
├── cmd/
│   └── main.go              # Entry point
├── internal/
│   ├── api/                 # gRPC handlers
│   │   └── v1/
│   ├── app/                 # Application setup
│   │   ├── app.go
│   │   └── di.go            # Dependency injection
│   ├── config/              # Configuration
│   │   ├── config.go
│   │   └── env/
│   ├── converter/           # DTO converters
│   ├── model/               # Domain models
│   ├── repository/          # Data access layer
│   └── service/             # Business logic
├── migrations/              # SQL migrations
│   └── *.up.sql
└── seeds/                   # Test data
    └── *.sql
```

### Добавить новый сервис

1. Создать proto контракт в `shared/proto/`
2. Сгенерировать код: `task proto:gen`
3. Создать структуру сервиса
4. Добавить миграции и seeds
5. Интегрировать в Gateway
6. Обновить docker-compose

**Подробнее:**
- [COURSE_SERVICE_IMPLEMENTATION.md](./COURSE_SERVICE_IMPLEMENTATION.md)
- [USER_SERVICE_IMPLEMENTATION.md](./USER_SERVICE_IMPLEMENTATION.md)

### Миграции

```bash
# Применить все миграции
task migrate-up-all

# Применить для конкретного сервиса
task migrate-up-auth
task migrate-up-user
task migrate-up-course
task migrate-up-video
```

### Seeding

```bash
# Заполнить тестовыми данными
task seed

# Или для конкретного сервиса
task seed-auth
task seed-user
task seed-course
```

**Подробнее:** [SEEDING.md](./SEEDING.md)

## 📊 Мониторинг

### Проверка сервисов

```bash
# Health check
curl http://localhost:8080/health

# Проверить все порты
ss -tlnp | grep -E ':(50051|50052|50053|50054|8080|5432|9000)'

# Логи
tail -f logs/*.log
```

### Docker

```bash
# Статус контейнеров
docker ps

# Логи PostgreSQL
docker compose -f deploy/compose/core/docker-compose.yml logs -f

# Логи MinIO
docker compose -f deploy/compose/video/docker-compose.yml logs -f
```

## 🧪 Тестирование

### Unit тесты

```bash
task test
```

### Интеграционные тесты

```bash
# Запустить инфраструктуру
task up-all

# Применить миграции
task migrate-up-all

# Запустить сервисы
task run-all-bg

# Тестировать API
curl http://localhost:8080/api/v1/courses
```

## 📝 Документы

### Спецификации

- [SDD (Software Design Document)](./sdd/) — дизайн документы

### Реализация

- [IMPLEMENTATION_SUMMARY.md](./IMPLEMENTATION_SUMMARY.md) — общий обзор
- [COURSE_SERVICE_IMPLEMENTATION.md](./COURSE_SERVICE_IMPLEMENTATION.md) — Course Service
- [USER_SERVICE_IMPLEMENTATION.md](./USER_SERVICE_IMPLEMENTATION.md) — User Service
- [PROGRESS_QUICKSTART.md](./PROGRESS_QUICKSTART.md) — система прогресса

### Статус

- [DONE.md](./DONE.md) — что сделано
- [FEATURES.md](./FEATURES.md) — функциональность

## 🔗 Полезные ссылки

- [GitHub Repository](https://github.com/aziztwelve/eng_go)
- [Task Documentation](https://taskfile.dev)
- [gRPC Documentation](https://grpc.io/docs/)
- [Protocol Buffers](https://protobuf.dev/)
- [MinIO Documentation](https://min.io/docs/)

## 🤝 Contributing

См. [../README.md](../README.md#contributing)
