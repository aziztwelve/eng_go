# Phase 1 — Progress Log

> Живой статус Phase 1 (геймификация). Обновляется по мере закрытия задач.
> См. [README.md](./README.md) и [phase-1-gamification.md](./phase-1-gamification.md).

**Дата последнего обновления:** 2026-05-13
**Статус:** 🟡 **Backend Done, Frontend Pending**

---

## ✅ Сделано — Backend

### Новый сервис `services/gamification-service`

Структура полностью соответствует плану + конвенциям остальных сервисов
(`platform/pkg/{logger,closer,postgres}`, godotenv-конфиг,
`internal/{app,api,config,model,repository,service,converter,cron}`).

Точки входа:
- gRPC: `:50058` (`GamificationService` из `shared/proto/gamification/v1`).
- Schema: `gamification` (новый юзер `gamification_user`).
- Запуск: `cd services/gamification-service && go run ./cmd`.

#### 2.1 Proto + миграции + seed

- **`shared/proto/gamification/v1/gamification.proto`** — 19 RPC методов:
  Stats, XP, Hearts, DailyGoal, Streak, Achievements + event-hooks
  `OnStepCompleted` / `OnLessonCompleted`. Сгенерировано через `task proto:gen`.
- **Миграции** (`migrations/000001..000005`):
  - `user_stats` — level, XP, hearts, gems, freezes.
  - `xp_transactions` — журнал XP.
  - `daily_goals` + `daily_goal_progress`.
  - `streak_history` — день, completed, used_freeze.
  - `achievements` (catalog) + `user_achievements`.
- **Seed** `seeds/001_achievements.sql` — **32 achievements** в категориях
  learning / streak / xp / special (включая `first_step`, `on_fire` (7-day),
  `century_club` (100-day), `dragon` (365-day), `night_owl`, `valentine` и др.).
- **`deploy/compose/core/init-db.sql`** — добавлены схема `gamification` и
  пользователь `gamification_user`.
- **Taskfile**: `task migrate-up-gamification`, `task seed-gamification`,
  включены в `migrate-up-all` и `MODULES`/`SERVICES`.

#### 2.2 / 2.3 Модели, репозитории, сервисы

- `model/{stats,xp,daily_goal,streak,achievement}.go`.
- `repository/repository.go` — интерфейсы `StatsRepository`, `XPRepository`,
  `DailyGoalRepository`, `StreakRepository`, `AchievementRepository`.
- `repository/postgres/*.go` — реализации на `pgxpool`.
- `service/`:
  - `levels.go` — формула из плана: `xp_threshold(L) = 100·(L-1)·L/2`,
    `CalcLevel` / `CalcLevelInfo` (XPIntoLevel, XPToNext).
  - `xp_rules.go` — XP за тип шага (text=10 / video=15 / quiz=20, +10 за
    perfect score / match|translate|fill_blank=15 / listening=20).
  - `xp.go` — `AddXP`: пишет транзакцию, апдейтит stats/level/weekly,
    апдейтит daily-goal, дергает `CheckAchievements`.
  - `hearts.go` — `LoseHeart` (запускает таймер регенерации, если был max),
    `RefillHearts` (по reason), `RegenerateOne` (cron-ed).
  - `streak.go` — `UpdateStreak` идемпотентен в рамках дня; учитывает freeze
    (вчера-пропуск + есть freeze → streak++, помечаем yesterday.used_freeze).
  - `daily_goal.go` — get/update goal + сегодняшний прогресс.
  - `achievements.go` — `CheckAchievements`: проверяет каталог,
    разблокирует, начисляет XP/gems reward. Поддерживает criteria types:
    `streak`, `total_xp`, `daily_goal_completed`, `steps_completed`,
    `lessons_completed`, `time_of_day`, `date`, `weekend_pair`, `comeback`.
    Остальные (`courses_completed`, `perfect_quizzes`, `languages`,
    `birthday`) — пока no-op, требуют данных от других сервисов.
  - `hooks.go` — `OnStepCompleted` (XP по StepKind) / `OnLessonCompleted`
    (бонус XP + UpdateStreak + повторная проверка достижений).

#### 2.4 gRPC API

`internal/api/gamification/v1/api.go` — реализованы все 19 методов с
валидацией (`codes.InvalidArgument`) и маппингом `repository.ErrNotFound`
в `codes.NotFound`. Конвертеры в `internal/converter/converter.go`.

#### 2.5 Интеграция в course-service

- `internal/client/gamification/grpc.go` — реальная gRPC реализация
  существующего интерфейса `Client`. Существующий `noop.go` оставлен как
  fallback.
