# E-Learning Platform - Документация

## Обзор

E-Learning Platform - это микросервисная платформа для онлайн-обучения, построенная на Go с использованием gRPC для внутренней коммуникации и REST API для клиентов.

## Архитектура

```
Browser/Client
     │
     │ HTTP/REST
     ▼
API Gateway (:8081)
     │
     ├── gRPC ──→ Auth Service    (:50051)
     ├── gRPC ──→ User Service    (:50052)
     ├── gRPC ──→ Course Service  (:50053)
     ├── gRPC ──→ Video Service   (:50054)
     └── gRPC ──→ ...
```

## Реализованные сервисы

### ✅ Auth Service
- **Порт**: 50051
- **Описание**: Аутентификация и авторизация пользователей
- **Документация**: [API Docs](./services/auth-service.md) | [SDD](./sdd/auth-service.md)

### ✅ User Service
- **Порт**: 50052
- **Описание**: Управление профилями пользователей
- **Документация**: [API Docs](./services/user-service.md) | [SDD](./sdd/user-service.md)

### ✅ Course Service
- **Порт**: 50053
- **Описание**: Управление курсами, модулями, уроками и шагами
- **Документация**: [API Docs](./services/course-service.md)

### ✅ Video Service
- **Порт**: 50054
- **Описание**: Управление видео контентом с MinIO/S3 storage
- **Документация**: [API Docs](./services/video-service.md)

### ✅ API Gateway
- **Порт**: 8081
- **Описание**: HTTP REST API для клиентов
- **Документация**: [API Docs](./services/gateway.md)

## База данных

**PostgreSQL** с изолированными схемами для каждого сервиса:

- `auth` - Auth Service
- `users` - User Service
- `courses` - Course Service
- `videos` - Video Service

**MinIO** (S3-compatible storage) для видео контента:

- Bucket: `videos`
- Console UI: http://localhost:9001

## Быстрый старт

### Требования

- Go 1.24+
- PostgreSQL 16
- Docker & Docker Compose
- Task (go-task)

### Установка

```bash
# 1. Клонировать репозиторий
cd elearning

# 2. Сгенерировать proto файлы
task proto:gen

# 3. Сгенерировать env конфигурации
task env:generate

# 4. Запустить PostgreSQL
task up-core

# 5. Применить миграции
# Auth Service
PGPASSWORD=auth_pass psql -h localhost -p 5432 -U auth_user -d elearning \
  -c "SET search_path TO auth;" \
  -f services/auth-service/migrations/001_create_users_table.sql

# User Service
PGPASSWORD=user_pass psql -h localhost -p 5432 -U user_user -d elearning \
  -c "SET search_path TO users;" \
  -f services/user-service/migrations/001_create_profiles_table.sql
```

### Запуск сервисов

```bash
# Терминал 1: Auth Service
task run-auth

# Терминал 2: User Service
task run-user

# Терминал 3: Gateway
cd services/gateway && go run cmd/main.go
```

## Тестирование

### Через Gateway (HTTP)

```bash
# Регистрация
curl -X POST http://localhost:8081/api/v1/auth/register \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123","username":"testuser"}'

# Вход
curl -X POST http://localhost:8081/api/v1/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123"}'

# Получить профиль (требуется токен)
curl http://localhost:8081/api/v1/profile \
  -H "Authorization: Bearer YOUR_TOKEN"
```

### Через grpcurl (прямые gRPC вызовы)

```bash
# Auth Service
./bin/grpcurl -plaintext -d '{"email":"test@example.com","password":"password123","username":"testuser"}' \
  localhost:50051 auth.v1.AuthService/Register

# User Service
./bin/grpcurl -plaintext -d '{"user_id":"USER_UUID"}' \
  localhost:50052 user.v1.UserService/GetProfile
```

## Структура проекта

```
elearning/
├── docs/                      # Документация
│   └── services/             # Документация по сервисам
├── services/                  # Микросервисы
│   ├── auth-service/
│   ├── user-service/
│   ├── course-service/
│   ├── video-service/
│   └── gateway/
├── shared/                    # Общий код
│   └── proto/                # Proto файлы
├── platform/                  # Платформенные утилиты
│   └── pkg/                  # Общие пакеты
├── deploy/                    # Deployment конфигурации
│   ├── compose/              # Docker Compose
│   └── env/                  # Environment файлы
└── Taskfile.yaml             # Task автоматизация
```

## Технологии

- **Язык**: Go 1.24
- **API**: gRPC (внутренний), REST (внешний)
- **База данных**: PostgreSQL 16
- **Фреймворки**: Gin (Gateway), pgx (БД)
- **Инструменты**: Buf (proto), Task (автоматизация)

## Разработка

### Форматирование кода

```bash
task format
```

### Линтинг

```bash
task lint
```

### Обновление зависимостей

```bash
task deps:update
```

## Документация

### Архитектура
- [Общий архитектурный документ](../SDD_Elearning_Platform.md)

### API Документация
- [Auth Service API](./services/auth-service.md)
- [User Service API](./services/user-service.md)
- [Course Service API](./services/course-service.md)
- [Video Service API](./services/video-service.md)
- [API Gateway](./services/gateway.md)

### System Design Documents (SDD)
- [Auth Service SDD](./sdd/auth-service.md)
- [User Service SDD](./sdd/user-service.md)

### Отчеты
- [User Service - Отчет о реализации](./USER_SERVICE_IMPLEMENTATION.md)
