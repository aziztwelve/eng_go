# 🎓 E-Learning Platform

Микросервисная платформа для онлайн-обучения на Go с Clean Architecture, gRPC и MinIO для видео.

## 🚀 Quick Start

**[→ START.md](./START.md)** — пошаговая инструкция запуска

## 📚 Документация

**[→ docs/](./docs/)** — полная документация

- [Auth Service](./docs/services/auth-service.md) — аутентификация и JWT
- [User Service](./docs/services/user-service.md) — профили пользователей
- [Course Service](./docs/services/course-service.md) — курсы, модули, уроки
- [Video Service](./docs/services/video-service.md) — хранение и стриминг видео
- [API Gateway](./docs/services/gateway.md) — HTTP REST API

## 🏗️ Архитектура

```
┌─────────────────────────────────────────────────────────┐
│                     API Gateway (8080)                   │
│                    HTTP REST API                         │
└────────────┬────────────┬────────────┬──────────────────┘
             │            │            │            │
    ┌────────▼───┐  ┌────▼────┐  ┌───▼─────┐  ┌──▼──────┐
    │   Auth     │  │  User   │  │ Course  │  │  Video  │
    │  Service   │  │ Service │  │ Service │  │ Service │
    │  :50051    │  │ :50052  │  │ :50053  │  │ :50054  │
    └─────┬──────┘  └────┬────┘  └────┬────┘  └────┬─────┘
          │              │            │             │
          └──────────────┴────────────┴─────────────┘
                         │                    │
                  ┌──────▼──────┐      ┌─────▼─────┐
                  │  PostgreSQL │      │   MinIO   │
                  │    :5432    │      │   :9000   │
                  └─────────────┘      └───────────┘
```

### Сервисы

- **Auth Service** (gRPC :50051) — регистрация, логин, JWT токены
- **User Service** (gRPC :50052) — профили, роли (admin/instructor/student)
- **Course Service** (gRPC :50053) — курсы, модули, уроки, шаги, прогресс
- **Video Service** (gRPC :50054) — загрузка, хранение, signed URLs для видео
- **API Gateway** (HTTP :8080) — REST API, роутинг к gRPC сервисам

### Инфраструктура

- **PostgreSQL** — основная БД (схемы: auth, users, courses, videos)
- **MinIO** — S3-совместимое хранилище для видео файлов

### Структура проекта

```
eng_go/
├── platform/          # Общие утилиты
│   └── pkg/
│       ├── closer/    # Graceful shutdown
│       ├── grpc/      # gRPC health checks
│       ├── logger/    # Zap logger
│       └── postgres/  # PostgreSQL pool
│
├── shared/            # Proto контракты
│   ├── proto/         # .proto файлы
│   └── pkg/proto/     # Сгенерированный Go код
│
├── services/          # Микросервисы
│   ├── auth-service/
│   ├── user-service/
│   ├── course-service/
│   ├── video-service/
│   └── gateway/
│
└── deploy/            # Деплой конфиги
    ├── compose/       # Docker Compose
    └── env/           # Environment файлы
```

## 🛠️ Технологии

- **Go 1.24** — основной язык
- **gRPC** — межсервисная коммуникация
- **Protocol Buffers** — сериализация данных
- **PostgreSQL 16** — реляционная БД
- **MinIO** — объектное хранилище (S3-compatible)
- **Docker Compose** — оркестрация контейнеров
- **Task** — task runner (Makefile альтернатива)
- **Zap** — структурированное логирование
- **Gin** — HTTP роутер для Gateway

## 📦 Установка

### Требования

- Go 1.24+
- Docker & Docker Compose
- Task (`brew install go-task/tap/go-task` или [taskfile.dev](https://taskfile.dev))

### Быстрый старт

```bash
# 1. Клонировать репозиторий
git clone https://github.com/aziztwelve/eng_go.git
cd eng_go

# 2. Сгенерировать env файлы
task env:generate

# 3. Запустить инфраструктуру
task up-all

# 4. Применить миграции
task migrate-up-all

# 5. Заполнить тестовыми данными
# (см. START.md для подробностей)

# 6. Запустить все сервисы
task run-all-bg

# 7. Проверить
curl http://localhost:8080/health
```

**Подробная инструкция:** [START.md](./START.md)

## 🎯 Основные команды

```bash
# Инфраструктура
task up-core          # Запустить PostgreSQL
task up-video         # Запустить MinIO
task up-all           # Запустить всё
task down-all         # Остановить всё

# Миграции
task migrate-up-all   # Применить все миграции

# Сервисы
task run-all-bg       # Запустить все сервисы в фоне
task stop-all         # Остановить все сервисы
task run-auth         # Запустить Auth Service
task run-gateway      # Запустить Gateway

# Разработка
task proto:gen        # Сгенерировать proto
task format           # Форматировать код
task lint             # Запустить линтер

# Git
task git:status       # Git status
task git:save MSG='...' # Add + commit + push
```

## 🧪 Тестовые данные

После seeding доступны:

**Пользователи:**
- Admin: `admin@test.com` / `password123`
- Instructor: `instructor1@test.com` / `password123`
- Student: `student1@test.com` / `password123`

**Курсы:**
- 7 курсов (English, Spanish, German)
- 17 модулей
- 30 уроков
- 33 шага (текст, видео, квизы)

**Видео:**
- 8 тестовых видео в MinIO

## 📡 API Примеры

### Регистрация

```bash
curl -X POST http://localhost:8080/api/v1/auth/register \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "password123",
    "full_name": "Test User"
  }'
```

### Логин

```bash
curl -X POST http://localhost:8080/api/v1/auth/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "student1@test.com",
    "password": "password123"
  }'
```

### Получить курсы

```bash
curl http://localhost:8080/api/v1/courses
```

### Получить видео URL

```bash
curl http://localhost:8080/api/v1/videos/10000001-0000-0000-0000-000000000001/url
```

## 🔧 Разработка

### Добавить новый сервис

1. Создать proto контракт в `shared/proto/`
2. Сгенерировать код: `task proto:gen`
3. Создать сервис в `services/new-service/`
4. Добавить в Gateway client и handler
5. Обновить docker-compose и env

### Структура сервиса

```
services/my-service/
├── cmd/
│   └── main.go           # Entry point
├── internal/
│   ├── api/              # gRPC handlers
│   ├── app/              # Application setup
│   ├── config/           # Configuration
│   ├── converter/        # DTO converters
│   ├── model/            # Domain models
│   ├── repository/       # Data access
│   └── service/          # Business logic
├── migrations/           # SQL migrations
└── seeds/                # Test data
```

## 📊 Мониторинг

```bash
# Проверить все порты
ss -tlnp | grep -E ':(50051|50052|50053|50054|8080|5432|9000)'

# Логи сервисов
tail -f logs/*.log

# Логи Docker
docker compose -f deploy/compose/core/docker-compose.yml logs -f
```

## 🤝 Contributing

1. Fork репозиторий
2. Создать feature branch (`git checkout -b feature/amazing`)
3. Commit изменения (`git commit -m 'Add amazing feature'`)
4. Push в branch (`git push origin feature/amazing`)
5. Открыть Pull Request

## 📝 License

MIT License - см. [LICENSE](LICENSE)

## 👥 Authors

- [@aziztwelve](https://github.com/aziztwelve)

## 🔗 Links

- [Documentation](./docs/)
- [Quick Start](./START.md)
- [API Reference](./docs/api/)
