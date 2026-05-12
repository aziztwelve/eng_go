# Phase 6: Монетизация 💰

**Срок:** 2 недели  
**Сложность:** Средняя  
**Зависимости:** Phase 1, 4, 5  
**Статус:** 📝 Planning

---

## 🎯 Цели и метрики

### Цели:
Запустить **гибридную монетизацию**:
1. **Premium Subscription** ($7-9/мес) — рекуррентный доход
2. **Course Purchases** (одноразово $19-49) — премиум контент
3. **Free Tier** — с ограничениями, для роста базы пользователей

### Метрики:
- **Conversion rate** Free → Premium > 5%
- **MRR** (Monthly Recurring Revenue) > $5,000 на 1k активных
- **ARPU** (Average Revenue Per User) > $2/мес
- **Churn rate** < 10%/мес
- **LTV** (Lifetime Value) > $50

---

## 💰 Модели монетизации

### 1. 🆓 Free Tier

**Ограничения:**
- ❤️ Только 5 hearts (с регенерацией 30 мин)
- 📺 Реклама между уроками (1 ad на 5 уроков)
- 🤖 5 AI chat запросов / день
- 🎤 2 минуты voice / день
- 📊 Базовая статистика
- 🎯 Доступ к 60% курсов (premium курсы заблокированы)

**Цель:** Дать попробовать продукт, мотивировать на upgrade.

### 2. 💎 Premium Subscription

**Цена:** 
- **Monthly:** $9.99/мес
- **Yearly:** $59.99/год (= $5/мес, экономия 50%)
- **Family Plan:** $14.99/мес (до 6 человек)

**Что включено:**
- ♾️ **Unlimited hearts** (никогда не теряешь)
- 🚫 **Без рекламы**
- 🤖 **Unlimited AI** (chat, voice, writing assessment)
- 🎯 **Streak Freeze** — 2 в месяц бесплатно
- 📊 **Расширенная аналитика** (детальный progress, weak skills heatmap)
- 🎓 **Все курсы доступны**
- 🏆 **Premium badges** в профиле
- 🌟 **Priority в Leagues** — двойной XP по выходным
- 📥 **Offline mode** (для mobile)
- 🔁 **Unlimited practice** (без cooldown)

### 3. 🛒 Course Purchases (одноразово)

**Premium курсы:**
- $19 — Basic premium courses (IELTS preparation Basic)
- $29 — Advanced (Business English)
- $49 — Comprehensive (Full IELTS prep с mock exams)

**Целевая аудитория:**
- Серьезные ученики (подготовка к экзаменам)
- Профессионалы (Business English)
- Туристы (Travel English Express)

### 4. 💎 Gems (внутренняя валюта)

**Получение:**
- Daily streak bonus
- League rewards
- Achievements
- Покупка за деньги ($0.99 = 100 gems)

**Тратить на:**
- Heart refill (50 gems)
- Streak freeze (100 gems)
- Hint в упражнениях (5 gems)
- Premium badges (cosmetic)

---

## 🏗️ Архитектура

### Новый микросервис: `payment-service`

**Порт:** gRPC `:50060`  
**Зависимости:** Stripe API, Kaspi Pay API  
**База:** PostgreSQL — schema `payments`

### Платежные провайдеры:

| Провайдер | Регион | Use case |
|-----------|--------|----------|
| **Stripe** | Global (USA, EU) | Cards, Apple Pay, Google Pay |
| **Kaspi Pay** | Казахстан | Local payments |
| **YooKassa** | Россия | Russian market |
| **App Store IAP** | iOS users | In-app purchases |
| **Google Play IAP** | Android users | In-app purchases |

---

## 💾 База данных

### `subscriptions`
```sql
CREATE TABLE payments.subscriptions (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    plan            VARCHAR(20) NOT NULL,        -- 'premium_monthly', 'premium_yearly', 'family'
    status          VARCHAR(20) NOT NULL,        -- 'active', 'cancelled', 'expired', 'past_due'
    
    -- Provider info
    provider        VARCHAR(20) NOT NULL,        -- 'stripe', 'kaspi', 'apple_iap', 'google_iap'
    provider_subscription_id TEXT,
    provider_customer_id TEXT,
    
    -- Pricing
    amount_usd      DECIMAL(10,2),
    currency        VARCHAR(3) DEFAULT 'USD',
    
    -- Dates
    started_at      TIMESTAMPTZ NOT NULL,
    current_period_start TIMESTAMPTZ NOT NULL,
    current_period_end   TIMESTAMPTZ NOT NULL,
    cancelled_at    TIMESTAMPTZ,
    expires_at      TIMESTAMPTZ,
    
    -- Family plan
    is_family       BOOLEAN DEFAULT FALSE,
    family_members  UUID[],                       -- max 6 user IDs
    
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_subscriptions_user ON payments.subscriptions(user_id);
CREATE INDEX idx_subscriptions_status ON payments.subscriptions(status);
```

