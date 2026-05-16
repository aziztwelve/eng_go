# Mobile (eng_mob) — Progress Log

> Живой статус mobile-приложения (Expo SDK 55 + expo-router). 
> Backend готов на ~95%, web на ~90%, mobile отстаёт — этот файл закрывает разрыв.
> См. [PHASE_1_PROGRESS.md](./PHASE_1_PROGRESS.md), [PHASE_2_PROGRESS.md](./PHASE_2_PROGRESS.md),
> [PHASE_3_PROGRESS.md](./PHASE_3_PROGRESS.md), [PHASE_4_PROGRESS.md](./PHASE_4_PROGRESS.md),
> [PHASE_5_PROGRESS.md](./PHASE_5_PROGRESS.md).

**Дата старта:** 2026-05-16
**Дата последнего обновления:** 2026-05-16
**Статус:** 🟢 **Phase 3 mobile (SRS + practice + mistakes + strength + notifications/push) — DONE. Onboarding + Phase 4/5 — pending.**

---

## 📊 Текущее состояние mobile

### ✅ Уже сделано

**Phase 0 (standalone-контент):**
- Routes: `(tabs)/tracks/index`, `(tabs)/tracks/[id]`
- Components: `components/tracks/*`
- Hook: `use-tracks`, `use-daily-lesson`
- API: `TracksApi` в `lib/api-client.ts`

**Phase 1 (геймификация):**
- Components: `GamificationTopbar`, `XPBar`, `StreakBadge`, `HeartCounter`,
  `DailyGoalRing`, `LevelBadge`, `LevelUpOverlay`, `XPGainAnimation`,
  `AchievementCard`, `AchievementModal`, `StreakCalendar`
- Hooks: `use-user-stats`, `use-hearts`, `use-streak`, `use-daily-goal`,
  `use-achievements`, `use-xp-history`, `use-gamification-fx`
- Routes: `profile/stats`, `profile/streak`, `profile/achievements`,
  `profile/settings`
- FX-движок: `lib/fx.ts` (haptics + sounds), `lib/fx-prefs.ts`,
  `lib/sound-manifest.ts`, `lib/lottie-manifest.ts`
- API: `GamificationApi`

**Phase 2 (новые форматы шагов):**
- Components: `StepRenderer`, `translate-step`, `match-pairs-step`,
  `listening-step`, `fill-blank-step`, `tap-words-step`,
  `quiz-interactive-step`, `story-step`, `FeedbackBar`,
  `draggable-word-bank` (DnD через `react-native-gesture-handler` v2)
- Hook: `use-step-submit`, `use-steps`
- API: `StepValidationApi`, `VocabularyApi`, `TTSApi`
- Markdown в story-step через `react-native-markdown-display`

### ❌ Ещё нет

| # | Фаза | Что отсутствует | Приоритет |
|---|------|-----------------|-----------|
| 3 | Адаптивное обучение | `/practice/*`, `/profile/strength`, `SrsApi`, хуки | 🔥 P0 |
| 3 | Push notifications | `NotificationsApi`, inbox, Expo push registration | 🔥 P0 |
| — | Onboarding | Welcome → выбор языка → уровень → цель → первый урок | 🔥 P0 |
| 4 | Social | `/leagues/*`, `/friends/*`, `SocialApi` | 🟡 P1 |
| 5 | AI | `/ai/*` (chat/roleplay/writing/tutor/pronunciation), `AiApi` | 🟢 P2 |

---

## 🗺️ План работы

### Sprint 1 — Phase 3 mobile (P0) — ✅ DONE

#### 3M.1 — SRS API client + хуки ✅
- [x] `lib/api-client.ts`: `SrsApi` (getStats / getDue / getWeak / review /
  generatePracticeSession / listMistakes / listSkills / getWeakSkills)
- [x] `types/api.ts`: `SRSItem`, `SRSStats`, `SRSReviewRequest/Response`,
  `Mistake`, `MistakeFilter`, `PracticeItem`, `GeneratePractice*`,
  `SkillDecay`, `SkillStrengthsResponse`, `WeakSkillsResponse` +
  helpers `itemTypeShort` / `skillTypeShort` / `practiceSourceLabel`
