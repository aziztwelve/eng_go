# Phase 1: Геймификация 🎮

**Срок:** 1-2 недели  
**Сложность:** Средняя  
**Зависимости:** [Phase 0 (Standalone-контент)](./phase-0-standalone-content.md)  
**Статус:** 📝 Planning

---

## 🏛️ Принцип: геймификация НЕ привязана к курсам

> **Важно:** Эта фаза реализует геймификацию как **независимую подсистему**, которая работает с любым обучающим контентом — будь то урок в курсе, в треке, или standalone-урок.

**Архитектурное правило:**
```
Любое action пользователя → gamification.AddXP() / RecordStreakActivity()
```

Источник (course / track / standalone) важен только для **аналитики**, а не для самой логики начисления XP.

**Примеры действий, дающих XP (независимо от контейнера):**
- ✅ Завершение шага в купленном курсе
- ✅ Завершение шага в бесплатном курсе
- ✅ Завершение шага в Learning Track
- ✅ Завершение standalone-урока
- ✅ Daily Lesson (без курса)
- ✅ Practice session (Phase 3)
- ✅ AI conversation (Phase 5)

Подробнее об архитектуре контента — см. [Phase 0](./phase-0-standalone-content.md).

---

## 🎯 Цели и метрики

### Цели:
Превратить обучение в игру, чтобы пользователи возвращались каждый день. Главные мотиваторы из Duolingo:
- **Streak** — никто не хочет потерять полосу дней
- **Hearts** — ограничение на ошибки создает напряжение
- **XP** — измеримый прогресс
- **Achievements** — коллекционирование

### Метрики:
- **DAU/MAU** > 30%
- **D1 retention** > 60% (вернулся на следующий день)
- **D7 retention** > 40%
- **Среднее время в приложении** > 10 минут/день
- **Streak на 7+ дней** у > 30% активных пользователей

---

## 🏗️ Архитектура

### Новый микросервис: `gamification-service`

**Порт:** gRPC `:50058`  
**База:** PostgreSQL — schema `gamification`  
**Зависимости:** User Service, Course Service, Redis (для кэша)

### Альтернатива:
Если не хочется отдельного сервиса — можно расширить **User Service** новыми таблицами. Рекомендация: отдельный сервис, т.к. логика будет расти.

---

## 💾 База данных

### Таблицы (schema `gamification`):

#### `user_stats`
```sql
CREATE TABLE gamification.user_stats (
    user_id        UUID PRIMARY KEY,
    level          INT NOT NULL DEFAULT 1,
    total_xp       INT NOT NULL DEFAULT 0,
    weekly_xp      INT NOT NULL DEFAULT 0,   -- сбрасывается каждый понедельник
    current_streak INT NOT NULL DEFAULT 0,
    max_streak     INT NOT NULL DEFAULT 0,
    last_lesson_at TIMESTAMPTZ,              -- для расчета streak
    hearts         INT NOT NULL DEFAULT 5,
    max_hearts     INT NOT NULL DEFAULT 5,
    next_heart_at  TIMESTAMPTZ,              -- когда восстановится следующее сердце
    gems           INT NOT NULL DEFAULT 0,
    streak_freezes INT NOT NULL DEFAULT 0,   -- сколько заморозок есть
    created_at     TIMESTAMPTZ DEFAULT NOW(),
    updated_at     TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_user_stats_total_xp ON gamification.user_stats(total_xp DESC);
CREATE INDEX idx_user_stats_weekly_xp ON gamification.user_stats(weekly_xp DESC);
```

#### `xp_transactions`
```sql
CREATE TABLE gamification.xp_transactions (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id     UUID NOT NULL,
    amount      INT NOT NULL,                -- может быть отрицательным
    reason      VARCHAR(50) NOT NULL,        -- 'step_completed', 'daily_goal', 'achievement', 'streak_bonus'
    source_id   UUID,                        -- ID шага/достижения/итд
    created_at  TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_xp_transactions_user_created ON gamification.xp_transactions(user_id, created_at DESC);
```

#### `daily_goals`
```sql
CREATE TABLE gamification.daily_goals (
    user_id     UUID PRIMARY KEY,
    target_xp   INT NOT NULL DEFAULT 20,     -- 10/20/30/50
    updated_at  TIMESTAMPTZ DEFAULT NOW()
);
```

