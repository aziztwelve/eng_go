# Database Seeding для E-Learning Platform

Этот документ описывает систему заполнения базы данных тестовыми данными (seeding).

## Структура

```
services/
├── auth-service/seeds/
│   └── 001_users.sql
├── user-service/seeds/
│   └── 001_profiles.sql
└── course-service/seeds/
    ├── 001_courses.sql
    ├── 002_modules.sql
    ├── 003_lessons.sql
    ├── 004_steps.sql
    └── 005_enrollments.sql
```

## Использование

### Через Taskfile (рекомендуется)

```bash
# Заполнить все сервисы
task seed

# Заполнить конкретный сервис
task seed-auth
task seed-user
task seed-course
```

### Напрямую через скрипт

```bash
# Заполнить все сервисы
./bin/seed.sh

# Заполнить конкретный сервис
./bin/seed.sh auth
./bin/seed.sh user
./bin/seed.sh course
```

## Переменные окружения

Скрипт использует следующие переменные для подключения к БД:

```bash
DB_HOST=localhost      # По умолчанию
DB_PORT=5432          # По умолчанию
DB_NAME=elearning     # По умолчанию
DB_USER=postgres      # По умолчанию
DB_PASSWORD=postgres  # По умолчанию
```

Пример с кастомными параметрами:

```bash
DB_HOST=localhost DB_USER=admin DB_PASSWORD=change_me_in_production ./bin/seed.sh
```

## Тестовые данные

### Auth Service (9 пользователей)

**Администраторы (1):**
- admin@test.com

**Инструкторы (3):**
- instructor1@test.com - John Smith (English)
- instructor2@test.com - Maria Garcia (Spanish)
- instructor3@test.com - Hans Mueller (German)

**Студенты (5):**
- student1@test.com - Alice Johnson
- student2@test.com - Bob Williams
- student3@test.com - Charlie Brown
- student4@test.com - Diana Prince
- student5@test.com - Eva Martinez

**Пароль для всех:** `password123`

### User Service

Профили для всех 9 пользователей с биографией, аватарами и предпочитаемыми языками.

### Course Service

**Курсы (7):**
- 3 курса английского (A1, B2, C1)
- 2 курса испанского (A1, B1)
- 2 курса немецкого (A1, C1)

**Модули:** 17 модулей распределены по курсам

**Уроки:** 30 уроков с различными темами

**Шаги:** 33 шага разных типов (text, video, quiz)

**Enrollments:** 9 записей студентов на курсы

## Особенности реализации

1. **Идемпотентность:** Все INSERT используют `ON CONFLICT DO NOTHING`, можно запускать многократно
2. **Фиксированные UUID:** Для связей между сервисами используются предсказуемые UUID
3. **Реалистичные данные:** Курсы, уроки и пользователи имеют осмысленный контент
4. **Bcrypt пароли:** Все пароли захешированы с использованием bcrypt

## Best Practices для Go

В отличие от Laravel Seeder, в Go нет встроенного механизма. Популярные подходы:

### 1. SQL файлы (используется в этом проекте)
✅ Простота и прозрачность
✅ Легко версионировать
✅ Быстрое выполнение
✅ Не требует компиляции

### 2. Go программа (альтернатива)
```go
// cmd/seed/main.go
package main

func main() {
    db := connectDB()
    seedUsers(db)
    seedCourses(db)
}
```

### 3. Библиотеки
- `testfixtures` - для тестовых фикстур
- `go-fixtures` - YAML/JSON фикстуры
- `gofakeit` - генерация фейковых данных

## Порядок выполнения

Важно соблюдать порядок из-за внешних ключей:

1. **auth-service** - создает пользователей
2. **user-service** - создает профили (зависит от users)
3. **course-service** - создает курсы и записи (зависит от users)

Скрипт автоматически выполняет в правильном порядке.

## Troubleshooting

**Ошибка подключения к БД:**
```bash
# Проверьте, что PostgreSQL запущен
docker ps | grep postgres

# Проверьте параметры подключения
psql -h localhost -U postgres -d elearning -c "SELECT 1"
```

**Ошибка "relation does not exist":**
```bash
# Сначала примените миграции
task migrate-up-all
```

**Конфликт данных:**
```bash
# Очистите таблицы перед повторным запуском
# Или используйте ON CONFLICT (уже реализовано)
```
