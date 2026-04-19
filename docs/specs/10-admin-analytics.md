# 10. Аналитика для админов (Admin Analytics)

## Описание

Дашборд с общей аналитикой платформы для администраторов.

## Цели

- Мониторинг здоровья платформы
- Принятие бизнес-решений
- Выявление проблем
- Отслеживание роста

## Требования

### Функциональные

1. **Обзор платформы**
   - Общее количество пользователей
   - Общее количество курсов
   - Общий доход
   - Активные студенты (за последние 30 дней)

2. **Пользователи**
   - Регистрации (график)
   - Активность пользователей
   - Churn rate (отток)
   - География

3. **Курсы**
   - Новые курсы
   - Популярные курсы
   - Курсы с низким рейтингом
   - Средний процент завершения

4. **Финансы**
   - MRR (Monthly Recurring Revenue)
   - Доход по типам (курсы vs подписки)
   - Средний чек
   - Прогноз дохода

5. **Вовлеченность**
   - DAU/MAU (Daily/Monthly Active Users)
   - Среднее время на платформе
   - Количество комментариев
   - Количество отзывов

6. **Технические метрики**
   - Время загрузки страниц
   - Ошибки API
   - Uptime
   - Использование хранилища

## База данных

```sql
-- Дневная статистика платформы
CREATE TABLE platform_stats (
    date DATE PRIMARY KEY,
    total_users INT DEFAULT 0,
    new_users INT DEFAULT 0,
    active_users INT DEFAULT 0,
    total_courses INT DEFAULT 0,
    new_courses INT DEFAULT 0,
    total_enrollments INT DEFAULT 0,
    new_enrollments INT DEFAULT 0,
    revenue DECIMAL(10,2) DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Метрики производительности
CREATE TABLE performance_metrics (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    metric_type VARCHAR(50) NOT NULL, -- page_load, api_response, error_rate
    value DECIMAL(10,2) NOT NULL,
    timestamp TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_platform_stats_date ON platform_stats(date);
CREATE INDEX idx_performance_metrics_type ON performance_metrics(metric_type);
CREATE INDEX idx_performance_metrics_timestamp ON performance_metrics(timestamp);
```

## API спецификация

```
# Обзор
GET    /api/v1/admin/analytics/overview

# Пользователи
GET    /api/v1/admin/analytics/users
GET    /api/v1/admin/analytics/users/growth
GET    /api/v1/admin/analytics/users/activity

# Курсы
GET    /api/v1/admin/analytics/courses
GET    /api/v1/admin/analytics/courses/popular
GET    /api/v1/admin/analytics/courses/completion

# Финансы
GET    /api/v1/admin/analytics/revenue
GET    /api/v1/admin/analytics/revenue/breakdown
GET    /api/v1/admin/analytics/revenue/forecast

# Вовлеченность
GET    /api/v1/admin/analytics/engagement

# Технические
GET    /api/v1/admin/analytics/performance
```

## Примеры

**Обзор платформы**
```bash
GET /api/v1/admin/analytics/overview

Response:
{
  "total_users": 50000,
  "new_users_today": 120,
  "active_users_30d": 15000,
  "total_courses": 500,
  "total_enrollments": 125000,
  "total_revenue": 2500000.00,
  "mrr": 85000.00,
  "growth": {
    "users": 15.5,
    "revenue": 22.3,
    "enrollments": 18.7
  },
  "top_metrics": {
    "dau": 5000,
    "mau": 15000,
    "dau_mau_ratio": 0.33,
    "average_session_duration": 1800,
    "churn_rate": 5.2
  }
}
```

**Рост пользователей**
```bash
GET /api/v1/admin/analytics/users/growth?from=2026-01-01&to=2026-04-19

Response:
{
  "chart_data": [
    {"date": "2026-01-01", "total": 30000, "new": 150, "active": 9000},
    {"date": "2026-01-02", "total": 30150, "new": 180, "active": 9200}
  ],
  "summary": {
    "total_new_users": 20000,
    "average_daily_signups": 185,
    "growth_rate": 66.7
  }
}
```

**Финансовая аналитика**
```bash
GET /api/v1/admin/analytics/revenue?from=2026-01-01&to=2026-04-19

Response:
{
  "total_revenue": 850000.00,
  "mrr": 85000.00,
  "arr": 1020000.00,
  "chart_data": [
    {"date": "2026-01", "revenue": 65000.00, "subscriptions": 45000.00, "courses": 20000.00},
    {"date": "2026-02", "revenue": 72000.00, "subscriptions": 48000.00, "courses": 24000.00}
  ],
  "breakdown": {
    "subscriptions": 540000.00,
    "course_purchases": 310000.00
  },
  "top_revenue_courses": [
    {
      "course_id": "c1",
      "title": "English for Beginners",
      "revenue": 125000.00,
      "enrollments": 2500
    }
  ]
}
```

## План реализации

1. **Backend - Admin Analytics Service** (5 дней)
   - Агрегация данных со всех сервисов
   - Расчет сложных метрик (MRR, churn, etc.)
   - API endpoints

2. **Background jobs** (2 дня)
   - Ежедневное обновление статистики
   - Расчет прогнозов
   - Мониторинг производительности

3. **Frontend - Admin Dashboard** (5 дней)
   - Главная страница с обзором
   - Детальные страницы по разделам
   - Графики и таблицы
   - Экспорт данных

4. **Алерты** (2 дня)
   - Уведомления о критических метриках
   - Email дайджесты для админов

5. **Тестирование** (1 день)

**Оценка: 15 дней**

## Технологии

- **Charts**: Chart.js, Recharts
- **Export**: CSV, PDF, Excel
- **Real-time**: WebSocket для live метрик
- **Cache**: Redis для кэширования

## Зависимости

- ✅ Все сервисы (агрегация данных)
- 🔄 Все предыдущие фичи

## Метрики успеха

- Время принятия решений (сокращение)
- Процент админов, использующих дашборд ежедневно
- Количество выявленных проблем через аналитику

## Ключевые метрики для мониторинга

### Бизнес-метрики
- **MRR** (Monthly Recurring Revenue) - ежемесячный доход от подписок
- **ARR** (Annual Recurring Revenue) - годовой доход
- **Churn Rate** - процент отписавшихся пользователей
- **LTV** (Lifetime Value) - средний доход с пользователя за все время
- **CAC** (Customer Acquisition Cost) - стоимость привлечения клиента

### Продуктовые метрики
- **DAU/MAU** - соотношение дневных к месячным активным пользователям
- **Retention Rate** - процент вернувшихся пользователей
- **Completion Rate** - процент завершенных курсов
- **NPS** (Net Promoter Score) - индекс лояльности

### Технические метрики
- **Uptime** - время работы без сбоев
- **Response Time** - среднее время ответа API
- **Error Rate** - процент ошибок
- **Storage Usage** - использование хранилища

## Алерты

Настроить уведомления при:
- Churn rate > 10%
- Error rate > 1%
- Response time > 1s
- Uptime < 99.9%
- Резкое падение регистраций (> 50%)
- Резкое падение дохода (> 30%)

## Будущие улучшения

- Машинное обучение для прогнозов
- A/B тестирование
- Когортный анализ
- Funnel анализ
- Heatmaps
- Session recordings
