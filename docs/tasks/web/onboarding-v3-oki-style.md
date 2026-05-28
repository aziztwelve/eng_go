# Web Onboarding v3 — Oki-style (13+ шагов, эмоциональный flow, AI mascot)

**Срок:** ~3 спринта (web-only; mobile реализуется параллельно по
`docs/tasks/mob/onboarding-v3-oki-style.md`).
**Сложность:** Высокая. Затрагивает: `eng_next2`, `user-service`, `auth-service`,
`course-service` (seed first-lesson), `gateway` (новые роуты), `notifications-service`
(reminder-slot-aware schedule + web-push subscription).
**Зависимости:** Phase 1 (gamification), Phase 2 (interactive steps для placement),
Phase 3 (push), а также backend-часть из mob-спеки (миграции / proto / OAuth claim).
**Статус:** 📝 Planning — это адаптация mobile-спеки v3 под Next.js 16 / React 19.

---

## 0. TL;DR

Сейчас на web (`eng_next2`) **онбординга нет вообще**: пользователь со страницы `/auth`
логинится / регистрируется по email+password и сразу попадает в `/dashboard`. Гостевого
режима и flow «попробовать до регистрации» — нет.

Делаем **тот же 14-шаговый Oki-style flow**, что и в mobile, но адаптированный под
веб-стек:

- **Стек:** Next.js 16 App Router (`src/app/onboarding/...`), React 19, Tailwind v4,
  Radix/shadcn-style компоненты (`src/components/ui/*`), TanStack Query, Sonner toast,
  кастомный `i18n-ns/*` (RU/EN/UZ/TG уже есть). НЕТ Expo / RN / Reanimated / Lottie.
  Анимации — Tailwind + CSS keyframes / `transition-*` утилиты, без новых
  зависимостей. Если в Sprint 4 поймём что чартам / collapse-эффекту нужна
  библиотека (Framer Motion), решаем тогда отдельным PR.
- **AI-сгенерированный cat-mascot Lumi** — 4 позы (idle / cheering / thumbs-up / wink),
  одни и те же ассеты с mobile (`public/onboarding/lumi-<pose>.png`).
- **Multi-language catalog на welcome** (12 target-языков) + UI-language switcher
  (использует существующий `useLanguage()` из `src/lib/i18n.tsx`).
- **Эмоциональные reaction-интерстициалы** после ответов про страхи / прошлые провалы /
  будущие сожаления — Lumi реагирует с короткой персонализированной фразой.
- **Персонализированные projection-чарты** (bar/stacked-bar) под выбранный goal,
  реализованные на чистом SVG + Tailwind (без подключения Recharts — он не подключён
  и тянуть его ради 2 чартов не хочется).
- **Paywall-заглушка** (два SKU + free-trial CTA, без реального биллинга).
- **Post-paywall sign-up**: Google Sign-In (через GIS — Google Identity Services JS),
  Apple JS SDK — опционально, и **email/password** как fallback (web-флоу должен
  работать без OAuth, чтобы тестить с любого устройства). Гостевой пользователь
  claim'ится в registered.
- **Home-секция «Мои языки»** на `/dashboard` или `/` — текущий `target_language` +
  кнопка «Добавить язык».

Берём за основу backend-часть из `mob/onboarding-v3-oki-style.md` §2 (миграции,
proto OnboardingState v3, ClaimGuestWithOAuth, gateway routes, reminder_slot-aware
schedule). Web-документ её **не дублирует** — реализуется единожды на бэке и
переиспользуется обоими клиентами.

**Цели (web-only):**
- Onboarding completion ≥ 60% (на web обычно ниже из-за multi-tab dropouts).
- D1 retention ≥ 40%.
- Paywall view-rate ≥ 85%.
- Sign-up (claim) rate after paywall ≥ 35% (на web без обязательного Apple
  Sign-In конверсия чуть ниже, но email/password компенсирует).

---

## 1. UX flow — 14 шагов + 11 интерстициалов (~2-3 минуты happy path)

> **Подсчёт:** 14 шагов с записью данных + 5 reaction-экранов + 6 info-интерстициалов
> (trust / projection / plan / building / roadmap / value-prop). Итого 25 уникальных
> экранов + один индекс-резолвер `/onboarding`.

```
[guest-bootstrap]   ← guest JWT кладём в localStorage, см. §2.4
       │
       ▼
1.  /onboarding/welcome
       │  выбор target language из 12, UI lang switcher в шапке
       ▼
2.  /onboarding/goal
       │  9 опций: work / exam / travel / relocation / study / social / content / fun / brain
       ▼
3.  /onboarding/age
       │  7 диапазонов: 7-12 / 13-17 / 18-24 / 25-34 / 35-44 / 45-54 / 55+
       ▼
4.  /onboarding/level
       │  5 уровней + "проверить мини-тестом" → /onboarding/placement
       ▼
5.  /onboarding/daily-commit
       │  4 опции: 5 / 10 / 15 / 25 минут
       ▼
6.  /onboarding/pain-points
       │  5 опций: страх говорить / нет слов / на слух / грамматика / регулярность
       ▼
7.  /onboarding/speaking-situation
       │  4 опции: замираю / перевожу / коротко / избегаю
       ▼
[reaction] /onboarding/reaction?from=speaking-situation     ← mascot-фидбек
       │
       ▼
8.  /onboarding/past-blocker
       │  5 опций: скучно / сложно / нет прогресса / не вписалось / нет поддержки
       ▼
[reaction] /onboarding/reaction?from=past-blocker
       │
       ▼
[interstitial] /onboarding/trust                            ← "У тебя больше навыков"
       │
       ▼
9.  /onboarding/future-regret
       │  4 опции: останусь / себя ограничивать / давить / откладывать
       ▼
[reaction] /onboarding/reaction?from=future-regret
       │
       ▼
10. /onboarding/emotional-reaction
       │  4 опции: теряю уверенность / расстраиваюсь / выгораю / не понимаю
       ▼
[reaction] /onboarding/reaction?from=emotional-reaction
       │
       ▼
[interstitial] /onboarding/projection                       ← bar chart "vs other methods"
       │
       ▼
11. /onboarding/reminder-time
       │  4 опции: утром / днём / вечером / по ситуации
       ▼
[reaction] /onboarding/reaction?from=reminder-time
       │
       ▼
12. /onboarding/push-optin                                  ← Web Push permission prompt
       │
       ▼
[interstitial] /onboarding/plan                             ← stacked-bar 4×3
       │
       ▼
[interstitial] /onboarding/building                         ← progress + testimonials carousel
       │
       ▼
[interstitial] /onboarding/roadmap                          ← vertical timeline 5 milestones
       │
       ▼
[interstitial] /onboarding/value-prop                       ← 4 feature-cards + stats
       │
       ▼
13. /onboarding/paywall
       │   ├─ purchase (заглушка → free mode)
       │   └─ X close → exit-intent dialog (-50% offer → free; "нет, спасибо" → ↓)
       ▼
14. /onboarding/signup
       │  Google / (Apple на iOS Safari) / email+password / "Войти" → claim guest
       ▼
[done]  router.replace('/dashboard')
```