- [x] `hooks/use-srs.ts`: `useSrsStats`, `useSrsDue`, `useSrsWeak`,
  `useSrsReview`, `useGeneratePracticeSession`, `useMistakes`,
  `useSkillStrengths`, `useWeakSkills` (query keys экспортированы для
  invalidation: `SRS_STATS_KEY` / `SRS_DUE_KEY` / `SRS_WEAK_KEY` /
  `MISTAKES_KEY` / `SKILLS_KEY` / `SKILLS_WEAK_KEY`)

#### 3M.2 — Practice routes ✅
- [x] `app/(tabs)/practice/_layout.tsx` — Stack
- [x] `app/(tabs)/practice/index.tsx` — Practice Hub:
  - SRS Stats card (due_now / mastered / learning / fresh + total /
    reviewed_today)
  - Big CTA «Поехали» → `/practice/session` (с описанием микса 50/30/20)
  - Quick-links на Mistakes и Strength c badge-счётчиками
  - EmptyState (если total == 0): объяснение + ссылка на курсы
- [x] `app/(tabs)/practice/session.tsx`:
  - На mount → `generatePracticeSession({size: 10})`
  - Внутри использует существующий `<StepRenderer>` (Phase 2)
  - Прогресс-бар X/N + SourceBadge (overdue / mistake / weak)
  - `useStepSubmit().mutateAsync` → backend pipeline сам пишет SRS-карточки
  - На завершении — summary (correct / total) + «Ещё одна сессия»
    (с invalidation всех SRS-keys)
- [x] `app/(tabs)/practice/mistakes.tsx`:
  - 3 таба: Не исправлены / Исправлены / Все
  - Pagination (PAGE_SIZE=20) с Назад/Вперёд
  - MistakeRow: badge + ×times_made + дата + expandable JSON ответа

#### 3M.3 — Strength view ✅
- [x] `app/profile/strength.tsx`:
  - 3 фильтра-таба: Все / Модули / Уроки
  - Top weak секция (top 5) + кнопка «Подтянуть» → /practice/session
  - Полный список (sort by current_strength ASC, слабые сверху)
  - SkillBar: progress-bar 0..100% (цвета: ≥80 emerald / ≥50 amber /
    остальное red), last_practiced дата
- [x] Линк из `(tabs)/profile.tsx` («💪 Сила навыков»)

#### 3M.4 — Notifications API + inbox + Preferences ✅
- [x] `lib/api-client.ts`: `NotificationsApi`
  (registerDevice / listDevices / unregisterDevice / getPreferences /
  updatePreferences / list / markRead / markAllRead)
- [x] `types/api.ts`: `DeviceToken`, `RegisterDeviceRequest`,
  `UserPreferences`, `NotificationLog`, `NotificationsReadFilter`,
  `NotificationChannelShort/Proto`, `DevicePlatformShort/Proto` +
  helpers `channelToShort`, `platformToShort`
- [x] `hooks/use-notifications.ts`: `useNotifications`,
  `useMarkNotificationRead`, `useMarkAllNotificationsRead`,
  `useNotificationPreferences`, `useUpdateNotificationPreferences`,
  `useNotificationDevices`, `useUnregisterDevice`
- [x] `app/profile/notifications.tsx`:
  - PushSubCard: subscribe-кнопка / denied-warning / unsupported-warning /
    «уже подписаны» — состояние из `usePushSubscription`
  - 5 каналов через `<Switch>`: practice_reminder / streak_risk /
    daily_goal / achievement / friend_request
  - Quiet hours: 2 HourStepper'а (0..23 с wrap-around)
  - Кнопка «Сохранить» dirty-aware
  - Список зарегистрированных devices с кнопкой «Удалить» (+ Alert
    confirmation)

#### 3M.5 — Expo push registration ✅
- [x] `npx expo install expo-notifications expo-localization`
  (`expo-device`, `expo-constants` уже стояли)