#### `daily_goal_progress`
```sql
CREATE TABLE gamification.daily_goal_progress (
    user_id      UUID NOT NULL,
    date         DATE NOT NULL,
    xp_earned    INT NOT NULL DEFAULT 0,
    goal         INT NOT NULL,
    completed    BOOLEAN NOT NULL DEFAULT FALSE,
    completed_at TIMESTAMPTZ,
    PRIMARY KEY (user_id, date)
);

CREATE INDEX idx_daily_goal_progress_date ON gamification.daily_goal_progress(date);
```

#### `streak_history`
```sql
CREATE TABLE gamification.streak_history (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id     UUID NOT NULL,
    date        DATE NOT NULL,
    completed   BOOLEAN NOT NULL,
    used_freeze BOOLEAN NOT NULL DEFAULT FALSE,
    created_at  TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE (user_id, date)
);

CREATE INDEX idx_streak_history_user_date ON gamification.streak_history(user_id, date DESC);
```

#### `achievements` (каталог достижений)
```sql
CREATE TABLE gamification.achievements (
    id           UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code         VARCHAR(50) UNIQUE NOT NULL,  -- 'first_step', 'week_warrior', etc
    title        VARCHAR(100) NOT NULL,
    description  TEXT,
    icon_url     TEXT,
    category     VARCHAR(50),                  -- 'learning', 'streak', 'social', 'special'
    tier         INT DEFAULT 1,                -- 1=bronze, 2=silver, 3=gold
    xp_reward    INT DEFAULT 0,
    gems_reward  INT DEFAULT 0,
    criteria     JSONB NOT NULL,               -- {"type": "streak", "value": 7}
    is_hidden    BOOLEAN DEFAULT FALSE,
    created_at   TIMESTAMPTZ DEFAULT NOW()
);
```

#### `user_achievements` (полученные достижения)
```sql
CREATE TABLE gamification.user_achievements (
    user_id         UUID NOT NULL,
    achievement_id  UUID NOT NULL,
    progress        INT DEFAULT 0,             -- для tiered achievements
    unlocked_at     TIMESTAMPTZ DEFAULT NOW(),
    PRIMARY KEY (user_id, achievement_id)
);

CREATE INDEX idx_user_achievements_user ON gamification.user_achievements(user_id);
```

---

## 📐 Бизнес-логика

### Расчет XP за шаг:
```
text step       = 10 XP
video step      = 15 XP
quiz step       = 20 XP (+ bonus за perfect score = 30 XP)
match pairs     = 15 XP
translate       = 15 XP
listening       = 20 XP
```

### Уровни (формула):
```
XP to next level = level * 100
Level 1 → 2:   100 XP
Level 2 → 3:   200 XP (300 total)
Level 3 → 4:   300 XP (600 total)
...
Level n → n+1: n * 100 XP
```

### Hearts (жизни):
- **Старт:** 5 hearts
- **Регенерация:** 1 heart каждые 30 минут (бесплатно)
- **Восстановление в Practice:** 1 heart за completed practice
- **Premium:** ♾️ unlimited
- **Покупка за gems:** 1 heart = 50 gems

### Streak логика:
- ✅ **Засчитывается** при выполнении ≥ 1 урока в день
- ❌ **Сбрасывается** если день пропущен
- ❄️ **Streak Freeze** — заморозка на 1 день (можно иметь 2 одновременно)
- 🎁 **Бонусы:**
  - 7 дней → +50 gems
  - 30 дней → +200 gems + achievement
  - 100 дней → +1000 gems + special badge
  - 365 дней → Legendary status

### Daily Goal:
- **Casual:** 10 XP/день
- **Regular:** 20 XP/день (default)
- **Serious:** 30 XP/день
- **Insane:** 50 XP/день
- При достижении: +5 gems + animation

### Achievements (минимум 30 штук):

#### Категория "Learning":
- 🎓 **First Step** — выполни 1 шаг (10 XP reward)
- 📚 **Eager Learner** — выполни 10 шагов (50 XP)
- 🎯 **Course Crusher** — заверши 1 курс (200 XP + 50 gems)
- 💯 **Perfectionist** — пройди 10 квизов на 100%
- 🌍 **Polyglot** — изучай 2+ языка одновременно

#### Категория "Streak":
- 🔥 **Sparked** — 3-дневный streak
- 🔥🔥 **On Fire** — 7-дневный streak (+50 gems)
- 💪 **Dedicated** — 14-дневный streak
- 🏆 **Month Master** — 30-дневный streak (+200 gems)
- 👑 **Century Club** — 100-дневный streak (+1000 gems)
- 🐉 **Dragon** — 365-дневный streak (Legendary)

