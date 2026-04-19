# Quiz Service

Микросервис для управления квизами и тестами.

## Возможности

- Создание квизов с разными типами вопросов
- Прохождение квизов студентами
- Автоматическая проверка ответов
- История попыток
- Статистика по квизам

## Типы вопросов

- **Multiple Choice** - один правильный ответ
- **Multiple Select** - несколько правильных ответов
- **True/False** - правда или ложь
- **Text Input** - короткий текстовый ответ
- **Matching** - сопоставление (будущая фича)

## Структура

```
quiz-service/
├── cmd/main/           # Точка входа
├── internal/
│   ├── api/           # gRPC API handlers
│   ├── config/        # Конфигурация
│   ├── model/         # Модели данных
│   ├── repository/    # Работа с БД
│   └── service/       # Бизнес-логика
├── migrations/        # Миграции БД
├── seeds/            # Тестовые данные
└── pkg/              # Общие утилиты
```

## Запуск

```bash
# Установить зависимости
go mod download

# Применить миграции
psql -h localhost -U admin -d elearning -f migrations/*.sql

# Загрузить seed данные
psql -h localhost -U admin -d elearning -f seeds/001_quizzes.sql

# Запустить сервис
go run cmd/main/main.go
```

## Переменные окружения

См. `.env` файл

## API

gRPC API на порту 50055

### Методы

- `CreateQuiz` - создать квиз
- `GetQuiz` - получить квиз
- `ListQuizzes` - список квизов
- `StartQuizAttempt` - начать попытку
- `SubmitAnswer` - отправить ответ
- `CompleteQuizAttempt` - завершить попытку

## Разработка

```bash
# Запустить тесты
go test ./...

# Сборка
go build -o bin/quiz-service cmd/main/main.go
```
