# 09. Аналитика для инструкторов (Instructor Analytics)

## Описание

Дашборд с аналитикой для инструкторов по их курсам.

## Цели

- Показать эффективность курсов
- Помочь улучшить контент
- Мотивировать создавать больше курсов
- Отслеживать доход

## Требования

### Функциональные

1. **Обзор**
   - Общее количество студентов
   - Общий доход
   - Средний рейтинг курсов
   - Количество отзывов

2. **По курсам**
   - Количество студентов на курсе
   - Процент завершения
   - Средний рейтинг
   - Доход от курса
   - Популярные уроки
   - Проблемные места (где студенты застревают)

3. **Студенты**
   - Новые записи (по дням/неделям/месяцам)
   - География студентов
   - Источники трафика

4. **Доход**
   - График дохода
   - Разбивка по курсам
   - Прогноз дохода

5. **Вовлеченность**
   - Активные студенты
   - Среднее время обучения
   - Комментарии и вопросы

## База данных

```sql
-- Аналитика создается из существующих таблиц:
-- - course_enrollments (записи)
-- - course_progress (прогресс)
-- - course_reviews (отзывы)
-- - payments (доход)
-- - lesson_comments (вовлеченность)

-- Агрегированная статистика (для быстрого доступа)
CREATE TABLE instructor_stats (
    instructor_id UUID PRIMARY KEY REFERENCES users(id),
    total_students INT DEFAULT 0,
    total_revenue DECIMAL(10,2) DEFAULT 0,
    average_rating DECIMAL(3,2) DEFAULT 0,
    total_reviews INT DEFAULT 0,
    total_courses INT DEFAULT 0,
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Статистика по курсам (обновляется ежедневно)
CREATE TABLE course_stats (
    course_id UUID PRIMARY KEY REFERENCES courses(id),
    date DATE NOT NULL,
    new_enrollments INT DEFAULT 0,
    active_students INT DEFAULT 0,
    completed_students INT DEFAULT 0,
    revenue DECIMAL(10,2) DEFAULT 0,
    average_completion_percentage DECIMAL(5,2) DEFAULT 0,
    UNIQUE(course_id, date)
);
```

## API спецификация

```
# Обзор
GET    /api/v1/instructor/analytics/overview

# По курсу
GET    /api/v1/instructor/analytics/courses/:courseId
GET    /api/v1/instructor/analytics/courses/:courseId/students
GET    /api/v1/instructor/analytics/courses/:courseId/revenue
GET    /api/v1/instructor/analytics/courses/:courseId/engagement

# Доход
GET    /api/v1/instructor/analytics/revenue?from=2026-01-01&to=2026-12-31
```

## Примеры

**Обзор**
```bash
GET /api/v1/instructor/analytics/overview

Response:
{
  "total_students": 5000,
  "total_revenue": 125000.00,
  "average_rating": 4.7,
  "total_reviews": 850,
  "total_courses": 5,
  "monthly_revenue": 15000.00,
  "monthly_students": 320,
  "top_courses": [
    {
      "course_id": "c1",
      "title": "English for Beginners",
      "students": 1250,
      "revenue": 62475.00,
      "rating": 4.8
    }
  ]
}
```

**Аналитика курса**
```bash
GET /api/v1/instructor/analytics/courses/c1

Response:
{
  "course_id": "c1",
  "title": "English for Beginners",
  "students": {
    "total": 1250,
    "active": 450,
    "completed": 380
  },
  "completion_rate": 30.4,
  "average_rating": 4.8,
  "revenue": 62475.00,
  "enrollments_chart": [
    {"date": "2026-04-01", "count": 45},
    {"date": "2026-04-02", "count": 52}
  ],
  "popular_lessons": [
    {
      "lesson_id": "l1",
      "title": "Introduction",
      "views": 1200,
      "completion_rate": 95.5
    }
  ],
  "drop_off_points": [
    {
      "lesson_id": "l5",
      "title": "Grammar Basics",
      "completion_rate": 45.2,
      "comment": "Many students struggle here"
    }
  ]
}
```

## План реализации

1. **Backend - Analytics Service** (4 дня)
   - Агрегация данных
   - Расчет метрик
   - API endpoints

2. **Background jobs** (2 дня)
   - Ежедневное обновление статистики
   - Расчет трендов

3. **Frontend - Dashboard** (4 дня)
   - Страница обзора
   - Графики (Chart.js)
   - Таблицы
   - Фильтры по датам

4. **Тестирование** (1 день)

**Оценка: 11 дней**

## Технологии

- **Charts**: Chart.js или Recharts
- **Export**: CSV/PDF экспорт
- **Cache**: Redis для кэширования

## Зависимости

- ✅ Курсы
- 🔄 Прогресс обучения
- 🔄 Платежи
- 🔄 Отзывы

## Метрики

- Процент инструкторов, использующих аналитику
- Корреляция использования аналитики и качества курсов
- Среднее время на странице аналитики
