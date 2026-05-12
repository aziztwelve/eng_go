# Phase 3: Адаптивное обучение 🧠

**Срок:** 2 недели  
**Сложность:** Высокая  
**Зависимости:** Phase 1, 2  
**Статус:** 📝 Planning

---

## 🎯 Цели и метрики

### Цели:
Реализовать **умное повторение материала** по алгоритму **Spaced Repetition (SM-2)** как в Anki. Главная идея: материал, который пользователь забывает, должен возвращаться чаще; то, что хорошо знает — реже.

### Метрики:
- **Retention rate** — > 80% правильных ответов на повторных встречах слов
- **Knowledge decay** — < 20% забывания через 7 дней
- **Practice usage** — > 50% активных пользователей делают практику ежедневно
- **Mistakes recovery** — > 70% ошибок исправлены при повторе

---

## 🧠 Теория Spaced Repetition

### Алгоритм SM-2 (SuperMemo 2):

Для каждого слова/упражнения храним:
- **EF (Easiness Factor)** — коэффициент легкости (default: 2.5)
- **Interval (I)** — текущий интервал в днях
- **Repetitions (n)** — сколько раз правильно повторил подряд

### Качество ответа (q):
- **5** — Perfect response (правильно с первой попытки, быстро)
- **4** — Correct response with hesitation
- **3** — Correct response with difficulty (была подсказка)
- **2** — Incorrect, but easy to recall (ошибся, но вспомнил быстро)
- **1** — Incorrect, hard to recall
- **0** — Complete blackout (вообще не помню)

### Формулы:

#### Если q >= 3 (правильный ответ):
```
if n == 0: I = 1
if n == 1: I = 6
if n >= 2: I = I_previous * EF

n = n + 1
```

#### Если q < 3 (неправильный):
```
n = 0
I = 1  (повторить завтра)
```

#### Обновление EF (всегда):
```
EF = EF + (0.1 - (5 - q) * (0.08 + (5 - q) * 0.02))
EF = max(1.3, EF)
```

### Типичная прогрессия:
- Повторение 1: завтра
- Повторение 2: через 6 дней
- Повторение 3: через 15 дней
- Повторение 4: через 37 дней
- Повторение 5: через 92 дня
- Повторение 6: через 230 дней

---

## 🏗️ Архитектура

### Расширение существующих сервисов:
- **Course Service** — добавить vocabulary tracking
- **Gamification Service** — статистика "skill strength"

### Опциональный новый сервис:
- `srs-service` (Spaced Repetition Service) — если логика разрастется

**Рекомендация:** Начать с расширения Course Service, выделить в отдельный сервис если нужно.

---

## 💾 База данных

### `user_srs_items` — карточки в SRS системе
```sql
CREATE TABLE courses.user_srs_items (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    item_type       VARCHAR(20) NOT NULL,        -- 'vocabulary', 'step', 'phrase'
    item_id         UUID NOT NULL,               -- ID связанного объекта
    
    -- SM-2 параметры
    easiness_factor DECIMAL(3,2) NOT NULL DEFAULT 2.5,
    interval_days   INT NOT NULL DEFAULT 1,
    repetitions     INT NOT NULL DEFAULT 0,
    
    -- Расписание
    next_review_at  TIMESTAMPTZ NOT NULL,        -- когда показать снова
    last_reviewed_at TIMESTAMPTZ,
    
    -- Статистика
    total_reviews   INT NOT NULL DEFAULT 0,
    correct_reviews INT NOT NULL DEFAULT 0,
    incorrect_reviews INT NOT NULL DEFAULT 0,
    avg_response_time_ms INT,
    
    -- Уровень знания (computed)
    strength        DECIMAL(3,2) NOT NULL DEFAULT 0.0,  -- 0.0 - 1.0
    
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW(),
    
    UNIQUE(user_id, item_type, item_id)
);

CREATE INDEX idx_srs_user_next_review ON courses.user_srs_items(user_id, next_review_at);
CREATE INDEX idx_srs_user_strength ON courses.user_srs_items(user_id, strength);
```

