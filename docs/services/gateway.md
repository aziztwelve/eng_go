# API Gateway

## Описание

API Gateway - это единая точка входа для всех HTTP/REST запросов от клиентов. Преобразует HTTP запросы в gRPC вызовы к внутренним микросервисам.

## Технологии

- **Язык**: Go 1.24
- **Фреймворк**: Gin
- **Протокол**: HTTP/REST (внешний), gRPC (внутренний)
- **Порт**: 8081

## Особенности

- **JWT Middleware**: автоматическая валидация токенов через Auth Service
- **CORS Support**: настроенные CORS headers для фронтенда
- **Error Mapping**: преобразование gRPC ошибок в HTTP статус коды
- **Request Logging**: детальное логирование всех запросов
- **Panic Recovery**: обработка паник без падения сервера
- **Graceful Shutdown**: корректное завершение соединений

## API Endpoints

### Public Endpoints (без аутентификации)

#### Auth

**POST /api/v1/auth/register**
Регистрация нового пользователя.

Request:
```json
{
  "email": "test@example.com",
  "password": "password123",
  "username": "testuser"
}
```

Response:
```json
{
  "user_id": "uuid"
}
```

**POST /api/v1/auth/login**
Вход пользователя.

Request:
```json
{
  "email": "test@example.com",
  "password": "password123"
}
```

Response:
```json
{
  "access_token": "eyJhbGc...",
  "refresh_token": "eyJhbGc...",
  "expires_at": "2026-04-13T02:24:18Z"
}
```

**POST /api/v1/auth/refresh**
Обновление access токена.

Request:
```json
{
  "refresh_token": "eyJhbGc..."
}
```

Response:
```json
{
  "access_token": "eyJhbGc...",
  "expires_at": "2026-04-13T02:24:18Z"
}
```

#### Courses

**GET /api/v1/courses**
Получить список курсов.

Response:
```json
{
  "courses": [...]
}
```

**GET /api/v1/courses/:id**
Получить детали курса.

Response:
```json
{
  "course": {...}
}
```

#### Health

**GET /health**
Health check endpoint.

Response:
```json
{
  "status": "ok"
}
```

### Protected Endpoints (требуется Bearer token)

#### User Profile

**GET /api/v1/profile**
Получить свой профиль.

Headers:
```
Authorization: Bearer <access_token>
```

Response:
```json
{
  "id": "uuid",
  "user_id": "uuid",
  "first_name": "John",
  "last_name": "Doe",
  "native_lang": "en",
  "target_lang": "ru",
  "bio": "Software developer",
  "avatar_url": "https://...",
  "date_of_birth": "1990-01-15",
  "timezone": "Europe/Moscow",
  "created_at": "2026-04-13T00:00:00Z",
  "updated_at": "2026-04-13T01:00:00Z"
}
```

**PUT /api/v1/profile**
Обновить свой профиль.

Headers:
```
Authorization: Bearer <access_token>
```

Request:
```json
{
  "first_name": "John",
  "last_name": "Doe",
  "native_lang": "en",
  "target_lang": "ru",
  "bio": "Software developer",
  "timezone": "Europe/Moscow",
  "date_of_birth": "1990-01-15"
}
```

Response:
```json
{
  "id": "uuid",
  "user_id": "uuid",
  ...
}
```

**GET /api/v1/profile/languages**
Получить языковые настройки.

Headers:
```
Authorization: Bearer <access_token>
```

Response:
```json
{
  "native_lang": "en",
  "target_lang": "ru"
}
```

#### Courses

**POST /api/v1/courses/:id/enroll**
Записаться на курс.

Headers:
```
Authorization: Bearer <access_token>
```

Response:
```json
{
  "enrollment": {...}
}
```

## Конфигурация

**Файл**: `deploy/compose/gateway/.env`

```env
# HTTP Server
HTTP_HOST=0.0.0.0
HTTP_PORT=8081

# Logger
LOGGER_LEVEL=info
LOGGER_AS_JSON=false

# Service Addresses
AUTH_SERVICE_ADDR=localhost:50051
USER_SERVICE_ADDR=localhost:50052
COURSE_SERVICE_ADDR=localhost:50053

# Rate Limiting (future)
RATE_LIMIT_REQUESTS=100
RATE_LIMIT_WINDOW=1m
```

