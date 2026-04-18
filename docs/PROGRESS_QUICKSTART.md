# Progress Tracking - Инструкция по запуску

## Быстрый старт

### 1. Применить миграцию БД

```bash
cd /home/aziz/Documents/startup/eng/microservices-course/elearning/services/course-service

# Проверить текущую версию
migrate -path migrations -database "postgresql://user:password@localhost:5432/courses?sslmode=disable&search_path=courses" version

# Применить миграцию
migrate -path migrations -database "postgresql://user:password@localhost:5432/courses?sslmode=disable&search_path=courses" up
```

### 2. Запустить сервисы

```bash
# Terminal 1 - Course Service
cd /home/aziz/Documents/startup/eng/microservices-course/elearning/services/course-service
./main

# Terminal 2 - Gateway
cd /home/aziz/Documents/startup/eng/microservices-course/elearning/services/gateway
./main
```

### 3. Тестирование endpoints

#### Получить токен (если нужен)
```bash
# Регистрация
curl -X POST http://localhost:8081/api/v1/auth/register \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "password123",
    "full_name": "Test User"
  }'

# Логин
curl -X POST http://localhost:8081/api/v1/auth/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "password123"
  }'

# Сохраните access_token из ответа
export TOKEN="your_access_token_here"
```

#### Тест 1: Отметить видео-шаг как завершенный
```bash
curl -X POST http://localhost:8081/api/v1/progress/steps/{step_id}/complete \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "time_spent_seconds": 300
  }'
```

#### Тест 2: Отметить квиз как завершенный
```bash
curl -X POST http://localhost:8081/api/v1/progress/steps/{step_id}/complete \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "time_spent_seconds": 120,
    "attempts": 1,
    "score": 85.5
  }'
```

#### Тест 3: Получить прогресс по шагу
```bash
curl http://localhost:8081/api/v1/progress/steps/{step_id} \
  -H "Authorization: Bearer $TOKEN"
```

#### Тест 4: Получить прогресс по уроку
```bash
curl http://localhost:8081/api/v1/progress/lessons/{lesson_id} \
  -H "Authorization: Bearer $TOKEN"
```

#### Тест 5: Получить прогресс по курсу
```bash
curl http://localhost:8081/api/v1/progress/courses/{course_id} \
  -H "Authorization: Bearer $TOKEN"
```

## Проверка Kafka событий

```bash
# Подключиться к Kafka контейнеру
docker exec -it kafka bash

# Читать события из топика progress.updated
kafka-console-consumer --bootstrap-server localhost:9092 \
  --topic progress.updated \
  --from-beginning
```

## Проверка БД

```bash
# Подключиться к PostgreSQL
psql -h localhost -U user -d courses

# Проверить таблицы
\dt courses.step_progress
\dt courses.lesson_progress

# Посмотреть данные
SELECT * FROM courses.step_progress;
SELECT * FROM courses.lesson_progress;

# Проверить прогресс конкретного пользователя
SELECT 
  sp.step_id,
  sp.completed,
  sp.score,
  sp.completed_at
FROM courses.step_progress sp
WHERE sp.user_id = 'your-user-id';
```

## Откат миграции (если нужно)

```bash
cd /home/aziz/Documents/startup/eng/microservices-course/elearning/services/course-service

# Откатить последнюю миграцию
migrate -path migrations -database "postgresql://user:password@localhost:5432/courses?sslmode=disable&search_path=courses" down 1
```

## Troubleshooting

### Ошибка: "table does not exist"
- Убедитесь что миграция применена: `migrate version`
- Проверьте что используется правильная схема БД (courses)

### Ошибка: "no access to course"
- Убедитесь что пользователь записан на курс через `POST /api/v1/courses/:id/enroll`

### Ошибка: "step not found"
- Проверьте что step_id существует в БД
- Используйте `GET /api/v1/lessons/:lesson_id` чтобы получить список шагов

### Kafka события не публикуются
- Проверьте что Kafka запущен
- Проверьте логи course-service на наличие ошибок Kafka
- События публикуются асинхронно, ошибки не блокируют основной flow

## Полезные команды

```bash
# Пересобрать course-service
cd services/course-service
go build -o main cmd/main.go

# Пересобрать gateway
cd services/gateway
go build -o main cmd/main.go

# Проверить логи
tail -f services/course-service/logs/app.log
tail -f services/gateway/logs/app.log

# Проверить что сервисы запущены
curl http://localhost:8081/health
curl http://localhost:50053/health  # если есть health endpoint
```

## Следующие шаги

1. Интегрировать с фронтендом
2. Добавить endpoint для проверки квизов (`SubmitQuizAnswers`)
3. Настроить мониторинг и алерты
4. Добавить unit и integration тесты
5. Настроить CI/CD для автоматического деплоя