### `srs_review_history` — история повторений
```sql
CREATE TABLE courses.srs_review_history (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    srs_item_id     UUID NOT NULL REFERENCES courses.user_srs_items(id),
    user_id         UUID NOT NULL,
    quality         INT NOT NULL,                -- 0-5 (SM-2 quality)
    response_time_ms INT,
    used_hint       BOOLEAN DEFAULT FALSE,
    reviewed_at     TIMESTAMPTZ DEFAULT NOW(),
    
    -- Snapshot после ревью
    new_interval_days INT,
    new_easiness_factor DECIMAL(3,2),
    new_repetitions INT
);

CREATE INDEX idx_srs_history_user ON courses.srs_review_history(user_id, reviewed_at DESC);
CREATE INDEX idx_srs_history_item ON courses.srs_review_history(srs_item_id);
```

### `user_mistakes` — ошибки для дополнительного повторения
```sql
CREATE TABLE courses.user_mistakes (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    step_id         UUID NOT NULL,
    incorrect_answer JSONB NOT NULL,
    times_made      INT NOT NULL DEFAULT 1,
    last_made_at    TIMESTAMPTZ DEFAULT NOW(),
    is_resolved     BOOLEAN DEFAULT FALSE,       -- исправлена ли
    resolved_at     TIMESTAMPTZ,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_mistakes_user_unresolved ON courses.user_mistakes(user_id, is_resolved);
```

### `user_skill_decay` — "ржавчина" навыков
```sql
CREATE TABLE courses.user_skill_decay (
    user_id         UUID NOT NULL,
    skill_id        UUID NOT NULL,               -- module_id или lesson_id
    skill_type      VARCHAR(20) NOT NULL,        -- 'module', 'lesson'
    
    initial_strength DECIMAL(3,2) DEFAULT 1.0,   -- сила сразу после изучения
    current_strength DECIMAL(3,2) DEFAULT 1.0,   -- текущая сила
    
    last_practiced_at TIMESTAMPTZ,
    decay_rate      DECIMAL(3,2) DEFAULT 0.05,   -- скорость "ржавения" в день
    
    PRIMARY KEY(user_id, skill_id)
);

CREATE INDEX idx_skill_decay_user_strength ON courses.user_skill_decay(user_id, current_strength);
```

---

## 📐 Бизнес-логика

### 1. Когда добавлять item в SRS:

#### Vocabulary:
- При первом изучении слова в любом шаге
- Когда слово появляется в новой комбинации

#### Steps:
- После первого правильного выполнения
- Если уже была ошибка → сразу в SRS с n=0

### 2. Расчет quality (q) для SM-2:

```python
def calculate_quality(is_correct, time_spent_ms, used_hint, retry_count):
    if not is_correct:
        if retry_count == 1: return 2  # вспомнил со второй попытки
        else: return 0                  # совсем не помнит
    
    # Правильный ответ
    base = 5
    if used_hint: base -= 2
    if time_spent_ms > 10000: base -= 1  # медленно
    if time_spent_ms > 20000: base -= 1  # очень медленно
    
    return max(3, base)
```

### 3. SRS update логика:

```go
func UpdateSRSItem(item *SRSItem, quality int) {
    if quality >= 3 {
        // Правильный ответ
        if item.Repetitions == 0 {
            item.IntervalDays = 1
        } else if item.Repetitions == 1 {
            item.IntervalDays = 6
        } else {
            item.IntervalDays = int(float64(item.IntervalDays) * item.EasinessFactor)
        }
        item.Repetitions++
    } else {
        // Неправильный ответ
        item.Repetitions = 0
        item.IntervalDays = 1
    }
    
    // Обновляем EF
    q := float64(quality)
    item.EasinessFactor = item.EasinessFactor + 
        (0.1 - (5-q)*(0.08 + (5-q)*0.02))
    if item.EasinessFactor < 1.3 {
        item.EasinessFactor = 1.3
    }
    
    item.NextReviewAt = time.Now().AddDate(0, 0, item.IntervalDays)
    item.Strength = calculateStrength(item)
}

func calculateStrength(item *SRSItem) float64 {
    if item.TotalReviews == 0 { return 0 }
    accuracy := float64(item.CorrectReviews) / float64(item.TotalReviews)
    return accuracy * math.Min(1.0, float64(item.Repetitions)/10)
}
```

