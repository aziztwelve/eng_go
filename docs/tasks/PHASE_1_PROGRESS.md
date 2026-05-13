# Phase 1 — Progress Log

> Живой статус Phase 1 (геймификация). Обновляется по мере закрытия задач.
> См. [README.md](./README.md) и [phase-1-gamification.md](./phase-1-gamification.md).

**Дата последнего обновления:** 2026-05-13
**Статус:** 🟢 **Backend Done, Frontend Done (web + mobile) + Late additions (cross-service triggers, TZ-aware streak, haptics/sounds, Lottie level-up)**

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

## ✅ Сделано — Frontend (web + mobile)

> **Scope:** делали web + mobile параллельно, lesson flow получает
> topbar + toast'ы (+XP, level-up, achievement unlock, daily-goal hit).
> Финальная проверка: `npx tsc --noEmit` зелёный в обоих проектах,
> `eslint` без ошибок в новых файлах.

### Web — `eng_next2`

#### Foundation
- ✅ **`src/types/api.ts`** — добавлены типы `UserStats`, `Hearts`, `DailyGoal`,
  `DailyGoalProgress`, `Streak`, `StreakDay`, `StreakHistory`, `XPTransaction`,
  `XPHistoryResponse`, `Achievement`, `UserAchievement`,
  `AchievementsResponse`, `UserAchievementsResponse`, `AddXPResponse`,
  `RefillReason`, `XPReason`, `ProtoTimestamp`. Помечено что Gateway
  возвращает proto-timestamp как `{seconds, nanos}` либо RFC3339 string.
- ✅ **`src/lib/gamification-api.ts`** — `GamificationApi` namespace
  (`getMyStats`, `getUserStats`, `getHearts`, `refillHearts`, `getDailyGoal`,
  `updateDailyGoal`, `getStreakHistory`, `consumeStreakFreeze`,
  `listAchievements`, `getMyAchievements`, `getXPHistory`) + хелпер
  `tsToDate()` для нормализации proto-timestamps.

#### Hooks
- ✅ **`use-user-stats.ts`** — `useUserStats()` + `useUserStatsById(userId)`.
- ✅ **`use-hearts.ts`** — `useHearts()` (auto-refetch каждую минуту) +
  `useRefillHearts()`.
- ✅ **`use-daily-goal.ts`** — `useDailyGoal()` + `useUpdateDailyGoal()`.
- ✅ **`use-streak.ts`** — `useStreakHistory(days)` + `useUseFreeze()`.
- ✅ **`use-achievements.ts`** — `useAchievements(filter)` + `useMyAchievements()`.
- ✅ **`use-xp-history.ts`** — `useXPHistory(limit)` + `useXPHistoryInfinite()`
  для пагинации.
- ✅ **`use-gamification-fx.ts`** — workaround-хук, который после
  complete-step снимает before-snapshot из кэша, перезапрашивает
  stats / my-achievements / daily-goal, диффит и триггерит +XP, level-up,
  achievement и daily-goal toasts. Обновляет `useCompleteStep` в use-progress
  больше не показывает дубль "Step completed!".

#### Components `src/components/gamification/`
- ✅ **`HeartCounter.tsx`** — ❤️ × N + countdown до следующего сердца.
  Поддерживает `unlimited` (∞ для premium). Тикер активен только когда
  есть таймер (eslint-clean).
- ✅ **`XPBar.tsx`** — полоса к следующему уровню. Использует формулу
  `100·L·(L-1)/2`, идентичную бэкенду.
- ✅ **`StreakBadge.tsx`** — 🔥 + число; серый при streak=0.
- ✅ **`LevelBadge.tsx`** — `Lv N` бейдж в трёх размерах.
- ✅ **`DailyGoalRing.tsx`** — SVG-кольцо `xp_earned / goal`, плавный
  переход через `transition-[stroke-dashoffset]`.
