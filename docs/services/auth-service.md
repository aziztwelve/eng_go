# Auth Service

## Описание

Auth Service отвечает за аутентификацию и авторизацию пользователей в системе. Использует JWT токены для управления сессиями.

## Технологии

- **Язык**: Go 1.24
- **База данных**: PostgreSQL (схема `auth`)
- **Протокол**: gRPC
- **Порт**: 50051
- **Аутентификация**: JWT (access + refresh tokens)
- **Хеширование паролей**: bcrypt (cost 12)

## API (gRPC)

### Register
Регистрация нового пользователя.

**Request:**
```protobuf
message RegisterRequest {
  string email = 1;
  string password = 2;
  string username = 3;
}
```

**Response:**
```protobuf
message RegisterResponse {
  string user_id = 1;
}
```

### Login
Вход пользователя в систему.

**Request:**
```protobuf
message LoginRequest {
  string email = 1;
  string password = 2;
}
```

**Response:**
```protobuf
message LoginResponse {
  string access_token = 1;
  string refresh_token = 2;
  google.protobuf.Timestamp expires_at = 3;
}
```

### ValidateToken
Проверка валидности токена.

**Request:**
```protobuf
message ValidateTokenRequest {
  string token = 1;
}
```

**Response:**
```protobuf
message ValidateTokenResponse {
  bool valid = 1;
  string user_id = 2;
  string role = 3;
}
```

### RefreshToken
Обновление access токена.

**Request:**
```protobuf
message RefreshTokenRequest {
  string refresh_token = 1;
}
```

**Response:**
```protobuf
message RefreshTokenResponse {
  string access_token = 1;
  google.protobuf.Timestamp expires_at = 2;
}
```

## База данных

### Схема: `auth`

**Таблица: users**
```sql
CREATE TABLE users (
    id            UUID PRIMARY KEY,
    email         VARCHAR(255) UNIQUE NOT NULL,
    username      VARCHAR(100) NOT NULL,
    password_hash TEXT NOT NULL,
    role          VARCHAR(50) NOT NULL DEFAULT 'student',
    created_at    TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_created_at ON users(created_at);
```

**Пользователь БД**: `auth_user` / `auth_pass`

## Конфигурация

**Файл**: `deploy/compose/auth/.env`

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

## Запуск

### Локально

```bash
cd elearning
task run-auth
```

### Напрямую

```bash
cd elearning/services/auth-service
go run cmd/main.go
```

## Тестирование

### Через grpcurl

```bash
# Регистрация
./bin/grpcurl -plaintext -d '{
  "email": "test@example.com",
  "password": "password123",
  "username": "testuser"
}' localhost:50051 auth.v1.AuthService/Register

# Вход
./bin/grpcurl -plaintext -d '{
  "email": "test@example.com",
  "password": "password123"
}' localhost:50051 auth.v1.AuthService/Login

# Валидация токена
./bin/grpcurl -plaintext -d '{
  "token": "YOUR_ACCESS_TOKEN"
}' localhost:50051 auth.v1.AuthService/ValidateToken

# Обновление токена
./bin/grpcurl -plaintext -d '{
  "refresh_token": "YOUR_REFRESH_TOKEN"
}' localhost:50051 auth.v1.AuthService/RefreshToken
```

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

# Обновление токена
curl -X POST http://localhost:8081/api/v1/auth/refresh \
  -H "Content-Type: application/json" \
  -d '{"refresh_token":"YOUR_REFRESH_TOKEN"}'
```

## Архитектура

```
services/auth-service/
├── cmd/
│   └── main.go                    # Entry point
├── internal/
│   ├── api/auth/v1/              # gRPC handlers
│   │   ├── api.go
│   │   ├── register.go
│   │   ├── login.go
│   │   ├── validate.go
│   │   └── refresh.go
│   ├── app/                       # Application setup
│   │   ├── app.go
│   │   └── di.go
│   ├── config/                    # Configuration
│   │   ├── config.go
│   │   ├── interfaces.go
│   │   └── env/
│   ├── converter/                 # Proto ↔ Domain converters
│   ├── model/                     # Domain models
│   ├── repository/                # Data access layer
│   │   └── auth/
│   └── service/                   # Business logic
│       └── auth/
├── migrations/
│   └── 001_create_users_table.sql
├── go.mod
└── go.sum
```

## Безопасность

- **Пароли**: хешируются с помощью bcrypt (cost 12)
- **JWT Secret**: минимум 32 символа, должен быть изменен в production
- **Access Token TTL**: 15 минут
- **Refresh Token TTL**: 7 дней (168 часов)
- **Роли**: `student` (по умолчанию), `instructor`, `admin`

## Зависимости

- `github.com/elearning/platform` - общие утилиты
- `github.com/elearning/shared` - proto файлы
- `github.com/jackc/pgx/v5` - PostgreSQL драйвер
- `github.com/golang-jwt/jwt/v5` - JWT библиотека
- `golang.org/x/crypto/bcrypt` - хеширование паролей
- `google.golang.org/grpc` - gRPC фреймворк

## Миграции

### Применение миграции

```bash
PGPASSWORD=auth_pass psql -h localhost -p 5432 -U auth_user -d elearning \
  -c "SET search_path TO auth;" \
  -f services/auth-service/migrations/001_create_users_table.sql
```

## Логирование

Использует структурированное логирование через `zap`:

- **Уровни**: debug, info, warn, error
- **Формат**: text (по умолчанию) или JSON
- **Конфигурация**: через `LOGGER_LEVEL` и `LOGGER_AS_JSON`

## Мониторинг

- **Health Check**: встроенный gRPC health service
- **Reflection**: включен для grpcurl и других инструментов
- **Graceful Shutdown**: корректное завершение при SIGINT/SIGTERM