### 4. Skill Decay (ржавчина):

```go
// Cron каждый день в 00:00
func DecayAllSkills() {
    daysSinceLastPractice := computeDays(user.LastPracticedAt)
    decayAmount := skill.DecayRate * float64(daysSinceLastPractice)
    skill.CurrentStrength = math.Max(0, 
        skill.CurrentStrength - decayAmount)
}
```

### 5. Personalized Practice генерация:

```go
func GeneratePracticeSession(userID UUID, sessionSize int) []SRSItem {
    // 1. Слова с next_review_at <= now (overdue)
    overdue := GetOverdueItems(userID)
    
    // 2. Слова из mistakes
    mistakes := GetUnresolvedMistakes(userID)
    
    // 3. Слова с низким strength
    weak := GetWeakItems(userID, limit: 20)
    
    // Mix: 50% overdue, 30% mistakes, 20% weak
    return mix(overdue, mistakes, weak, sessionSize)
}
```

---

## 🔌 API Endpoints

### SRS
```
GET    /api/v1/srs/due                        — слова к повторению
GET    /api/v1/srs/stats                      — статистика SRS
POST   /api/v1/srs/review                     — записать ревью
       { "item_id": "uuid", "quality": 4, "time_spent_ms": 5000 }
```

### Practice
```
GET    /api/v1/practice/session?size=10       — создать практику-сессию
POST   /api/v1/practice/start                 — начать сессию
POST   /api/v1/practice/:sessionId/submit     — ответ в практике
GET    /api/v1/practice/recommended           — рекомендованные темы
```

### Mistakes
```
GET    /api/v1/mistakes?resolved=false        — мои ошибки
GET    /api/v1/mistakes/recent                — недавние ошибки
POST   /api/v1/mistakes/:id/practice          — попрактиковать
```

### Skills
```
GET    /api/v1/skills/strength                — мои навыки и их сила
GET    /api/v1/skills/weak                    — слабые навыки
POST   /api/v1/skills/:id/practice            — практика по навыку
```

---

## 💾 Бэкенд задачи

### 3.1 Миграции
- [ ] `001_create_user_srs_items.up.sql`
- [ ] `002_create_srs_review_history.up.sql`
- [ ] `003_create_user_mistakes.up.sql`
- [ ] `004_create_user_skill_decay.up.sql`

### 3.2 Модели
- [ ] `model/srs_item.go`
- [ ] `model/mistake.go`
- [ ] `model/skill_decay.go`
- [ ] `model/practice_session.go`

### 3.3 Repositories
- [ ] `repository/srs_repo.go`:
  - [ ] `Create(item)`
  - [ ] `Update(item)`
  - [ ] `GetByUserAndItem(userID, itemType, itemID)`
  - [ ] `GetDueItems(userID, limit)` — где next_review_at <= now
  - [ ] `GetWeakItems(userID, limit)` — ORDER BY strength ASC
  - [ ] `GetStats(userID)` — counts по статусам
- [ ] `repository/mistake_repo.go`:
  - [ ] `Record(userID, stepID, answer)`
  - [ ] `GetUnresolved(userID)`
  - [ ] `MarkResolved(mistakeID)`
- [ ] `repository/skill_decay_repo.go`:
  - [ ] `Get(userID, skillID)`
  - [ ] `Update(decay)`
  - [ ] `GetWeakSkills(userID)`

### 3.4 Services