#### Категория "XP":
- ⚡ **First Hundred** — 100 total XP
- ⚡ **First Thousand** — 1,000 total XP
- ⚡ **Ten Thousand** — 10,000 total XP
- ⚡ **Master** — 100,000 total XP

#### Категория "Special":
- 🦉 **Early Bird** — урок до 8:00
- 🌙 **Night Owl** — урок после 22:00
- 🎉 **New Year** — урок 1 января
- 💝 **Valentine** — урок 14 февраля
- 🎂 **Birthday** — урок в свой день рождения

---

## 🔌 API Endpoints (REST через Gateway)

### Stats
```
GET    /api/v1/gamification/stats           — мои stats
GET    /api/v1/gamification/stats/:userId   — stats другого юзера (public)
```

**Response:**
```json
{
  "user_id": "uuid",
  "level": 5,
  "total_xp": 1250,
  "weekly_xp": 320,
  "next_level_xp": 600,
  "current_streak": 12,
  "max_streak": 30,
  "hearts": 3,
  "max_hearts": 5,
  "next_heart_at": "2026-05-12T11:30:00Z",
  "gems": 145,
  "streak_freezes": 1
}
```

### XP Actions
```
POST   /api/v1/gamification/xp/add
       { "amount": 15, "reason": "step_completed", "source_id": "uuid" }
```

### Hearts
```
POST   /api/v1/gamification/hearts/lose     — потерять 1 heart
POST   /api/v1/gamification/hearts/refill   — восстановить (gems/practice)
```

### Daily Goal
```
GET    /api/v1/gamification/daily-goal           — текущий goal + progress
PUT    /api/v1/gamification/daily-goal           — изменить target_xp
       { "target_xp": 30 }
```

### Streak
```
GET    /api/v1/gamification/streak/history?days=30   — история streak'а
POST   /api/v1/gamification/streak/freeze            — активировать заморозку
```

### Achievements
```
GET    /api/v1/gamification/achievements              — все достижения
GET    /api/v1/gamification/achievements/mine         — мои достижения
GET    /api/v1/gamification/achievements/recent       — недавно полученные
```

---

## 🔌 gRPC методы (gamification.proto)

```protobuf
service GamificationService {
    // Stats
    rpc GetUserStats(GetUserStatsRequest) returns (UserStats);
    rpc InitializeUser(InitializeUserRequest) returns (UserStats);

    // XP
    rpc AddXP(AddXPRequest) returns (AddXPResponse);
    rpc GetXPHistory(GetXPHistoryRequest) returns (XPHistoryResponse);

    // Hearts
    rpc LoseHeart(LoseHeartRequest) returns (Hearts);
    rpc RefillHearts(RefillHeartsRequest) returns (Hearts);
    rpc CheckHearts(CheckHeartsRequest) returns (Hearts);

    // Daily Goal
    rpc GetDailyGoal(GetDailyGoalRequest) returns (DailyGoal);
    rpc UpdateDailyGoal(UpdateDailyGoalRequest) returns (DailyGoal);

    // Streak
    rpc UpdateStreak(UpdateStreakRequest) returns (Streak);
    rpc GetStreakHistory(GetStreakHistoryRequest) returns (StreakHistory);
    rpc UseStreakFreeze(UseStreakFreezeRequest) returns (Streak);

    // Achievements
    rpc ListAchievements(ListAchievementsRequest) returns (AchievementsResponse);
    rpc GetUserAchievements(GetUserAchievementsRequest) returns (UserAchievementsResponse);
    rpc CheckAchievements(CheckAchievementsRequest) returns (UnlockedAchievementsResponse);
}
```

---

## 💾 Бэкенд задачи

### 1. Создание микросервиса `gamification-service`