### 1.1 Branching и data dependency

Идентично mobile (см. mob-спеку §1). На веб мы **дополнительно** ловим
`?step=` query-param на `/onboarding` для resume — если пользователь закрыл
вкладку и вернулся, мы читаем `GET /me/onboarding`, определяем последний
заполненный поле и перенаправляем на нужный шаг.

### 1.2 Resume-логика

Источник истины — backend-стейт (`GET /api/v1/me/onboarding`). Локально только
кешируем результат через TanStack Query (`queryKey: ['onboarding','state']`).

```ts
// src/lib/onboarding-resume.ts
export function resolveResumeStep(state: OnboardingState): string {
  if (!state.target_language) return '/onboarding/welcome';
  if (!state.motivation?.length) return '/onboarding/goal';
  if (!state.age_bracket) return '/onboarding/age';
  if (!state.proficiency_level) return '/onboarding/level';
  if (!state.daily_commit_minutes) return '/onboarding/daily-commit';
  if (!state.pain_point) return '/onboarding/pain-points';
  if (!state.speaking_situation) return '/onboarding/speaking-situation';
  if (!state.past_blocker) return '/onboarding/past-blocker';
  if (!state.future_regret) return '/onboarding/future-regret';
  if (!state.emotional_reaction) return '/onboarding/emotional-reaction';
  if (!state.reminder_slot) return '/onboarding/reminder-time';
  if (!state.paywall_seen_at) return '/onboarding/push-optin';
  // если paywall видели но не клеймились — на signup
  return '/onboarding/signup';
}
```

`/onboarding` (index) сам редиректит на правильный шаг при mount'е через
`router.replace()`.

---

## 2. Backend changes

**Все** backend-изменения описаны в `mob/onboarding-v3-oki-style.md` §2 и реализуются
**один раз**. Web их только **потребляет** через REST. Ниже — что нам нужно от бэка
для web-флоу:

| Что нужно web'у | Endpoint | Источник |
|---|---|---|
| Создать guest JWT | `POST /api/v1/auth/guest { device_id }` | mob-спека §2.5 / spec v2 §4.4 |
| Получить onboarding-state (для resume) | `GET /api/v1/me/onboarding` | mob-спека §2.2 / spec v2 §3 |
| Сохранить ответ шага | `PATCH /api/v1/me/onboarding {...}` | mob-спека §2.2 |
| Отметить онбординг завершённым | `POST /api/v1/me/onboarding/complete` | mob-спека §2.5 / spec v2 |
| Claim гостя по OAuth (Google) | `POST /api/v1/auth/claim/oauth { provider, id_token }` | mob-спека §2.4 |
| Claim гостя по email+password | `POST /api/v1/auth/claim { email, password }` | spec v2 §4.7 |
| First-lesson seed | `GET /api/v1/lessons/first?target_language=&level=` | spec v2 §4.6 |
| Reminder-slot-aware push | `POST /api/v1/notifications/devices` (уже есть, см. `src/lib/web-push.ts`) | mob-спека §2.7 |

### 2.1 Specifically web-only backend хвостики

1. **CORS / CSRF** на новых guest/claim/oauth endpoint'ах — gateway уже отдаёт
   permissive CORS для `Origin: localhost:3004` (dev) и production-домена; ничего
   нового не требуется.
2. **Web Push**: бэкенд `notifications-service` уже умеет хранить web-push
   subscription'ы (см. `src/lib/web-push.ts` на клиенте + `POST /notifications/devices`
   на бэке из Phase 3). На push opt-in мы вызываем `subscribeToPush()` из
   `web-push.ts`, который сам сабмитит endpoint + p256dh + auth keys, привязывая к
   текущему JWT (guest или registered).
3. **Google Sign-In id_token verification**: backend код уже расчитан на любой
   `id_token` от Google — это same flow что и в mobile (`@google-cloud/idtoken`).
4. **Apple Sign-In**: на mobile-спеке планируется через `expo-apple-authentication`.
   На web используем Apple JS SDK (Sign in with Apple JS), который тоже выдаёт
   `id_token` JWT — тот же `ClaimGuestWithOAuth` endpoint его примет. Apple JS
   работает только на HTTPS-доменах; в dev-режиме (HTTP localhost) Apple-кнопку
   скрываем.

### 2.2 Что НЕ делаем на web для бэка

- Никаких отдельных миграций. Все 10 новых колонок (`age_bracket`, ...,
  `paywall_choice`) уже мигрируются по mob-спеке.
- Никаких отдельных rate-limit правил. Те же лимиты, что и для mobile guest /
  claim (10/min/IP guest, 5/min/IP claim).

---

## 3. Web changes (`eng_next2`)

