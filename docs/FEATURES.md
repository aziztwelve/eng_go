# Реализованные функции

## 1. Database Seeding System

Полная система для заполнения базы данных тестовыми данными.

### Быстрый старт

```bash
# Заполнить все сервисы тестовыми данными
task seed

# Или отдельно по сервисам
task seed-auth      # Пользователи
task seed-user      # Профили
task seed-course    # Курсы, модули, уроки, шаги
```

### Тестовые пользователи

Все пользователи имеют пароль: `password123`

**Администратор:**
- admin@test.com

**Инструкторы:**
- instructor1@test.com (John Smith - English)
- instructor2@test.com (Maria Garcia - Spanish)
- instructor3@test.com (Hans Mueller - German)

**Студенты:**
- student1@test.com (Alice Johnson)
- student2@test.com (Bob Williams)
- student3@test.com (Charlie Brown)
- student4@test.com (Diana Prince)
- student5@test.com (Eva Martinez)

### Тестовые данные

- **Пользователи:** 9 (1 admin, 3 инструктора, 5 студентов)
- **Курсы:** 7 (English: 3, Spanish: 2, German: 2)
- **Модули:** 17
- **Уроки:** 30
- **Шаги:** 33
- **Записи на курсы:** 9

### Документация

Подробная документация: [docs/SEEDING.md](./SEEDING.md)

---

## 2. Эндпоинт GET /api/v1/auth/me

Получение полной информации о текущем аутентифицированном пользователе.

### Использование

```bash
# 1. Получить токен
TOKEN=$(curl -s -X POST "http://localhost:8081/api/v1/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email": "student1@test.com", "password": "password123"}' \
  | jq -r '.access_token')

# 2. Получить информацию о пользователе
curl -X GET "http://localhost:8081/api/v1/auth/me" \
  -H "Authorization: Bearer $TOKEN"
```

### Пример ответа

```json
{
  "id": "cd82592b-2a38-4530-ae66-a54b81e21e72",
  "email": "student1@test.com",
  "username": "Alice Johnson",
  "role": "student",
  "created_at": "2026-04-15T10:34:50Z",
  "profile": {
    "first_name": "Alice",
    "last_name": "Johnson",
    "avatar_url": "https://i.pravatar.cc/150?img=20",
    "bio": "Language enthusiast learning Spanish and French",
    "native_lang": "en",
    "target_lang": "es"
  }
}
```

### Возвращаемые поля

**Базовые данные (из auth-service):**
- `id` - UUID пользователя
- `email` - Email
- `username` - Имя пользователя
- `role` - Роль: "student", "instructor", "admin"
- `created_at` - Дата создания аккаунта

**Профиль (из user-service):**
- `profile.first_name` - Имя
- `profile.last_name` - Фамилия
- `profile.avatar_url` - URL аватара
- `profile.bio` - Биография
- `profile.native_lang` - Родной язык
- `profile.target_lang` - Изучаемый язык
- `profile.date_of_birth` - Дата рождения
- `profile.timezone` - Часовой пояс

### Архитектура

Gateway агрегирует данные из двух микросервисов:
1. **auth-service** → `GetUserInfo()` - базовая информация
2. **user-service** → `GetProfile()` - профиль пользователя

### Документация

Полная документация API: [docs/API_AUTH_ME.md](./API_AUTH_ME.md)

---

## Тестирование

### Автоматические тесты

```bash
# Тест эндпоинта /auth/me
./bin/test_auth_me.sh

# Тест database seeding
./bin/seed.sh
```

### Ручное тестирование

```bash
# Проверка здоровья сервисов
curl http://localhost:8081/health

# Список курсов
curl "http://localhost:8081/api/v1/courses?page=1&limit=10"

# Регистрация
curl -X POST "http://localhost:8081/api/v1/auth/register" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "password123",
    "username": "testuser"
  }'

# Логин
curl -X POST "http://localhost:8081/api/v1/auth/login" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "password123"
  }'
```

---

## Реализованные компоненты

### Database Seeding

**Файлы:**
- `services/auth-service/seeds/001_users.sql`
- `services/user-service/seeds/001_profiles.sql`
- `services/course-service/seeds/*.sql` (5 файлов)
- `bin/seed.sh` - скрипт автоматизации
- `docs/SEEDING.md` - документация

**Команды в Taskfile:**
- `task seed` - заполнить все сервисы
- `task seed-auth` - только auth-service
- `task seed-user` - только user-service
- `task seed-course` - только course-service

### Эндпоинт /auth/me

**Proto файлы:**
- `shared/proto/auth/v1/auth.proto` - добавлен RPC метод `GetUserInfo`

**Auth Service:**
- `internal/service/service.go` - интерфейс `GetUserByID`
- `internal/service/auth/get_user.go` - реализация
- `internal/api/auth/v1/get_user_info.go` - gRPC handler

**Gateway:**
- `internal/dto/auth.go` - `MeResponse`, `ProfileData`
- `internal/client/auth.go` - метод `GetUserInfo`
- `internal/handler/auth.go` - handler `GetMe`
- `internal/app/app.go` - роут `GET /auth/me`

**Документация:**
- `docs/API_AUTH_ME.md` - полная документация API
- `bin/test_auth_me.sh` - тестовый скрипт

---

## Запуск сервисов

```bash
# Запустить все сервисы
task run-auth      # Auth Service (port 50051)
task run-user      # User Service (port 50052)
task run-course    # Course Service (port 50053)
task run-gateway   # API Gateway (port 8081)
```

---

## Полезные ссылки

- [Database Seeding Documentation](./SEEDING.md)
- [API /auth/me Documentation](./API_AUTH_ME.md)
- [Main README](../README.md)
