# Phase 4: Социальное (Leagues, Leaderboards, Friends) 🏆

**Срок:** 1-2 недели  
**Сложность:** Средняя  
**Зависимости:** Phase 1 (XP система)  
**Статус:** 📝 Planning

---

## 🎯 Цели и метрики

### Цели:
Добавить **соревновательность** для повышения engagement. Главная фишка Duolingo — **лиги**, которые мотивируют выполнять больше уроков для попадания в топ.

### Метрики:
- **DAU growth** +20% после внедрения leagues
- **Average XP per user** +50%
- **Friend invites** > 30% активных юзеров
- **Time spent** +30% в дни близкие к концу недели

---

## 🏗️ Концепция Duolingo Leagues

### Структура лиг (10 уровней):
1. 🥉 **Bronze League**
2. 🥈 **Silver League**
3. 🥇 **Gold League**
4. 💎 **Sapphire League**
5. ❤️ **Ruby League**
6. 💚 **Emerald League**
7. 💜 **Amethyst League**
8. ⚪ **Pearl League**
9. ⚫ **Obsidian League**
10. 💎 **Diamond League** (топ)

### Правила:
- **30 человек на лигу** (в одной группе)
- **Цикл = 1 неделя** (понедельник 00:00 → воскресенье 23:59 UTC)
- **Promotion Zone**: топ 7 → следующая лига
- **Demotion Zone**: низ 5 (для всех кроме Bronze)
- **Sustain Zone**: 8-25 место → остаются в текущей лиге
- **Награды**:
  - Топ 1 → 50 gems
  - Топ 2 → 30 gems
  - Топ 3 → 20 gems
  - Топ 4-10 → 10 gems
  - Promotion bonus → 50 gems

### Diamond League специально:
- Топ 7 не переходят выше (некуда)
- Есть **Diamond Tournament** — особый ежемесячный турнир

---

## 🏗️ Архитектура

### Опции:
1. **Расширить gamification-service** (рекомендую)
2. **Новый social-service** (если будут много функций)

**Решение:** Часть в gamification-service, отдельный микросервис не нужен на старте.

### Особенности:
- **Redis Sorted Sets** для leaderboards (быстрая сортировка)
- **Cron job** для weekly rotation (воскресенье 23:59)
- **Kafka events** при изменении XP → обновление leaderboard в реальном времени

---

## 💾 База данных

### `leagues` — каталог лиг
```sql
CREATE TABLE gamification.leagues (
    id          INT PRIMARY KEY,           -- 1-10
    code        VARCHAR(20) UNIQUE NOT NULL,  -- 'bronze', 'silver', etc
    name        VARCHAR(50) NOT NULL,
    icon_url    TEXT,
    color       VARCHAR(20),              -- HEX color
    tier        INT NOT NULL              -- 1-10 (sorting)
);

-- Seed data
INSERT INTO gamification.leagues (id, code, name, icon_url, color, tier) VALUES
(1, 'bronze', 'Bronze League', '/leagues/bronze.png', '#CD7F32', 1),
(2, 'silver', 'Silver League', '/leagues/silver.png', '#C0C0C0', 2),
(3, 'gold', 'Gold League', '/leagues/gold.png', '#FFD700', 3),
(4, 'sapphire', 'Sapphire League', '/leagues/sapphire.png', '#0F52BA', 4),
(5, 'ruby', 'Ruby League', '/leagues/ruby.png', '#E0115F', 5),
(6, 'emerald', 'Emerald League', '/leagues/emerald.png', '#50C878', 6),
(7, 'amethyst', 'Amethyst League', '/leagues/amethyst.png', '#9966CC', 7),
(8, 'pearl', 'Pearl League', '/leagues/pearl.png', '#EAE0C8', 8),
(9, 'obsidian', 'Obsidian League', '/leagues/obsidian.png', '#0B1215', 9),
(10, 'diamond', 'Diamond League', '/leagues/diamond.png', '#B9F2FF', 10);
```