- В `app.go` свитч: если `GAMIFICATION_SERVICE_ADDR` задан → используется
  gRPC клиент, иначе noop. Ошибки gamification не блокируют основной
  поток (только Warn в логах).
- `StepCompletedEvent` расширен полем `StepType` (text/video/quiz/...) —
  пробрасывается в `progress.MarkStepComplete` из `step.Type`, чтобы
  gamification-service мог начислять разный XP по типу шага.
- `deploy/env/.env` + `deploy/env/course.env.template` +
  `deploy/compose/course/.env` дополнены `GAMIFICATION_SERVICE_ADDR`.

#### 2.6 Cron jobs

`internal/cron/cron.go` — две горутины:
- **Hearts regen**: каждые `CRON_HEARTS_EVERY` (default 5m) опрашивает
  `stats.ListReadyForHeartRegen` и зовет `RegenerateOne`.
- **Daily loop**: срабатывает раз в сутки в `CRON_STREAK_DAILY` (default
  `00:05` UTC). По понедельникам делает `stats.ResetWeeklyXP()`.

Cron корректно стопится через `closer` при shutdown.

#### 2.7 Gateway

- `internal/client/gamification.go` — обертка над gRPC клиентом.
- `internal/handler/gamification.go` — REST handlers:
  - `GET /api/v1/gamification/stats` / `stats/:userId`
  - `GET /api/v1/gamification/hearts`
  - `POST /api/v1/gamification/hearts/refill`
  - `GET /api/v1/gamification/daily-goal` / `PUT`
  - `GET /api/v1/gamification/streak/history?days=N`
  - `POST /api/v1/gamification/streak/freeze`
  - `GET /api/v1/gamification/achievements` / `achievements/mine`
  - `GET /api/v1/gamification/xp/history`
- Все под `protected` группой (auth middleware).
- DI: `GamificationClient` лениво создается, **может быть nil** если
  `GATEWAY_GAMIFICATION_SERVICE_ADDR` не задан — тогда роуты просто
  не регистрируются.

#### 2.8 Тесты

`internal/service/{levels,streak,hearts,xp}_test.go` + `fakes_test.go`
с in-memory репозиториями:

- **levels**: `TestCalcLevel`, `TestCalcLevelInfo_Boundaries`,
  `TestXPThresholdMonotonic` — проверяют формулу `100·L·(L-1)/2`.
- **streak**: первый день, два подряд, идемпотентность за день,
  сброс при пропуске, использование freeze.
- **hearts**: lose → запуск таймера, повторный lose не сбрасывает таймер,
  saturate at 0, refill до max обнуляет таймер, RegenerateOne до/после срока.
- **xp**: level up при 110 XP, completion daily goal при 25/20,
  отказ при amount ≤ 0.

Все билдятся и проходят:
```
$ go test ./... -count=1
ok  github.com/elearning/gamification-service/internal/service  0.007s
```

Весь воркспейс собирается и проходит `go vet` без ошибок.

---

## 📌 Замечания / открытые вопросы

- **`is_correct` всё ещё всегда `true`** — оригинальное Phase-0 примечание
  остается. Различение правильно/неправильно появится с введением форматов
  Phase 2 (translate/match/fill-in), там же будет проброс `LoseHeart` из
  квиз-логики.
- **`CheckAchievements` не оптимизирован по trigger** — проверяется весь
  каталог. Для 32 записей это нормально; при росте надо отфильтровать.
- **`xp_transactions` count by reason** делается через `ListByUser`-пагинацию.
  Если транзакций много — добавить отдельный `CountByReason` метод в репо.
- **Гранулярность hearts**: при потере следующих сердец таймер не двигается
  (Duolingo-style), а регенерация идет последовательно с шагом 30 минут.
- **Timezone**: сейчас всё считается в UTC. План упоминает streak по
  таймзоне пользователя — нужен `user.timezone` от user-service, отложено.

---

## ⏭️ Что осталось (Phase 1 frontend)

- `eng_next2/src/components/gamification/*` — HeartCounter, XPBar,
  StreakBadge, DailyGoalRing, AchievementToast, AchievementsGrid.
- `eng_next2/src/hooks/use-{user-stats,hearts,daily-goal,achievements}.ts`.
- `eng_next2/src/lib/gamification-api.ts` — API клиент.
- Страницы `/profile/stats`, `/profile/achievements`, `/profile/streak`.
- Topbar с hearts / streak / XP.
- Аналогичная работа в `eng_mob`.