> ⚠️ **Перед написанием любого кода** прочитать `eng_next2/AGENTS.md` — это
> Next.js 16, и часть API/конвенций может расходиться с тем, что вы помните.
> Ключевые отличия, релевантные для онбординга: обязательный `<Suspense>` вокруг
> `useSearchParams()`, новые правила metadata API, server/client component
> границы. Если документация в `node_modules/next/dist/docs/` отличается от
> ваших инстинктов — следуем доке.

### 3.1 Дизайн-система

Используем существующие компоненты `src/components/ui/*` (Radix-based) и стиль из
`src/app/page.tsx` / `src/app/auth/page.tsx`:

- **Primary color** — green `#58cc02` (есть в Tailwind theme), shadow `[0_6px_0_0_#46a302]`
  на main CTA, `active:translate-y-1 active:shadow-none` для тактильности — тот же
  паттерн, что и в `auth/page.tsx`. **НЕ копируем** Oki orange, остаёмся на нашем green.
- **Скругления:** `rounded-2xl` / `rounded-3xl` для карточек, `rounded-xl` для CTA.
- **Шрифт:** Geist (уже подключен в root layout) — `font-black` для заголовков,
  `font-bold` для подписей, `font-medium` для body text.
- **Карточки опций**: emoji + bold title + `text-muted-foreground` subtitle —
  текущий шаблон в `auth/page.tsx`.
- **Collapse-after-select** (выбранная остаётся, остальные скрываются с
  `transition-[max-height,opacity]`) — НОВОЕ; реализуем компонентом
  `CollapsibleOptions` через CSS `grid-template-rows: 1fr` ↔ `0fr` или просто
  `max-height` transition.
- **Прогресс-бар** сверху — переиспользуем `Progress` из `src/components/ui/progress.tsx`.

### 3.2 AI-mascot Lumi

**Один и тот же ассет с mobile** — забираем PNG из `eng_mob/assets/mascot/lumi-*.png`
и кладём в `eng_next2/public/onboarding/lumi-<pose>.png`. На web нам нужно одно
разрешение @2x (плюс `srcSet` для retina), не три как на mobile.

Компонент `src/components/onboarding/Mascot.tsx`:

```tsx
interface MascotProps {
  pose?: 'idle' | 'cheering' | 'thumbs_up' | 'wink';
  size?: number; // px, default 160
}

export function Mascot({ pose = 'idle', size = 160 }: MascotProps) {
  return (
    <Image
      src={`/onboarding/lumi-${pose}.png`}
      alt="Lumi"
      width={size}
      height={size}
      priority
      className="select-none"
    />
  );
}
```

**Fallback**: если ассет не подъехал в Sprint 0, временно рендерим emoji `🐱` size XXL.

### 3.3 Файловая структура

**Новые файлы:**

```
src/app/onboarding/
  layout.tsx                 # Общий layout (прогресс-бар сверху, header с UI lang switcher)
  page.tsx                   # Index — резолвит resume-step и редиректит
  welcome/page.tsx           # Шаг 1: каталог 12 языков grid
  goal/page.tsx              # Шаг 2: 9 целей
  age/page.tsx               # Шаг 3: 7 возрастных групп
  level/page.tsx             # Шаг 4: 5 levels + mini-test option
  placement/page.tsx         # (опц.) мини-тест на 5-7 вопросов
  daily-commit/page.tsx      # Шаг 5: 5/10/15/25 минут
  pain-points/page.tsx       # Шаг 6
  speaking-situation/page.tsx # Шаг 7
  past-blocker/page.tsx      # Шаг 8
  future-regret/page.tsx     # Шаг 9
  emotional-reaction/page.tsx # Шаг 10
  reminder-time/page.tsx     # Шаг 11
  push-optin/page.tsx        # Шаг 12: Web Push permission
  paywall/page.tsx           # Шаг 13
  signup/page.tsx            # Шаг 14: Google / Apple / email+password
  # interstitials (5 reaction + 6 info):
  reaction/page.tsx          # Generic reaction (берёт текст из mapping по ?from=)
  trust/page.tsx             # "У тебя больше навыков"
  projection/page.tsx        # bar chart "vs other methods"
  plan/page.tsx              # stacked-bar "как раскрывается путь"
  building/page.tsx          # "Собираем твои ответы" + testimonials carousel
  roadmap/page.tsx           # vertical timeline 5 milestones
  value-prop/page.tsx        # "В 50 раз доступнее" + 4 features

src/components/onboarding/
  OnboardingShell.tsx        # Layout wrapper: прогресс-бар + container + back-button
  Mascot.tsx                 # 4 pose
  CollapsibleOptions.tsx     # Options с collapse-after-select
  OptionCard.tsx             # Карточка опции (emoji + title + subtitle)
  ProjectionChart.tsx        # SVG bar chart Oki vs others
  StackedBarChart.tsx        # SVG stacked bar (3 столбца × 4 категории)
  TestimonialCard.tsx        # avatar + name + age + ★★★★★ + quote + badge
  TestimonialCarousel.tsx    # Auto-playing carousel (CSS scroll-snap или JS interval)
  RoadmapTimeline.tsx        # Vertical timeline с avatar-узлами
  FeatureGrid.tsx            # 2×2 features-cards для value-prop
  PaywallCard.tsx            # SKU карточка с selected state
  ExitIntentDialog.tsx       # Radix Dialog "-50% скидка"
  OAuthButton.tsx            # Кнопка "Continue with Google/Apple" + GIS integration
  SocialProofBadge.tsx       # "12 654 человек" + avatars
  HomeLanguagesSection.tsx   # Секция «Мои языки» на dashboard

src/lib/onboarding/
  api.ts                     # OnboardingApi (getState/patchState/complete)
  resume.ts                  # resolveResumeStep helper
  reactions.ts               # Mapping step.choice → reaction.text + mascot.pose
  copy.ts                    # Personalized templates под goal
  testimonials.ts            # Hard-coded 5-10 testimonials (с переводом на UI lang)
  placement-questions.ts     # 12 langs × 8+ вопросов
  guest-session.ts           # Bootstrap helper

src/lib/
  supported-languages.ts     # Hard-coded list 12+ target-языков с метаданными

src/hooks/
  use-guest-session.ts       # Auto-bootstrap guest на mount root layout'а
  use-onboarding.ts          # GET / PATCH / Complete state через TanStack Query
  use-claim-account.ts       # Mutation: email/password OR OAuth
  use-placement.ts           # Local state мини-теста
  use-onboarding-flow.ts     # Helper: nextStep / prevStep + resume

src/types/
  onboarding.ts              # OnboardingState v3 + helper enum types
```

