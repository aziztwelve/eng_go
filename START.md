# 🚀 Запуск платформы E-Learning

## Быстрый старт

### 1. Запустить PostgreSQL
```bash
cd elearning
task up-core
```

### 2. Применить миграции
```bash
task migrate-up-all
```

### 3. Запустить сервисы (в 4 терминалах)

**Терминал 1 - Auth Service:**
```bash
cd elearning
task run-auth
```

**Терминал 2 - User Service:**
```bash
cd elearning
task run-user
```

**Терминал 3 - Course Service:**
```bash
cd elearning
task run-course
```

**Терминал 4 - API Gateway:**
```bash
cd elearning
task run-gateway
```

## Проверка работы

```bash
# API Gateway
curl http://localhost:8081/health

# gRPC сервисы
grpcurl -plaintext localhost:50051 list  # Auth
grpcurl -plaintext localhost:50052 list  # User
grpcurl -plaintext localhost:50053 list  # Course
```

## Порты

- Auth Service: :50051
- User Service: :50052
- Course Service: :50053
- API Gateway: :8081
- PostgreSQL: :5432

## Остановка

```bash
task down-core  # Остановить PostgreSQL
# Ctrl+C в каждом терминале
```

## Доступные команды

```bash
# Запуск инфраструктуры
task up-core              # Запустить PostgreSQL
task down-core            # Остановить PostgreSQL

# Миграции
task migrate-up-all       # Применить все миграции
task migrate-up-auth      # Применить миграции Auth Service
task migrate-up-user      # Применить миграции User Service
task migrate-up-course    # Применить миграции Course Service

# Запуск сервисов
task run-auth             # Запустить Auth Service
task run-user             # Запустить User Service
task run-course           # Запустить Course Service
task run-gateway          # Запустить API Gateway
```

Готово! 🎉