### `user_leagues` — текущая лига пользователя
```sql
CREATE TABLE gamification.user_leagues (
    user_id         UUID PRIMARY KEY,
    league_id       INT NOT NULL REFERENCES gamification.leagues(id),
    cohort_id       UUID NOT NULL,              -- группа 30 человек
    weekly_xp       INT NOT NULL DEFAULT 0,
    rank_in_cohort  INT,                        -- 1-30 (обновляется по cron)
    joined_at       TIMESTAMPTZ DEFAULT NOW(),
    last_updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_user_leagues_cohort_xp ON gamification.user_leagues(cohort_id, weekly_xp DESC);
```

### `cohorts` — группы по 30 человек в каждой лиге
```sql
CREATE TABLE gamification.cohorts (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    league_id       INT NOT NULL REFERENCES gamification.leagues(id),
    cycle_start_at  TIMESTAMPTZ NOT NULL,        -- понедельник 00:00
    cycle_end_at    TIMESTAMPTZ NOT NULL,        -- воскресенье 23:59
    is_finished     BOOLEAN DEFAULT FALSE,
    member_count    INT DEFAULT 0,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_cohorts_league_cycle ON gamification.cohorts(league_id, cycle_start_at);
```

### `league_history` — история выступлений
```sql
CREATE TABLE gamification.league_history (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    league_id       INT NOT NULL,
    cohort_id       UUID NOT NULL,
    cycle_start_at  TIMESTAMPTZ NOT NULL,
    final_xp        INT NOT NULL,
    final_rank      INT NOT NULL,
    promoted        BOOLEAN,
    demoted         BOOLEAN,
    gems_earned     INT DEFAULT 0,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_league_history_user ON gamification.league_history(user_id, cycle_start_at DESC);
```

### `friendships`
```sql
CREATE TABLE gamification.friendships (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id_1       UUID NOT NULL,
    user_id_2       UUID NOT NULL,
    status          VARCHAR(20) NOT NULL,        -- 'pending', 'accepted', 'blocked'
    requested_by    UUID NOT NULL,
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW(),
    
    CHECK (user_id_1 < user_id_2),               -- normalized order
    UNIQUE(user_id_1, user_id_2)
);

CREATE INDEX idx_friendships_user1 ON gamification.friendships(user_id_1, status);
CREATE INDEX idx_friendships_user2 ON gamification.friendships(user_id_2, status);
```

### Redis Sorted Sets (для real-time):
```
leaderboard:cohort:{cohort_id}     # ZSET, score = weekly_xp, member = user_id
leaderboard:global                  # ZSET, score = total_xp, member = user_id
leaderboard:friends:{user_id}       # ZSET (друзья пользователя)
```

---

## 📐 Бизнес-логика

### 1. Распределение в когорты:

```go
func AssignToCohort(userID UUID, leagueID int) {
    // Найти cohort с < 30 members
    cohort := FindOrCreateCohort(leagueID)
    
    // Добавить юзера
    InsertUserLeague(userID, leagueID, cohort.ID)
    
    // Обновить counter
    cohort.MemberCount++
    UpdateCohort(cohort)
    
    // Добавить в Redis sorted set
    redis.ZAdd("leaderboard:cohort:" + cohort.ID, 0, userID)
}
```

### 2. Обновление XP в лиге:

```go
// При любом AddXP вызове
func OnXPGained(userID UUID, amount int) {
    userLeague := GetUserLeague(userID)
    userLeague.WeeklyXP += amount
    UpdateUserLeague(userLeague)
    
    // Update Redis sorted set
    redis.ZIncrBy("leaderboard:cohort:" + userLeague.CohortID, amount, userID)
}
```

### 3. Weekly rotation (cron):

