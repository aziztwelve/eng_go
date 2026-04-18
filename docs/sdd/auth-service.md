# Auth Service - System Design Document

## Обзор

Auth Service отвечает за аутентификацию и авторизацию пользователей в E-Learning Platform. Сервис использует JWT токены для управления сессиями и bcrypt для безопасного хранения паролей.

## Требования

### Функциональные требования

1. **Регистрация пользователей**
   - Создание нового аккаунта с email, password, username
   - Валидация уникальности email
   - Хеширование пароля с bcrypt (cost 12)
   - Автоматическое назначение роли `student`

2. **Аутентификация**
   - Вход по email и паролю
   - Генерация JWT access token (TTL: 15 минут)
   - Генерация JWT refresh token (TTL: 7 дней)
   - Возврат токенов и времени истечения

3. **Валидация токенов**
   - Проверка валидности access token
   - Извлечение user_id и role из токена
   - Возврат статуса валидности

4. **Обновление токенов**
   - Обновление access token по refresh token
   - Генерация нового access token
   - Сохранение refresh token без изменений

### Нефункциональные требования

1. **Производительность**
   - Время ответа < 100ms для всех операций
   - Поддержка 1000+ RPS

2. **Безопасность**
   - Пароли хешируются с bcrypt (cost 12)
   - JWT secret минимум 32 символа
   - Токены подписываются алгоритмом HS256
   - Защита от SQL injection через prepared statements

3. **Надежность**
   - Graceful shutdown при SIGINT/SIGTERM
   - Health check endpoint
   - Структурированное логирование

4. **Масштабируемость**
   - Stateless архитектура
   - Горизонтальное масштабирование
   - Connection pooling для БД

## Архитектура

### Компоненты

```
┌─────────────────────────────────────────┐
│         Auth Service (gRPC)             │
│              :50051                     │
├─────────────────────────────────────────┤
│  API Layer (gRPC Handlers)              │
│  - Register                             │
│  - Login                                │
│  - ValidateToken                        │
│  - RefreshToken                         │
├─────────────────────────────────────────┤
│  Service Layer (Business Logic)         │
│  - Password hashing (bcrypt)            │
│  - JWT generation & validation          │
│  - User validation                      │
├─────────────────────────────────────────┤
│  Repository Layer (Data Access)         │
│  - User CRUD operations                 │
│  - pgx connection pool                  │
├─────────────────────────────────────────┤
│  PostgreSQL (schema: auth)              │
│  - users table                          │
└─────────────────────────────────────────┘
```

### Слои

**1. API Layer** (`internal/api/auth/v1/`)
- Обработка gRPC запросов
- Валидация входных данных
- Конвертация proto ↔ domain models
- Обработка ошибок

**2. Service Layer** (`internal/service/auth/`)
- Бизнес-логика аутентификации
- Хеширование паролей (bcrypt)
- Генерация и валидация JWT
- Проверка учетных данных

**3. Repository Layer** (`internal/repository/auth/`)
- Работа с БД через pgx
- CRUD операции для users
- Prepared statements для безопасности

**4. Model Layer** (`internal/model/`)
- Доменные модели (User, TokenPair)
- Бизнес-правила
- Ошибки домена

## База данных

### Схема: `auth`

**Таблица: users**

| Поле | Тип | Описание | Constraints |
|------|-----|----------|-------------|
| id | UUID | Уникальный идентификатор | PRIMARY KEY |
| email | VARCHAR(255) | Email пользователя | UNIQUE, NOT NULL |
| username | VARCHAR(100) | Имя пользователя | NOT NULL |
| password_hash | TEXT | Хеш пароля (bcrypt) | NOT NULL |
| role | VARCHAR(50) | Роль пользователя | NOT NULL, DEFAULT 'student' |
| created_at | TIMESTAMP | Дата создания | NOT NULL, DEFAULT NOW() |

**Индексы:**
- `idx_users_email` - на поле email (для быстрого поиска при логине)
- `idx_users_created_at` - на поле created_at (для аналитики)

**Роли:**
- `student` - обычный пользователь (по умолчанию)
- `instructor` - преподаватель
- `admin` - администратор

### Миграции