#### `service/srs_service.go`:
- [ ] `RecordReview(userID, itemID, quality, timeSpentMs)`:
  - [ ] Получить SRS item
  - [ ] Применить SM-2 алгоритм
  - [ ] Сохранить history
  - [ ] Обновить item
- [ ] `GetDueForReview(userID, limit)`
- [ ] `EnsureItem(userID, itemType, itemID)` — создать если нет

#### `service/practice_service.go`:
- [ ] `GenerateSession(userID, size)`:
  - [ ] Mix overdue + mistakes + weak items
  - [ ] Создать temporary session
  - [ ] Вернуть упражнения
- [ ] `SubmitAnswer(sessionID, itemID, answer)`:
  - [ ] Validate
  - [ ] Calculate quality
  - [ ] Update SRS
  - [ ] Update mistakes (mark resolved if correct)
  - [ ] Award XP (меньше чем за новый материал)

#### `service/mistake_service.go`:
- [ ] `Record(userID, stepID, incorrectAnswer)`
- [ ] `GetUnresolved(userID)`
- [ ] `ResolveIfCorrect(userID, stepID, answer)`

#### `service/skill_decay_service.go`:
- [ ] `OnSkillCompleted(userID, skillID)` — init strength = 1.0
- [ ] `DailyDecay()` — cron job
- [ ] `Strengthen(userID, skillID, amount)` — при practice

### 3.5 Интеграция

#### Course Service hooks:
- [ ] При `SubmitAnswer` (step):
  - [ ] Если correct → `srs.RecordReview(quality: 4-5)`
  - [ ] Если incorrect → `mistakes.Record()` + `srs.RecordReview(quality: 0-2)`
- [ ] При `CompleteLesson`:
  - [ ] `skill_decay.OnSkillCompleted(lessonID)`
  - [ ] `skill_decay.Strengthen(moduleID, +0.1)`

#### Vocabulary integration:
- [ ] При первой встрече слова в шаге → `srs.EnsureItem(vocabulary)`

### 3.6 Cron jobs
- [ ] **Daily Decay** — 00:00 UTC, обновить strength всех навыков
- [ ] **Stale Items Cleanup** — раз в неделю, отметить не-практикованные

### 3.7 Тесты
- [ ] SM-2 алгоритм:
  - [ ] q=5: интервал растет правильно
  - [ ] q=0: интервал сбрасывается
  - [ ] EF в пределах [1.3, ∞)
- [ ] Practice session generation:
  - [ ] Mix содержит правильные пропорции
  - [ ] Не дублирует items в одной сессии
- [ ] Skill decay:
  - [ ] Strength уменьшается на decay_rate за день
  - [ ] Strength не уходит ниже 0

---

## 🎨 Фронтенд задачи

### Web (Next.js):

#### Страницы:
- [ ] `/practice` — главная страница практики
  - Hero: "X items due for review"
  - Кнопки: Quick Practice (10), Long Session (20), Mistakes Review
  - Stats: today reviewed, total mastered
- [ ] `/practice/session` — активная сессия
  - Прогресс бар
  - StepRenderer (из Phase 2)
  - При ошибке → объяснение + retry
- [ ] `/practice/mistakes` — список ошибок
  - Группировка по типу ошибки
  - Кнопка "Practice these mistakes"
- [ ] `/profile/strength` — карта навыков
  - Heatmap modules → lessons → words
  - Цвета: зеленый (strong) → красный (weak)

#### Компоненты:
- [ ] `PracticeCard.tsx` — карточка с типом практики
- [ ] `SRSStats.tsx` — статистика SRS
- [ ] `StrengthBar.tsx` — индикатор силы навыка
- [ ] `MistakeCard.tsx` — карточка ошибки
- [ ] `WeakWordsList.tsx` — список слабых слов

### Mobile (Expo):

#### Screens:
- [ ] `practice/index.tsx` — главная практики
- [ ] `practice/session.tsx` — сессия
- [ ] `practice/mistakes.tsx` — ошибки
- [ ] `practice/heatmap.tsx` — карта силы навыков

