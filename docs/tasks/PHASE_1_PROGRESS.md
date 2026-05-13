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

## ⏭️ Что осталось — Phase 1 frontend

> **Scope (по решению):** делаем web + mobile параллельно, lesson flow
> получает **topbar + toast'ы** (анимация +XP, level-up, achievement unlock,
> daily-goal hit).

### Web — `eng_next2`

#### Foundation
- [ ] **`src/types/api.ts`** — добавить типы из gamification proto: `UserStats`,
  `Hearts`, `DailyGoal`, `DailyGoalProgress`, `Streak`, `StreakDay`,
  `StreakHistory`, `XPTransaction`, `Achievement`, `UserAchievement`,
  `AddXPResponse`. Поле `next_level_xp` уже есть в proto.
- [ ] **`src/lib/gamification-api.ts`** — клиент поверх существующего
  `ApiClient`: `getMyStats()`, `getHearts()`, `refillHearts()`,
  `getDailyGoal()`, `updateDailyGoal()`, `getStreakHistory()`,
  `useStreakFreeze()`, `listAchievements()`, `getMyAchievements()`,
  `getXPHistory()`.

#### Hooks (TanStack Query, как в `use-tracks`)
- [ ] **`src/hooks/use-user-stats.ts`** — `useUserStats()` (`/gamification/stats`).
- [ ] **`src/hooks/use-hearts.ts`** — `useHearts()` + `useRefillHearts()` mutation.
- [ ] **`src/hooks/use-daily-goal.ts`** — `useDailyGoal()` + `useUpdateDailyGoal()`.
- [ ] **`src/hooks/use-streak.ts`** — `useStreakHistory(days)` + `useUseFreeze()`.
- [ ] **`src/hooks/use-achievements.ts`** — `useAchievements(filter)` +
  `useMyAchievements()`.
- [ ] **`src/hooks/use-xp-history.ts`** — пагинация по `/gamification/xp/history`.

#### Components `src/components/gamification/`
- [ ] **`HeartCounter.tsx`** — иконка ❤️ × N + таймер до следующей регенерации
  (использует `next_heart_at`).
- [ ] **`XPBar.tsx`** — полоска прогресса к следующему уровню (на основе
  `next_level_xp` из stats).
- [ ] **`StreakBadge.tsx`** — огонёк 🔥 + число дней. Серый, если streak=0.
- [ ] **`LevelBadge.tsx`** — компактный бейдж текущего уровня.
- [ ] **`DailyGoalRing.tsx`** — SVG-кольцо прогресса дневной цели.
- [ ] **`XPGainAnimation.tsx`** — toast "+15 XP" с fade-in/out.
- [ ] **`AchievementToast.tsx`** — toast при unlock'е (иконка + title + XP/gems
  reward).
- [ ] **`AchievementCard.tsx`** — карточка достижения (locked/unlocked,
  category, tier).
- [ ] **`AchievementsGrid.tsx`** — сетка всех achievement'ов, фильтр по
  category, разделение locked / unlocked.
- [ ] **`StreakCalendar.tsx`** — календарь streak'а (последние 30 дней,
  цвет: completed / freeze / missed).
- [ ] **`GamificationTopbar.tsx`** — комбо HeartCounter + StreakBadge +
  XPBar + LevelBadge для шапки.

#### Интеграция в navbar
- [ ] **`src/components/navbar.tsx`** (или где сейчас) — рядом с «Треки»
  показывать `<GamificationTopbar />` для авторизованных. На мобильной
  ширине — только StreakBadge + HeartCounter.

#### Интеграция в lesson flow
- [ ] **`src/app/lessons/[id]/page.tsx`** (или вокруг
  `POST /progress/steps/:id/complete`):
  - после успеха `step.complete` берем `AddXPResponse` (но! сейчас
    progress endpoint возвращает только LessonProgress — gateway придется
    либо отдельный вызов `/gamification/stats` сделать, либо расширить
    ответ). Простейший путь — после complete: `queryClient.invalidate(['user-stats'])` + всплывающий toast с дельтой,
    рассчитанной локально (или через свежий `getMyStats()`).
  - если `leveled_up` → большая level-up анимация (Lottie/CSS).
  - если `unlocked_achievements.length` → серия `AchievementToast`.
  - если `daily_goal_progress.completed` впервые → конфетти.
