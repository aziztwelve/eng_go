# 07. Рейтинги и отзывы (Ratings & Reviews)

## Описание

Система рейтингов и отзывов для курсов от студентов.

## Цели

- Помочь студентам выбрать курс
- Собрать обратную связь
- Повысить доверие к платформе
- Мотивировать инструкторов улучшать курсы

## Требования

### Функциональные

1. **Рейтинги**
   - Оценка от 1 до 5 звезд
   - Можно оставить только после прохождения 25% курса
   - Один отзыв на курс от пользователя
   - Редактирование отзыва

2. **Отзывы**
   - Текст отзыва (опционально)
   - Плюсы и минусы
   - Рекомендация (да/нет)

3. **Модерация**
   - Проверка на спам
   - Удаление неприемлемых отзывов
   - Ответ инструктора на отзыв

## База данных

```sql
-- Отзывы
CREATE TABLE course_reviews (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    course_id UUID NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
    title VARCHAR(255),
    content TEXT,
    pros TEXT,
    cons TEXT,
    would_recommend BOOLEAN,
    helpful_count INT DEFAULT 0,
    instructor_reply TEXT,
    instructor_replied_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(course_id, user_id)
);

-- Полезность отзыва
CREATE TABLE review_helpful (
    review_id UUID NOT NULL REFERENCES course_reviews(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (review_id, user_id)
);

CREATE INDEX idx_course_reviews_course ON course_reviews(course_id);
CREATE INDEX idx_course_reviews_rating ON course_reviews(rating);
```

## API спецификация

```
POST   /api/v1/courses/:courseId/reviews
GET    /api/v1/courses/:courseId/reviews
PUT    /api/v1/reviews/:id
DELETE /api/v1/reviews/:id
POST   /api/v1/reviews/:id/helpful
POST   /api/v1/reviews/:id/reply (instructor only)
```

## Примеры

**Создать отзыв**
```json
{
  "rating": 5,
  "title": "Excellent course!",
  "content": "I learned so much from this course...",
  "pros": "Clear explanations, good examples",
  "cons": "Could use more practice exercises",
  "would_recommend": true
}
```

**Получить отзывы**
```bash
GET /api/v1/courses/c1/reviews?page=1&limit=10&sort=helpful

Response:
{
  "reviews": [
    {
      "id": "r1",
      "user": {
        "id": "u1",
        "full_name": "John Doe",
        "avatar_url": "https://..."
      },
      "rating": 5,
      "title": "Excellent course!",
      "content": "I learned so much...",
      "helpful_count": 42,
      "created_at": "2026-04-15T10:00:00Z",
      "instructor_reply": "Thank you for your feedback!"
    }
  ],
  "summary": {
    "average_rating": 4.7,
    "total_reviews": 320,
    "rating_distribution": {
      "5": 200,
      "4": 80,
      "3": 30,
      "2": 5,
      "1": 5
    }
  }
}
```

## План реализации

1. **Backend** (3 дня)
2. **Frontend - Страница отзывов** (2 дня)
3. **Frontend - Форма отзыва** (2 дня)
4. **Обновление рейтинга курса** (1 день)
5. **Тестирование** (1 день)

**Оценка: 9 дней**

## Зависимости

- ✅ Аутентификация
- ✅ Курсы
- 🔄 Прогресс обучения (проверка 25%)

## Метрики

- Средний рейтинг курсов
- Процент курсов с отзывами
- Процент студентов, оставляющих отзывы
- Корреляция рейтинга и продаж