**001_create_users_table.sql**
```sql
CREATE TABLE IF NOT EXISTS users (
    id            UUID PRIMARY KEY,
    email         VARCHAR(255) UNIQUE NOT NULL,
    username      VARCHAR(100) NOT NULL,
    password_hash TEXT NOT NULL,
    role          VARCHAR(50) NOT NULL DEFAULT 'student',
    created_at    TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_users_email ON users(email);
CREATE INDEX IF NOT EXISTS idx_users_created_at ON users(created_at);
```

## API Спецификация

### gRPC Service

```protobuf
service AuthService {
  rpc Register(RegisterRequest) returns (RegisterResponse);
  rpc Login(LoginRequest) returns (LoginResponse);
  rpc ValidateToken(ValidateTokenRequest) returns (ValidateTokenResponse);
  rpc RefreshToken(RefreshTokenRequest) returns (RefreshTokenResponse);
}
```

### Register

**Request:**
```protobuf
message RegisterRequest {
  string email = 1;     // Обязательно, формат email
  string password = 2;  // Обязательно, минимум 8 символов
  string username = 3;  // Обязательно, минимум 3 символа
}
```

**Response:**
```protobuf
message RegisterResponse {
  string user_id = 1;   // UUID созданного пользователя
}
```

**Бизнес-логика:**
1. Валидация входных данных
2. Проверка уникальности email
3. Хеширование пароля (bcrypt, cost 12)
4. Генерация UUID
5. Сохранение в БД
6. Возврат user_id

**Ошибки:**
- `INVALID_ARGUMENT` - невалидные данные
- `ALREADY_EXISTS` - email уже существует
- `INTERNAL` - ошибка БД

### Login

**Request:**
```protobuf
message LoginRequest {
  string email = 1;     // Обязательно
  string password = 2;  // Обязательно
}
```

**Response:**
```protobuf
message LoginResponse {
  string access_token = 1;                    // JWT access token
  string refresh_token = 2;                   // JWT refresh token
  google.protobuf.Timestamp expires_at = 3;   // Время истечения access token
}
```

**Бизнес-логика:**
1. Поиск пользователя по email
2. Проверка пароля (bcrypt.CompareHashAndPassword)
3. Генерация access token (TTL: 15 минут)
4. Генерация refresh token (TTL: 7 дней)
5. Возврат токенов

**Ошибки:**
- `INVALID_ARGUMENT` - невалидные данные
- `UNAUTHENTICATED` - неверный email или пароль
- `INTERNAL` - ошибка БД или генерации токена

### ValidateToken

**Request:**
```protobuf
message ValidateTokenRequest {
  string token = 1;  // JWT access token
}
```

**Response:**
```protobuf
message ValidateTokenResponse {
  bool valid = 1;      // true если токен валиден
  string user_id = 2;  // UUID пользователя
  string role = 3;     // Роль пользователя
}
```

**Бизнес-логика:**
1. Парсинг JWT токена
2. Проверка подписи
3. Проверка срока действия
4. Извлечение claims (user_id, role)
5. Возврат результата

**Ошибки:**
- `UNAUTHENTICATED` - невалидный или истекший токен

### RefreshToken

**Request:**
```protobuf
message RefreshTokenRequest {
  string refresh_token = 1;  // JWT refresh token
}
```

**Response:**
```protobuf
message RefreshTokenResponse {
  string access_token = 1;                    // Новый JWT access token
  google.protobuf.Timestamp expires_at = 2;   // Время истечения
}
```

**Бизнес-логика:**
1. Валидация refresh token
2. Извлечение user_id из токена
3. Генерация нового access token
4. Возврат нового токена

**Ошибки:**
- `UNAUTHENTICATED` - невалидный или истекший refresh token

## JWT Структура

### Access Token

**Claims:**
```json
{
  "user_id": "uuid",
  "role": "student",
  "exp": 1713000000,
  "iat": 1712999100
}
```

**TTL:** 15 минут

### Refresh Token

**Claims:**
```json
{
  "user_id": "uuid",
  "exp": 1713604800,
  "iat": 1713000000
}
```

**TTL:** 7 дней (168 часов)

### Алгоритм

- **Алгоритм подписи:** HS256 (HMAC with SHA-256)
- **Secret:** минимум 32 символа, хранится в env

## Безопасность

### Хеширование паролей

- **Алгоритм:** bcrypt
- **Cost:** 12 (2^12 = 4096 итераций)
- **Salt:** генерируется автоматически bcrypt