**Изменённые файлы:**

```
src/app/layout.tsx           # Добавить <GuestBootstrap /> провайдер (см. §3.4)
src/components/auth-guard.tsx # /onboarding — public-route (или semi-public с guest JWT)
src/app/page.tsx             # +HomeLanguagesSection (current target language + Add)
src/app/dashboard/page.tsx   # +HomeLanguagesSection
src/app/auth/page.tsx        # Линк "← На онбординг" если есть guest JWT
src/lib/api-client.ts        # (без изменений; auth-bypass-prefixes уже корректны)
src/types/api.ts             # +OnboardingState v3, +AuthOAuthClaimRequest
src/lib/i18n-ns/<lang>/onboarding.ts  # Все строки шагов на 4 языка
src/lib/i18n.tsx             # Подключение нового namespace `onboarding`
```

**НЕ меняем:**

- `src/proxy.ts` (он только для admin) — не трогаем.
- `src/lib/web-push.ts` — переиспользуем как есть в push-optin.
- `src/lib/auth-service.ts` — токены кладём в тот же localStorage; guest JWT
  отличается только claim'ами `is_guest=true`.

### 3.4 Guest bootstrap (предшествует welcome)

В корневом `layout.tsx` оборачиваем дерево в `<GuestBootstrap>`:

```tsx
// src/lib/onboarding/guest-session.ts
const DEVICE_ID_KEY = 'device_id';

function getOrCreateDeviceId(): string {
  let id = localStorage.getItem(DEVICE_ID_KEY);
  if (!id) {
    id = crypto.randomUUID();
    localStorage.setItem(DEVICE_ID_KEY, id);
  }
  return id;
}

export async function ensureGuestSession(): Promise<void> {
  const token = await AuthService.getAccessToken();
  if (token) return; // already have any session (guest or registered)

  const deviceId = getOrCreateDeviceId();
  const { access_token, refresh_token, user } = await ApiClient.post<AuthResponse>(
    '/auth/guest',
    { device_id: deviceId },
  );
  await AuthService.saveAuthResponse({ access_token, refresh_token, user });
}
```

```tsx
// src/components/onboarding/GuestBootstrap.tsx (или просто в layout.tsx)
"use client";
useEffect(() => { void ensureGuestSession(); }, []);
```

**Условие выполнения:** только на client-side (`'use client'`), только если ещё нет
ни одного токена в localStorage. Race-condition при множестве вкладок защищаем через
`storage` event — если другая вкладка уже подняла guest-сессию, мы её подберём через
`AUTH_CHANGED_EVENT`.

### 3.5 Routing & guard

Текущий `AuthGuard` (`src/components/auth-guard.tsx`) трактует `/onboarding/*` как
**защищённый** маршрут, потому что его нет в `PUBLIC_ROUTES`. Нам нужно:

1. Добавить `/onboarding` в `PUBLIC_ROUTES` (потому что там guest JWT, а не
   registered).
2. Внутри онбординга сделать **обратный гейт**: если пользователь уже завершил
   онбординг (`onboarded_at != null`), редиректим на `/dashboard`.

```ts
// src/components/auth-guard.tsx (добавить)
const PUBLIC_ROUTES = [
  "/",
  "/auth",
  "/courses",
  "/tracks",
  "/onboarding",     // <-- new
];
```

```tsx
// src/app/onboarding/layout.tsx (новый)
"use client";

export default function OnboardingLayout({ children }) {
  const { data: state, isLoading } = useOnboardingState();
  const router = useRouter();

  useEffect(() => {
    if (state?.onboarded_at) {
      router.replace('/dashboard');
    }
  }, [state?.onboarded_at, router]);

  if (isLoading) return <FullScreenLoader />;
  return (
    <div className="min-h-screen flex flex-col bg-background">
      <OnboardingHeader />     {/* progress + UI lang switcher + back */}
      <main className="flex-1 container mx-auto px-4 py-8 max-w-2xl">
        {children}
      </main>
    </div>
  );
}
```

### 3.6 Welcome (Шаг 1): каталог языков

```
┌──────────────────────────────────────────────┐
│ [Lumi]                              [RU ▾]   │
│                                               │
│         Привет! Готов начать                 │
│         говорить вместе с Lumi?              │
│                                               │
│         ⭐ Speaking   ⭐ Writing               │
│         ⭐ Vocab     ⭐ AI-уроки               │
│                                               │
│         ─── Какой язык учим? ───             │
│                                               │
│   ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐          │
│   │ 🇬🇧EN │ │ 🇪🇸ES │ │ 🇩🇪DE │ │ 🇫🇷FR │          │
│   ├─────┤ ├─────┤ ├─────┤ ├─────┤          │
│   │ 🇮🇹IT │ │ 🇵🇹PT │ │ 🇸🇦AR │ │ 🇯🇵JA │          │
│   ├─────┤ ├─────┤ ├─────┤ ├─────┤          │
│   │ 🇨🇳ZH │ │ 🇰🇷KO │ │ 🇷🇺RU │ │ 🇰🇿KK │          │
│   └─────┘ └─────┘ └─────┘ └─────┘          │
│                                               │
│         [Начать учиться]                      │
│         У меня уже есть аккаунт. Войти →     │
│                                               │
│         ToS · Privacy                         │
└──────────────────────────────────────────────┘
```

Layout по breakpoint'ам:

