# 🚀 Запуск E-Learning системы

Полная инструкция по запуску backend + frontend

## Предварительные требования

- PostgreSQL запущен (порт 5432)
- Redis запущен (порт 6379)
- База данных `elearning` создана и заполнена

## Шаг 1: Запуск Backend сервисов

### 1.1 Auth Service (порт 50051)
```bash
cd deploy/compose/auth
export $(cat .env | grep -v '^#' | xargs)
cd ../../..
./bin/auth-service > /tmp/auth-service.log 2>&1 &
```

### 1.2 User Service (порт 50052)
```bash
cd deploy/compose/user
export $(cat .env | grep -v '^#' | xargs)
cd ../../..
./bin/user-service > /tmp/user-service.log 2>&1 &
```

### 1.3 Course Service (порт 50053)
```bash
cd services/course-service
export GRPC_HOST=0.0.0.0
export GRPC_PORT=50053
export POSTGRES_HOST=localhost
export POSTGRES_PORT=5432
export POSTGRES_DB=elearning
export POSTGRES_SCHEMA=courses
export POSTGRES_USER=course_user
export POSTGRES_PASSWORD=course_pass
export LOGGER_LEVEL=info
export LOGGER_AS_JSON=false
../../bin/course-service > /tmp/course-service.log 2>&1 &
```

### 1.4 Gateway (порт 8081)
```bash
cd services/gateway
export HTTP_HOST=0.0.0.0
export HTTP_PORT=8081
export LOGGER_LEVEL=info
export LOGGER_AS_JSON=false
export AUTH_SERVICE_ADDR=localhost:50051
export USER_SERVICE_ADDR=localhost:50052
export COURSE_SERVICE_ADDR=localhost:50053
export JWT_SECRET=your-super-secret-jwt-key-min-32-chars-long-change-in-prod
../../bin/gateway > /tmp/gateway.log 2>&1 &
```

## Шаг 2: Запуск Frontend

```bash
cd ../../eng_next2
npm run dev
```

Frontend будет доступен на http://localhost:3000

## Шаг 3: Проверка работоспособности

```bash
# Health check
curl http://localhost:8081/health

# Courses API
curl http://localhost:8081/api/v1/courses?limit=3

# Tracks API  
curl http://localhost:8081/api/v1/tracks?limit=3

# Lessons API
curl http://localhost:8081/api/v1/lessons/70255aa5-aa45-4423-b6c5-a09a161652ac
```

## Остановка системы

```bash
# Backend
pkill -f auth-service
pkill -f user-service
pkill -f course-service
pkill -f gateway

# Frontend (Ctrl+C в терминале где запущен npm)
```

## Логи

- Auth: `/tmp/auth-service.log`
- User: `/tmp/user-service.log`
- Course: `/tmp/course-service.log`
- Gateway: `/tmp/gateway.log`

## Тестовые пользователи

- Email: `admin@test.com` / `student1@test.com`
- Пароль: `password123`

## Персональные треки

Каждый пользователь с онбордингом имеет персональный трек с кодом `personal-{user_id}`.

Пример запроса трека:
```bash
curl http://localhost:8081/api/v1/tracks/personal-aaaa0001-0000-0000-0000-000000000001?include_lessons=true
```

## Troubleshooting

### Gateway возвращает 404 для lessons
- Убедитесь, что gateway скомпилирован с актуальным кодом
- Перекомпилируйте: `cd services/gateway && go build -o ../../bin/gateway ./cmd`

### Course-service не подключается
- Проверьте, что PostgreSQL запущен
- Проверьте POSTGRES_USER и POSTGRES_PASSWORD

### Frontend не загружается
- Убедитесь, что gateway запущен на порту 8081
- Проверьте `.env.local` в eng_next2

## База данных

### Применить все seeds
```bash
./bin/seed.sh
```

### Регенерировать персональные треки
```bash
python3 scripts/gen_personalized_tracks.py | psql -h localhost -U admin -d elearning
```

### Проверить данные
```sql
-- Пользователи с онбордингом
SELECT COUNT(*) FROM users.profiles WHERE onboarded_at IS NOT NULL;

-- Персональные треки
SELECT COUNT(*) FROM courses.learning_tracks WHERE track_type = 'personal';

-- Назначенные уроки
SELECT COUNT(*) FROM courses.track_lessons tl
JOIN courses.learning_tracks lt ON lt.id = tl.track_id
WHERE lt.track_type = 'personal';
```

---

**Создано:** 2026-06-03  
**Статус:** ✅ Работает
