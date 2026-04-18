# API Gateway - Quick Reference

## Реализовано

API Gateway на Gin с полной интеграцией с Auth, User и Course сервисами.

### Структура (19 файлов, ~1000 строк кода)

```
services/gateway/
├── cmd/main.go                    # Точка входа
├── internal/
│   ├── app/                       # Приложение
│   │   ├── app.go                 # Инициализация + роутинг
│   │   └── di.go                  # DI контейнер для gRPC клиентов
│   ├── client/                    # gRPC клиенты
│   │   ├── auth.go                # Auth Service client
│   │   ├── user.go                # User Service client
│   │   └── course.go              # Course Service client
│   ├── config/                    # Конфигурация
│   │   ├── config.go              # Загрузка конфигурации
│   │   ├── interfaces.go          # Интерфейсы
│   │   └── env/                   # Env-based конфиги
│   ├── middleware/                # HTTP middleware
│   │   ├── auth.go                # JWT валидация через Auth Service
│   │   ├── logger.go              # Логирование запросов
│   │   ├── recovery.go            # Обработка паник
│   │   └── cors.go                # CORS headers
│   ├── handler/                   # HTTP handlers
│   │   ├── auth.go                # Register, Login, Refresh
│   │   └── course.go              # ListCourses, GetCourse, Enroll
│   ├── dto/                       # Data Transfer Objects
│   │   ├── auth.go                # HTTP request/response для auth
│   │   └── course.go              # HTTP request/response для courses
│   └── errors/
│       └── handler.go             # gRPC → HTTP error mapping
```

### API Endpoints

**Public (без аутентификации):**
- `POST /api/v1/auth/register` - Регистрация
- `POST /api/v1/auth/login` - Вход
- `POST /api/v1/auth/refresh` - Обновление токена
- `GET /api/v1/courses` - Список курсов
- `GET /api/v1/courses/:id` - Детали курса
- `GET /health` - Health check

**Protected (требуется Bearer token):**
- `POST /api/v1/courses/:id/enroll` - Записаться на курс

### Middleware Chain

```
Request → Logger → Recovery → CORS → [Auth (для protected)] → Handler
```

### Конфигурация

Переменные окружения (из `deploy/compose/gateway/.env`):
- `HTTP_HOST` - хост HTTP сервера (default: 0.0.0.0)
- `HTTP_PORT` - порт HTTP сервера (default: 8080)
- `AUTH_SERVICE_ADDR` - адрес Auth Service (auth-service:50051)
- `USER_SERVICE_ADDR` - адрес User Service (user-service:50052)
- `COURSE_SERVICE_ADDR` - адрес Course Service (course-service:50053)
- `LOGGER_LEVEL` - уровень логирования (info)
- `LOGGER_AS_JSON` - JSON формат логов (false)

### Запуск

```bash
# 1. Сгенерировать конфигурацию
cd elearning
export SERVICES="auth,user,course,gateway"
ENV_SUBST=~/go/bin/envsubst ./deploy/env/generate-env.sh

# 2. Запустить Auth Service (должен быть запущен)
cd services/auth-service
go run cmd/main.go

# 3. Запустить Gateway
cd services/gateway
go run cmd/main.go
```

### Тестирование

```bash
# Регистрация
curl -X POST http://localhost:8080/api/v1/auth/register \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123","username":"testuser"}'

# Вход
curl -X POST http://localhost:8080/api/v1/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123"}'

# Получить список курсов (публичный)
curl http://localhost:8080/api/v1/courses

# Записаться на курс (требуется токен)
curl -X POST http://localhost:8080/api/v1/courses/123/enroll \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"

# Health check
curl http://localhost:8080/health
```

### Особенности реализации

1. **gRPC Connection Pooling** - долгоживущие соединения с переиспользованием
2. **Централизованная обработка ошибок** - gRPC codes → HTTP status codes
3. **JWT валидация через Auth Service** - каждый защищенный запрос валидируется
4. **Детальное логирование** - метод, путь, статус, latency, IP
5. **Graceful shutdown** - корректное закрытие gRPC соединений
6. **CORS support** - готов для фронтенда
7. **Panic recovery** - приложение не падает при панике в handler

### Что НЕ реализовано (для будущего)

- Rate limiting (в памяти или Redis)
- Request ID propagation
- Circuit breaker для gRPC вызовов
- Metrics (Prometheus)
- Distributed tracing
- Response caching
- Request timeout middleware
- User Service handlers (GetProfile, UpdateProfile)

### Архитектурные решения

- **Gin вместо Echo** - по выбору пользователя
- **gRPC вызов для валидации токена** - централизованная логика в Auth Service
- **Минимальный набор middleware** - только необходимое
- **REST API структура** - `/api/v1/{resource}`
- **Детальные ошибки + логирование** - для отладки

Gateway готов к использованию и может быть расширен дополнительными handlers и middleware по мере необходимости.
