# E-Learning Platform

Микросервисная платформа для онлайн-обучения, построенная на Go с использованием Clean Architecture.

## 📚 Документация

**[Полная документация →](./docs/README.md)**

- [Auth Service](./docs/services/auth-service.md)
- [User Service](./docs/services/user-service.md)
- [Course Service](./docs/services/course-service.md) ✅ NEW
- [API Gateway](./docs/services/gateway.md)

## Архитектура

- **Platform** - общие утилиты (logger, postgres, closer, grpc/health)
- **Shared** - proto контракты для всех сервисов
- **Services** - микросервисы:
  - ✅ Auth Service (50051) - аутентификация и авторизация
  - ✅ User Service (50052) - управление профилями
  - ✅ Course Service (50053) - каталог курсов и контент (NEW)
  - ✅ API Gateway (8081) - единая точка входа

## Требования

- Go 1.24+
- Docker & Docker Compose
- Task (taskfile.dev)

## Быстрый старт

### 1. Клонирование и настройка

```bash
cd elearning

# Создать .env файл из шаблона
cp deploy/env/.env.template deploy/env/.env

# Отредактировать переменные окружения (опционально)
vim deploy/env/.env
```

### 2. Генерация proto файлов

```bash
# Установить buf и сгенерировать Go код из proto
task proto:gen
```

### 3. Генерация конфигураций для сервисов

```bash
# Генерирует .env файлы для каждого сервиса из шаблонов
task env:generate
```

### 4. Запуск инфраструктуры

```bash
# Поднять PostgreSQL
task up-core

# Проверить статус
docker ps
```

### 5. Применение миграций

```bash
# Auth Service
PGPASSWORD=auth_pass psql -h localhost -p 5432 -U auth_user -d elearning \
  -c "SET search_path TO auth;" \
  -f services/auth-service/migrations/001_create_users_table.sql

# User Service
PGPASSWORD=user_pass psql -h localhost -p 5432 -U user_user -d elearning \
  -c "SET search_path TO users;" \
  -f services/user-service/migrations/001_create_profiles_table.sql
```

### 6. Запуск сервисов

```bash
# В отдельных терминалах:

# Терминал 1: Auth Service
task run-auth

# Терминал 2: User Service
task run-user

# Терминал 3: API Gateway
cd services/gateway && go run cmd/main.go

# Course Service (в разработке)
# task run-course
```

## Доступные команды

### Инфраструктура

```bash
task up-core          # Поднять PostgreSQL
task down-core        # Остановить PostgreSQL
task logs-core        # Показать логи PostgreSQL
task up-all           # Поднять всю инфраструктуру
task down-all         # Остановить всю инфраструктуру
```

### Разработка

```bash
task proto:gen        # Генерация Go кода из proto
task proto:lint       # Линтинг proto файлов
task env:generate     # Генерация .env для сервисов
task format           # Форматирование кода
task lint             # Линтинг кода
task test             # Запуск тестов
task deps:update      # Обновление зависимостей
```

### Запуск сервисов

```bash
task run-auth         # Запустить Auth Service
task run-user         # Запустить User Service
task run-course       # Запустить Course Service
task run-gateway      # Запустить API Gateway
```

## Структура проекта

```
elearning/
├── platform/              # Общие утилиты
│   └── pkg/
│       ├── closer/        # Graceful shutdown
│       ├── logger/        # Zap logger wrapper
│       ├── postgres/      # pgx connection pool
│       └── grpc/health/   # Health check service
│
├── shared/                # Proto контракты
│   ├── proto/
│   │   ├── auth/v1/
│   │   ├── user/v1/
│   │   └── course/v1/
│   └── pkg/proto/         # Сгенерированный Go код
│
├── services/
│   ├── auth-service/      # Сервис аутентификации
│   │   ├── cmd/
│   │   ├── internal/
│   │   │   ├── app/       # Инициализация приложения
│   │   │   ├── config/    # Конфигурация
│   │   │   ├── model/     # Доменные модели
│   │   │   ├── service/   # Бизнес-логика
│   │   │   ├── repository/# Доступ к данным
│   │   │   ├── converter/ # Конвертеры
│   │   │   └── api/       # gRPC API
│   │   └── migrations/
│   │
│   ├── user-service/      # Сервис пользователей
│   ├── course-service/    # Сервис курсов
│   └── gateway/           # API Gateway
│
├── deploy/
│   ├── env/               # Конфигурации
│   │   ├── .env           # Единый файл конфигурации
│   │   ├── *.env.template # Шаблоны для сервисов
│   │   └── generate-env.sh
│   │
│   └── compose/
│       ├── core/          # PostgreSQL
│       ├── auth/          # Auth Service (опционально)
│       ├── user/
│       ├── course/
│       └── gateway/
│
├── Taskfile.yaml          # Автоматизация задач
├── go.work                # Go workspace
└── README.md
```