#### Компоненты:
- [ ] Аналогично web

### Notifications:
- [ ] Push notification "Time to practice! 10 items waiting"
- [ ] Best time: ~ 1-2 часа до обычного времени активности юзера

### Hooks:
- [ ] `use-srs-stats.ts`
- [ ] `use-practice-session.ts`
- [ ] `use-mistakes.ts`
- [ ] `use-skill-strength.ts`

---

## ✅ Acceptance Criteria

### Backend:
- [x] SM-2 алгоритм правильно реализован (unit tested)
- [x] При каждом ответе SRS item обновляется
- [x] Mistakes автоматически записываются
- [x] Practice session содержит mix overdue/mistakes/weak
- [x] Skill decay работает по cron
- [x] API эндпоинты возвращают актуальные данные

### Frontend:
- [x] Pуч есть /practice как отдельный hub
- [x] Можно начать практику в 1 клик
- [x] Mistakes review показывает прошлые ошибки
- [x] Skill heatmap визуализирует силу навыков
- [x] Push notifications работают (mobile)

### UX:
- [x] Practice сессия = 5-10 минут (как Duolingo)
- [x] Понятно, почему именно эти слова показываются
- [x] Видна выгода практики (strength растет визуально)

---

## 🔬 Тестирование

### SM-2 алгоритм (Unit tests):
```go
func TestSM2_FirstReview_Correct() {
    item := NewSRSItem()
    UpdateSRSItem(item, 5)
    
    assert.Equal(1, item.IntervalDays)
    assert.Equal(1, item.Repetitions)
    assert.True(item.EasinessFactor > 2.5)
}

func TestSM2_TwoCorrectInRow() {
    item := NewSRSItem()
    UpdateSRSItem(item, 5)  // Day 1
    UpdateSRSItem(item, 4)  // Day 1 again? no, would be day 1+1=2
    
    assert.Equal(6, item.IntervalDays)
}

func TestSM2_FailReset() {
    item := &SRSItem{Repetitions: 5, IntervalDays: 92}
    UpdateSRSItem(item, 0)
    
    assert.Equal(0, item.Repetitions)
    assert.Equal(1, item.IntervalDays)
}
```

### Integration:
1. Создать пользователя
2. Выполнить 10 шагов с разными результатами
3. Подождать (или mock time) → next_review_at пройдет
4. Запросить practice → должны вернуться те 10 items
5. Ответить → SRS обновляется
6. Запросить practice снова → пустой или новые items

---

## 📚 Референсы

### Алгоритм:
- **SM-2 paper:** https://www.supermemo.com/en/archives1990-2015/english/ol/sm2
- **Anki algorithm:** https://faqs.ankiweb.net/what-spaced-repetition-algorithm.html
- **FSRS (новый алгоритм):** https://github.com/open-spaced-repetition/fsrs4anki — можно рассмотреть как альтернативу

### Inspiration:
- **Anki** — оригинальный SRS
- **Duolingo** — простая визуализация strength
- **Memrise** — strength bars на каждое слово
- **WaniKani** — японский SRS (отличная UX)

### UX:
- **Heatmap** библиотеки: react-calendar-heatmap, victory
- **Streak visualization** идеи из GitHub contribution graph

---

## 📝 Замечания

### Performance:
- Большой пользователь может иметь 10000+ SRS items
- Нужны хорошие индексы на next_review_at + user_id
- Batch updates для cron jobs

### Психология:
- Не показывать > 20 items в одной сессии (overwhelm)
- Mix new + review (80% review, 20% new) для retention
- Положительный feedback на progress

### Edge cases:
- Пользователь не открывал 30 дней → много overdue
- Только что начал учить → нет items для review
- Все strength = 1.0 → нечего повторять

---

**Предыдущий шаг:** [Phase 2: Новые форматы шагов](./phase-2-step-formats.md)  
**Следующий шаг:** [Phase 4: Социальное (Leagues)](./phase-4-social.md)