- `< sm` (mobile-web): grid 2 колонки × 6 рядов.
- `sm` — `lg`: 3 колонки × 4 ряда.
- `lg+`: 4 колонки × 3 ряда (как на схеме).

Логика:

1. Top-right dropdown — `Select` из `@radix-ui/react-select`, меняет UI lang через
   `setLanguage()` из `i18n.tsx`.
2. Tap карточки → highlight с `border-primary` + checkmark, enable CTA.
3. CTA → `useOnboarding().patchState({ target_language })` → `router.push('/onboarding/goal')`.
4. Footer link «Войти» → `/auth?redirect=/onboarding`. После успешного логина
   AuthGuard вернёт на /onboarding, и `useOnboardingState` подхватит state.

### 3.7 Шаги 2-11: single-select pattern

```tsx
// Пример goal/page.tsx
"use client";

const GOALS = [
  { id: 'work',       emoji: '💼', titleKey: 'onboarding.goal.work.title',
    subKey: 'onboarding.goal.work.sub' },
  { id: 'exam',       emoji: '📝', titleKey: 'onboarding.goal.exam.title',
    subKey: 'onboarding.goal.exam.sub' },
  // ... 7 more
] as const;

export default function GoalStep() {
  const { t } = useLanguage();
  const { state, patchState, isPending } = useOnboarding();
  const router = useRouter();
  const [value, setValue] = useState<string | null>(null);

  const onContinue = async () => {
    if (!value) return;
    await patchState({ motivation: [value], motivation_set: true });
    router.push('/onboarding/age');
  };

  return (
    <div className="space-y-6">
      <h1 className="text-3xl font-black">{t('onboarding.goal.title')}</h1>
      <CollapsibleOptions selected={value}>
        {GOALS.map(g => (
          <OptionCard
            key={g.id}
            emoji={g.emoji}
            title={t(g.titleKey)}
            subtitle={t(g.subKey)}
            selected={value === g.id}
            onSelect={() => setValue(g.id)}
          />
        ))}
      </CollapsibleOptions>
      <Button
        disabled={!value || isPending}
        onClick={onContinue}
        className="w-full h-14 rounded-xl bg-primary font-bold shadow-[0_4px_0_0_#46a302]"
      >
        {t('onboarding.continue')}
      </Button>
    </div>
  );
}
```

`<CollapsibleOptions>` через CSS Grid:

```tsx
function CollapsibleOptions({ selected, children }) {
  return React.Children.map(children, (child) => {
    const isSelected = selected === child.props.id;
    const isHidden = selected !== null && !isSelected;
    return (
      <div
        className={cn(
          "grid transition-all duration-300",
          isHidden ? "grid-rows-[0fr] opacity-0" : "grid-rows-[1fr] opacity-100"
        )}
      >
        <div className="overflow-hidden">{child}</div>
      </div>
    );
  });
}
```

### 3.8 Reaction-interstitials (5 штук)

> ⚠️ Любая страница, использующая `useSearchParams()` (а это reaction-страница и
> любые шаги, которые читают query-string), **обязана** жить внутри
> `<Suspense fallback={...}>` — иначе Next 16 выбрасывает CSR-bailout при build'е.
> Пример уже есть в `src/app/auth/page.tsx`. Делаем тот же паттерн: default export
> — оболочка с `<Suspense>`, вложенный компонент с реальной логикой.

Один маршрут `/onboarding/reaction?from=<step>` — компонент берёт mapping из
`src/lib/onboarding/reactions.ts`:

```ts
// reactions.ts
export const REACTIONS: Record<string, Record<string, { textKey: string; pose: MascotPose }>> = {
  speaking_situation: {
    freeze:            { textKey: 'onboarding.reactions.speaking.freeze',            pose: 'thumbs_up' },
    translate_in_head: { textKey: 'onboarding.reactions.speaking.translate_in_head', pose: 'cheering' },
    too_short:         { textKey: 'onboarding.reactions.speaking.too_short',         pose: 'thumbs_up' },
    avoid:             { textKey: 'onboarding.reactions.speaking.avoid',             pose: 'wink' },
  },
  past_blocker: { /* ... */ },
  future_regret: { /* ... */ },
  emotional_reaction: { /* ... */ },
  reminder_slot: { /* ... */ },
};

export function getNextStepAfterReaction(from: string): string {
  const mapping: Record<string, string> = {
    speaking_situation: '/onboarding/past-blocker',
    past_blocker: '/onboarding/trust',
    future_regret: '/onboarding/emotional-reaction',
    emotional_reaction: '/onboarding/projection',
    reminder_slot: '/onboarding/push-optin',
  };
  return mapping[from] ?? '/onboarding';
}
```

Reaction-страница:

```tsx
"use client";

export default function ReactionPage() {
  const { t } = useLanguage();
  const { state } = useOnboarding();
  const sp = useSearchParams();
  const router = useRouter();

  const from = sp.get('from') ?? '';
  const choice = (state as any)?.[from]; // например state.speaking_situation
  const reaction = REACTIONS[from]?.[choice];

  // Хуки выше любых early-return (Rules of Hooks). Если reaction нет —
  // редиректим в эффекте, а во время этого рендера показываем заглушку.
  useEffect(() => {
    if (!reaction) router.replace(getNextStepAfterReaction(from));
  }, [reaction, from, router]);

  if (!reaction) return null;

  return (
    <div className="flex flex-col items-center text-center space-y-8 py-12">
      <Mascot pose={reaction.pose} size={200} />
      <p className="text-2xl font-bold leading-relaxed max-w-md">
        {t(reaction.textKey)}
      </p>
      <Button
        onClick={() => router.push(getNextStepAfterReaction(from))}
        className="rounded-xl bg-primary px-12 h-14 font-bold shadow-[0_4px_0_0_#46a302]"
      >
        {t('onboarding.continue')}
      </Button>
    </div>
  );
}
```

### 3.9 Personalized projection (interstitial-projection)