```go
// Запуск: каждое воскресенье 23:59 UTC
func WeeklyLeagueRotation() {
    activeCohorts := GetActiveCohorts()
    
    for _, cohort := range activeCohorts {
        // Получить ranking из Redis
        members := redis.ZRevRange("leaderboard:cohort:" + cohort.ID, 0, -1)
        
        for rank, userID := range members {
            user := GetUserLeague(userID)
            
            // Записать историю
            history := LeagueHistory{
                UserID:       userID,
                LeagueID:     cohort.LeagueID,
                CohortID:     cohort.ID,
                FinalXP:      user.WeeklyXP,
                FinalRank:    rank + 1,
            }
            
            // Promotion
            if rank < 7 && cohort.LeagueID < 10 {
                user.LeagueID++
                history.Promoted = true
                history.GemsEarned = promotionGems(rank)
            }
            
            // Demotion  
            if rank >= 25 && cohort.LeagueID > 1 {
                user.LeagueID--
                history.Demoted = true
            }
            
            // Top 3 bonus
            if rank == 0 { history.GemsEarned += 50 }
            else if rank == 1 { history.GemsEarned += 30 }
            else if rank == 2 { history.GemsEarned += 20 }
            
            // Reset weekly XP
            user.WeeklyXP = 0
            
            SaveHistory(history)
            UpdateUserLeague(user)
            
            // Reassign cohort
            ReassignToCohort(userID, user.LeagueID)
        }
        
        cohort.IsFinished = true
        UpdateCohort(cohort)
    }
    
    // Cleanup Redis
    cleanupOldRedisSets()
}

func promotionGems(rank int) int {
    return []int{50, 40, 30, 25, 20, 15, 10}[rank]
}
```

### 4. Friends system:

```go
func RequestFriendship(fromUserID, toUserID UUID) error {
    // Normalize order
    user1, user2 := normalize(fromUserID, toUserID)
    
    existing := GetFriendship(user1, user2)
    if existing != nil {
        if existing.Status == "blocked" {
            return ErrBlocked
        }
        return ErrAlreadyExists
    }
    
    return CreateFriendship(Friendship{
        UserID1: user1,
        UserID2: user2,
        Status: "pending",
        RequestedBy: fromUserID,
    })
}

func AcceptFriendship(userID, friendID UUID) error {
    f := GetFriendship(normalize(userID, friendID))
    if f.RequestedBy == userID {
        return ErrCannotAcceptOwn
    }
    f.Status = "accepted"
    return UpdateFriendship(f)
}
```

---

## 🔌 API Endpoints

### Leagues
```
GET    /api/v1/leagues                          — все лиги (каталог)
GET    /api/v1/leagues/mine                     — моя текущая лига
GET    /api/v1/leagues/mine/leaderboard         — мой leaderboard (30 чел)
GET    /api/v1/leagues/history                  — моя история лиг
```

**Response /mine/leaderboard:**
```json
{
  "league": { "id": 3, "code": "gold", "name": "Gold League" },
  "cohort_id": "uuid",
  "cycle_end_at": "2026-05-18T23:59:00Z",
  "my_rank": 4,
  "my_weekly_xp": 320,
  "members": [
    { "rank": 1, "user_id": "...", "username": "Alice", "weekly_xp": 580, "avatar_url": "..." },
    { "rank": 2, "user_id": "...", "username": "Bob", "weekly_xp": 540, "avatar_url": "..." },
    ...
  ],
  "zones": {
    "promotion": [1, 2, 3, 4, 5, 6, 7],
    "demotion": [26, 27, 28, 29, 30]
  }
}
```

### Friends
```
GET    /api/v1/friends                          — список моих друзей
GET    /api/v1/friends/pending                  — pending requests
POST   /api/v1/friends/request                  — отправить запрос
       { "user_id": "uuid" }
POST   /api/v1/friends/accept/:friendshipId     — принять
POST   /api/v1/friends/reject/:friendshipId     — отклонить
DELETE /api/v1/friends/:friendId                — удалить из друзей
GET    /api/v1/friends/search?q=username        — поиск по username
GET    /api/v1/friends/leaderboard              — leaderboard среди друзей
```

### Global Leaderboard
```
GET    /api/v1/leaderboard/global?period=week   — топ всех
GET    /api/v1/leaderboard/global?period=all    — alltime
```

---

## 💾 Бэкенд задачи