- [ ] **toast-провайдер**: проверить что в проекте уже есть toast-механизм
  (sonner / react-hot-toast / shadcn `useToast`). Если нет — поднять.

#### Страницы
- [ ] **`src/app/profile/page.tsx`** — расширить: блок stats (level, XP,
  streak), последние achievements, ссылки на subpages.
- [ ] **`src/app/profile/stats/page.tsx`** — детальная статистика: XP
  history (через `use-xp-history`), графики по дням (recharts?).
- [ ] **`src/app/profile/achievements/page.tsx`** — `AchievementsGrid` +
  фильтры.
- [ ] **`src/app/profile/streak/page.tsx`** — `StreakCalendar` + кнопка
  «Активировать freeze» (с подтверждением).

#### i18n
- [ ] `lib/i18n.tsx` — ключи `gamification.{hearts,xp,streak,level,
  daily_goal,achievements,locked,unlocked,freeze}` (ru + en).

### Mobile — `eng_mob`

> Стиль NativeWind, как остальные экраны (`bg-card border-4 border-border
> rounded-3xl`, `bg-primary` CTA). Анимации через `react-native-reanimated`.

#### Foundation
- [ ] **`src/types/api.ts`** — те же типы, что и в web (можно скопировать).
- [ ] **`src/lib/api-client.ts`** — добавить `GamificationApi` namespace
  с теми же методами, что и web-клиент.

#### Hooks
- [ ] **`src/hooks/use-user-stats.ts`** + аналоги остальных пяти —
  точные RN-аналоги web-версий.

#### Components `src/components/gamification/`
- [ ] **`HeartCounter.tsx`** — `View` с иконками + countdown.
- [ ] **`XPBar.tsx`** — анимированная полоска (`Animated.View`).
- [ ] **`StreakBadge.tsx`**.
- [ ] **`LevelBadge.tsx`**.
- [ ] **`DailyGoalRing.tsx`** — `react-native-svg`.
- [ ] **`XPGainAnimation.tsx`** — Reanimated `withSpring` + fade.
- [ ] **`AchievementModal.tsx`** — bottom-sheet/modal с анимацией unlock.
- [ ] **`AchievementCard.tsx`**.
- [ ] **`StreakCalendar.tsx`**.

#### Tabs / topbar
- [ ] **`app/(tabs)/_layout.tsx`** — над основным контентом тонкий
  «sticky-row» с HeartCounter / StreakBadge / XPBar. Видим на всех табах
  для авторизованных.

#### Lesson screen
- [ ] **`app/learn/[lessonId].tsx`** — после `LessonsApi.completeStep`:
  показать `XPGainAnimation`, на `leveled_up` → конфетти (Lottie),
  на `unlocked_achievements` → `AchievementModal`. Plus haptic feedback
  (`expo-haptics`) на ключевых событиях.

#### Sounds (опционально, можно отложить)
- [ ] `expo-av` + ассеты `correct.mp3`, `level_up.mp3`, `achievement.mp3`,
  `streak.mp3`. Настройка отключения в настройках профиля.

#### Screens
- [ ] **`app/(tabs)/profile.tsx`** — расширить, как в web.
- [ ] **`app/profile/stats.tsx`**.
- [ ] **`app/profile/achievements.tsx`**.
- [ ] **`app/profile/streak.tsx`**.

---

## 🧰 Поддерживающие задачи (можно делать параллельно)

- [ ] **Gateway extension** — чтобы фронт не делал 2 запроса при completion
  шага, расширить `POST /progress/steps/:id/complete` ответ полем
  `gamification?: AddXPResponse` (опционально, если клиент настроен).
- [ ] **`SubmitQuizAnswer` → LoseHeart** — когда переедем на Phase 2
  форматы, в `quiz-service.SubmitAnswer` добавить вызов
  `gamification.LoseHeart(userID)` при неправильном ответе. Сейчас
  заблокировано тем, что quiz-service не знает gamification-клиент.
- [ ] **Cross-service achievement triggers** — `courses_completed`,
  `perfect_quizzes`, `languages`, `birthday`. Требует данных от course /
  quiz / user сервисов, пока no-op.
- [ ] **Timezone-aware streak** — сейчас всё в UTC; для корректного
  «потерял streak в полночь» нужен `user.timezone` от user-service.