**Чарт:** SVG bar chart "Lumi vs Other methods" — 4 точки (Начало / 2 нед / 1 мес /
3 мес), 2 серии (Lumi green, Others gray). Никаких сторонних библиотек:

```tsx
function ProjectionChart({ goalCopy }: { goalCopy: ProjectionCopy }) {
  const points = [
    { x: 0, lumi: 5, others: 5,   label: 'Начало' },
    { x: 1, lumi: 30, others: 12, label: '2 нед'  },
    { x: 2, lumi: 60, others: 25, label: '1 мес'  },
    { x: 3, lumi: 90, others: 40, label: '3 мес'  },
  ];
  // ... viewBox + 8 <rect> bars + animated grow через CSS @keyframes
}
```

**Copy** в `src/lib/onboarding/copy.ts` — 9 шаблонов под каждый goal (work / exam /
travel / relocation / study / social / content / fun / brain). На `projection/page.tsx`:

```tsx
const goal = state?.motivation?.[0] ?? 'fun';
const goalCopy = PROJECTION_TEMPLATES[goal];
```

### 3.10 Push opt-in (Шаг 12)

Используем уже существующий `src/lib/web-push.ts` (Phase 3). Главные API из него:
`detectPushSupport()`, `subscribeToPush()` (выполняет полный pipeline:
ensureServiceWorker → permission → pushManager.subscribe → POST `/notifications/devices`).
Эндпоинт `/notifications/devices` — внутренний контракт `notifications-service`,
**не** `/web-push/subscribe`.

```tsx
"use client";

import { detectPushSupport, subscribeToPush } from '@/lib/web-push';

export default function PushOptinPage() {
  const router = useRouter();
  const support = detectPushSupport();

  const handleEnable = async () => {
    if (support.status !== 'supported') {
      // Безусловно идём дальше — UI выше уже показал "недоступно".
      router.push('/onboarding/plan');
      return;
    }
    try {
      await subscribeToPush(); // запросит permission + subscribe + POST device
    } catch (e) {
      // permission denied / browser отказал — это OK, просто продолжаем
    }
    router.push('/onboarding/plan');
  };

  // UI: 2 карточки "Да, серьёзно" (CTA → handleEnable) / "Нет, спасибо" (skip)
  // Если support.status !== 'supported' — заменяем UI на "недоступно в этом браузере".
  // ...
}
```

Если permission уже granted из прошлой сессии — пропускаем экран автоматически
(`Notification.permission === 'granted'` → `router.replace` на следующий шаг).

### 3.11 Paywall (Шаг 13)

Аналогично mobile, два SKU + close → ExitIntentDialog. На веб используем
`@radix-ui/react-dialog` (он уже подключён) для exit-intent модала.

Кнопка X (close) триггерит state-машину:

```ts
const [phase, setPhase] = useState<'main' | 'exit-intent'>('main');

const onClose = () => {
  if (phase === 'main') {
    setPhase('exit-intent'); // показать ExitIntentDialog
  } else {
    void patchState({ paywall_choice: 'dismissed' });
    router.push('/onboarding/signup');
  }
};
```

`ExitIntentDialog`:

```tsx
<Dialog open={phase === 'exit-intent'} onOpenChange={(v) => !v && onClose()}>
  <DialogContent>
    <DialogHeader>
      <DialogTitle>Получи скидку 50%!</DialogTitle>
      <DialogDescription>USD 4.99/мес вместо $9.99</DialogDescription>
    </DialogHeader>
    <Button onClick={() => acceptOffer()}>Получить скидку</Button>
    <Button variant="ghost" onClick={() => declineOffer()}>Нет, спасибо</Button>
  </DialogContent>
</Dialog>
```

### 3.12 Sign-up (Шаг 14)

Главное отличие от mobile — на web мы не обязаны делать Apple Sign-In (это требование
Apple App Store, не applicable к web). Поэтому web-signup-экран:

```
┌──────────────────────────────────────────────┐
│ ← Back                                        │
│                                               │
│         Создать аккаунт                       │
│         Сохрани свой прогресс                 │
│                                               │
│         [G  Продолжить с Google]              │
│         [   Продолжить с Apple]   ← если HTTPS│
│                                               │
│         ─── или ───                          │
│                                               │
│         email                                 │
│         password                              │
│         [Зарегистрироваться]                  │
│                                               │
│         ToS · Privacy                         │
│                                               │
│         Уже есть аккаунт? Войти →             │
└──────────────────────────────────────────────┘
```

**Зависимости (web):**
- Google: Google Identity Services JS — добавить `<Script src="https://accounts.google.com/gsi/client" />`
  в head (через `next/script` strategy="afterInteractive"). Кнопка через `google.accounts.id.renderButton()`.
- Apple: Apple JS SDK — `<Script src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js" />`.
  Скрываем кнопку если `window.location.protocol !== 'https:'`.
- Email/password — переиспользуем `useRegister()` хук, но дополнительно вызываем
  claim-flow: после успешной регистрации делаем `POST /auth/claim` с текущим guest JWT,
  что переносит XP/streak.

**Flow для OAuth (Google):**

```ts
// src/hooks/use-claim-account.ts
export function useClaimWithOAuth() {
  return useMutation({
    mutationFn: async ({ provider, idToken }) => {
      const res = await ApiClient.post<AuthResponse>('/auth/claim/oauth', {
        provider,
        id_token: idToken,
      });
      await AuthService.saveAuthResponse(res);
      return res;
    },
    onSuccess: async () => {
      await ApiClient.post('/me/onboarding/complete', {});
      router.replace('/dashboard');
    },
  });
}
```

**Skip link** «Позже» внизу — `markOnboardingComplete()` без claim'а: пользователь
останется гостем, увидит register-wall на 3-м открытии lesson.

### 3.13 Home: секция "Мои языки"

Добавляем в `src/app/dashboard/page.tsx` (а опционально и в landing `src/app/page.tsx`):