### JWT Security

- **Secret:** минимум 32 символа
- **Алгоритм:** HS256
- **Хранение:** только в env, не в коде
- **Rotation:** рекомендуется менять secret периодически

### SQL Injection Protection

- Использование prepared statements (pgx)
- Параметризованные запросы
- Валидация входных данных

### Rate Limiting

- Планируется на уровне Gateway
- Защита от brute-force атак

## Конфигурация

### Environment Variables

```env
# gRPC Server
GRPC_HOST=0.0.0.0
GRPC_PORT=50051

# Logger
LOGGER_LEVEL=info
LOGGER_AS_JSON=false

# PostgreSQL
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=elearning
POSTGRES_SCHEMA=auth
POSTGRES_USER=auth_user
POSTGRES_PASSWORD=auth_pass

# JWT
JWT_SECRET=your-super-secret-jwt-key-min-32-chars-long-change-in-prod
JWT_ACCESS_TTL=15m
JWT_REFRESH_TTL=168h
```

## Мониторинг и Логирование

### Логирование

**Уровни:**
- `debug` - детальная информация для отладки
- `info` - общая информация о работе сервиса
- `warn` - предупреждения
- `error` - ошибки

**Формат:**
- Text (по умолчанию) - для разработки
- JSON - для production

**Что логируется:**
- Все gRPC запросы
- Ошибки БД
- Ошибки валидации
- Ошибки генерации токенов

### Health Check

- gRPC health service
- Endpoint для проверки состояния
- Используется для Kubernetes liveness/readiness probes

### Metrics (планируется)

- Количество регистраций
- Количество логинов
- Количество валидаций токенов
- Latency операций
- Ошибки по типам

## Развертывание

### Требования

- Go 1.24+
- PostgreSQL 16+
- 512MB RAM минимум
- 1 CPU core минимум

### Docker

```dockerfile
FROM golang:1.24-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o auth-service cmd/main.go

FROM alpine:latest
COPY --from=builder /app/auth-service /auth-service
CMD ["/auth-service"]
```

### Kubernetes

- Deployment с 2+ репликами
- Service для внутреннего доступа
- ConfigMap для конфигурации
- Secret для JWT_SECRET и DB credentials
- HPA для автомасштабирования

## Ограничения и Trade-offs

### Текущие ограничения

1. **Stateless токены** - нельзя отозвать токен до истечения TTL
2. **Нет 2FA** - только email/password аутентификация
3. **Нет rate limiting** - на уровне сервиса
4. **Нет password reset** - функционал не реализован

### Trade-offs

1. **JWT vs Session**
   - Выбрали JWT для stateless архитектуры
   - Минус: нельзя отозвать токен
   - Плюс: не нужно хранить сессии

2. **bcrypt cost 12**
   - Баланс между безопасностью и производительностью
   - ~250ms на хеширование
   - Защита от brute-force

3. **Short access token TTL (15 минут)**
   - Повышенная безопасность
   - Минус: частые refresh запросы
   - Плюс: меньше риск при компрометации

## Будущие улучшения

1. **OAuth 2.0** - интеграция с Google, GitHub
2. **2FA** - двухфакторная аутентификация
3. **Password reset** - восстановление пароля по email
4. **Email verification** - подтверждение email
5. **Token blacklist** - отзыв токенов
6. **Rate limiting** - защита от brute-force
7. **Audit log** - логирование всех действий
8. **Password policy** - требования к сложности пароля

## Тестирование

### Unit Tests

- Service layer логика
- JWT генерация и валидация
- Password hashing

### Integration Tests

- gRPC API endpoints
- Database operations
- End-to-end flows

### Load Tests

- 1000+ RPS
- Latency < 100ms
- Memory usage < 512MB

## Зависимости

- `google.golang.org/grpc` - gRPC фреймворк
- `github.com/jackc/pgx/v5` - PostgreSQL драйвер
- `github.com/golang-jwt/jwt/v5` - JWT библиотека
- `golang.org/x/crypto/bcrypt` - хеширование паролей
- `go.uber.org/zap` - структурированное логирование
- `github.com/google/uuid` - генерация UUID

## Ссылки

- [Документация API](../services/auth-service.md)
- [Proto файлы](../../shared/proto/auth/v1/auth.proto)
- [Исходный код](../../services/auth-service/)