#### Структура:
```
services/gamification-service/
├── cmd/
│   └── main.go
├── internal/
│   ├── api/                    # gRPC handlers
│   │   ├── stats.go
│   │   ├── xp.go
│   │   ├── hearts.go
│   │   ├── daily_goal.go
│   │   ├── streak.go
│   │   └── achievements.go
│   ├── app/
│   │   └── app.go
│   ├── config/
│   │   └── config.go
│   ├── model/
│   │   ├── stats.go
│   │   ├── xp.go
│   │   ├── achievement.go
│   │   └── streak.go
│   ├── repository/
│   │   ├── stats_repo.go
│   │   ├── xp_repo.go
│   │   ├── streak_repo.go
│   │   └── achievement_repo.go
│   ├── service/
│   │   ├── stats_service.go
│   │   ├── xp_service.go
│   │   ├── hearts_service.go
│   │   ├── streak_service.go
│   │   └── achievement_service.go
│   └── converter/
│       └── converter.go
├── migrations/
│   ├── 001_create_user_stats.up.sql
│   ├── 002_create_xp_transactions.up.sql
│   ├── 003_create_daily_goals.up.sql
│   ├── 004_create_streak_history.up.sql
│   └── 005_create_achievements.up.sql
└── seeds/
    └── 001_achievements.sql       # 30+ predefined achievements
```

### 2. Чеклист задач:

#### 2.1 Proto и инфраструктура
- [ ] Создать `shared/proto/gamification/v1/gamification.proto`
- [ ] Сгенерировать Go код: `task proto:gen`
- [ ] Создать миграции (5 таблиц)
- [ ] Создать seed для achievements (30+ записей)
- [ ] Настроить config + env файл `deploy/env/gamification.env`
- [ ] Добавить в docker-compose

#### 2.2 Модели и репозитории
- [ ] `model/stats.go` — UserStats структура
- [ ] `repository/stats_repo.go`:
  - [ ] `GetByUserID(userID)`
  - [ ] `Create(userID)` — для нового юзера
  - [ ] `Update(stats)`
  - [ ] `IncrementXP(userID, amount)`
  - [ ] `DecrementHearts(userID)`
- [ ] `repository/xp_repo.go`:
  - [ ] `RecordTransaction(userID, amount, reason, sourceID)`
  - [ ] `GetHistory(userID, limit)`
- [ ] `repository/streak_repo.go`:
  - [ ] `RecordDay(userID, date, completed)`
  - [ ] `GetHistory(userID, days)`
  - [ ] `CalculateCurrentStreak(userID)`
- [ ] `repository/achievement_repo.go`:
  - [ ] `ListAll()`
  - [ ] `GetByUserID(userID)`
  - [ ] `Unlock(userID, achievementID)`
  - [ ] `CheckCriteria(userID, criteria)`

#### 2.3 Сервисы (бизнес-логика)
- [ ] `service/stats_service.go`:
  - [ ] `InitializeForUser(userID)` — создать stats при регистрации
  - [ ] `CalculateLevel(totalXP)` — расчет уровня
- [ ] `service/xp_service.go`:
  - [ ] `Add(userID, amount, reason)`:
    - [ ] Записать transaction
    - [ ] Обновить total_xp + weekly_xp
    - [ ] Пересчитать level
    - [ ] Проверить daily_goal
    - [ ] Проверить achievements
    - [ ] Опубликовать event в Kafka (для leagues потом)
- [ ] `service/hearts_service.go`:
  - [ ] `Lose(userID)`:
    - [ ] Уменьшить hearts на 1
    - [ ] Если hearts > 0 раньше → установить next_heart_at = now + 30min
  - [ ] `Refill(userID, source)`:
    - [ ] Восстановить до max_hearts
    - [ ] Если source=gems → списать 50 gems
  - [ ] `Tick()` — cron job, восстанавливает hearts всем где next_heart_at < now
- [ ] `service/streak_service.go`:
  - [ ] `RecordActivity(userID)`:
    - [ ] Получить last_lesson_at
    - [ ] Если сегодня впервые → streak++
    - [ ] Если пропуск 1 день → freeze или сброс
    - [ ] Обновить last_lesson_at
- [ ] `service/achievement_service.go`:
  - [ ] `CheckAll(userID, eventType)` — проверить все ачивки нужного типа
  - [ ] `Unlock(userID, achievementID)` — выдать ачивку + XP/gems

#### 2.4 gRPC API handlers
- [ ] Имплементация всех методов из proto
- [ ] Логирование запросов (Zap)
- [ ] Validation входных параметров
- [ ] Error mapping (gRPC status codes)

#### 2.5 Интеграция с Course Service (универсальная)

**Принцип:** Геймификация вызывается одинаково для course/track/standalone уроков.