- ✅ **`XPGainAnimation.tsx`** — sonner `toast.custom` варианты:
  `showXPGainToast(amount)`, `showLevelUpToast(level)`, `showDailyGoalToast()`.
- ✅ **`AchievementToast.tsx`** — `showAchievementToast(ua)` +
  `showAchievementToasts(list)` (пакетные unlocks с задержкой 800ms).
- ✅ **`AchievementCard.tsx`** — locked / unlocked состояния, tier-цвета,
  иконки/Award fallback, бейджи category/tier/XP reward.
- ✅ **`AchievementsGrid.tsx`** — фильтр по category, разделение
  unlocked / locked, лоадер.
- ✅ **`StreakCalendar.tsx`** — последние 30 дней, completed/freeze/missed.
- ✅ **`GamificationTopbar.tsx`** — комбо-блок для navbar; `compact` режим
  для мобильной ширины (только StreakBadge + HeartCounter).
- ✅ Index-файл `components/gamification/index.ts`.

#### Navbar
- ✅ `src/components/navbar.tsx` — заменили хардкод Flame/Heart 5/3 на
  `<GamificationTopbar />`. На <sm экране — `compact`. В user-меню
  добавлены пункты Profile / Achievements / Stats.

#### Lesson flow
- ✅ `src/app/lessons/[id]/page.tsx` — после `completeStep.mutateAsync`
  вызываем `useLessonGamificationFx()`. Toast-провайдер `sonner` уже был
  подключен в `app/layout.tsx`.
- ✅ `useCompleteStep` → убрали "Step completed! 🎉" toast (дубль).

#### Pages
- ✅ `app/profile/page.tsx` — карточка stats (level/total_xp/streak/hearts),
  DailyGoalRing + XPBar + StreakBadge + HeartCounter, recent achievements,
  навигация к под-страницам.
- ✅ `app/profile/stats/page.tsx` — XP history (`useXPHistoryInfinite` с
  "Загрузить ещё"), bar chart за 14 дней, daily-goal preset
  (10/20/30/50 XP).
- ✅ `app/profile/achievements/page.tsx` — `AchievementsGrid`.
- ✅ `app/profile/streak/page.tsx` — `StreakCalendar`, кнопка freeze c
  `confirm()`, легенда completed/freeze/missed.

#### i18n
- ✅ `lib/i18n.tsx` — добавлены `common.profile` (ru/en) и блок
  `gamification.*` (15 ключей: hearts/xp/streak/level/daily_goal/
  daily_goal_done/achievements/locked/unlocked/freeze/freeze_active/
  freeze_confirm/level_up/total_xp/weekly_xp/max_streak/no_achievements/
  regen_in).

### Mobile — `eng_mob`