### `purchases` — разовые покупки
```sql
CREATE TABLE payments.purchases (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    item_type       VARCHAR(20) NOT NULL,        -- 'course', 'gems_pack'
    item_id         UUID,                        -- course_id если course
    
    amount_usd      DECIMAL(10,2) NOT NULL,
    currency        VARCHAR(3) DEFAULT 'USD',
    
    provider        VARCHAR(20) NOT NULL,
    provider_payment_id TEXT,
    
    status          VARCHAR(20) NOT NULL,        -- 'pending', 'completed', 'refunded', 'failed'
    
    purchased_at    TIMESTAMPTZ DEFAULT NOW(),
    refunded_at     TIMESTAMPTZ
);

CREATE INDEX idx_purchases_user ON payments.purchases(user_id);
CREATE INDEX idx_purchases_item ON payments.purchases(item_type, item_id);
```

### `payment_methods`
```sql
CREATE TABLE payments.payment_methods (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    provider        VARCHAR(20) NOT NULL,
    provider_method_id TEXT NOT NULL,
    
    -- Display info (no PII!)
    type            VARCHAR(20),                 -- 'card', 'kaspi', 'apple_pay'
    brand           VARCHAR(20),                 -- 'visa', 'mastercard'
    last4           VARCHAR(4),
    exp_month       INT,
    exp_year        INT,
    
    is_default      BOOLEAN DEFAULT FALSE,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);
```

### `invoices`
```sql
CREATE TABLE payments.invoices (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    subscription_id UUID REFERENCES payments.subscriptions(id),
    
    amount_usd      DECIMAL(10,2) NOT NULL,
    currency        VARCHAR(3) DEFAULT 'USD',
    
    status          VARCHAR(20) NOT NULL,        -- 'paid', 'unpaid', 'refunded'
    
    invoice_pdf_url TEXT,
    
    period_start    TIMESTAMPTZ,
    period_end      TIMESTAMPTZ,
    paid_at         TIMESTAMPTZ,
    
    created_at      TIMESTAMPTZ DEFAULT NOW()
);
```

### `course_access` — кто к каким курсам имеет доступ
```sql
CREATE TABLE payments.course_access (
    user_id         UUID NOT NULL,
    course_id       UUID NOT NULL,
    access_type     VARCHAR(20) NOT NULL,        -- 'free', 'subscription', 'purchase', 'gift'
    purchase_id     UUID REFERENCES payments.purchases(id),
    granted_at      TIMESTAMPTZ DEFAULT NOW(),
    expires_at      TIMESTAMPTZ,                 -- NULL = forever
    PRIMARY KEY (user_id, course_id)
);
```

### `gems_transactions`
```sql
CREATE TABLE payments.gems_transactions (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    amount          INT NOT NULL,                -- positive=earn, negative=spend
    source          VARCHAR(30) NOT NULL,        -- 'purchase', 'achievement', 'league', 'heart_refill'
    purchase_id     UUID,                        -- если покупка
    balance_after   INT NOT NULL,                -- snapshot
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_gems_user_created ON payments.gems_transactions(user_id, created_at DESC);
```

### Course extension — добавить поля
```sql
ALTER TABLE courses.courses ADD COLUMN access_type VARCHAR(20) DEFAULT 'free';
-- 'free', 'premium', 'paid'
ALTER TABLE courses.courses ADD COLUMN price_usd DECIMAL(10,2) DEFAULT 0;
```

---

## 📐 Бизнес-логика

### 1. Подписка через Stripe (flow):

