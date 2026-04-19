# 08. Уведомления (Notifications)

## Описание

Система уведомлений для информирования пользователей о важных событиях.

## Цели

- Увеличить вовлеченность
- Напоминать о незавершенных курсах
- Информировать о новых курсах
- Уведомлять об ответах на комментарии

## Требования

### Функциональные

1. **Типы уведомлений**
   - Email уведомления
   - In-app уведомления (колокольчик)
   - Push уведомления (опционально)

2. **События**
   - Новый курс от инструктора
   - Ответ на комментарий
   - Новый урок добавлен в курс
   - Напоминание о незавершенном курсе
   - Истечение подписки
   - Новый отзыв на ваш курс (для инструкторов)

3. **Настройки**
   - Включить/выключить типы уведомлений
   - Частота email дайджестов
   - Не беспокоить (время)

## База данных

```sql
-- Уведомления
CREATE TABLE notifications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    type VARCHAR(50) NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    link VARCHAR(500),
    is_read BOOLEAN DEFAULT FALSE,
    read_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Настройки уведомлений
CREATE TABLE notification_settings (
    user_id UUID PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
    email_new_course BOOLEAN DEFAULT TRUE,
    email_comment_reply BOOLEAN DEFAULT TRUE,
    email_course_update BOOLEAN DEFAULT TRUE,
    email_subscription_expiry BOOLEAN DEFAULT TRUE,
    email_digest_frequency VARCHAR(20) DEFAULT 'daily', -- daily, weekly, never
    push_enabled BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_notifications_user ON notifications(user_id);
CREATE INDEX idx_notifications_read ON notifications(is_read);
CREATE INDEX idx_notifications_created ON notifications(created_at);
```

## API спецификация

```
# Получить уведомления
GET    /api/v1/notifications?page=1&limit=20&unread_only=true

# Отметить как прочитанное
PUT    /api/v1/notifications/:id/read
PUT    /api/v1/notifications/read-all

# Настройки
GET    /api/v1/notifications/settings
PUT    /api/v1/notifications/settings

# Количество непрочитанных
GET    /api/v1/notifications/unread-count
```

## Примеры

**Получить уведомления**
```bash
GET /api/v1/notifications?page=1&limit=10

Response:
{
  "notifications": [
    {
      "id": "n1",
      "type": "comment_reply",
      "title": "New reply to your comment",
      "content": "John Doe replied to your comment on 'Introduction to English'",
      "link": "/courses/c1/lessons/l1#comment-123",
      "is_read": false,
      "created_at": "2026-04-19T14:00:00Z"
    }
  ],
  "unread_count": 5,
  "pagination": {
    "total": 50,
    "page": 1,
    "limit": 10,
    "total_pages": 5
  }
}
```

**Обновить настройки**
```json
{
  "email_new_course": true,
  "email_comment_reply": true,
  "email_course_update": false,
  "email_digest_frequency": "weekly",
  "push_enabled": false
}
```

## План реализации

1. **Backend - Notification Service** (3 дня)
   - Создание уведомлений
   - Отправка email
   - API endpoints

2. **Email шаблоны** (2 дня)
   - HTML шаблоны
   - Интеграция с SMTP/SendGrid

3. **Frontend - UI** (2 дня)
   - Колокольчик с dropdown
   - Страница всех уведомлений
   - Настройки

4. **Background jobs** (2 дня)
   - Напоминания о незавершенных курсах
   - Email дайджесты

5. **Тестирование** (1 день)

**Оценка: 10 дней**

## Технологии

- **Email**: SendGrid или AWS SES
- **Templates**: HTML + Go templates
- **Queue**: Redis (для отложенных уведомлений)
- **Cron**: для периодических задач

## Зависимости

- ✅ Аутентификация
- 🔄 Комментарии
- 🔄 Курсы
- 🔄 Прогресс обучения

## Метрики

- Open rate email уведомлений
- Click-through rate
- Процент пользователей с включенными уведомлениями
- Конверсия из уведомления в действие
