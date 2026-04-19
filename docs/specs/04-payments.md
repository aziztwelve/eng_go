# 04. Платежи и подписки (Payments & Subscriptions)

## Описание

Интеграция платежной системы для монетизации курсов. Поддержка разовых покупок и подписок.

## Цели

- Монетизация платформы
- Безопасные платежи
- Поддержка разных валют
- Автоматическое продление подписок
- Возвраты и отмены

## Требования

### Функциональные

1. **Типы платежей**
   - Разовая покупка курса
   - Месячная подписка (доступ ко всем курсам)
   - Годовая подписка (со скидкой)

2. **Платежные методы**
   - Банковские карты (Visa, Mastercard)
   - PayPal
   - Stripe
   - Локальные методы (по странам)

3. **Управление подписками**
   - Автоматическое продление
   - Отмена подписки
   - Изменение плана
   - История платежей

4. **Возвраты**
   - Возврат в течение 30 дней
   - Автоматическая обработка
   - Частичные возвраты

## База данных

```sql
-- Планы подписок
CREATE TABLE subscription_plans (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    interval VARCHAR(20) NOT NULL, -- month, year
    trial_days INT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Подписки пользователей
CREATE TABLE user_subscriptions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id),
    plan_id UUID NOT NULL REFERENCES subscription_plans(id),
    status VARCHAR(20) NOT NULL, -- active, canceled, expired
    started_at TIMESTAMP NOT NULL,
    expires_at TIMESTAMP NOT NULL,
    canceled_at TIMESTAMP,
    stripe_subscription_id VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Платежи
CREATE TABLE payments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id),
    course_id UUID REFERENCES courses(id),
    subscription_id UUID REFERENCES user_subscriptions(id),
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    status VARCHAR(20) NOT NULL, -- pending, completed, failed, refunded
    payment_method VARCHAR(50),
    stripe_payment_intent_id VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Возвраты
CREATE TABLE refunds (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    payment_id UUID NOT NULL REFERENCES payments(id),
    amount DECIMAL(10,2) NOT NULL,
    reason TEXT,
    status VARCHAR(20) NOT NULL, -- pending, completed, rejected
    stripe_refund_id VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
```

## API спецификация

```
# Планы
GET    /api/v1/subscription-plans

# Покупка курса
POST   /api/v1/payments/courses/:courseId/checkout
POST   /api/v1/payments/courses/:courseId/complete

# Подписки
POST   /api/v1/subscriptions/checkout
POST   /api/v1/subscriptions/cancel
GET    /api/v1/subscriptions/my

# История платежей
GET    /api/v1/payments/history

# Возвраты
POST   /api/v1/refunds/:paymentId
```

## План реализации

1. **Stripe интеграция** (3 дня)
   - Настройка Stripe аккаунта
   - Webhook для событий
   - Checkout Session API

2. **Backend** (4 дня)
   - Payment Service
   - Обработка платежей
   - Управление подписками
   - Webhook handler

3. **Frontend** (3 дня)
   - Страница checkout
   - Управление подпиской
   - История платежей

4. **Тестирование** (2 дня)
   - Тестовые платежи
   - Webhook тесты
   - E2E тесты

**Оценка: 12 дней**

## Технологии

- Stripe API
- Stripe Webhooks
- Stripe Elements (frontend)
- PostgreSQL

## Зависимости

- ✅ Аутентификация
- ✅ Курсы
- 🔄 Каталог курсов

## Метрики

- Конверсия в покупку
- Средний чек
- Процент отмен подписок (churn rate)
- MRR (Monthly Recurring Revenue)