```
1. User clicks "Upgrade to Premium"
   ↓
2. Frontend: создает Stripe Checkout Session
   POST /api/v1/payments/checkout
   { "plan": "premium_monthly" }
   ↓
3. Backend: Stripe Checkout Session API
   - Возвращает URL для Stripe Hosted Page
   ↓
4. User: оплачивает на Stripe
   ↓
5. Stripe webhook → backend
   POST /webhooks/stripe
   - event: checkout.session.completed
   ↓
6. Backend:
   - Создает subscription в БД
   - Активирует premium features
   - Отправляет welcome email
   ↓
7. Subsequent: invoice.paid, invoice.payment_failed, etc.
```

### 2. Course purchase flow:

```
1. User on course page → click "Buy for $19"
   ↓
2. Stripe Checkout (one-time payment)
   ↓
3. Webhook → backend
   - Создает запись в purchases
   - Создает запись в course_access
   ↓
4. User получает доступ навсегда
```

### 3. Premium feature gating:

```go
// Middleware для проверки доступа
func RequirePremium(next Handler) Handler {
    return func(c Context) {
        user := GetUser(c)
        sub := GetActiveSubscription(user.ID)
        
        if sub == nil || sub.Status != "active" {
            return c.JSON(403, "Premium required")
        }
        
        next(c)
    }
}

// Использование
router.POST("/ai/conversations", RequirePremium(createConversation))
```

### 4. Premium flags в User Service:

```go
type UserProfile struct {
    ID             UUID
    Email          string
    Username       string
    
    // Premium flags (computed)
    IsPremium      bool
    PremiumPlan    string
    PremiumExpiresAt *time.Time
    
    // Family
    FamilyPlanOwnerID *UUID
}

func (u *UserProfile) ComputePremium(activeSubscription *Subscription) {
    if activeSubscription != nil {
        u.IsPremium = true
        u.PremiumPlan = activeSubscription.Plan
        u.PremiumExpiresAt = &activeSubscription.CurrentPeriodEnd
    }
}
```

### 5. Hearts unlimited (для premium):

```go
func (s *HeartsService) Lose(userID UUID) error {
    if IsPremium(userID) {
        return nil  // Premium never loses hearts
    }
    
    // ... existing logic
}
```

### 6. AI quota (премиум обход):

```go
func (q *AIQuota) CanUseChat(userID UUID) bool {
    if IsPremium(userID) { return true }
    
    today := GetUsageToday(userID)
    return today.ChatRequests < 5
}
```

### 7. Family Plan:

```go
func AddFamilyMember(ownerID, memberID UUID) error {
    sub := GetActiveSubscription(ownerID)
    if sub.Plan != "family" {
        return ErrNotFamilyPlan
    }
    
    if len(sub.FamilyMembers) >= 6 {
        return ErrFamilyFull
    }
    
    sub.FamilyMembers = append(sub.FamilyMembers, memberID)
    return UpdateSubscription(sub)
}

func IsPremium(userID UUID) bool {
    // Check own subscription
    if HasActiveSubscription(userID) { return true }
    
    // Check if member of family plan
    return IsFamilyMember(userID)
}
```

### 8. Gems система:

```go
func PurchaseGemsPack(userID UUID, pack string) error {
    packs := map[string]struct {
        Gems int
        USD  float64
    }{
        "small":   {100, 0.99},
        "medium":  {500, 3.99},
        "large":   {1500, 9.99},
        "mega":    {5000, 24.99},
    }
    
    p := packs[pack]
    
    // Stripe one-time payment
    purchase := CreatePurchase(userID, "gems_pack", p.USD)
    
    // После confirmation
    AddGems(userID, p.Gems, "purchase", purchase.ID)
}
```

---

## 🔌 API Endpoints

### Subscriptions
```
GET    /api/v1/subscription/mine                  — моя подписка
POST   /api/v1/subscription/checkout              — создать checkout session
       { "plan": "premium_monthly" | "premium_yearly" | "family" }
POST   /api/v1/subscription/cancel                — отменить
POST   /api/v1/subscription/reactivate            — реактивировать
GET    /api/v1/subscription/plans                 — список планов
```

### Purchases
```
POST   /api/v1/courses/:id/purchase               — купить курс
GET    /api/v1/purchases                          — мои покупки
POST   /api/v1/purchases/:id/refund               — запросить рефанд
```

### Payment methods
```
GET    /api/v1/payment-methods                    — мои методы оплаты
POST   /api/v1/payment-methods                    — добавить
DELETE /api/v1/payment-methods/:id                — удалить
PUT    /api/v1/payment-methods/:id/default        — сделать default
```