## Тестирование

### Через API Gateway (HTTP)

```bash
# 1. Регистрация
curl -X POST http://localhost:8081/api/v1/auth/register \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123","username":"testuser"}'

# 2. Вход
TOKEN=$(curl -X POST http://localhost:8081/api/v1/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123"}' \
  | jq -r '.access_token')

# 3. Получить профиль
curl http://localhost:8081/api/v1/profile \
  -H "Authorization: Bearer $TOKEN"

# 4. Обновить профиль
curl -X PUT http://localhost:8081/api/v1/profile \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"first_name":"John","last_name":"Doe","native_lang":"en","target_lang":"ru"}'
```

### Через grpcurl (прямые gRPC вызовы)

```bash
# Auth Service - Регистрация
./bin/grpcurl -plaintext -d '{
  "email": "test@example.com",
  "password": "password123",
  "username": "testuser"
}' localhost:50051 auth.v1.AuthService/Register

# Auth Service - Вход
./bin/grpcurl -plaintext -d '{
  "email": "test@example.com",
  "password": "password123"
}' localhost:50051 auth.v1.AuthService/Login

# User Service - Получить профиль
./bin/grpcurl -plaintext -d '{
  "user_id": "YOUR_USER_UUID"
}' localhost:50052 user.v1.UserService/GetProfile
```

## Конфигурация

Все переменные окружения находятся в `deploy/env/.env`. Основные параметры:

### PostgreSQL
- `POSTGRES_HOST` - хост БД (default: postgres)
- `POSTGRES_PORT` - порт БД (default: 5432)
- `POSTGRES_DB` - имя БД (default: elearning)
- `POSTGRES_USER` - пользователь (default: admin)
- `POSTGRES_PASSWORD` - пароль

### Auth Service
- `AUTH_GRPC_PORT` - порт gRPC (default: 50051)
- `AUTH_JWT_SECRET` - секрет для JWT
- `AUTH_JWT_ACCESS_TTL` - время жизни access token (default: 15m)
- `AUTH_JWT_REFRESH_TTL` - время жизни refresh token (default: 168h)

## Разработка

### Добавление нового сервиса

1. Создать proto контракт в `shared/proto/{service}/v1/`
2. Сгенерировать код: `task proto:gen`
3. Создать структуру сервиса в `services/{service}/`
4. Добавить шаблон конфигурации в `deploy/env/{service}.env.template`
5. Обновить `SERVICES` в `Taskfile.yaml`
6. Создать миграции в `services/{service}/migrations/`

### Clean Architecture

Каждый сервис следует принципам Clean Architecture:

1. **Domain Layer** (`internal/model/`) - бизнес-сущности
2. **Service Layer** (`internal/service/`) - бизнес-логика
3. **Repository Layer** (`internal/repository/`) - доступ к данным
4. **API Layer** (`internal/api/`) - gRPC handlers
5. **Converters** - преобразование между слоями

Зависимости направлены внутрь: API → Service → Repository → Domain

## Troubleshooting

### Proto генерация не работает

```bash
# Установить buf вручную
task install-buf
task proto:install-plugins
```

### Ошибка подключения к PostgreSQL

```bash
# Проверить статус контейнера
docker ps

# Проверить логи
task logs-core

# Пересоздать контейнер
task down-core
task up-core
```

### LSP ошибки в IDE

```bash
# Обновить зависимости
task deps:update

# Синхронизировать workspace
go work sync
```

## Roadmap

- [x] Platform модуль
- [x] Shared proto контракты
- [x] Auth Service
- [x] User Service
- [x] API Gateway (базовая версия)
- [ ] Course Service
- [ ] Order Service
- [ ] Payment Service
- [ ] Progress Service
- [ ] Video Service
- [ ] Notification Service

## Лицензия

MIT
