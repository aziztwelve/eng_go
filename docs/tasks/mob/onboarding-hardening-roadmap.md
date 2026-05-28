# Mobile Onboarding & Auth Hardening — Roadmap

**Контекст:** На предыдущем спринте (см. изменения в `eng_mob/src/`) была переработана
архитектура mobile-онбординга и auth по 8 направлениям best-practice (см. секцию
«Сделано» ниже). Документ описывает оставшийся backlog — что нужно сделать **mobile**
и **backend** для production-ready состояния.

**Срок:** ориентировочно 3-4 спринта в зависимости от приоритизации.
**Зависимости:** Phase 0 (guest mode), Phase 3 (push), `onboarding-v3-oki-style.md`.
**Статус:** 📝 Planning.

---

## 0. Что уже сделано (предыдущий спринт)

8 архитектурных рефакторингов в `eng_mob`:

1. **Secure token storage** — JWT в `expo-secure-store` (Keychain/Keystore) c прозрачной
   миграцией legacy AsyncStorage-токенов. Новый файл
   `src/lib/secure-store.ts` + изменения в `src/lib/auth-service.ts`.
2. **Offline mutation queue** — persistent FIFO-очередь pending-PATCH'ей онбординга
   с smart-merge, hard cap 50, max-attempts 10, NetInfo listener для drain'а на online.
   Файлы: `src/lib/onboarding-mutation-queue.ts`, `src/hooks/use-onboarding.ts`,
   `src/app/_layout.tsx`.