- [x] `lib/push-registration.ts`:
  - `setupPushHandler()` — глобальный handler для foreground push
    (shouldShowBanner/List/Sound/Badge=true)
  - `requestPushPermission()` — wraps `getPermissionsAsync` +
    `requestPermissionsAsync` (с canAskAgain check)
  - `getExpoProjectId()` — из `Constants.expoConfig.extra.eas.projectId`
    либо `Constants.easConfig.projectId`
  - `registerForPushNotifications()`: device check → permission →
    Android channel → `getExpoPushTokenAsync({projectId})` →
    `NotificationsApi.registerDevice({platform: 'expo', token, locale,
    user_agent})` → возвращает `{deviceId, token, created}` либо null
- [x] `hooks/use-push-subscription.ts`:
  - state: `unknown | unsupported | denied | undetermined |
    granted_no_token | subscribed`
  - на mount — `refresh()`: проверяет permission + ищет device с
    platform=expo в `NotificationsApi.listDevices()`
  - `subscribe()` / `unsubscribe(deviceId)` mutations с
    invalidation `NOTIF_DEVICES_KEY`
- [x] `setupPushHandler()` в `app/_layout.tsx` (mount-effect)

#### 3M.6 — Tabs / navigation ✅
- [x] Перенесли `app/practice/*` → `app/(tabs)/practice/*`
- [x] Добавили `<Tabs.Screen name="practice" title="Practice" icon=🧠>` в
  `(tabs)/_layout.tsx` (между Courses и Profile)
- [x] Линки в `(tabs)/profile.tsx`: «💪 Сила навыков», «🔔 Уведомления»

#### 3M.7 — Verification ✅
- [x] `npx tsc --noEmit` — clean
- [ ] `npm run lint` — не запустился (expo-lint требует сетевую установку
  ESLint конфига, таймаут). Не блокер.
- [ ] Smoke test на устройстве — следующая итерация (нужны Expo
  projectId + VAPID не нужен, но real device).

### Что ещё **не сделано** в Phase 3 mobile (отложено)

- **Notifications inbox UI** — `useNotifications()` hook готов, но
  отдельный экран `/profile/notifications/inbox` для просмотра журнала
  push'ей не сделан (не критично для MVP — push приходят в системный
  notification center).
- **Deep-linking из push** — `addNotificationResponseReceivedListener`
  не подключён. Сейчас тап по push открывает app, но не переводит на
  конкретный экран (например, push «practice_reminder» → /practice).
