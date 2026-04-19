# 06. Комментарии и обсуждения (Comments & Discussions)

## Описание

Система комментариев к урокам для взаимодействия студентов и инструкторов.

## Цели

- Увеличить вовлеченность студентов
- Помочь студентам решать проблемы
- Собирать обратную связь
- Создать сообщество

## Требования

### Функциональные

1. **Комментарии к урокам**
   - Добавление комментариев
   - Ответы на комментарии (threading)
   - Редактирование и удаление
   - Лайки

2. **Модерация**
   - Инструктор может закреплять комментарии
   - Инструктор может отмечать как "решено"
   - Удаление спама
   - Блокировка пользователей

3. **Уведомления**
   - Ответ на ваш комментарий
   - Упоминание (@username)
   - Новый комментарий от инструктора

## База данных

```sql
-- Комментарии
CREATE TABLE lesson_comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    parent_id UUID REFERENCES lesson_comments(id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    is_pinned BOOLEAN DEFAULT FALSE,
    is_resolved BOOLEAN DEFAULT FALSE,
    like_count INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMP
);

-- Лайки
CREATE TABLE comment_likes (
    comment_id UUID NOT NULL REFERENCES lesson_comments(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (comment_id, user_id)
);

CREATE INDEX idx_lesson_comments_lesson ON lesson_comments(lesson_id);
CREATE INDEX idx_lesson_comments_user ON lesson_comments(user_id);
CREATE INDEX idx_lesson_comments_parent ON lesson_comments(parent_id);
```

## API спецификация

```
POST   /api/v1/lessons/:lessonId/comments
GET    /api/v1/lessons/:lessonId/comments
PUT    /api/v1/comments/:id
DELETE /api/v1/comments/:id
POST   /api/v1/comments/:id/like
DELETE /api/v1/comments/:id/like
POST   /api/v1/comments/:id/pin (instructor only)
POST   /api/v1/comments/:id/resolve (instructor only)
```

## План реализации

1. **Backend** (3 дня)
2. **Frontend** (3 дня)
3. **Уведомления** (2 дня)
4. **Тестирование** (1 день)

**Оценка: 9 дней**

## Зависимости

- ✅ Аутентификация
- ✅ Курсы (lessons)
- 🔄 Уведомления

## Метрики

- Количество комментариев на урок
- Процент уроков с комментариями
- Среднее время ответа инструктора