3. **Idempotency-Key на claim** — persistent UUID per-attempt в AsyncStorage, защита
   от double-tap / network retry / crash-during-claim. Header `Idempotency-Key`
   проксируется в `AuthApi.claim` / `claimOAuth`. **Backend пока header игнорирует**
   — см. задачу [B1](#b1-idempotency-key-на-backend) ниже.
4. **Lazy guest creation** — гость создаётся только при первом тапе «Начать учиться»
   (через `ensureGuestSession()`), а не на app-boot. Снижает orphan-rows в `auth.users`
   в 5-10 раз.
5. **`useOnboardingStep` хук** — единый хук для типового select-and-continue шага.
   Унифицирован analytics + retry, экономия ~130 строк boilerplate'а на 10 экранах.
6. **Single source of truth** — backend = SoT, AsyncStorage = offline fallback only.
   Удалены дублирующие хуки (`useGuestSession`, `useRemoteOnboardingState`).
7. **Backward gesture-back** — `loadValue` селектор в `useOnboardingStep` подсасывает
   ранее сохранённое значение при возврате/restart/cross-device.
8. **Motivation API cleanup** — helper `motivationPatch()` инкапсулирует sentinel-флаг
   `motivation_set`. UI больше не дёргает raw protocol-поля.

Также сделан landing-redesign welcome (без выбора языка, простой intro) и Android-ветка
signup с email/password формой + Google OAuth (iOS остаётся Apple+Google).

---

## 1. Backlog — приоритизация

Метки: 🔴 = блокер для прода / app-store / GDPR; 🟠 = критично; 🟡 = production-readiness;
🟢 = UX-улучшения; 🔵 = нужно делать backend; ⚪ = polish.

### 🔴 App Store / Google Play / Legal блокеры

#### M1 — Account deletion flow
**Где:** `eng_mob` (UI) + `user-service` / `auth-service` (endpoint).
**Почему:** Apple Guideline 5.1.1(v) **обязывает** с июня 2022. Без этого reject.

- Новый экран `app/profile/delete-account.tsx`: confirmation-модалка → input email/password
  для re-auth → final confirmation → `DELETE /api/v1/users/me`.
- Backend RPC `UserService.DeleteAccount(user_id)` — soft-delete или hard-delete (TBD,
  GDPR требует hard в течение 30 дней).
- Каскад: `gamification.user_stats`, `srs.user_srs_items`, `social.friendships`,
  `notifications.devices`, `auth.users`. Использовать сервисную транзакцию или
  domain-event-cleanup (event → каждый сервис удаляет свои).
- Идемпотентность: повторный вызов после 200 → 404. JWT после удаления невалиден.

**Estimate:** M (3-5d).

#### M2 — Email verification flow
**Где:** `eng_mob` + `auth-service`.
**Почему:** На Android после email-signup юзер залогинен без подтверждения email.
Стандарт безопасности — verify-link.

- `auth-service`: добавить `email_verified BOOLEAN`, миграция, `VerifyEmail(token)`,
  `ResendVerification(user_id)`. Token — JWT или random + redis с TTL 24h.
- На claim password → отправить verify-email через `notifications-service`
  (новый channel `email_verification`). Шаблон (TBD: SES / Mailgun / Postmark).
- Mobile: после signup показывать banner «Подтвердите email» + deep-link
  `engmob://verify?token=...` → Universal/App-Link → POST verify → toast «email подтверждён».
- Опционально: ограничивать функции до verify (например, friends-features) —
  обсудить с продуктом.

**Estimate:** L (1w).

#### M3 — Password reset flow
**Где:** `eng_mob` + `auth-service` + `notifications-service`.

- `auth-service`: `RequestPasswordReset(email)` (rate-limited 1/min, всегда 200 чтобы
  не enumerate'ить email'ы) + `ResetPassword(token, new_password)`.
- Mobile: экран `app/auth/forgot-password.tsx` (input email → toast «если email
  существует, мы отправили инструкции») + `app/auth/reset-password.tsx`
  (новый password + confirm) — открывается через deep-link.
- Email шаблон через `notifications-service` (`channel=password_reset`).

**Estimate:** M (3-4d).

#### M4 — Real legal copy (T&C / Privacy)
**Где:** `eng_mob` (i18n) + публичный URL для App Store Connect.

- Заменить заглушки в `src/locales/{ru,en,kk}.ts` (`onboarding.welcome.terms_modal_body` /
  `privacy_modal_body`) на ревизованный юристом текст.
- Развернуть статические HTML-страницы `/legal/terms` и `/legal/privacy` (на лендинге или
  отдельном поддомене) — App Store Connect Privacy Policy URL.
- Обновить плейсхолдеры контактов (`support@`, `privacy@`).
- Проверить на соответствие GDPR (если EU/UK), CCPA (CA), 152-ФЗ (RU), КЗ-закон (KZ).
- Указать юрлицо (компания, адрес, ИНН/реквизиты) — обязательно для Privacy.

**Estimate:** S по разработке (1d) + блокер по юристу.

---

### 🟠 Безопасность (критично)

#### M5 — Refresh token rotation interceptor
**Где:** `eng_mob/src/lib/api-client.ts`.
**Почему:** Сейчас при 401 юзер просто разлогинится — нет автоматического refresh.

- В `ApiClient.request<T>()` добавить retry-once на 401: `POST /auth/refresh`
  с refresh-токеном → save tokens → retry оригинального запроса с новым access.
- При 401 на refresh → `AuthService.logout()` + redirect на `/auth/login`.
- Не race'ить параллельные refresh'и: in-memory promise-cache (как `pendingBootstrap`
  в `ensureGuestSession`).
- Backend уже умеет refresh (Phase 0).

**Estimate:** S (1d).

#### M6 — Proactive token refresh
**Где:** `eng_mob/src/lib/auth-service.ts`.

- Декодировать JWT (`expo-jwt-decode` или просто `atob` payload — без verify, только
  для чтения `exp`).
- Если до `exp` < 60 секунд → проактивно дёрнуть refresh.
- Обработать clock-skew (мобильное время может отставать) — buffer 60s достаточно.

**Estimate:** S (~half day).

#### M7 — PII в SecureStore
**Где:** `eng_mob/src/lib/auth-service.ts`.
**Почему:** `user` (email, username, avatar URL, иногда date_of_birth) лежит в plain
AsyncStorage. На root'нутом устройстве читается.

- Перенести `USER_KEY` в `secureStore`. Migration (одноразовая, как для токенов).
- Учесть лимит 2KB на значение в iOS Keychain — `user`-объект обычно < 1KB, OK.

**Estimate:** S (~half day).

#### M8 — Sentry / Crashlytics
**Где:** `eng_mob` (новый `src/lib/observability.ts`) + EAS config.

- Сейчас `src/lib/analytics.ts` — это no-op stub. В проде нужен реальный crash-reporting.
- Подключить `@sentry/react-native` (рекомендую — best DX для React Native + EAS).
- Конфиг: DSN через `EXPO_PUBLIC_SENTRY_DSN` env.
- Хуки: error-boundary в `_layout.tsx`, `Sentry.addBreadcrumb` для onboarding-step
  событий, source maps upload в EAS build hook.
- Privacy: filter PII перед отправкой (email, JWT, password).

**Estimate:** S-M (1-2d).

#### M9 — JWT-middleware enforcement на claim (backend)
**Где:** `auth-service`.
**Почему:** Сейчас `/auth/claim` принимает любой валидный JWT, не только guest.

- Middleware в `auth-service`: проверять `claims.is_guest == true` в токене для
  `/auth/claim` и `/auth/claim/oauth`. Иначе 403.
- Документировано в `AGENTS.md` как известный нюанс.

**Estimate:** S (~half day).

---

### 🟡 Production readiness

#### M10 — Tests
**Где:** `eng_mob` (новый `__tests__/` или `*.test.ts` co-located).

Минимум для безопасного релиза:

- **Unit:**
  - `src/lib/onboarding-mutation-queue.ts` — FIFO, smart merge, hard cap, max-attempts.
  - `src/lib/auth-service.ts` (`ensureGuestSession`) — race-protection, in-memory cache.
  - `src/lib/onboarding-patches.ts` — `motivationPatch` все 3 случая.
  - `src/hooks/use-claim-account.ts` — idempotency key persisted/cleared.
- **Integration (через MSW):**
  - `usePatchOnboardingV3` flow: optimistic + queue + drain on online.
- **E2E (Maestro recommend, проще чем Detox):**
  - Happy path: welcome → goal → age → level → daily-commit → … → done.
  - Offline path: убить network на step 5, продолжить, восстановить → drain.
  - Backward path: пройти до step 5, свайпнуть назад → значение должно подсосаться.

**Estimate:** L (1w для базы + culture).

#### M11 — CI/CD
**Где:** `.github/workflows/` в `eng_mob` или monorepo-level.

- GitHub Actions:
  - PR check: `npm ci && npx tsc --noEmit && npm run lint && npm test`.
  - Pre-existing typecheck-error в `src/app/ai/index.tsx` нужно фиксить (см. M14).
- EAS Build automation: trigger на tag `mobile-v*.*.*` → `eas build --platform all`.
- EAS Submit: автосабмит на TestFlight / Play Internal Testing.

**Estimate:** M (2-3d).

#### M12 — React Query persistor (опционально)
**Где:** `eng_mob/src/lib/query-client.ts` + удаление `src/lib/onboarding-storage.ts`.
**Почему:** Сейчас onboarding-storage — кастомный AsyncStorage-кэш поверх query-client.
Стандартный путь — `@tanstack/query-async-storage-persister` + `persistQueryClient`.

- Подключить persistor для всех queries.
- Удалить `onboarding-storage.ts` (~150 строк).
- `mergeBackendState` → не нужен, query-cache содержит всё.
- `useOnboardingState` → просто `useQuery({queryFn: OnboardingApi.getState})` с
  встроенным persistor'ом.

**Risk:** регрессия offline-mode на uncovered path. Сначала тесты (M10), потом этот
рефакторинг.

**Estimate:** M (2-3d) + нужны тесты.

#### M13 — Auth state machine
**Где:** новый `src/lib/auth-machine.ts`.
**Почему:** Сейчас auth логика размазана: `AuthService` (storage), `ensureGuestSession`,
`useClaimAccount`, `useAuth`, `useGuestSession` (deprecated). Сложно reasoning о
переходах.

- XState или type-state pattern: `unknown → checking → guest → authenticated → expired`.
- Single hook `useAuthState()` возвращает `{ status, user, signIn, signOut, ensureGuest }`.

**Estimate:** M (2-3d).

#### M14 — Pre-existing TS error
**Где:** `eng_mob/src/app/ai/index.tsx:114`.

```
TS2322: Type 'string' is not assignable to type ... | RelativePathString | …
```

Не относится к нашему рефакторингу, но мешает CI gate. Нужно исправить:
проверить что роут существует или добавить cast.

**Estimate:** S (~30min).

---

### 🟢 UX-улучшения онбординга

#### M15 — Resume-where-you-left-off
**Где:** `eng_mob/src/app/index.tsx`.
**Почему:** `current_step` уже сохраняется (`localExtra` в `usePatchOnboardingV3`),
но не используется для навигации.

- В root-роутер: при boot, если `!completed_at && current_step` → `router.replace`
  на сохранённый step.
- Edge-case: юзер прошёл несколько шагов offline → последний `current_step` локальный.
  Хотим именно этот, не backend-stale.

**Estimate:** S (~1d).

#### M16 — Persistent offline banner
**Где:** `eng_mob/src/components/ui/offline-banner.tsx` (new).
**Почему:** Сейчас только Toast «Сохранили локально, синкнем» — слабо заметно.

- Persistent top-banner (через `react-native-safe-area-context`): показывается когда
  `NetInfo.isConnected === false`.
- Counter pending patches из `onboardingMutationQueue.size()`.
- При восстановлении сети — короткая «Синхронизация…» → «Готово» → банер исчезает.

**Estimate:** S-M (1-2d).

#### M17 — Centralized flow config
**Где:** новый `eng_mob/src/lib/onboarding-flow.ts`.
**Почему:** `TOTAL_STEPS = 14` хардкод в **каждом** экране, фактически 24+ шага.
Step number per-screen хардкод.

```ts
export const ONBOARDING_FLOW = [
  { key: 'welcome',     route: '/onboarding/welcome',     trackable: true,  number: 1, total: ... },
  { key: 'goal',        route: '/onboarding/goal',        trackable: true,  number: 2, ... },
  { key: 'reaction',    route: '/onboarding/reaction',    trackable: false, ... },
  ...
];
```

- `useOnboardingStep` сам вычисляет `step / total` из flow-config по `step`-ключу.
- Удалить хардкод-константы из 17 экранов.

**Estimate:** M (2d).

#### M18 — placement-test / paywall / notifications в `useOnboardingStep`
**Где:** соответствующие screens.

- Сейчас эти 3 экрана не используют хук (нестандартный flow). Можно вынести
  общие части (`useOnboardingPermission`, `useOnboardingMultiChoice`).
- Нелинейный effort, можно сделать после M10 (тесты).

**Estimate:** M (2-3d).

#### M19 — Skip-onboarding для returning users
**Где:** `eng_mob/src/app/onboarding/welcome.tsx`.

- Кнопка «У меня уже есть аккаунт» уже ведёт на `/auth/login`. После успешного
  login проверять `onboarded_at`: если есть → `router.replace('/(tabs)')`,
  иначе → `/onboarding/goal` (resume).

**Estimate:** S (~half day, в основном уже есть логика в `useRegister`).

#### M20 — Goal narrowing runtime check
**Где:** `eng_mob/src/app/onboarding/goal.tsx`.
**Почему:** Сейчас `loadValue: (s) => (s.goal as Goal | null)` — narrow cast без
проверки. Если backend вернёт значение вне enum → undefined behaviour.

- Type guard `function isGoal(v: string | null): v is Goal` через `GOAL_ORDER.includes`.
- Аналогично для других narrow cast'ов в reaction-routes.

**Estimate:** S (~30min).

#### M21 — Update outdated comments
**Где:** `eng_mob/src/app/onboarding/_layout.tsx`.

```ts
// «5 шагов: welcome → language → level → goal → notifications → done»
```

— уже устарело, реально 24 шага. Обновить.

**Estimate:** S (5min).

---

### 🔵 Backend handoffs

#### B1 — Idempotency-Key на backend
**Где:** `auth-service`.
**Почему:** Mobile уже шлёт `Idempotency-Key: <uuid>` header на claim-endpoint'ах
(см. M3 предыдущего спринта). Сейчас backend header игнорирует.

- Таблица `auth.idempotency_keys (key UUID PK, response_json JSONB, created_at TIMESTAMPTZ)`.
- Middleware: при наличии header'а — lookup key. Если найден → вернуть сохранённый
  response без выполнения handler'а. Иначе → выполнить, сохранить response, return.
- TTL 24h — `pg_cron` или приложение sweep.
- Применить к `/auth/claim`, `/auth/claim/oauth`. Опционально — `/onboarding` (PATCH)
  для защиты от дублей в drain'е offline-queue.
- Stripe-style. Документировать в `AGENTS.md`.

**Estimate:** M (2-3d).

#### B2 — Cleanup-job для orphan-гостей
**Где:** `auth-service/internal/cron/cron.go`.
**Почему:** Lazy creation (M4 предыдущего спринта) уменьшил volume в 5-10×, но всё
ещё есть гости, которые тапнули CTA и пропали. Уже есть `Scheduler.GuestCleanup`
(описан в `AGENTS.md`), но проверить что реально работает и метрики adequate.

- Verify cron включён в проде (`GUEST_CLEANUP_ENABLED=true`).
- Default `GUEST_CLEANUP_CUTOFF_DAYS=90` — может быть слишком долго; обсудить 30.
- Метрика: log/Prometheus counter удалённых гостей. Если 0 — диагностировать.
- Учесть FK от других сервисов (gamification, srs, ...) — каскады в миграциях.

**Estimate:** S (~1d).

#### B3 — `current_step` enforcement (опционально)
**Где:** `user-service/internal/service/onboarding/patch_state.go`.

- Серверный guard, чтобы нельзя было PATCH'ить шаги назад / пропускать.
- Простая реализация: optional field `from_step` в request — если задан, проверять
  что `from_step == current_state.current_step`.
- Может усложнить offline-queue (нужно либо relax'ить, либо клиент шлёт `from_step`).

**Risk:** усложнение клиента. Возможно НЕ нужно, лучше доверять клиенту.

**Estimate:** S-M (1d).

#### B4 — OAuth account-linking при email-conflict
**Где:** `auth-service/service/auth/guest.go` (ClaimGuestOAuth).
**Почему:** Если Google/Apple вернёт email, который уже зарегистрирован — сейчас
скорее всего 409. С Idempotency-Key (B1) можно вернуть existing user, но что если
email совпал, а это другой человек? Нужна явная политика.

- Опции:
  1. Reject + сообщение «такой email уже зарегистрирован, войдите классически».
  2. Auto-link: если email совпал, привязать OAuth-провайдер к existing аккаунту.
     Безопасно только если OAuth-провайдер verified email.
- Решить с продуктом, имплементировать выбранный вариант.

**Estimate:** M (2d).

---

### 🟣 Аналитика и оптимизация

#### M22 — Real analytics SDK
**Где:** `eng_mob/src/lib/analytics.ts`.

Сейчас `analytics.track` — no-op. Подключить **PostHog** (рекомендую — open-source,
включает A/B testing) или Amplitude/Mixpanel.

- Identify в claim-success.
- Track все `onboarding_step_*` events (уже emit'ятся).
- Funnel-визуализация в дашборде.

**Estimate:** S (~1d).

#### M23 — A/B testing infra
**Где:** PostHog feature flags / GrowthBook / Statsig.

- Эксперименты на onboarding-flow: убрать paywall, сократить вопросы, разные copy.
- Single source feature flag: `useFeatureFlag('paywall_after_value_prop')`.

**Estimate:** S по интеграции (1d) + продуктовая работа на эксперименты.

#### M24 — Drop-off метрики per step
**Где:** дашборд PostHog (после M22).

- Воронка `onboarding_step_viewed` → `onboarding_step_completed` для каждого step_key.
- Алерт на drop-off > 30% (sanity).

**Estimate:** S (~half day).

---

### ⚪ Code quality / minor

#### M25 — Lint rules
**Где:** `eng_mob/eslint.config.js`.

- `no-restricted-imports`: запретить прямой `AsyncStorage` для `access_token`,
  `refresh_token` ключей (force-route через `secureStore`).
- `react-hooks/exhaustive-deps` на `error`-level (сейчас warning).
- Кастомное правило: запретить прямой `motivation` / `motivation_set` в product-коде
  (force-route через `motivationPatch`).

**Estimate:** S (~half day).

#### M26 — Pre-commit hooks
**Где:** `eng_mob/.husky/`.

- husky + lint-staged: typecheck + lint только на изменённых файлах.

**Estimate:** S (~30min).

---

## 2. Sprint planning suggestion

### Спринт 1 — App Store блокеры + базовая безопасность (1-2 недели)
- M1 (account deletion)
- M2 (email verification)
- M3 (password reset)
- M4 (legal copy — параллельно с юристом)
- M5 (refresh token interceptor)

### Спринт 2 — Production hardening (1-2 недели)
- M8 (Sentry)
- M10 (tests — минимум unit для критичных частей)
- M11 (CI)
- M14 (fix pre-existing TS error)
- M9 (claim middleware backend)
- B1 (Idempotency backend) — параллельно

### Спринт 3 — UX + Analytics (1 неделя)
- M15 (resume)
- M16 (offline banner)
- M17 (centralized flow config)
- M22 (real analytics)
- M19 (skip onboarding для returning users)

### Спринт 4+ — Polish и долгосрочные
- M6 (proactive refresh)
- M7 (PII в SecureStore)
- M12 (React Query persistor)
- M13 (auth state machine)
- M18 (placement-test/paywall в хук)
- B2-B4 (backend cleanup, OAuth linking)
- M23-M24 (A/B + funnel)
- M20-M21, M25-M26 (polish)

---

## 3. Out of scope (для этого roadmap'а)

- Полноценный paywall + Apple/Google billing (Phase 6).
- AI tutor mascot dialog system (отдельный план).
- RTL support (Arabic, Hebrew) — пока не нужно.
- Multi-account на одном устройстве — out of MVP.
- Cross-device session sync (sync через QR-code) — будет если попросят.

---

## 4. Open questions / для обсуждения

1. **Account deletion** — soft или hard delete? GDPR требует hard в течение 30d,
   но можно сначала soft (+anonymize) → cron hard через 30d.
2. **Email verification** — блокировать ли функции до verify? Если да — какие?
3. **Idempotency TTL** — 24h стандарт, но claim — терминальное событие, можно
   и 7d (на случай юзер закрыл app, открыл через неделю с тем же device_id).
4. **OAuth conflict policy** (B4) — auto-link или reject? Влияет на security и UX.
5. **Cleanup cutoff** — 30 / 60 / 90 дней? 30 кажется достаточно для guest без CTA.
6. **PostHog vs Amplitude** — для analytics + A/B. У PostHog есть OSS self-host
   (важно для GDPR/152-ФЗ если данные нельзя выпускать).

---

## 5. Приёмка

После каждого спринта:
- `eng_mob/`: `npx tsc --noEmit` + `npm run lint` clean.
- Затронутые backend services: `go build ./... && go test ./...` clean.
- E2E happy path не сломан (Maestro/manual smoke).
- Документация обновлена (`AGENTS.md` затронутого сервиса).