- **Auto-prompt subscribe** после login. Сейчас юзер должен сам зайти в
  /profile/notifications и нажать «Включить push». Это нормально для MVP
  (избегаем permission denied на onboarding'е), но для роста нужен
  ненавязчивый promotion в Phase 4.

---

### Sprint 2 — Onboarding (P0) — ✅ DONE (2026-05-16)

**Локальный storage (MVP-решение):**
- `lib/onboarding-storage.ts` — AsyncStorage-обёртка
  (`getOnboardingState` / `patchOnboardingState` / `markOnboardingComplete`
  / `resetOnboarding` / `isOnboarded`).
- Хранит `target_language` / `native_language` / `level` (`beginner | a1 |
  a2 | b1 | b2 | just_for_fun`) / `daily_goal_xp` / `notifications_prompted`
  / `completed_at`.
- **Почему локально:** gateway пока не выставляет публичный
  `PUT /users/me/profile` (есть только admin-роут). Чтобы не блокировать
  релиз, состояние — на устройстве. `daily_goal_xp` пишется в backend
  через существующий gamification API (`useUpdateDailyGoal`). TODO
  post-MVP: синкать `target_language` / `level` в user-service когда
  появится endpoint.

**Hooks:**
- `hooks/use-onboarding.ts`: `useOnboardingState` / `useIsOnboarded` /
  `usePatchOnboarding` / `useCompleteOnboarding` / `useResetOnboarding` +
  лёгкий `useOnboardingFlag` для guard-логики в layout'ах.

**Routes** (`app/onboarding/`):
- `_layout.tsx` — Stack без header'а, gesture-back enabled.
- `welcome.tsx` (step 1/5) — value prop + 4 фичи (адаптивное обучение,
  streak, лиги, AI-учитель).
- `language.tsx` (2/5) — 6 языков (en/es/de/fr/kk/ru).
- `level.tsx` (3/5) — 6 уровней включая `beginner` / `just_for_fun`.
- `goal.tsx` (4/5) — 4 пресета (10/20/30/50 XP), пишет в gamification
  (`PUT /api/v1/gamification/daily-goal`) + локальный state.
- `notifications.tsx` (5/5) — Phase 3 push-bridge: переиспользует
  `usePushSubscription`, кнопка «Включить» либо «Пропустить», статусный
  hint (subscribed / unsupported / denied / error).
- `done.tsx` (5/5 finish) — summary выбранных параметров, spring-in
  иконки ✓, success haptic + chime (`fx.onDailyGoal`),
  `markOnboardingComplete()` → `router.replace('/(tabs)')`.

**Общая UI-обёртка:**
- `components/onboarding/OnboardingShell.tsx` — `SafeAreaView` +
  header с back + progress-bar (`step/total`) + ScrollView body +
  sticky footer с primary-кнопкой Continue. `KeyboardAvoidingView` для
  iOS. `footerExtra` slot — для secondary action (Skip на
  `notifications.tsx`).

**Redirect logic / guard:**
- `hooks/use-auth.ts`: `useLogin` / `useRegister` после `saveAuthResponse`
  читают `isOnboarded()` и шлют `router.replace` в `/onboarding/welcome`
  либо `/(tabs)`.
- `app/index.tsx` — global guard: при mount проверяет
  `AuthService.isAuthenticated()` и `isOnboarded()`, делает
  `router.replace` в нужный экран. Без сессии — landing с Sign In /
  Sign Up. С сессией без onboarding — `/onboarding/welcome`. С обоими
  флагами — `/(tabs)`.

**Verification:**
- `npx tsc --noEmit` — clean.

**Что НЕ сделано (отложено):**
- Backend sync `target_language` / `level` (нужен публичный
  profile-update endpoint в gateway).
- `app/onboarding/first-lesson.tsx` — direct в track-lesson. Сейчас
  done-экран ведёт в `/(tabs)`, юзер сам выбирает первый урок. Это
  upgrade post-MVP.
- Server-side `onboarded_at` (per-user, кросс-устройство). Сейчас
  на новом девайсе onboarding пройдётся повторно.

---

### Sprint 3 — Phase 4 mobile (P1, ~4–5 дней)

#### 4M.1 — Social API + хуки
- [ ] `SocialApi`: `getMyLeague`, `getLeaderboard`, `getLeagueHistory`
- [ ] `FriendsApi`: 8 RPC обёрток (search, sendRequest, accept, decline,
  remove, block, list, listPending, friendsLeaderboard)
- [ ] Hooks: `use-my-league`, `use-leaderboard`, `use-friends`,
  `use-friend-search`, `use-pending-requests`

#### 4M.2 — Leagues routes
- [ ] `app/leagues/index.tsx` — Hub:
  - LeagueBadge (Bronze..Diamond) + текущий ранг
  - «View Leaderboard» / «History» buttons
- [ ] `app/leagues/leaderboard.tsx` — `FlatList` 30 cohort members:
  - Top-7 — promotion zone (зелёная полоса)
  - Bottom-5 — demotion zone (красная)
  - Sticky header с countdown до недельного reset
- [ ] `app/leagues/history.tsx` — список прошлых недель

#### 4M.3 — Friends routes
- [ ] `app/friends/index.tsx` — Friends list + leaderboard
- [ ] `app/friends/search.tsx` — поиск по username
- [ ] `app/friends/pending.tsx` — incoming/outgoing requests
- [ ] Push handler для `friend_request` channel: deep-link в pending

#### 4M.4 — Promotion overlay
- [ ] `components/social/PromotionOverlay.tsx` — Lottie / Reanimated
  fallback при league change

---

### Sprint 4 — Phase 5 mobile (P2, ~7–10 дней)

#### 5M.1 — AI API + хуки
- [ ] `AiApi`: `createConversation`, `sendMessage`, `listConversations`,
  `getConversation`, `submitWriting`, `getWritingFeedback`,
  `pronunciationCheck`, `tutorAsk`, `getQuota`
- [ ] Hooks: `use-ai-quota`, `use-ai-conversation`, `use-ai-writing`, ...

#### 5M.2 — AI routes
- [ ] `app/ai/index.tsx` — Hub: 5 карточек фич + QuotaWidget
- [ ] `app/ai/chat/[id].tsx` — чат с inline-corrections
- [ ] `app/ai/roleplay.tsx` — выбор сценария + chat
- [ ] `app/ai/writing.tsx` — textarea → AssessmentResult с 4 score-bars
- [ ] `app/ai/tutor.tsx` — single-shot QA
- [ ] `app/ai/pronunciation.tsx` — `expo-av` Recording → upload в MinIO
  → result с word-level scores

#### 5M.3 — Components
- [ ] `components/ai/QuotaWidget.tsx`
- [ ] `components/ai/ChatMessage.tsx` (с corrections / translation)
- [ ] `components/ai/VoiceRecorder.tsx` (через `expo-av.Audio.Recording`)
- [ ] `components/ai/AssessmentResult.tsx` (4 score-bars)

---

## 🔧 Технические заметки

### Reuse с web (eng_next2)

- **Логика API** — переиспользуется ~90% (типы, fetch wrapper).
- **Hook-композиция** — структура та же, но `react-query` уже стоит.
- **UI-компоненты** — пишутся с нуля (RN ≠ React DOM), но
  NativeWind tailwind-классы переиспользуются.
- **DnD (translate / tap_words)** — на mobile уже сделано через RNGH v2,
  у web — нативный HTML5 DnD. Обе реализации полностью независимы.

### Типы

`src/types/api.ts` — proto-mirror. При добавлении SRS / Notifications /
Social / AI типов — синхронизировать с `eng_next2/lib/types.ts`.

### Sound-assets для Phase 3

Для practice используем существующие звуки (correct / wrong / xp-gain).
Дополнительный звук `practice-complete.mp3` опционально — fallback на
`success.mp3`.

---

## ✅ Acceptance Criteria

### Phase 3 mobile MVP:
- [ ] Юзер видит due_now на Home / Practice tab
- [ ] Может пройти practice session из 10 шагов
- [ ] Mistakes отображаются и resolves при правильном ответе
- [ ] Strength chart показывает слабые навыки
- [ ] Push notification приходит на streak-risk / practice-reminder
- [ ] Settings notifications работают (channels + quiet hours)
- [ ] `tsc --noEmit` зелёный

### Onboarding:
- [x] Новый юзер проходит 5 шагов welcome → done → /(tabs)
- [x] `daily_goal_xp` сохраняется в gamification backend
- [x] Skip для старых юзеров (guard в `app/index.tsx` + хуках login/register)
- [ ] `target_language` / `level` сохраняются в user-service
  (отложено — нужен публичный profile-update endpoint в gateway)
- [ ] Direct в первый track-lesson вместо /(tabs) (post-MVP polish)

### MVP-блокеры закрыты:
- [x] Phase 3 mobile done
- [x] Onboarding done
- [x] Expo push token registration работает
- [ ] Хотя бы 1 язык × 1 курс × 20 уроков seed

---

## 📅 Roadmap (текущий sprint в `🟡 in progress`)

| Sprint | Цель | Длительность | Статус |
|--------|------|--------------|--------|
| 1 | Phase 3 mobile (practice + push) | 5–7 дней | ✅ DONE (2026-05-16) |
| 2 | Onboarding flow | 3–4 дня | ✅ DONE (2026-05-16) |
| 3 | Phase 4 mobile (leagues + friends) | 4–5 дней | ⏳ pending |
| 4 | Phase 5 mobile (AI) | 7–10 дней | ⏳ pending |
| – | Content seed (1 язык × 1 курс × 20 уроков) | 1–2 дня | ⏳ pending |

**Общий объём:** ~12–17 дней full-time до полного mobile MVP.