### 4.1 Миграции
- [ ] `001_create_leagues.up.sql` + seed
- [ ] `002_create_cohorts.up.sql`
- [ ] `003_create_user_leagues.up.sql`
- [ ] `004_create_league_history.up.sql`
- [ ] `005_create_friendships.up.sql`

### 4.2 Repositories
- [ ] `repository/league_repo.go`
- [ ] `repository/cohort_repo.go`
- [ ] `repository/user_league_repo.go`
- [ ] `repository/league_history_repo.go`
- [ ] `repository/friendship_repo.go`

### 4.3 Services

#### `service/league_service.go`:
- [ ] `AssignNewUserToCohort(userID)` — при первой активности
- [ ] `OnXPGained(userID, amount)` — обновить weekly_xp + Redis
- [ ] `GetUserLeaderboard(userID)`:
  - [ ] Получить cohort
  - [ ] Прочитать из Redis (быстро)
  - [ ] Обогатить usernames через User Service
- [ ] `WeeklyRotation()` — cron функция
- [ ] `FindOrCreateCohort(leagueID)` — найти cohort с < 30 members

#### `service/friendship_service.go`:
- [ ] `Request(fromID, toID)`
- [ ] `Accept(userID, friendshipID)`
- [ ] `Reject(userID, friendshipID)`
- [ ] `Remove(userID, friendID)`
- [ ] `GetFriends(userID)`
- [ ] `GetPending(userID)`
- [ ] `Search(query)` — через User Service

### 4.4 Redis integration

```go
// repository/redis_leaderboard.go
type RedisLeaderboard struct {
    client *redis.Client
}

func (r *RedisLeaderboard) AddXP(cohortID UUID, userID UUID, amount int) error {
    key := fmt.Sprintf("leaderboard:cohort:%s", cohortID)
    return r.client.ZIncrBy(key, float64(amount), userID.String()).Err()
}

func (r *RedisLeaderboard) GetTop(cohortID UUID, n int) ([]LeaderboardEntry, error) {
    key := fmt.Sprintf("leaderboard:cohort:%s", cohortID)
    return r.client.ZRevRangeWithScores(key, 0, int64(n-1)).Result()
}

func (r *RedisLeaderboard) GetRank(cohortID, userID UUID) (int, error) {
    key := fmt.Sprintf("leaderboard:cohort:%s", cohortID)
    return r.client.ZRevRank(key, userID.String()).Result()
}
```

### 4.5 Cron jobs
- [ ] **Weekly Rotation** — воскресенье 23:59 UTC
- [ ] **Rank Update** — каждые 10 минут обновлять rank_in_cohort из Redis в БД (для аналитики)

### 4.6 Интеграция с Gamification
- [ ] При `AddXP` в gamification → вызвать `league.OnXPGained`
- [ ] Kafka topic `xp.gained` — для асинхронной обработки

### 4.7 User Service интеграция
- [ ] Метод `GetUsersByIDs(ids []UUID)` для leaderboard
- [ ] Метод `SearchByUsername(query)` для friend search

### 4.8 Тесты
- [ ] Cohort assignment: 31-й юзер → новый cohort
- [ ] Weekly rotation: promotion/demotion работает правильно
- [ ] Friendship: cannot send self
- [ ] Redis sync с PostgreSQL

---

## 🎨 Фронтенд задачи

### Web (Next.js):

#### Страницы:
- [ ] `/leagues` — главная лиг
  - Hero: текущая лига + icon
  - Timer до конца недели
  - Leaderboard (30 человек)
  - Promotion/Demotion zones подсвечены
- [ ] `/leagues/history` — история лиг
- [ ] `/friends` — список друзей
  - Sub-tabs: All, Pending, Search
  - Leaderboard среди друзей
- [ ] `/friends/search` — поиск друзей

#### Компоненты:
- [ ] `LeagueBadge.tsx` — иконка лиги
- [ ] `LeaderboardRow.tsx` — строка в таблице
  - Avatar, username, weekly_xp, rank
  - Подсветка promotion/demotion
