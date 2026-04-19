# 05. Промокоды и скидки (Promo Codes & Discounts)

## Описание

Система промокодов и скидок для маркетинговых кампаний и привлечения студентов.

## Цели

- Увеличить продажи через скидки
- Привлечь новых студентов
- Вознаградить лояльных пользователей
- Отслеживать эффективность кампаний

## Требования

### Функциональные

1. **Типы скидок**
   - Процентная скидка (10%, 20%, 50%)
   - Фиксированная сумма ($10, $20)
   - Бесплатный доступ

2. **Ограничения**
   - Срок действия (с/по)
   - Количество использований (общее)
   - Количество использований на пользователя
   - Минимальная сумма покупки
   - Применимо к определенным курсам/категориям

3. **Типы промокодов**
   - Публичные (для всех)
   - Персональные (для конкретного пользователя)
   - Партнерские (для реферальной программы)

## База данных

```sql
-- Промокоды
CREATE TABLE promo_codes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    discount_type VARCHAR(20) NOT NULL, -- percentage, fixed, free
    discount_value DECIMAL(10,2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    valid_from TIMESTAMP NOT NULL,
    valid_until TIMESTAMP NOT NULL,
    max_uses INT, -- NULL = unlimited
    max_uses_per_user INT DEFAULT 1,
    min_purchase_amount DECIMAL(10,2),
    is_active BOOLEAN DEFAULT TRUE,
    created_by UUID REFERENCES users(id),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Применимость к курсам
CREATE TABLE promo_code_courses (
    promo_code_id UUID REFERENCES promo_codes(id) ON DELETE CASCADE,
    course_id UUID REFERENCES courses(id) ON DELETE CASCADE,
    PRIMARY KEY (promo_code_id, course_id)
);

-- История использования
CREATE TABLE promo_code_usage (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    promo_code_id UUID NOT NULL REFERENCES promo_codes(id),
    user_id UUID NOT NULL REFERENCES users(id),
    payment_id UUID REFERENCES payments(id),
    discount_amount DECIMAL(10,2) NOT NULL,
    used_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_promo_codes_code ON promo_codes(code);
CREATE INDEX idx_promo_code_usage_user ON promo_code_usage(user_id);
```

## API спецификация

```
# Проверка промокода
POST   /api/v1/promo-codes/validate
Body: { "code": "SUMMER2026", "course_id": "c1" }

# Применение промокода
POST   /api/v1/payments/checkout
Body: { "course_id": "c1", "promo_code": "SUMMER2026" }

# Admin
POST   /api/v1/admin/promo-codes
GET    /api/v1/admin/promo-codes
PUT    /api/v1/admin/promo-codes/:id
DELETE /api/v1/admin/promo-codes/:id
GET    /api/v1/admin/promo-codes/:id/stats
```

## Примеры

**Создать промокод**
```json
{
  "code": "SUMMER2026",
  "description": "Summer sale 2026",
  "discount_type": "percentage",
  "discount_value": 30,
  "valid_from": "2026-06-01T00:00:00Z",
  "valid_until": "2026-08-31T23:59:59Z",
  "max_uses": 1000,
  "max_uses_per_user": 1,
  "min_purchase_amount": 20.00
}
```

**Проверить промокод**
```bash
POST /api/v1/promo-codes/validate
{
  "code": "SUMMER2026",
  "course_id": "c1"
}

Response:
{
  "valid": true,
  "discount_type": "percentage",
  "discount_value": 30,
  "original_price": 49.99,
  "discounted_price": 34.99,
  "savings": 15.00
}
```

## План реализации

1. **Backend** (3 дня)
   - Promo Code Service
   - Валидация промокодов
   - Применение скидок

2. **Admin Panel** (2 дня)
   - CRUD промокодов
   - Статистика использования

3. **Frontend Checkout** (2 дня)
   - Поле ввода промокода
   - Показ скидки
   - Валидация

4. **Тестирование** (1 день)

**Оценка: 8 дней**

## Зависимости

- ✅ Курсы
- 🔄 Платежи

## Метрики

- Количество использований промокодов
- Конверсия с промокодом vs без
- Средняя скидка
- ROI маркетинговых кампаний
