# User Service - System Design Document

## Обзор

User Service управляет профилями пользователей в E-Learning Platform. Сервис предоставляет функционал для хранения и управления персональной информацией, языковыми настройками и предпочтениями пользователей.

## Требования

### Функциональные требования

1. **Получение профиля (GetProfile)**
   - Получение профиля по user_id
   - Автоматическое создание пустого профиля если не существует (lazy creation)
   - Возврат всех полей профиля

2. **Обновление профиля (UpdateProfile)**
   - Обновление любых полей профиля
   - Поддержка частичного обновления (только измененные поля)
   - Автоматическое обновление updated_at через trigger
   - Валидация формата date_of_birth

3. **Получение языковых настроек (GetUserLanguages)**
   - Получение native_lang и target_lang
   - Быстрый доступ без загрузки всего профиля

### Нефункциональные требования

1. **Производительность**
   - Время ответа < 50ms для GetProfile
   - Время ответа < 100ms для UpdateProfile
   - Поддержка 500+ RPS

2. **Надежность**
   - Graceful shutdown
   - Health check endpoint
   - Автоматическое переподключение к БД

3. **Масштабируемость**
   - Stateless архитектура
   - Горизонтальное масштабирование
   - Connection pooling для БД

4. **Изоляция данных**
   - Отдельная схема БД (users)
   - Отдельный пользователь БД (user_user)
   - Нет прямых связей с другими сервисами

## Архитектура

### Компоненты

```
┌─────────────────────────────────────────┐
│         User Service (gRPC)             │
│              :50052                     │
├─────────────────────────────────────────┤
│  API Layer (gRPC Handlers)              │
│  - GetProfile                           │
│  - UpdateProfile                        │
│  - GetUserLanguages                     │
├─────────────────────────────────────────┤
│  Service Layer (Business Logic)         │
│  - Lazy profile creation                │
│  - Profile validation                   │
│  - Date format validation               │
├─────────────────────────────────────────┤
│  Repository Layer (Data Access)         │
│  - Profile CRUD operations              │
│  - pgx connection pool                  │
├─────────────────────────────────────────┤
│  PostgreSQL (schema: users)             │
│  - profiles table                       │
│  - update_updated_at_column() trigger   │
└─────────────────────────────────────────┘
```

### Слои

**1. API Layer** (`internal/api/user/v1/`)
- Обработка gRPC запросов
- Конвертация proto ↔ domain models
- Обработка ошибок

**2. Service Layer** (`internal/service/user/`)
- Lazy profile creation
- Валидация данных
- Бизнес-логика

**3. Repository Layer** (`internal/repository/user/`)
- Работа с БД через pgx
- CRUD операции для profiles
- Prepared statements

**4. Model Layer** (`internal/model/`)
- Доменные модели (Profile, UpdateProfileData)
- Бизнес-правила
- Ошибки домена

## База данных

### Схема: `users`

**Таблица: profiles**

| Поле | Тип | Описание | Constraints |
|------|-----|----------|-------------|
| id | UUID | Уникальный идентификатор профиля | PRIMARY KEY, DEFAULT gen_random_uuid() |
| user_id | UUID | ID пользователя из Auth Service | UNIQUE, NOT NULL |
| first_name | VARCHAR(100) | Имя | NULL |
| last_name | VARCHAR(100) | Фамилия | NULL |
| native_lang | VARCHAR(10) | Родной язык (ISO 639-1) | NULL |
| target_lang | VARCHAR(10) | Изучаемый язык (ISO 639-1) | NULL |
| bio | TEXT | Биография | NULL |
| avatar_url | TEXT | URL аватара | NULL |
| date_of_birth | DATE | Дата рождения | NULL |
| timezone | VARCHAR(50) | Часовой пояс (IANA) | NULL |
| created_at | TIMESTAMP | Дата создания | NOT NULL, DEFAULT NOW() |
| updated_at | TIMESTAMP | Дата обновления | NOT NULL, DEFAULT NOW() |

**Индексы:**
- `idx_profiles_user_id` - на поле user_id (для быстрого поиска)

**Trigger:**
```sql
CREATE TRIGGER update_profiles_updated_at 
    BEFORE UPDATE ON profiles
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();
```

### Форматы данных