- [ ] `LeagueTimer.tsx` — countdown до конца недели
- [ ] `PromotionAnimation.tsx` — большая анимация при попадании в promotion zone
- [ ] `FriendCard.tsx`
- [ ] `FriendRequestCard.tsx`

### Mobile (Expo):

#### Screens:
- [ ] `(tabs)/leagues.tsx` — табка с лигами (или включить в profile)
- [ ] `friends/index.tsx`
- [ ] `friends/search.tsx`

#### Анимации:
- [ ] **Promotion celebration** — большая анимация (Lottie)
- [ ] **Demotion warning** — пред-понедельник push: "You're in danger zone"
- [ ] **Friend joined league** — toast notification

### Hooks:
- [ ] `use-league.ts` — моя лига + leaderboard
- [ ] `use-friends.ts` — друзья
- [ ] `use-friend-request.ts` — mutations

### Real-time updates:
- [ ] **Polling** каждые 30 сек на странице leaderboard (или WebSocket)
- [ ] **Optimistic update** при AddXP — сразу прибавить в локальном rank

---

## ✅ Acceptance Criteria

### Backend:
- [x] Новый user автоматически попадает в Bronze League
- [x] Weekly XP обновляется в Redis в реальном времени
- [x] Cohorts создаются по 30 человек
- [x] Weekly rotation работает (можно протестировать с mock time)
- [x] Friends CRUD работает
- [x] Leaderboard выдается быстро (< 100ms)

### Frontend:
- [x] /leagues показывает leaderboard
- [x] Видно promotion/demotion zones
- [x] Timer до конца недели
- [x] При получении XP видно обновление (anim)
- [x] Friends search работает
- [x] Friend leaderboard доступен

### UX:
- [x] **FOMO эффект** — видно что соревнование идет
- [x] **Promotion celebration** — большая награда визуально
- [x] **Smooth animations** при изменении rank
- [x] Понятно сколько XP до следующего места

---

## 🔬 Тестирование

### Manual scenarios:
1. Зарегистрироваться → попасть в Bronze cohort с другими новичками
2. Получить XP → rank в leaderboard обновляется
3. Дойти до топ-7 → promotion celebration animation
4. Конец недели → переход в Silver
5. Не выполнять уроки неделю в Silver → demotion в Bronze
6. Отправить запрос дружбы → видно в pending
7. Принять запрос → видно в friends list
8. Friends leaderboard работает

### Edge cases:
- Один в когорте? → дождаться других / искусственно дополнить
- Все юзеры в Diamond top-7? → никто не повышается
- Friend заблокировал тебя → не может видеть твой XP

---

## 📚 Референсы

### Inspiration:
- **Duolingo Leagues** — главный источник
  - https://blog.duolingo.com/leaderboards/
- **Strava clubs** — групповая активность
- **MMORPG leaderboards** — World of Warcraft, etc.

### Технические:
- **Redis Sorted Sets:** https://redis.io/docs/data-types/sorted-sets/
- **WebSocket alternatives:** Server-Sent Events, polling
- **Cron in Go:** github.com/robfig/cron

---

## 📝 Замечания

### Психология:
- **Loss aversion** — страх demotion сильнее радости promotion
- **Social proof** — видя что друзья учатся, ты тоже хочешь
- **Reciprocity** — кто-то добавил в друзья → хочется ответить

### Гриферство:
- **Sandbagging** — намеренно не учиться чтобы попасть в lower league
  - Решение: minimum XP для активного участия
- **Smurfing** — создание новых аккаунтов чтобы быть топ
  - Решение: rate limiting на регистрации

### Performance:
- 1000 cohorts * 30 users = 30000 records в Redis — норм
- Weekly rotation должен быть batch операцией
- Использовать Redis pipelining

---

**Предыдущий шаг:** [Phase 3: Адаптивное обучение](./phase-3-adaptive-learning.md)  
**Следующий шаг:** [Phase 5: AI интеграция](./phase-5-ai-integration.md)
