# User Service

## Описание

User Service управляет профилями пользователей, включая персональную информацию, языковые настройки и предпочтения.

## Технологии

- **Язык**: Go 1.24
- **База данных**: PostgreSQL (схема `users`)
- **Протокол**: gRPC
- **Порт**: 50052

## Особенности

- **Lazy Profile Creation**: профиль создается автоматически при первом обращении
- **Nullable Fields**: все поля профиля опциональные (кроме id, user_id, timestamps)
- **Auto-update**: поле `updated_at` обновляется автоматически через trigger

## API (gRPC)

### GetProfile
Получить профиль пользователя. Если профиль не существует, создается пустой.

**Request:**
```protobuf
message GetProfileRequest {
  string user_id = 1;
}
```

**Response:**
```protobuf
message GetProfileResponse {
  Profile profile = 1;
}
```

### UpdateProfile
Обновить профиль пользователя.

**Request:**
```protobuf
message UpdateProfileRequest {
  string user_id = 1;
  google.protobuf.StringValue first_name = 2;
  google.protobuf.StringValue last_name = 3;
  google.protobuf.StringValue native_lang = 4;
  google.protobuf.StringValue target_lang = 5;
  google.protobuf.StringValue bio = 6;
  google.protobuf.StringValue avatar_url = 7;
  google.protobuf.StringValue date_of_birth = 8;  // ISO 8601: "1990-01-15"
  google.protobuf.StringValue timezone = 9;       // IANA: "Europe/Moscow"
}
```

**Response:**
```protobuf
message UpdateProfileResponse {
  Profile profile = 1;
}
```

### GetUserLanguages
Получить языковые настройки пользователя.

**Request:**
```protobuf
message GetUserLanguagesRequest {
  string user_id = 1;
}
```

**Response:**
```protobuf
message GetUserLanguagesResponse {
  string native_lang = 1;
  string target_lang = 2;
}
```

## Profile Model

```protobuf
message Profile {
  string id = 1;
  string user_id = 2;
  google.protobuf.StringValue first_name = 3;
  google.protobuf.StringValue last_name = 4;
  google.protobuf.StringValue native_lang = 5;
  google.protobuf.StringValue target_lang = 6;
  google.protobuf.StringValue bio = 7;
  google.protobuf.StringValue avatar_url = 8;
  google.protobuf.StringValue date_of_birth = 9;
  google.protobuf.StringValue timezone = 10;
  google.protobuf.Timestamp created_at = 11;
  google.protobuf.Timestamp updated_at = 12;
}
```

## База данных

### Схема: `users`

**Таблица: profiles**
```sql
CREATE TABLE profiles (
    id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id       UUID UNIQUE NOT NULL,
    first_name    VARCHAR(100),
    last_name     VARCHAR(100),
    native_lang   VARCHAR(10),
    target_lang   VARCHAR(10),
    bio           TEXT,
    avatar_url    TEXT,
    date_of_birth DATE,
    timezone      VARCHAR(50),
    created_at    TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at    TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_profiles_user_id ON profiles(user_id);

-- Trigger для автоматического обновления updated_at
CREATE TRIGGER update_profiles_updated_at 
    BEFORE UPDATE ON profiles
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();
```

**Пользователь БД**: `user_user` / `user_pass`

## Конфигурация

**Файл**: `deploy/compose/user/.env`

```env
# gRPC Server
GRPC_HOST=0.0.0.0
GRPC_PORT=50052

# Logger
LOGGER_LEVEL=info
LOGGER_AS_JSON=false

# PostgreSQL
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=elearning
POSTGRES_SCHEMA=users
POSTGRES_USER=user_user
POSTGRES_PASSWORD=user_pass
```

## Запуск

### Локально

```bash
cd elearning
task run-user
```

### Напрямую

```bash
cd elearning/services/user-service
go run cmd/main.go
```

## Тестирование

### Через grpcurl