### Invoices
```
GET    /api/v1/invoices                           — мои инвойсы
GET    /api/v1/invoices/:id/pdf                   — download PDF
```

### Gems
```
GET    /api/v1/gems/balance                       — баланс
GET    /api/v1/gems/transactions                  — история
POST   /api/v1/gems/purchase                      — купить gems pack
POST   /api/v1/gems/spend                         — потратить
       { "item": "heart_refill" }
```

### Family Plan
```
GET    /api/v1/family/members                     — члены семьи
POST   /api/v1/family/invite                      — пригласить
       { "email": "..." }
POST   /api/v1/family/accept/:inviteId            — принять приглашение
DELETE /api/v1/family/remove/:memberId            — удалить из семьи
```

### Webhooks
```
POST   /api/v1/webhooks/stripe                    — Stripe webhook
POST   /api/v1/webhooks/kaspi                     — Kaspi webhook
POST   /api/v1/webhooks/apple-iap                 — Apple IAP webhook
POST   /api/v1/webhooks/google-iap                — Google IAP webhook
```

---

## 💾 Бэкенд задачи

### 6.1 Создание payment-service

```
services/payment-service/
├── cmd/main.go
├── internal/
│   ├── api/                  # gRPC handlers
│   ├── app/
│   ├── config/
│   ├── model/
│   ├── repository/
│   ├── service/
│   │   ├── subscription_service.go
│   │   ├── purchase_service.go
│   │   ├── invoice_service.go
│   │   ├── gems_service.go
│   │   └── family_service.go
│   ├── providers/
│   │   ├── stripe_client.go
│   │   ├── kaspi_client.go
│   │   ├── apple_iap_client.go
│   │   └── google_iap_client.go
│   └── webhooks/
│       ├── stripe_handler.go
│       ├── kaspi_handler.go
│       └── ...
└── migrations/
```

### 6.2 Stripe integration

#### Setup:
- [ ] Создать Stripe account
- [ ] Создать products в Stripe Dashboard:
  - Premium Monthly ($9.99)
  - Premium Yearly ($59.99)
  - Family Plan ($14.99/мес)
  - Course Premium Basic ($19)
  - Course Premium Advanced ($29)
  - Course Premium Comprehensive ($49)
  - Gems packs ($0.99, $3.99, $9.99, $24.99)

#### Code:
- [ ] `providers/stripe_client.go`:
  - [ ] `CreateCheckoutSession(plan, userID)`
  - [ ] `CancelSubscription(subscriptionID)`
  - [ ] `RefundPayment(paymentID)`
  - [ ] `CreateCustomer(email)`
- [ ] `webhooks/stripe_handler.go`:
  - [ ] Validate signature
  - [ ] Handle events:
    - [ ] `checkout.session.completed` → создать subscription/purchase
    - [ ] `invoice.paid` → продлить subscription
    - [ ] `invoice.payment_failed` → set status=past_due
    - [ ] `customer.subscription.deleted` → cancel
    - [ ] `charge.refunded` → revoke access

### 6.3 Subscription service

- [ ] `Create(userID, plan, providerID)`
- [ ] `GetActive(userID)`
- [ ] `Cancel(userID, immediate=false)` — отмена в конце периода
- [ ] `Reactivate(userID)` — если cancelled, но не expired
- [ ] `IsPremium(userID)` — main check function
- [ ] `Renew(subscriptionID)` — обработка renewal от webhook

### 6.4 Course Access service

- [ ] `Grant(userID, courseID, accessType, purchaseID)`
- [ ] `Check(userID, courseID)` — есть ли доступ
- [ ] `OnPremiumActivated(userID)` — выдать доступ ко всем premium courses
- [ ] `OnPremiumCancelled(userID)` — НЕ забирать paid purchases

### 6.5 Family Plan

- [ ] `Invite(ownerID, email)` — отправить invite по email
- [ ] `Accept(inviteToken)` — добавить юзера в family
- [ ] `Remove(ownerID, memberID)`
- [ ] `IsFamilyMember(userID)` — для check premium status

### 6.6 Gems

- [ ] `GetBalance(userID)`
- [ ] `Add(userID, amount, source, sourceID)`
- [ ] `Spend(userID, amount, item)`
- [ ] `PurchasePack(userID, pack)` — через Stripe

### 6.7 Apple IAP / Google Play IAP

