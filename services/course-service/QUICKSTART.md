# Course Service - Быстрый старт

## Минимальные требования

- Go 1.24+
- PostgreSQL 16+
- Task (опционально)

## Запуск за 3 шага

### 1. Запустить PostgreSQL

```bash
cd elearning
task up-core
```

Или вручную через docker:
```bash
docker run -d \
  --name elearning-postgres \
  -e POSTGRES_DB=elearning \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -p 5432:5432 \
  postgres:16-alpine
```

### 2. Применить миграции

```bash
task migrate-up-course
```

Или вручную через golang-migrate:
```bash
migrate -path services/course-service/migrations \
  -database "postgres://course_user:course_pass@localhost:5432/elearning?search_path=courses&sslmode=disable" \
  up
```

### 3. Запустить сервис

```bash
cd services/course-service
go run cmd/main.go
```

Вы должны увидеть:
```
🚀 Starting Course Service grpc_address=0.0.0.0:50053
✅ Connected to PostgreSQL host=localhost schema=courses
✅ gRPC server initialized
🎧 gRPC server listening address=0.0.0.0:50053
```

## Проверка работы

### Список доступных методов

```bash
grpcurl -plaintext localhost:50053 list
```

### Создание тестового курса

```bash
grpcurl -plaintext \
  -d '{
    "title": "English for Beginners",
    "description": "Learn English from scratch",
    "price": 29.99,
    "instructor_id": "00000000-0000-0000-0000-000000000001",
    "level": "A1",
    "language": "en"
  }' \
  localhost:50053 course.v1.CourseService/CreateCourse
```

### Получение списка курсов

```bash
grpcurl -plaintext \
  -d '{"limit": 10, "offset": 0}' \
  localhost:50053 course.v1.CourseService/ListCourses
```

## Переменные окружения

Файл: `deploy/compose/course/.env`

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
LOGGER_AS_JSON=false
```

## Troubleshooting

### Ошибка подключения к PostgreSQL

```
failed to connect to postgres
```

**Решение:** Убедитесь что PostgreSQL запущен и доступен:
```bash
psql -h localhost -U postgres -d elearning -c "SELECT 1"
```

### Ошибка "schema courses does not exist"

```
schema "courses" does not exist
```

**Решение:** Примените миграции:
```bash
task migrate-up-course
```

### Ошибка "user course_user does not exist"

```
role "course_user" does not exist
```

**Решение:** Выполните init-db.sql:
```bash
psql -h localhost -U postgres -d elearning -f deploy/compose/core/init-db.sql
```

## Полезные команды

```bash
# Сборка бинарника
go build -o bin/course-service ./cmd/main.go

# Запуск тестов
go test ./...

# Проверка кода
go vet ./...

# Форматирование
go fmt ./...

# Откат последней миграции
task migrate-down-course
```

## Документация

- **README:** `services/course-service/README.md`
- **Архитектура:** `docs/services/course-service.md`
- **Реализация:** `docs/COURSE_SERVICE_IMPLEMENTATION.md`

## Следующие шаги

1. Изучите API методы в `shared/proto/course/v1/course.proto`
2. Создайте тестовые данные через gRPC
3. Интегрируйте с API Gateway
4. Настройте Kafka для автоматической записи на курсы

---

**Готово!** Course Service запущен и готов к работе 🚀
