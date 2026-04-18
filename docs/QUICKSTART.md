# 🚀 Быстрый запуск всех сервисов

## Предварительные требования

- Go 1.24+
- Docker & Docker Compose
- Task (taskfile.dev)

## Запуск за 5 шагов

### 1. Запустить инфраструктуру (PostgreSQL)

```bash
cd elearning
task up-core
```

### 2. Применить миграции для всех сервисов

```bash
# Auth Service
task migrate-up-auth

# User Service  
task migrate-up-user

# Course Service
task migrate-up-course
```

### 3. Запустить сервисы (в отдельных терминалах)

**Терминал 1 - Auth Service:**
```bash
cd elearning/services/auth-service
go run cmd/main.go
```

**Терминал 2 - User Service:**
```bash
cd elearning/services/user-service
go run cmd/main.go
```

**Терминал 3 - Course Service:**
```bash
cd elearning/services/course-service
go run cmd/main.go
```

**Терминал 4 - API Gateway:**
```bash
cd elearning/services/gateway
go run cmd/main.go
```

### 4. Проверка работы

```bash
# Проверка Auth Service
grpcurl -plaintext localhost:50051 list

# Проверка User Service
grpcurl -plaintext localhost:50052 list

# Проверка Course Service
grpcurl -plaintext localhost:50053 list

# Проверка API Gateway
curl http://localhost:8081/health
```

### 5. Тестовый запрос

```bash
# Регистрация пользователя
curl -X POST http://localhost:8081/api/v1/auth/register \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "password123",
    "username": "testuser"
  }'
```

## Порты сервисов

- **Auth Service:** gRPC :50051
- **User Service:** gRPC :50052
- **Course Service:** gRPC :50053
- **API Gateway:** HTTP :8081
- **PostgreSQL:** :5432

## Остановка

```bash
# Остановить инфраструктуру
task down-core

# Остановить сервисы: Ctrl+C в каждом терминале
```

## Troubleshooting

### Ошибка "port already in use"

```bash
# Найти процесс на порту
lsof -i :50051

# Убить процесс
kill -9 <PID>
```

### Ошибка подключения к PostgreSQL

```bash
# Проверить статус
docker ps | grep postgres

# Перезапустить
task down-core
task up-core
```

### Миграции не применились

```bash
# Проверить схемы
psql -h localhost -U postgres -d elearning -c "\dn"

# Применить init-db.sql
psql -h localhost -U postgres -d elearning -f deploy/compose/core/init-db.sql
```

## Полезные команды

```bash
# Логи PostgreSQL
task logs-core

# Обновить зависимости
task deps:update

# Форматирование кода
task format

# Линтинг
task lint

# Генерация proto
task proto:gen
```

## Документация

- **Auth Service:** `services/auth-service/README.md`
- **User Service:** `services/user-service/README.md`
- **Course Service:** `services/course-service/README.md`
- **API Gateway:** `services/gateway/README.md`

---

**Готово!** Все сервисы запущены и готовы к работе 🎉