#### Apple:
- [ ] `providers/apple_iap_client.go`
- [ ] Verify receipt
- [ ] Handle subscription renewals via webhooks (server notifications V2)

#### Google:
- [ ] `providers/google_iap_client.go`
- [ ] Verify purchase token
- [ ] Real-time developer notifications

### 6.8 Integration во все сервисы

#### Gamification:
- [ ] Hearts: проверка Premium (unlimited)
- [ ] Streak Freeze: 2/мес для premium бесплатно

#### Course Service:
- [ ] `GetCourse(id)` — проверить access
- [ ] `ListCourses` — фильтр по access type
- [ ] При publishing premium course → notify subscribers

#### AI Service:
- [ ] Quota check включает Premium status
- [ ] Premium → unlimited

#### Gateway:
- [ ] Middleware для добавления `X-User-Premium` header
- [ ] Frontend сразу знает premium status

### 6.9 Cron jobs

- [ ] **Subscription renewal check** — каждый час проверять expired
- [ ] **Reminder emails** — за 3 дня до окончания подписки
- [ ] **Trial ended** — если был trial period, уведомление

### 6.10 Email notifications

Через notification service (Phase 0 уже есть базовый):
- [ ] Welcome to Premium
- [ ] Payment receipt
- [ ] Payment failed
- [ ] Cancellation confirmation
- [ ] Subscription expiring (3 days warning)
- [ ] Refund issued

### 6.11 Тесты

- [ ] Stripe webhook signature validation
- [ ] Subscription lifecycle (active → cancelled → expired)
- [ ] Family plan limits (6 members max)
- [ ] Gems balance never goes negative
- [ ] Premium gates работают

---

## 🎨 Фронтенд задачи

### Web (Next.js):

#### Страницы:
- [ ] `/premium` — landing страница premium
  - Comparison Free vs Premium
  - Pricing с monthly/yearly toggle
  - Testimonials
  - FAQ
  - CTA: "Try Premium"
- [ ] `/premium/checkout/success` — после оплаты
- [ ] `/settings/subscription` — управление подпиской
  - Текущий план
  - Кнопка Cancel
  - Change plan
  - Billing history
- [ ] `/settings/payment-methods` — карты
- [ ] `/family` — family plan management
- [ ] `/courses/:id/purchase` — модалка покупки курса
- [ ] `/gems` — магазин gems

#### Компоненты:
- [ ] `PricingCard.tsx` — карточка плана
- [ ] `PremiumBadge.tsx` — значок в профиле
- [ ] `UpgradeModal.tsx` — модалка апгрейда (при попытке использовать premium фичу)
- [ ] `LockedCourseCard.tsx` — заблокированный курс
- [ ] `GemsBalance.tsx` — отображение баланса
- [ ] `GemsPurchaseModal.tsx`
- [ ] `BillingHistory.tsx`
- [ ] `PaymentMethodCard.tsx`

#### Integration:
- [ ] Stripe Elements для cards (если нужно без redirect)
- [ ] Stripe.js для checkout
- [ ] React hooks для subscription status

### Mobile (Expo):

#### Critical: native IAP
- [ ] **expo-in-app-purchases** — для iOS/Android
- [ ] Separate flow: на mobile нельзя использовать Stripe для подписок (Apple/Google требуют свои)
- [ ] Verify receipts на бэке

#### Screens:
- [ ] `premium/landing.tsx`
- [ ] `settings/subscription.tsx`
- [ ] `settings/family.tsx`

### UX паттерны:

#### Soft paywalls:
- При попытке использовать premium фичу → красивая модалка
- Не agressive — давать попробовать ограниченно
- Examples:
  - Hearts закончились → "Get unlimited hearts with Premium"
  - AI quota exceeded → "Continue chatting with Premium"
  - Premium course → "Unlock this course"

#### Trial period:
- 7-day free trial при первой подписке
- Кредитка спрашивается заранее
- Reminder за 1 день до конца trial

#### Upselling:
- На главной — баннер про Premium (если free user)
- После каждых 5 уроков — "You're loving it! Try Premium"
- При получении achievement → "Premium gets +50% XP this week"

---

## ✅ Acceptance Criteria

### Backend:
- [x] Stripe integration работает (test mode)
- [x] Webhooks обрабатываются корректно
- [x] Subscription lifecycle полный
- [x] Premium features gated правильно
- [x] Family plan: 6 members max
- [x] Gems balance корректен
- [x] Apple/Google IAP работают
- [x] Refund flow