> Стиль NativeWind, анимации через `react-native-reanimated`.
> Toast — `react-native-toast-message`. Иконки — `lucide-react-native`.
> Установлен `react-native-svg` (он же подтянулся peer-dep'ом для lucide).

#### Foundation
- ✅ `src/types/api.ts` — те же типы что в web (скопированы).
- ✅ `src/lib/api-client.ts` — `GamificationApi` namespace + `tsToDate()`.

#### Hooks
- ✅ `use-user-stats.ts`, `use-hearts.ts`, `use-daily-goal.ts`,
  `use-streak.ts`, `use-achievements.ts`, `use-xp-history.ts`,
  `use-gamification-fx.ts` (вариант с `silent` — UI рисует свои оверлеи
  через `XPGainAnimation` + `AchievementModal`, иначе fallback на
  `Toast.show`).

#### Components `src/components/gamification/`
- ✅ `HeartCounter.tsx`, `StreakBadge.tsx`, `LevelBadge.tsx`, `XPBar.tsx`.
- ✅ `DailyGoalRing.tsx` — настоящий SVG (`react-native-svg`) как в web.
- ✅ `XPGainAnimation.tsx` — Reanimated v3+, `withSequence`+`withDelay`,
  fade in / move up / fade out, ~1.6s, c `onDone` callback.
- ✅ `AchievementModal.tsx` — Modal + Reanimated `withSpring` для scale,
  tier-цвета, "Круто!" CTA.
- ✅ `AchievementCard.tsx`, `StreakCalendar.tsx`.
- ✅ `GamificationTopbar.tsx` — sticky-row с StreakBadge / HeartCounter /
  LevelBadge.
- ✅ Index `components/gamification/index.ts`.

#### Tabs / topbar
- ✅ `app/(tabs)/_layout.tsx` — обернули `Tabs` в `SafeAreaView` +
  `<GamificationTopbar />` сверху. Видим на всех табах для авторизованных.

#### Lesson screen
- ✅ `app/learn/[lessonId].tsx` — после `completeStepMutation` зовем
  `fireGamificationFx({ silent: true })`, на основе результата:
  - `xpGained > 0` → `<XPGainAnimation />` оверлей.
  - `newAchievements` → последовательная очередь `<AchievementModal />`.
- ✅ `useCompleteStep` → убрали "Step completed! 🎉" toast.

#### Screens
- ✅ `app/(tabs)/profile.tsx` — переписан: user-card, quick-stats,
  DailyGoalRing+XPBar, recent achievements, навигация к stats / streak /
  achievements, logout.
- ✅ `app/profile/_layout.tsx` — Stack-layout с тёмным header'ом.
- ✅ `app/profile/stats.tsx` — daily-goal presets, 14-day bar chart,
  XP history с пагинацией.
- ✅ `app/profile/achievements.tsx` — фильтры категории, разделение
  unlocked/locked.
- ✅ `app/profile/streak.tsx` — `StreakCalendar`, freeze-button с
  `Alert.alert`, stats блок (current/max/freezes).

---

## 🧰 Поддерживающие задачи (можно делать параллельно)

- [ ] **Gateway extension** — чтобы фронт не делал 2 запроса при completion
  шага, расширить `POST /progress/steps/:id/complete` ответ полем
  `gamification?: AddXPResponse` (опционально, если клиент настроен).
- [ ] **`SubmitQuizAnswer` → LoseHeart** — когда переедем на Phase 2
  форматы, в `quiz-service.SubmitAnswer` добавить вызов
  `gamification.LoseHeart(userID)` при неправильном ответе. Сейчас
  заблокировано тем, что quiz-service не знает gamification-клиент.
- [x] **Cross-service achievement triggers** — `courses_completed`,
  `perfect_quizzes`, `quiz_completed`, `languages`, `birthday`. Закрыто
  2026-05-13 (см. секцию «Late additions» ниже).
- [x] **Timezone-aware streak** — закрыто 2026-05-13: `user.Client.Timezone`
  + кэш профиля + `Service.todayInTZ/nowInTZ` в gamification.

---

## 🌟 Late additions (2026-05-13)

### 4. Cross-service achievement triggers (5 типов из 13 ранее no-op)

#### Proto / миграции / модель
- ✅ `shared/proto/gamification/v1/gamification.proto` — добавлены RPC
  `OnCourseCompleted` (с `language` для `languages`) и `OnQuizCompleted`
  (с `score_percentage` / `is_passed`).
- ✅ `shared/proto/quiz/v1/quiz.proto` — `CompleteQuizAttemptResponse.xp`
  (`optional gamification.v1.AddXPResponse`), чтобы фронт получал XP-payload
  inline.
- ✅ `gamification-service/migrations/000006_add_learned_languages.sql` —
  `user_stats.learned_languages text[]` (денормализация для `languages`
  без обращений к course-service).
- ✅ `model/xp.go` — `XPReasonCourseCompleted`, `XPReasonQuizCompleted`,
  `XPReasonQuizPerfect`. Разные reason'ы позволяют `matchCriteria`
  считать `perfect_quizzes` отдельно от `quiz_completed`.
- ✅ `model/stats.go` — `UserStats.LearnedLanguages []string`.

#### Gamification service
- ✅ `service/hooks.go` — `OnCourseCompleted` (appendLearnedLanguage с
  dedupe + bonus 100 XP), `OnQuizCompleted` (40 XP perfect / 15 XP passed
  / no-op при failed).
- ✅ `service/xp_rules.go` — `XPForCourseBonus()`, `XPForQuizCompleted()`.
- ✅ `service/achievements.go` `matchCriteria` — реальная логика для
  `courses_completed` (по `XPReasonCourseCompleted`), `perfect_quizzes`
  (по `XPReasonQuizPerfect`), `quiz_completed` (regular + perfect),
  `languages` (по `stats.LearnedLanguages`), `birthday` (через user-client).
- ✅ `internal/api/gamification/v1/api.go` — реализованы оба новых RPC,
  конвертеры в `internal/converter/converter.go`.
- ✅ `internal/client/user/{client,grpc,noop}.go` — узкий клиент к
  user-service: `DateOfBirthMMDD` + `Timezone` через общий
  `GetProfile`-снимок с 5-минутным in-memory TTL-кэшем.
- ✅ `internal/app/app.go` — инициализация user-client из
  `USER_SERVICE_ADDR` (noop если пусто), регистрация closer'а.

#### Course-service интеграция
- ✅ `internal/client/gamification/{client,grpc,noop}.go` — добавлен
  `OnCourseCompleted(ctx, CourseCompletedEvent)` рядом с
  `OnStep/OnLessonCompleted`.
- ✅ `internal/service/progress.go` — `maybeFireCourseCompleted` после
  `OnLessonCompleted`: загружает `GetCourseProgress`, при
  `completedLessons == totalLessons` дергает `OnCourseCompleted` с
  `course.Language`. Идемпотентность обеспечена guard'ом `existingProgress
  == nil || !existingProgress.Completed` — фаерится ровно один раз.

#### Quiz-service интеграция
- ✅ `internal/client/gamification/{client,grpc,noop}.go` — добавлен
  `OnQuizCompleted(ctx, QuizCompletedEvent)` рядом с `OnWrongAnswer`.
- ✅ `internal/service/quiz/service.go` `CompleteQuizAttempt` — теперь
  возвращает `(*model.QuizAttempt, *gamificationv1.AddXPResponse, error)`,
  с guard'ом `attempt.CompletedAt != nil` (повторный submit не фаерит
  gamification дважды). Добавлена защита от деления на 0 для квизов без
  вопросов.
- ✅ `internal/api/quiz/v1/api.go` — проксирует XP-payload в
  `CompleteQuizAttemptResponse.Xp`.

#### Тесты
- ✅ `gamification-service/internal/service/hooks_test.go` (новый файл,
  17 тестов): `TestOnCourseCompleted_*` (3), `TestOnQuizCompleted_*` (3),
  `TestMatchCriteria_*` (perfect_quizzes / quiz_completed / courses_completed
  / birthday match/mismatch/no-profile / TZ-aware варианты).

---

### 5. Timezone-aware streak / daily-goal / achievements

#### User-client расширен
- ✅ `gamification-service/internal/client/user/client.go` — интерфейс
  получил `Timezone(ctx, userID) (string, error)`.
- ✅ `client/user/grpc.go` — один `GetProfile` RPC заполняет
  `profileSnapshot{dobMMDD, timezone, expires}`, кэш `sync.Mutex + map`
  с `profileCacheTTL = 5 * time.Minute`. Ошибка RPC кэшируется как пустой
  snapshot, чтобы недоступность user-service не приводила к N gRPC-вызовов
  за один step-completion. Оба метода (`DateOfBirthMMDD`, `Timezone`)
  читают из общего кэша.
- ✅ `client/user/noop.go` — `Timezone` возвращает `""` (UTC fallback).

#### TZ-aware helpers в Service
- ✅ `internal/service/service.go` — добавлены `userLocation`, `nowInTZ`,
  `todayInTZ`. `userLocation` делает `time.LoadLocation(tz)` с UTC-fallback
  при пустом / невалидном имени. `today()` сохранен с `Deprecated`-комментом
  для не-пользовательских процессов (cron, ResetWeeklyXP).
- ✅ Заменены callsites, где «день» зависит от пользователя:
  - `service/streak.go` UpdateStreak: today/yesterday в зоне юзера.
  - `service/daily_goal.go` GetDailyGoal: progress.Date в зоне юзера.
  - `service/xp.go` bumpDailyGoal: date в зоне юзера.
  - `service/achievements.go` matchCriteria: `nowInTZ` для `time_of_day`,
    `date`, `birthday`.
  - `service/achievements.go` checkWeekendPair: today + Sunday detection
    в зоне юзера.

#### Тесты (новые в `hooks_test.go`)
- ✅ `TestMatchCriteria_BirthdayUsesUserTimezone` — UTC 23:30 12 May →
  Moscow 02:30 13 May → unlock с `dob = "05-13"`.
- ✅ `TestMatchCriteria_TimeOfDayUsesUserTimezone` — «ночная сова» 22-6
  срабатывает на 23:00 Moscow, не на 18:00 UTC.
- ✅ `TestStreak_AdvancesAcrossDayBoundaryInUserTimezone` — UTC 22:00 одного
  дня → Moscow 01:00 следующего → streak инкрементируется.
- ✅ `TestStreak_SameLocalDayStillIdempotent` — два вызова в один локальный
  день → streak=1.
- ✅ `TestUserLocation_InvalidTimezoneFallsBackToUTC` — невалидная зона
  не роняет, fallback на UTC.

**Trade-off**: `streak_history` / `daily_goal_progress` хранят `date` без
зоны — смысл записи «локальный день в зоне юзера на момент действия». При
смене зоны юзером на ±N часов на стыке дня возможна потеря streak'а или
дубль daily-goal на ±1 день. Документировано в комментарии у `todayInTZ`,
считается допустимым для MVP.

---

### 6. Haptics + sounds на mobile (`eng_mob`)

#### Зависимости
- ✅ `package.json` — добавлен `expo-haptics ~15.0.7` (SDK 55 совместимый).
  `expo-av ^16.0.8` уже был для видео-плеера, использован для звуков.

#### FX-движок (3 модуля в `src/lib/`)
- ✅ `fx-prefs.ts` — AsyncStorage-backed preferences
  (`@eng:fx-prefs`, поля `haptics`/`sounds`, defaults: оба `true`).
  In-memory snapshot + listener-pattern; `getFxPreferences()` синхронный
  для горячего пути, hydration ленивая. `useFxPreferences()` React-хук
  для экрана настроек.
- ✅ `sound-manifest.ts` — реестр `FxSound = correct|wrong|xp-gain|level-up|
  achievement|daily-goal`. Все слоты `null` по умолчанию (Metro не примет
  отсутствующий `require()`). `hasSoundAsset(name)` для проверки.
- ✅ `fx.ts` — центральный движок: 6 композитных событий
  (`onCorrect/onWrong/onXPGain/onLevelUp/onAchievement/onDailyGoal`) +
  `tap()`. Каждое = haptic + sound. `onLevelUp` делает double-pulse
  (Heavy impact → 120мс → Success notify) — событие легко узнаваемо.
  Sound-кэш с `setPositionAsync(0)` перед `playAsync` для борьбы с
  наслоением быстрых повторов. `Audio.setAudioModeAsync` лениво,
  `playsInSilentModeIOS: true` (UI-звуки слышны и в mute).

#### Wiring
- ✅ `components/lesson/quiz-step.tsx` — `fx.onCorrect()` / `fx.onWrong()`
  внутри `handleSubmit`.
- ✅ `app/learn/[lessonId].tsx` — `fx.onXPGain/onLevelUp/onDailyGoal/
  onAchievement` в `then`-колбэке `fireGamificationFx`. Локальная
  переменная `fx` переименована в `result`, чтобы не пересекаться с
  импортом. На пачку achievements — один haptic+sound (модалки сами
  идут по очереди).

#### Настройки
- ✅ `app/profile/settings.tsx` — два Switch'а (Haptic / Sound) с
  preview-эффектом при включении (`fx.tap()` / `fx.onXPGain()`).
- ✅ `app/(tabs)/profile.tsx` — NavRow «⚙️ Настройки» добавлен.

#### Дизайнерский guide
- ✅ `assets/sounds/README.md` — таблица «событие → длительность →
  референс», техтребования (MP3 128 kbps / 44.1 кГц / mono / <100 KB),
  пошаговый рецепт регистрации ассета (одна строка в `sound-manifest.ts`).

---

### 7. Lottie на level-up (`eng_mob`)

#### Зависимости
- ✅ `lottie-react-native ~7.3.4` через `npx expo install` (SDK 55).

#### Манифест и компонент
- ✅ `src/lib/lottie-manifest.ts` — `LOTTIE_ASSETS: Record<'level-up' |
  'achievement', unknown | null>`, та же pattern что у sound-manifest.
- ✅ `src/components/gamification/LevelUpOverlay.tsx` — full-screen
  `Modal` overlay:
  - **Lottie слой**, если `LOTTIE_ASSETS['level-up']` зарегистрирован.
  - **Reanimated-fallback** иначе: орбитальная карусель из 6 эмодзи
    (✨🎉🌟🎊) вокруг центральной ⭐, `withTiming(360deg, 3000ms)`.
  - Entrance: spring-scale (0.6→1) + fade-in карточки; label slide-up
    с delay 120 мс — ощущение «текст пришёл вторым».
  - "LEVEL UP" + level number в амбер-бейдже + "Tap to continue".
  - Auto-dismiss через `AUTO_DISMISS_MS = 3200ms` или тап по фону.
  - Cleanup на `useEffect` сбрасывает shared values для следующего
    level-up.
  - `Modal` (не absolute) — рендерится выше header/tabbar/nav,
    `onRequestClose` для Android back-press.

#### Wiring
- ✅ `app/learn/[lessonId].tsx`:
  - Локальный state `levelUpTo: number | null`.
  - На `result.leveledUp`: Toast убран, `setLevelUpTo(result.newLevel)` +
    `fx.onLevelUp()` (haptic+sound из п.6).
  - `<LevelUpOverlay level={levelUpTo} onDismiss={...} />` рядом с
    AchievementModal / XPGainAnimation.
- ✅ `components/gamification/index.ts` — экспорт `LevelUpOverlay`.

#### Дизайнерский guide
- ✅ `assets/lottie/README.md` — таблица «событие → длительность →
  canvas», техтребования (Lottie JSON / transparent / no raster /
  <50 KB / single loop), пошаговый рецепт, ссылки на lottiefiles.

---

## ✅ Verification (Late additions)

- `cd services/* && go build ./...` — все 7 сервисов компилируются.
- `cd services/gamification-service && go test ./internal/service/` — 17
  юнит-тестов в `hooks_test.go` зелёные (cross-service triggers + TZ).
- `cd services/quiz-service && go test ./...` — зелёные.
- `cd eng_mob && npx tsc --noEmit` — TypeScript clean.

---

## 📋 Что осталось дизайнеру (1 строка кода на каждое)

- **6 MP3** в `eng_mob/assets/sounds/` + раскомментировать в
  `sound-manifest.ts` (см. README в папке).
- **2 Lottie JSON** в `eng_mob/assets/lottie/` (`level-up.json`,
  опционально `achievement.json`) + раскомментировать в
  `lottie-manifest.ts`. До этого момента работают встроенные
  Reanimated-fallback'и — полноценные анимации, не плейсхолдеры.