```bash
# Получить профиль (создаст пустой если не существует)
./bin/grpcurl -plaintext -d '{
  "user_id": "YOUR_USER_UUID"
}' localhost:50052 user.v1.UserService/GetProfile

# Обновить профиль
./bin/grpcurl -plaintext -d '{
  "user_id": "YOUR_USER_UUID",
  "first_name": {"value": "John"},
  "last_name": {"value": "Doe"},
  "native_lang": {"value": "en"},
  "target_lang": {"value": "ru"},
  "bio": {"value": "Software developer"},
  "timezone": {"value": "Europe/Moscow"},
  "date_of_birth": {"value": "1990-01-15"}
}' localhost:50052 user.v1.UserService/UpdateProfile

# Получить языковые настройки
./bin/grpcurl -plaintext -d '{
  "user_id": "YOUR_USER_UUID"
}' localhost:50052 user.v1.UserService/GetUserLanguages
```

### Через Gateway (HTTP)

```bash
# Получить свой профиль (требуется токен)
curl http://localhost:8081/api/v1/profile \
  -H "Authorization: Bearer YOUR_TOKEN"

# Обновить свой профиль
curl -X PUT http://localhost:8081/api/v1/profile \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "first_name": "John",
    "last_name": "Doe",
    "native_lang": "en",
    "target_lang": "ru",
    "bio": "Software developer",
    "timezone": "Europe/Moscow",
    "date_of_birth": "1990-01-15"
  }'

# Получить языковые настройки
curl http://localhost:8081/api/v1/profile/languages \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Архитектура

```
services/user-service/
├── cmd/
│   └── main.go                    # Entry point
├── internal/
│   ├── api/user/v1/              # gRPC handlers
│   │   ├── api.go
│   │   ├── get_profile.go
│   │   ├── update_profile.go
│   │   └── get_user_languages.go
│   ├── app/                       # Application setup
│   │   ├── app.go
│   │   └── di.go
│   ├── config/                    # Configuration
│   │   ├── config.go
│   │   ├── interfaces.go
│   │   └── env/
│   ├── converter/                 # Proto ↔ Domain converters
│   │   └── user.go
│   ├── model/                     # Domain models
│   │   ├── profile.go
│   │   └── errors.go
│   ├── repository/                # Data access layer
│   │   ├── repository.go
│   │   ├── user/
│   │   ├── converter/
│   │   └── model/
│   └── service/                   # Business logic
│       ├── service.go
│       └── user/
├── migrations/
│   └── 001_create_profiles_table.sql
├── go.mod
└── go.sum
```

## Бизнес-логика

### Lazy Profile Creation

При первом вызове `GetProfile` для пользователя:
1. Проверяется наличие профиля в БД
2. Если профиль не найден, создается пустой профиль с `user_id`
3. Возвращается созданный профиль

Это гарантирует, что у каждого пользователя всегда есть профиль.

### Обновление профиля

- Все поля опциональные
- Передаются только изменяемые поля
- `updated_at` обновляется автоматически через trigger
- Валидация формата `date_of_birth` (ISO 8601: YYYY-MM-DD)

## Форматы данных

### date_of_birth
ISO 8601 формат: `YYYY-MM-DD`
- Пример: `"1990-01-15"`

### timezone
IANA Time Zone Database формат
- Примеры: `"Europe/Moscow"`, `"America/New_York"`, `"Asia/Tokyo"`

### native_lang / target_lang
ISO 639-1 коды языков (2 символа)
- Примеры: `"en"`, `"ru"`, `"es"`, `"fr"`

## Зависимости

- `github.com/elearning/platform` - общие утилиты
- `github.com/elearning/shared` - proto файлы
- `github.com/jackc/pgx/v5` - PostgreSQL драйвер
- `github.com/google/uuid` - генерация UUID
- `google.golang.org/grpc` - gRPC фреймворк

## Миграции

### Применение миграции

```bash
PGPASSWORD=user_pass psql -h localhost -p 5432 -U user_user -d elearning \
  -c "SET search_path TO users;" \
  -f services/user-service/migrations/001_create_profiles_table.sql
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

## Изоляция данных

User Service полностью изолирован от других сервисов:
- Отдельная схема БД (`users`)
- Отдельный пользователь БД (`user_user`)
- Нет прямых связей с таблицами других сервисов
- Связь с Auth Service только через `user_id` (UUID)