### Frontend:
- [x] Pricing page красивый
- [x] Checkout flow smooth
- [x] Cancellation работает
- [x] Premium badges видны
- [x] Soft paywalls срабатывают
- [x] Billing history доступен
- [x] Mobile IAP интегрирован

### Финансы:
- [x] Tracking всех платежей
- [x] Cost reporting (admin dashboard)
- [x] Корректный учет fees Stripe (2.9% + 30¢)
- [x] Refund tracking

---

## 🔬 Тестирование

### Manual scenarios:

#### Premium subscription:
1. Free user → click Premium → Stripe Checkout
2. Test card 4242 4242 4242 4242 → success
3. Webhook → subscription активна
4. Premium фичи разблокированы
5. Cancel → status=cancelled, доступ до конца периода
6. Period expired → reverted to free

#### Course purchase:
1. Free user → premium course (locked)
2. Click Buy → Stripe Checkout
3. Pay → access granted
4. Cancel Premium → доступ к купленному курсу остается

#### Family plan:
1. Owner buys family plan
2. Invite по email
3. Accept → 2 members
4. Try add 7-го → reject (max 6)
5. Remove member → access revoked

#### Gems:
1. Buy 100 gems for $0.99
2. Balance = 100
3. Spend 50 on heart refill
4. Balance = 50
5. Try spend 100 → reject

### Stripe test cards:
- ✅ Success: `4242 4242 4242 4242`
- ❌ Declined: `4000 0000 0000 0002`
- ⚠️ Authentication required: `4000 0025 0000 3155`

---

## 📚 Референсы

### Платежные провайдеры:
- **Stripe Docs:** https://stripe.com/docs
- **Stripe Subscriptions:** https://stripe.com/docs/billing/subscriptions/overview
- **Apple StoreKit:** https://developer.apple.com/storekit/
- **Google Play Billing:** https://developer.android.com/google/play/billing
- **Kaspi Pay:** https://kaspi.kz/business/payments

### Inspiration:
- **Duolingo Super:** https://www.duolingo.com/learn (paywall examples)
- **Notion pricing:** https://www.notion.so/pricing
- **Spotify Family Plan:** model для family

### Аналитика:
- **Stripe analytics** — основная
- **ChartMogul** или **Baremetrics** — SaaS metrics
- **Amplitude** — поведение пользователей

---

## 📝 Замечания

### Legal:
- ✅ **ToS** — Terms of Service обязательно
- ✅ **Privacy Policy**
- ✅ **Refund Policy** — обычно 14 дней
- ✅ **Subscription disclosure** (auto-renewal)
- ✅ **VAT/Tax** — Stripe Tax помогает

### Региональные особенности:
- **Apple/Google** забирают 30% (15% после года или small business)
- **Stripe** — 2.9% + 30¢ per transaction
- **Kaspi** — комиссия согласована индивидуально

### Conversion optimization:
- **Free trial** значительно повышает conversion
- **Annual discount** — 30-50% от monthly
- **Money-back guarantee** — 14 дней
- **Referral program** — 1 month free for referrer + 50% off for new user

### Edge cases:
- Двойная подписка (купил на web, потом IAP в app) → merge
- Refund + покупка снова — не злоупотреблять
- Family plan owner отменяет — members теряют доступ
- Card expired → email + grace period (3 дня)

### Безопасность:
- ❌ НИКОГДА не хранить card details (PCI compliance)
- ✅ Только токены Stripe
- ✅ Webhook signature validation
- ✅ HTTPS only для checkout

---

## 📊 Метрики для отслеживания

### Финансовые:
- MRR (Monthly Recurring Revenue)
- ARR (Annual Recurring Revenue)
- ARPU (Average Revenue Per User)
- LTV (Lifetime Value)
- Churn rate (monthly)
- Conversion rate (free → premium)

### Поведенческие:
- Trial to paid conversion
- Premium feature usage
- Cancellation reasons (опрос на cancel)
- Refund rate

### Когортные:
- Retention by cohort
- LTV by acquisition channel
- Churn by plan type

---

**Предыдущий шаг:** [Phase 5: AI интеграция](./phase-5-ai-integration.md)  
**Назад к обзору:** [README](./README.md)