```tsx
// src/components/onboarding/HomeLanguagesSection.tsx
"use client";

export function HomeLanguagesSection() {
  const { state } = useOnboarding();
  const target = state?.target_language;
  if (!target) return null;

  return (
    <section className="space-y-4">
      <div className="flex items-center justify-between">
        <h2 className="text-2xl font-black">🌍 Мои языки</h2>
        <Button variant="ghost" onClick={() => toast.info('Скоро')}>+ Добавить</Button>
      </div>
      <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-4">
        <LanguageCard code={target} />
        <AddLanguageCard />
      </div>
    </section>
  );
}
```

Multi-language data model — single `target_language` в MVP. Кнопка "+Добавить"
показывает `toast.info('Скоро')` (как и в mobile).

### 3.14 Mini-test (placement) — без изменений против mob-спеки

Те же 12 langs × 8+ вопросов в `src/lib/onboarding/placement-questions.ts`. UI на
веб делаем через существующие interactive step components (которые уже есть в
`src/components/lesson/*`) если они переиспользуемы; иначе — простые компоненты
`<MultipleChoice>` / `<MatchPairs>` / `<FillBlank>` локально.

### 3.15 Локализация

Существующий `useLanguage()` поддерживает RU / EN / UZ / TG. Создаём новый namespace
`onboarding`:

```
src/lib/i18n-ns/ru/onboarding.ts
src/lib/i18n-ns/en/onboarding.ts
src/lib/i18n-ns/uz/onboarding.ts
src/lib/i18n-ns/tg/onboarding.ts
```

И импортим в `src/lib/i18n.tsx` (по образцу остальных namespace'ов — паттерн
`import { ruOnboarding } from './i18n-ns/ru/onboarding'`).

**Solution:** в Sprint 1 — только RU полностью. EN — placeholder strings (английский
скопированный из RU как шаблон, чтобы хоть что-то отображалось). UZ/TG — Sprint 3+.

### 3.16 Web Push

Web Push помечается особенностью: на iOS Safari < 16.4 web push **не поддерживается**.
Если `'Notification' in window === false` или `'serviceWorker' in navigator === false` —
шаг push-optin показывает упрощённую версию: «Жаль, в этом браузере уведомления
недоступны. Мы подскажем тебе через email» + сохраняем `paywall_choice` без push.

VAPID public key подсасываем из `process.env.NEXT_PUBLIC_VAPID_PUBLIC_KEY` (уже
должен быть в `.env.local` для Phase 3, иначе заводим).

---

## 4. Sprint breakdown

### Sprint 0 — Design assets (1 неделя, параллельно с Sprint 1)

- [ ] Переиспользовать AI-сгенерированный mascot Lumi (4 позы) с mobile;
      положить в `eng_next2/public/onboarding/lumi-<pose>.png` (только 1x + 2x retina).
- [ ] Иллюстрации для interstitial-trust и interstitial-value-prop (опц., emoji fallback).
- [ ] Список 12 supported languages в `src/lib/supported-languages.ts` (один в один с mobile).
- [ ] Контент тестимониалов (5 штук × локализация на RU).
- [ ] Placement questions pool (12 langs × 8+ вопросов).

### Sprint 1 — Backend dependency check (1 день)

- [ ] Убедиться что mob-команда уже накатила миграции (`003_onboarding_v3_fields`,
      `004_oauth_credentials`) и проры (OnboardingState v3, ClaimGuestWithOAuth).
- [ ] Если нет — заблокировать web-разработку до готовности backend'а.
      Альтернатива — в коде сделать stubs `useOnboarding()` поверх localStorage и
      замёрджить на бэк позже (НЕ рекомендуется, дрифт состояний).

### Sprint 2 — Web bootstrap + базовые шаги (4 дня)

- [ ] Guest session bootstrap в `src/app/layout.tsx` через `<GuestBootstrap />`.
- [ ] `src/lib/onboarding/api.ts` + `src/hooks/use-onboarding.ts` (TanStack Query).
- [ ] AuthGuard: добавить `/onboarding` в `PUBLIC_ROUTES`.
- [ ] `src/app/onboarding/layout.tsx` + `src/app/onboarding/page.tsx` (resume-resolver).
- [ ] `Mascot.tsx` + `OptionCard.tsx` + `CollapsibleOptions.tsx` компоненты.
- [ ] Welcome (Шаг 1): grid 12 языков + UI lang switcher.
- [ ] Шаги 2-5 (goal / age / level / daily-commit) — single-select.
- [ ] i18n namespace `onboarding` (RU полный).
- [ ] **Verify:** `npm run build` clean, manual smoke welcome → daily-commit.

### Sprint 3 — Эмоциональные шаги + reactions (4 дня)

- [ ] Шаги 6-11 (pain / speaking / past / future / emotional / reminder).
- [ ] 5 reaction-interstitials через generic `/onboarding/reaction?from=` route +
      `reactions.ts` mapping.
- [ ] Mini-test (placement) — 12 langs hardcoded questions + переиспользуемые
      step-components.
- [ ] **Verify:** manual smoke полный flow welcome → reminder-time.

### Sprint 4 — Interstitials + paywall (4 дня)

- [ ] SVG `ProjectionChart` + `StackedBarChart` + `TestimonialCarousel` +
      `RoadmapTimeline` + `FeatureGrid`.
- [ ] Interstitials: trust / projection / plan / building / roadmap / value-prop.
- [ ] `onboarding/copy.ts` — персонализированные templates для 9 goals.
- [ ] Paywall + ExitIntentDialog (Radix Dialog).
- [ ] **Verify:** полный flow welcome → paywall.

### Sprint 5 — Push opt-in + sign-up + Home (3 дня)

- [ ] Шаг 12 push-optin: integration с `subscribeToPush()` из `src/lib/web-push.ts` (Phase 3).
- [ ] Шаг 14 signup: GIS Google Sign-In + Apple JS SDK + email/password fallback +
      claim mutation.