## Запуск

### Локально

```bash
cd elearning/services/gateway
go run cmd/main.go
```

## Middleware Chain

```
Request → Logger → Recovery → CORS → [Auth (для protected)] → Handler
```

### Logger Middleware
Логирует каждый запрос:
- HTTP метод
- Путь
- Статус код
- Latency
- Client IP

### Recovery Middleware
Перехватывает панику и возвращает 500 ошибку вместо падения сервера.

### CORS Middleware
Настраивает CORS headers:
- `Access-Control-Allow-Origin: *`
- `Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS`
- `Access-Control-Allow-Headers: Authorization, Content-Type`

### Auth Middleware
Для protected endpoints:
1. Извлекает токен из `Authorization: Bearer <token>`
2. Валидирует токен через Auth Service (gRPC)
3. Добавляет `user_id` и `role` в контекст
4. Возвращает 401 если токен невалиден

## Error Handling

### gRPC → HTTP Status Code Mapping

| gRPC Code | HTTP Status | Description |
|-----------|-------------|-------------|
| OK | 200 | Success |
| INVALID_ARGUMENT | 400 | Bad Request |
| UNAUTHENTICATED | 401 | Unauthorized |
| PERMISSION_DENIED | 403 | Forbidden |
| NOT_FOUND | 404 | Not Found |
| ALREADY_EXISTS | 409 | Conflict |
| INTERNAL | 500 | Internal Server Error |
| UNAVAILABLE | 503 | Service Unavailable |

### Error Response Format

```json
{
  "error": "error message"
}
```

## Архитектура

```
services/gateway/
├── cmd/
│   └── main.go                    # Entry point
├── internal/
│   ├── app/                       # Application setup
│   │   ├── app.go
│   │   └── di.go
│   ├── client/                    # gRPC clients
│   │   ├── auth.go
│   │   ├── user.go
│   │   └── course.go
│   ├── config/                    # Configuration
│   │   ├── config.go
│   │   ├── interfaces.go
│   │   └── env/
│   ├── middleware/                # HTTP middleware
│   │   ├── auth.go
│   │   ├── logger.go
│   │   ├── recovery.go
│   │   └── cors.go
│   ├── handler/                   # HTTP handlers
│   │   ├── auth.go
│   │   ├── user.go
│   │   └── course.go
│   ├── dto/                       # Data Transfer Objects
│   │   ├── auth.go
│   │   ├── user.go
│   │   └── course.go
│   └── errors/
│       └── handler.go             # Error mapping
├── go.mod
└── go.sum
```

## gRPC Connection Pooling

Gateway поддерживает долгоживущие gRPC соединения:
- Соединения создаются при старте
- Переиспользуются для всех запросов
- Корректно закрываются при shutdown

## Тестирование

### Полный flow

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
  -d '{
    "first_name": "John",
    "last_name": "Doe",
    "native_lang": "en",
    "target_lang": "ru"
  }'

# 5. Получить языки
curl http://localhost:8081/api/v1/profile/languages \
  -H "Authorization: Bearer $TOKEN"
```

## Логирование

Пример лога запроса:
```
2026-04-13T01:24:18.185Z INFO POST /api/v1/auth/login 200 45ms 127.0.0.1
```

Формат:
```
<timestamp> <level> <method> <path> <status> <latency> <client_ip>
```

## Мониторинг

- **Health Check**: `GET /health`
- **Graceful Shutdown**: корректное завершение при SIGINT/SIGTERM
- **Request Logging**: все запросы логируются

## Безопасность

- **JWT Validation**: все protected endpoints проверяют токен
- **CORS**: настроенные CORS headers
- **Panic Recovery**: сервер не падает при панике
- **Rate Limiting**: планируется (в конфиге)

## Зависимости

- `github.com/gin-gonic/gin` - HTTP фреймворк
- `github.com/elearning/platform` - общие утилиты
- `github.com/elearning/shared` - proto файлы
- `google.golang.org/grpc` - gRPC клиенты

## Будущие улучшения

- Rate limiting (в памяти или Redis)
- Request ID propagation
- Circuit breaker для gRPC вызовов
- Metrics (Prometheus)
- Distributed tracing
- Response caching
- Request timeout middleware