**date_of_birth:**
- Формат: ISO 8601 (YYYY-MM-DD)
- Пример: "1990-01-15"
- Валидация в service layer

**timezone:**
- Формат: IANA Time Zone Database
- Примеры: "Europe/Moscow", "America/New_York", "Asia/Tokyo"

**native_lang / target_lang:**
- Формат: ISO 639-1 (2 символа)
- Примеры: "en", "ru", "es", "fr", "de"

### Миграции

**001_create_profiles_table.sql**
```sql
CREATE TABLE IF NOT EXISTS profiles (
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

CREATE INDEX IF NOT EXISTS idx_profiles_user_id ON profiles(user_id);

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_profiles_updated_at 
    BEFORE UPDATE ON profiles
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();
```

## API Спецификация

### gRPC Service

```protobuf
service UserService {
  rpc GetProfile(GetProfileRequest) returns (GetProfileResponse);
  rpc UpdateProfile(UpdateProfileRequest) returns (UpdateProfileResponse);
  rpc GetUserLanguages(GetUserLanguagesRequest) returns (GetUserLanguagesResponse);
}
```

### GetProfile

**Request:**
```protobuf
message GetProfileRequest {
  string user_id = 1;  // UUID пользователя
}
```

**Response:**
```protobuf
message GetProfileResponse {
  Profile profile = 1;
}

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

**Бизнес-логика (Lazy Creation):**
1. Поиск профиля по user_id
2. Если профиль не найден:
   - Генерация UUID для профиля
   - Создание пустого профиля с user_id
   - Сохранение в БД
   - Возврат созданного профиля
3. Если профиль найден:
   - Возврат существующего профиля

**Ошибки:**
- `INVALID_ARGUMENT` - невалидный user_id
- `INTERNAL` - ошибка БД

### UpdateProfile

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
  google.protobuf.StringValue date_of_birth = 8;  // ISO 8601
  google.protobuf.StringValue timezone = 9;       // IANA
}
```

**Response:**
```protobuf
message UpdateProfileResponse {
  Profile profile = 1;  // Обновленный профиль
}
```

**Бизнес-логика:**
1. Валидация user_id
2. Валидация date_of_birth (если передан)
3. Обновление только переданных полей (partial update)
4. updated_at обновляется автоматически через trigger
5. Возврат обновленного профиля

**Ошибки:**
- `INVALID_ARGUMENT` - невалидные данные
- `NOT_FOUND` - профиль не найден
- `INTERNAL` - ошибка БД

### GetUserLanguages

**Request:**
```protobuf
message GetUserLanguagesRequest {
  string user_id = 1;
}
```

**Response:**
```protobuf
message GetUserLanguagesResponse {
  string native_lang = 1;  // Пустая строка если не установлен
  string target_lang = 2;  // Пустая строка если не установлен
}
```

**Бизнес-логика:**
1. Поиск профиля по user_id
2. Извлечение только native_lang и target_lang
3. Возврат языков (пустые строки если NULL)

**Ошибки:**
- `INVALID_ARGUMENT` - невалидный user_id
- `NOT_FOUND` - профиль не найден
- `INTERNAL` - ошибка БД

## Ключевые особенности

### Lazy Profile Creation

**Проблема:**
- При регистрации в Auth Service профиль не создается
- Нужно гарантировать наличие профиля для каждого пользователя

**Решение:**
- При первом вызове GetProfile автоматически создается пустой профиль
- Пользователь всегда получает профиль (пустой или заполненный)
- Не требуется отдельный endpoint для создания профиля

**Реализация:**
```go
func (s *service) GetProfile(ctx context.Context, userID string) (model.Profile, error) {
    profile, err := s.repository.GetProfile(ctx, userID)
    
    if errors.Is(err, model.ErrProfileNotFound) {
        // Создаем пустой профиль
        newProfile := model.Profile{
            ID:        uuid.New().String(),
            UserID:    userID,
            CreatedAt: time.Now(),
            UpdatedAt: time.Now(),
        }
        
        err = s.repository.CreateProfile(ctx, newProfile)
        if err != nil {
            return model.Profile{}, err
        }
        
        return newProfile, nil
    }
    
    return profile, err
}
```

### Nullable Fields

**Все поля профиля опциональные:**
- Используется `google.protobuf.StringValue` в proto
- Используется `sql.NullString` и `sql.NullTime` в БД
- Позволяет различать "не установлено" и "пустая строка"