- [ ] Home-dashboard: секция «Мои языки».
- [ ] Полная цепочка E2E: bootstrap → 14 шагов → claim → /dashboard.
- [ ] **Verify:** `npm run build` clean, manual smoke на Chrome / Safari / Firefox.

### Sprint 6 — Polish + a11y + кросс-браузер (2 дня)

- [ ] Analytics no-op events на каждый шаг (PostHog integration — позже).
- [ ] Accessibility: keyboard navigation, Radix-builtin a11y, color contrast,
      ARIA labels на чартах.
- [ ] Smoke на Safari iOS (web push на 16.4+) + Chrome Android + desktop.
- [ ] Migration existing users: если у юзера в localStorage есть `auth_token` и
      `onboarded_at` (registered, completed) — пропускаем v3 онбординг.
- [ ] Feature flag `NEXT_PUBLIC_ONBOARDING_V3_ENABLED` (env var).

---

## 5. Acceptance criteria

### MVP (после Sprint 5)

- [ ] Гость bootstrap'ится автоматически при первом open `/`, токен лежит в localStorage.
- [ ] Юзер может пройти весь 14-step + 11 interstitials онбординг без crash'ей в
      Chrome / Firefox / Safari (десктоп) и Chrome Android / Safari iOS (mobile-web).
- [ ] Каждый шаг PATCH'ит backend; refresh страницы / новая вкладка → resume на
      нужный шаг через `/onboarding` index.
- [ ] Локализация RU полная; EN — placeholder OK (как в mob v3).
- [ ] Mascot Lumi отображается во всех reaction-экранах с правильной позой.
- [ ] Projection и plan charts корректно отображают копи под выбранную goal.
- [ ] Paywall показывается; X close → ExitIntentDialog; финал — переход на signup
      (без реальной покупки).
- [ ] Sign-up через Google / email+password → claim guest → user_id сохраняется;
      XP/streak гостя не теряются.
- [ ] Push opt-in корректно работает на поддерживающих браузерах; на iOS Safari < 16.4
      показывается graceful fallback.
- [ ] Dashboard и landing показывают `HomeLanguagesSection` с current `target_language`.
- [ ] `npm run build` clean (`tsc --noEmit` тоже clean — Next 16 проверяет автоматом).
- [ ] Feature flag `NEXT_PUBLIC_ONBOARDING_V3_ENABLED=true` → новый flow; false →
      legacy `/auth` (без онбординга).

### Полный (после Sprint 6)

- [ ] EN полный + UZ/TG локализация.
- [ ] Apple Sign-In работает на HTTPS-домене (production / preview).
- [ ] Analytics events fire (console-log пока что).
- [ ] Existing registered users пропускают v3 (см. Sprint 6).
- [ ] Кросс-браузерный smoke на 5 браузерах × 2 OS.
- [ ] Lighthouse a11y score ≥ 90 на онбординг-страницах.

---

## 6. Non-goals / Future

- **Реальный paywall / биллинг через Stripe Checkout** — Phase 6.
- **Email-magic-link signup** — позже; для MVP email+password OK.
- **Multi-language support** на одного юзера — single `target_language` в MVP.
- **A/B-тест воронки** — после baseline.
- **iOS Safari Web Push на старых версиях** — graceful skip.
- **SSO с других продуктов** (Microsoft / Yandex / Mail.ru) — не сейчас.
- **Анимации mascot через Lottie на web** — статичные PNG норм; Lottie добавим
  если будет дизайнер.
- **Cohort onboarding banners** — Phase 7.

---

## 7. Open questions

1. **CDN для Lumi PNG**: класть в `public/onboarding/` (раздаётся через Next.js
   static) или на CDN? **Решение MVP:** `public/onboarding/`, миграция на CDN —
   позже если нужна.
2. **Apple Sign-In без HTTPS**: на dev-окружении (`localhost:3004` HTTP) Apple JS
   не работает. **Решение:** скрываем кнопку на dev (по `protocol`), на staging/prod
   — HTTPS обязателен (что и так уже выполнено).
3. **GIS client-id**: нужен Google Cloud project с OAuth client `Web application`
   и `authorized JS origins`. **Решение MVP:** один client_id для prod + один для
   dev/staging, через `NEXT_PUBLIC_GOOGLE_CLIENT_ID`.
4. **localStorage vs cookies для guest JWT**: остаёмся на localStorage (как сейчас
   `AuthService`), несмотря на XSS-риск, потому что `proxy.ts` уже устроен под
   bearer-from-localStorage.
5. **Where stores UI language**: localStorage (как сейчас в `i18n.tsx`); sync с
   backend при logged-in — отдельная задача.
6. **Multi-tab race на guest bootstrap**: см. §3.4 — защищаемся через
   `AUTH_CHANGED_EVENT` + `storage` event.
7. **SEO для онбординг-страниц**: страницы клиентские (`'use client'`), их не
   индексируем; добавляем `<meta name="robots" content="noindex" />` через Next 16
   metadata API на `/onboarding/layout.tsx`.

---

## 8. References

- `docs/tasks/mob/onboarding-v3-oki-style.md` — родительская спека (mobile + backend).
- `docs/tasks/onboarding-spec.md` — предыдущая итерация v2 (guest mode, claim, миграция).
- `eng_next2/AGENTS.md` — Next.js 16 нюансы (читать перед написанием кода!).
- `eng_next2/API_INTEGRATION.md`, `eng_next2/API_ENDPOINTS.md` — текущий API client.
- Скриншоты конкурента Oki — `/home/aziz/Documents/startup/eng/Onb /Onb /IMG_4743..IMG_4776.PNG`.
- `phase-1-gamification.md`, `phase-2-step-formats.md`, `phase-3-adaptive-learning.md` —
  зависимости от других фаз.
- `phase-6-monetization.md` — будущая фаза для реального paywall.

---

**Последнее обновление:** 2026-05-27
**Автор:** Cognition / Kiro (на основе mob/onboarding-v3-oki-style.md)
**Статус:** 📝 Planning — требует ревью перед Sprint 1
