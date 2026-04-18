# User Service - Реализация завершена ✅

## Что реализовано

User Service полностью реализован со следующими компонентами:

### 1. Proto API (обновлен)
- Добавлены поля: `first_name`, `last_name`, `date_of_birth`, `timezone`
- 3 gRPC метода: `GetProfile`, `UpdateProfile`, `GetUserLanguages`

### 2. Database
- Схема: `users`
- Таблица: `profiles` с 12 полями
- Trigger для автоматического обновления `updated_at`
- Пользователь БД: `user_user` с правами на схему `users`

### 3. Архитектура (Clean Architecture)
```
services/user-service/
├── cmd/main.go                    # Entry point
├── internal/
│   ├── api/user/v1/              # gRPC handlers
│   ├── app/                       # DI container + app setup
│   ├── config/                    # Configuration layer
│   ├── converter/                 # Proto ↔ Domain converters
│   ├── model/                     # Domain models
│   ├── repository/                # Data access layer
│   └── service/                   # Business logic (lazy profile creation)
└── migrations/
    └── 001_create_profiles_table.sql
```

### 4. Ключевые особенности
- **Lazy Profile Creation**: профиль создается автоматически при первом обращении
- **Изолированная схема БД**: полная изоляция от других сервисов
- **Nullable поля**: все поля профиля опциональные (кроме id, user_id, timestamps)

## Команды для запуска

### Полный запуск системы

```bash
# 1. PostgreSQL (если еще не запущен)
cd elearning
task up-core

# 2. Auth Service (терминал 1)
task run-auth

# 3. User Service (терминал 2)
task run-user

# 4. Gateway (терминал 3)
cd services/gateway && go run cmd/main.go
```

### Тестирование через grpcurl

```bash
# Получить user_id из Auth Service
USER_ID="<UUID из регистрации>"

# GetProfile (создаст пустой профиль если не существует)
./bin/grpcurl -plaintext -d "{\"user_id\":\"$USER_ID\"}" \
  localhost:50052 user.v1.UserService/GetProfile

# UpdateProfile
./bin/grpcurl -plaintext -d '{
  "user_id":"'$USER_ID'",
  "first_name":{"value":"John"},
  "last_name":{"value":"Doe"},
  "native_lang":{"value":"en"},
  "target_lang":{"value":"ru"},
  "bio":{"value":"Software developer"},
  "timezone":{"value":"Europe/Moscow"},
  "date_of_birth":{"value":"1990-01-15"}
}' localhost:50052 user.v1.UserService/UpdateProfile

# GetUserLanguages
./bin/grpcurl -plaintext -d "{\"user_id\":\"$USER_ID\"}" \
  localhost:50052 user.v1.UserService/GetUserLanguages
```

## Следующие шаги

1. ✅ User Service реализован и работает
2. ⏳ Обновить Gateway для добавления HTTP endpoints
3. ⏳ Протестировать через Gateway (HTTP REST API)

## Порты

- Auth Service: `:50051`
- User Service: `:50052`
- Gateway: `:8081`
- PostgreSQL: `:5432`