**Partial Update:**
- Обновляются только переданные поля
- NULL поля игнорируются
- Используется `COALESCE` в SQL

```sql
UPDATE profiles
SET first_name = COALESCE($2, first_name),
    last_name = COALESCE($3, last_name),
    ...
WHERE user_id = $1
```

### Auto-update Timestamp

**Trigger автоматически обновляет updated_at:**
- Не требуется обновление в коде
- Гарантирует актуальность timestamp
- Работает для любых UPDATE операций

## Изоляция данных

### Принципы микросервисной архитектуры

1. **Отдельная схема БД**
   - Схема: `users`
   - Полная изоляция от других сервисов

2. **Отдельный пользователь БД**
   - Пользователь: `user_user`
   - Права только на схему `users`

3. **Нет прямых связей**
   - Нет foreign key к auth.users
   - Связь только через user_id (UUID)
   - Eventual consistency

4. **Нет прямых запросов**
   - Другие сервисы не читают из users.profiles
   - Доступ только через gRPC API

## Конфигурация

### Environment Variables

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

## Мониторинг и Логирование

### Логирование

**Что логируется:**
- Все gRPC запросы
- Lazy profile creation
- Ошибки БД
- Ошибки валидации

**Формат:**
- Text (разработка)
- JSON (production)

### Health Check

- gRPC health service
- Проверка подключения к БД
- Kubernetes liveness/readiness probes

### Metrics (планируется)

- Количество GetProfile запросов
- Количество lazy creations
- Количество UpdateProfile запросов
- Latency операций
- Ошибки по типам

## Развертывание

### Требования

- Go 1.24+
- PostgreSQL 16+
- 256MB RAM минимум
- 1 CPU core минимум

### Docker

```dockerfile
FROM golang:1.24-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o user-service cmd/main.go

FROM alpine:latest
COPY --from=builder /app/user-service /user-service
CMD ["/user-service"]
```

### Kubernetes

- Deployment с 2+ репликами
- Service для внутреннего доступа
- ConfigMap для конфигурации
- Secret для DB credentials
- HPA для автомасштабирования

## Ограничения и Trade-offs

### Текущие ограничения

1. **Нет валидации языковых кодов** - принимаются любые строки
2. **Нет валидации timezone** - принимаются любые строки
3. **Нет загрузки аватаров** - только URL
4. **Нет истории изменений** - только текущее состояние

### Trade-offs

1. **Lazy Creation vs Explicit Creation**
   - Выбрали lazy для простоты
   - Минус: дополнительный запрос при первом обращении
   - Плюс: не нужно синхронизировать с Auth Service

2. **Nullable Fields**
   - Все поля опциональные
   - Минус: сложнее валидация
   - Плюс: гибкость для пользователя

3. **No Foreign Key**
   - Нет связи с auth.users
   - Минус: возможны orphan profiles
   - Плюс: полная изоляция сервисов

## Будущие улучшения

1. **Avatar Upload** - загрузка и хранение аватаров
2. **Profile Validation** - валидация языковых кодов и timezone
3. **Profile History** - история изменений профиля
4. **Profile Privacy** - настройки приватности
5. **Profile Search** - поиск пользователей по имени
6. **Profile Completion** - процент заполненности профиля
7. **Social Links** - ссылки на соцсети
8. **Achievements** - достижения пользователя

## Тестирование

### Unit Tests

- Service layer логика
- Lazy profile creation
- Date validation

### Integration Tests

- gRPC API endpoints
- Database operations
- Trigger functionality

### Load Tests

- 500+ RPS
- Latency < 50ms для GetProfile
- Memory usage < 256MB

## Зависимости

- `google.golang.org/grpc` - gRPC фреймворк
- `github.com/jackc/pgx/v5` - PostgreSQL драйвер
- `github.com/google/uuid` - генерация UUID
- `go.uber.org/zap` - структурированное логирование
- `google.golang.org/protobuf` - protobuf библиотека

## Ссылки

- [Документация API](../services/user-service.md)
- [Proto файлы](../../shared/proto/user/v1/user.proto)
- [Исходный код](../../services/user-service/)
- [Отчет о реализации](../USER_SERVICE_IMPLEMENTATION.md)