- [ ] Хук в `CompleteStep` (любой источник):
  - [ ] Вызвать `gamification.AddXP(userID, amount, "step_completed", stepID)`
  - [ ] Вызвать `gamification.RecordStreakActivity(userID)`
  - [ ] Передать `source_type` и `source_id` для аналитики (не для логики)
- [ ] Хук в `SubmitQuizAnswer` (если неправильно) → `gamification.LoseHeart(userID)`
- [ ] Хук в `CompleteLesson` → проверить achievements (например, "First Lesson")
- [ ] Хук в `CompleteCourse` → дополнительный bonus + achievement
- [ ] Расширить ответ `GetStep` — добавить XP reward (для отображения)

**Важно:** Hooks вызываются ВЕЗДЕ, где есть completion event:
- ✅ Course → Module → Lesson → Step (текущая логика курсов)
- ✅ Track → Lesson → Step (новый, через Phase 0)
- ✅ Standalone Lesson → Step (новый, через Phase 0)
- ✅ Practice session (Phase 3)
- ✅ Daily Lesson

#### 2.6 Cron jobs
- [ ] **Hearts regeneration** — каждые 5 минут проверять кто получает heart
- [ ] **Weekly XP reset** — каждый понедельник 00:00 UTC обнулять weekly_xp
- [ ] **Streak validation** — каждый день в 00:00 user timezone проверять streak'и

#### 2.7 Gateway endpoints
- [ ] Добавить gamification client в Gateway
- [ ] Создать handlers для всех endpoints
- [ ] Добавить middleware (auth required)
- [ ] Документировать в OpenAPI

#### 2.8 Тесты
- [ ] Unit тесты для services (особенно расчет уровней и streak)
- [ ] Integration тесты для repository
- [ ] gRPC end-to-end тесты

---

## 🎨 Фронтенд задачи

### Next.js (web) — `eng_next2`:

#### Компоненты `src/components/gamification/`:
- [ ] `HeartCounter.tsx` — индикатор сердец с таймером регенерации
- [ ] `XPBar.tsx` — полоска прогресса к следующему уровню
- [ ] `XPGainAnimation.tsx` — анимация "+15 XP"
- [ ] `StreakBadge.tsx` — огонек 🔥 с числом дней
- [ ] `StreakCalendar.tsx` — календарь streak'а на 30 дней
- [ ] `DailyGoalRing.tsx` — кольцо прогресса дневной цели (SVG)
- [ ] `LevelBadge.tsx` — бейдж уровня пользователя
- [ ] `AchievementToast.tsx` — toast при получении achievement
- [ ] `AchievementCard.tsx` — карточка достижения
- [ ] `AchievementsGrid.tsx` — сетка всех достижений

#### Страницы:
- [ ] `/profile` — расширить с stats + achievements
- [ ] `/profile/stats` — детальная статистика
- [ ] `/profile/achievements` — все достижения с прогрессом
- [ ] `/profile/streak` — календарь streak'а

#### Hooks `src/hooks/`:
- [ ] `use-user-stats.ts` — fetch user stats (React Query)
- [ ] `use-add-xp.ts` — mutation для добавления XP
- [ ] `use-hearts.ts` — управление heart'ами
- [ ] `use-daily-goal.ts` — daily goal
- [ ] `use-achievements.ts` — список и unlock

#### API client `src/lib/`:
- [ ] `gamification-api.ts` — все endpoints

#### Интеграция:
- [ ] При завершении шага → показать "+XP" анимацию
- [ ] При неправильном квизе → анимация потерянного heart
- [ ] При получении achievement → toast + sound
- [ ] Topbar — показать hearts + streak + XP

### React Native (mobile) — `eng_mob`:

#### Компоненты `src/components/gamification/`:
- [ ] `HeartCounter.tsx`
- [ ] `XPBar.tsx`
- [ ] `XPGainAnimation.tsx` — с Reanimated
- [ ] `StreakBadge.tsx`
- [ ] `StreakCalendar.tsx`
- [ ] `DailyGoalRing.tsx`
- [ ] `LevelBadge.tsx`
- [ ] `AchievementModal.tsx` — модалка с анимацией
- [ ] `AchievementCard.tsx`

#### Screens:
- [ ] `(tabs)/profile.tsx` — расширить
- [ ] `profile/stats.tsx`
- [ ] `profile/achievements.tsx`
- [ ] `profile/streak.tsx`

#### Hooks:
- [ ] Аналогично web

#### Анимации (важно для мобильного UX!):
- [ ] Конфетти при level up (Lottie)
- [ ] Pulse animation на heart при потере
- [ ] Bounce на streak badge при увеличении
- [ ] Confetti на achievement unlock
- [ ] Haptic feedback (Expo Haptics) на все события

#### Звуки (Expo AV):
- [ ] `correct.mp3` — правильный ответ
- [ ] `incorrect.mp3` — неправильный ответ
- [ ] `level_up.mp3` — повышение уровня
- [ ] `achievement.mp3` — получение достижения
- [ ] `streak.mp3` — увеличение streak

---

## ✅ Acceptance Criteria

### Backend:
- [x] gamification-service запускается и проходит health-check
- [x] Миграции применяются успешно
- [x] 30+ achievements в seeds
- [x] При выполнении шага вызывается AddXP
- [x] При неправильном квизе вызывается LoseHeart
- [x] Hearts регенерируются по cron
- [x] Streak правильно считается (включая freeze)
- [x] Achievements автоматически выдаются по criteria
- [x] Weekly XP сбрасывается в понедельник
- [x] Все unit тесты проходят

### Frontend (Next.js + React Native):
- [x] Topbar показывает hearts/streak/XP
- [x] При завершении шага показывается анимация +XP
- [x] При неправильном ответе heart "теряется" с анимацией
- [x] Daily goal ring заполняется в реальном времени
- [x] При достижении daily goal — confetti
- [x] Achievement unlock → toast/модалка с анимацией
- [x] Calendar показывает streak дни и пропуски
- [x] Profile показывает все achievements (locked/unlocked)
- [x] Level up — большая анимация

### UX:
- [x] Все анимации плавные (60fps)
- [x] Звуки можно отключить в настройках
- [x] Haptic feedback на ключевых событиях (mobile)
- [x] Темная тема корректно отображает все элементы

---

## 🔬 Тестирование

### Unit тесты:
```go
func TestCalculateLevel(t *testing.T)
func TestStreakLogic_Continued(t *testing.T)
func TestStreakLogic_Broken(t *testing.T)
func TestStreakLogic_WithFreeze(t *testing.T)
func TestHeartsRegeneration(t *testing.T)
func TestAchievementCriteria_Streak(t *testing.T)
func TestDailyGoalCompletion(t *testing.T)
```

### Manual тесты:
1. Зарегистрироваться → stats создаются с default values
2. Выполнить 1 шаг → +10 XP, daily_goal_progress обновляется
3. Получить 100 XP → level up animation
4. Сделать ошибку в квизе → heart -1, next_heart_at установлен
5. Подождать 30 мин → heart восстановился (или через test endpoint)
6. Выполнить уроки 2 дня подряд → streak = 2
7. Пропустить день → streak сброшен (или использован freeze)
8. Дойти до 7-дневного streak → achievement unlocked

---

## 📚 Референсы

### Inspiration:
- **Duolingo** — главный источник вдохновения
  - https://www.duolingo.com (web)
  - Mobile app (iOS/Android)
- **Khan Academy** — energy points (похоже на XP)
- **Memrise** — leaderboards и streaks

### Технические:
- **Алгоритм уровней:** https://gamedev.stackexchange.com/questions/13638/algorithm-for-dynamically-calculating-a-level-based-on-experience-points
- **Streak best practices:** https://blog.duolingo.com/streak/
- **Achievements design:** https://www.gamedeveloper.com/design/the-psychology-of-game-achievements

### UI/UX:
- **Lottie animations:** https://lottiefiles.com/
- **Confetti:** https://www.npmjs.com/package/canvas-confetti
- **Sound effects:** https://freesound.org/

---

## 📝 Замечания

### Performance:
- **User stats** в Redis для быстрого чтения
- **Achievements check** — батч-операция в конце урока, а не после каждого шага
- **Leaderboards** (потом в Phase 4) — Redis sorted sets

### Edge cases:
- **Timezone** — streak считается по timezone пользователя (хранить в profile)
- **Многоустройство** — sync через бэкенд
- **Offline mode** (mobile) — кэширование stats + sync при подключении

### Безопасность:
- ❌ XP добавляется ТОЛЬКО через бэкенд при completion события (не доверять клиенту)
- ❌ Hearts терять ТОЛЬКО при реальном неправильном ответе (validation на бэке)
- ✅ Achievement unlock — server-side validation criteria

---

**Следующий шаг:** [Phase 2: Новые форматы шагов](./phase-2-step-formats.md)
