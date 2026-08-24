# Mobile Onboarding v3 — Oki-style (13+ шагов, эмоциональный flow, AI mascot)

**Срок:** ~3 спринта (mobile-only; web — позже).
**Сложность:** Высокая. Затрагивает: `eng_mob`, `user-service`, `auth-service`, `course-service`
(seed first-lesson), `gateway` (новые роуты), `notifications-service` (auto-subscribe).
**Зависимости:** Phase 0 (guest mode + базовый онбординг spec уже есть — `onboarding-spec.md`),
Phase 1 (gamification), Phase 2 (interactive steps для placement), Phase 3 (push).
**Статус:** 📝 Planning — этот документ ревизия `onboarding-spec.md` (v2 → v3).

---

## 0. TL;DR

Полностью заменяем текущий 6-шаговый minimal-онбординг (welcome → language → level → goal →
notifications → done в AsyncStorage) на **Oki-style 14-шаговый эмоциональный flow** с:

- AI-сгенерированным cat-mascot **Lumi** (рабочее имя; финальное обсудим позже) — 4 позы
  (idle / cheering / thumbs-up / wink). Используется во всех reaction-интерстициалах.
- **Multi-language catalog на welcome** — пользователь сразу видит каталог изучаемых языков
  (EN/ES/DE/FR/IT/PT/AR/JA/ZH/KO/RU/KK), а не только UI-language.
- **Эмоциональным contextual feedback** после ответов про страхи / прошлые провалы /
  будущие сожаления — mascot реагирует с короткой персонализированной фразой.
- **Персонализированными projection-чартами** (bar charts «через 2 недели / 1 месяц / 3 месяца»)
  с копирайтингом под выбранную цель (work / travel / exam / culture / fun / brain).
- **Paywall-заглушкой** в конце (full paywall — отдельный Phase 6; здесь — два SKU + free-trial
  CTA, который пока проксирует в free-mode; кнопки не вызывают биллинг).
- **Post-paywall sign-up** через Google / Apple (без формы email/password как у конкурента) —
  guest-юзер claim'ится в registered после paywall-через-skip.
- **Home-tab каталог изучаемых языков** — секция «Мои языки» с current + кнопкой «Добавить язык».

Берём всю основу от уже написанного `onboarding-spec.md` (guest mode, claim, миграция полей,
gateway endpoints), но **расширяем** UX и схему:

- +4 эмоциональных вопроса (pain_points, speaking_situation, past_blockers, future_regret, emotional_reaction).
- +1 reminder time slot (morning / day / evening / flex).
- +5 interstitial-экранов (motivation trust, projection chart, plan timeline, building plan
  + testimonials, value-proposition pre-paywall, paywall, sign-up).

**Цели:**
- Onboarding completion ≥ 65% (длиннее → меньше completion, но качественнее лид).
- D1 retention ≥ 50% (за счёт эмоциональной привязки и personalization).
- Paywall view-rate 90% (почти все доходят до paywall).
- Sign-up (claim) rate after paywall ≥ 40%.

---

## 1. UX flow — 14 шагов (~2-3 минуты happy path)

```
[guest-bootstrap]
       │
       ▼
1.  welcome (выбор target language из 12 + UI lang switcher)
       │
       ▼
2.  goal (single, 9 options: work / exam / travel / relocation / speaking / study / social / content / listening_shadowing)
       │
       ▼
3.  age (single, 7 ranges: 7-12 / 13-17 / 18-24 / 25-34 / 35-44 / 45-54 / 55+)
       │
       ▼
4.  level (single, 5 levels + "проверить мини-тестом" → optional placement test, как в spec v2)
       │
       ▼
5.  daily_commitment (single, 4 options: 5 / 10 / 15 / 25 минут)
       │
       ▼
6.  pain_points (single, 5 options: страх говорить / нет слов / на слух / грамматика / регулярность)
       │
       ▼
7.  speaking_situation (single, 4 options: замираю / перевожу / коротко / избегаю)
       │
       ▼
[reaction-1] контекстный mascot-feedback по speaking_situation
       │
       ▼
8.  past_blocker (single, 5 options: скучно / сложно / нет прогресса / не вписалось / нет поддержки)
       │
       ▼
[reaction-2] контекстный mascot-feedback по past_blocker
       │
       ▼
[interstitial-trust] "У тебя уже больше навыков, чем ты думаешь" (info-only)
       │
       ▼
9.  future_regret (single, 4 options: останусь на месте / себя ограничивать / давить / откладывать)
       │
       ▼
[reaction-3] контекстный mascot-feedback по future_regret
       │
       ▼
10. emotional_reaction (single, 4 options: теряю уверенность / расстраиваюсь / выгораю / не понимаю как двигаться)
       │
       ▼
[reaction-4] контекстный mascot-feedback по emotional_reaction
       │
       ▼
[interstitial-projection] bar-chart "Oki vs other methods" + timeline-копи под goal (3 пункта: 2 недели / 1 месяц / 3 месяца)
       │
       ▼
11. reminder_time (single, 4 options: утром / днём / вечером / по ситуации)
       │
       ▼
[reaction-5] контекстный mascot-feedback по reminder_time
       │
       ▼
12. push_opt_in (recommended: серьёзно / не серьёзно, native permission prompt)
       │
       ▼
[interstitial-plan] stacked-bar chart "как раскрывается путь" (4 категории × 3 фазы) + timeline 4 пункта
       │
       ▼
[interstitial-building] "Собираем твои ответы в один путь" + auto-progress + carousel testimonials + 400K+ / 20K+ social proof
       │
       ▼
[interstitial-roadmap] вертикальный timeline 5 milestones (3 дня → 2 нед → 6 нед → 4 мес → 8 мес) с mascot-аватарами
       │
       ▼
[interstitial-value-prop] "В 50 раз доступнее, чем репетитор" + 4 feature-cards (speaking / writing / vocab / AI-lessons) + 500K+ stats
       │
       ▼
13. paywall (annual: $8.25/мес, экономия 27%; monthly: $9.99/мес; 3-day free trial; X close)
       │   ├─ purchase (заглушка → free mode)
       │   └─ X close → exit-intent sheet (-50% special offer, ещё раз CTA → free; "нет, спасибо" → ↓)
       ▼
14. sign-up (Google / Apple / "У меня уже есть аккаунт" → claim guest → flow)
       │
       ▼
[done] router.replace('/(tabs)')
```

### Branching и data dependency

| Step | Записывает | Используется в |
|---|---|---|
| 1 welcome | `target_language` | 4 (placement Q-pool), interstitials (chart copy), всё |
| 2 goal | `motivation[0]` (single → wrap в массив) | interstitial-projection / -plan копи персонализируются под goal |
| 3 age | `age_bracket` (новое поле; альтернатива — DOB как было) | analytics; cohort-таргетинг push'ей |
| 4 level | `proficiency_level` + опц. `placement_score` | XP-multiplier, lesson-difficulty default |
| 5 daily_commitment | `daily_goal_xp` (mapping: 5→10, 10→20, 15→30, 25→50) | gamification.daily-goal + reminder cron |
| 6 pain_points | `pain_points TEXT` (single для MVP) | reaction-1 копи; lesson-priorities (post-MVP) |
| 7 speaking_situation | `speaking_situation TEXT` | reaction-1 копи |
| 8 past_blocker | `past_blocker TEXT` | reaction-2 копи |
| 9 future_regret | `future_regret TEXT` | reaction-3 копи |
| 10 emotional_reaction | `emotional_reaction TEXT` | reaction-4 копи |
| 11 reminder_time | `reminder_slot TEXT` (morning/day/evening/flex) | notifications-service `RemindersScheduler` schedule windows |
| 12 push_opt_in | вызывает `registerForPushNotifications()` | notifications-service device registration |
| 13 paywall | `paywall_seen_at TIMESTAMPTZ`, `paywall_choice TEXT` (annual/monthly/dismissed) | analytics; Phase 6 |
| 14 sign-up | claim guest → email от Google/Apple OAuth | auth-service.ClaimGuestAccount |

**Reactions** (interstitials с mascot) — статические тексты, mapping `step.choice → reaction.text`
хранится клиентский (`src/lib/onboarding-reactions.ts`), backend ничего не валидирует.

**Personalized copy** в projection/plan — клиентский, mapping `goal → templates` в
`src/lib/onboarding-copy.ts`. Бэк не отвечает за copy.

---

## 2. Backend changes

### 2.1 user-service: расширение схемы

**Текущее состояние** (см. spec v2 §3.1): уже мигрировано
`native_language / target_language / proficiency_level / daily_goal_xp / motivation TEXT[] /
signup_source / placement_score / onboarded_at / date_of_birth / is_guest / guest_device_id`.

**Нужно добавить** (новая миграция `users 003_onboarding_v3_fields.up.sql`):

```sql
ALTER TABLE users.profiles
  ADD COLUMN age_bracket          TEXT,        -- '7-12'|'13-17'|'18-24'|'25-34'|'35-44'|'45-54'|'55+'
  ADD COLUMN daily_commit_minutes INT,         -- 5|10|15|25 (отдельно от daily_goal_xp — у нас будет mapping)
  ADD COLUMN pain_point           TEXT,        -- 'fear_speaking'|'lack_vocab'|'listening'|'grammar'|'consistency'
  ADD COLUMN speaking_situation   TEXT,        -- 'freeze'|'translate_in_head'|'too_short'|'avoid'
  ADD COLUMN past_blocker         TEXT,        -- 'boring'|'too_hard'|'no_progress'|'no_fit'|'no_support'
  ADD COLUMN future_regret        TEXT,        -- 'stay_same'|'limit_self'|'pressure'|'postpone'
  ADD COLUMN emotional_reaction   TEXT,        -- 'lose_confidence'|'upset'|'burnout'|'lost'
  ADD COLUMN reminder_slot        TEXT,        -- 'morning'|'day'|'evening'|'flex'
  ADD COLUMN paywall_seen_at      TIMESTAMPTZ,
  ADD COLUMN paywall_choice       TEXT;        -- 'annual'|'monthly'|'dismissed'|'special_offer'|NULL

CREATE INDEX ix_profiles_reminder_slot ON users.profiles(reminder_slot)
  WHERE reminder_slot IS NOT NULL;

-- CHECK constraints для перечислений (валидация на app-уровне дублируется)
ALTER TABLE users.profiles
  ADD CONSTRAINT chk_age_bracket CHECK (
    age_bracket IS NULL OR age_bracket IN ('7-12','13-17','18-24','25-34','35-44','45-54','55+')
  ),
  ADD CONSTRAINT chk_daily_commit CHECK (
    daily_commit_minutes IS NULL OR daily_commit_minutes IN (5,10,15,25)
  ),
  ADD CONSTRAINT chk_reminder_slot CHECK (
    reminder_slot IS NULL OR reminder_slot IN ('morning','day','evening','flex')
  ),
  ADD CONSTRAINT chk_paywall_choice CHECK (
    paywall_choice IS NULL OR paywall_choice IN ('annual','monthly','dismissed','special_offer')
  );
```

**Down migration:** простой `DROP COLUMN` всех 10 колонок + drop индекса.

### 2.2 user-service: proto + service

**Расширить** `users/v1/onboarding.proto` (текущие поля уже есть из spec v2):

```proto
message OnboardingState {
  // existing (spec v2):
  string  user_id            = 1;
  optional string native_language    = 2;
  optional string target_language    = 3;
  optional string proficiency_level  = 4;
  optional int32  daily_goal_xp      = 5;
  repeated string motivation         = 6;
  optional string signup_source      = 7;
  optional google.protobuf.Timestamp onboarded_at = 8;
  optional google.protobuf.Timestamp date_of_birth = 9;
  bool    is_guest                   = 10;
  bool    placement_completed        = 11;

  // new in v3:
  optional string age_bracket           = 12;
  optional int32  daily_commit_minutes  = 13;
  optional string pain_point            = 14;
  optional string speaking_situation    = 15;
  optional string past_blocker          = 16;
  optional string future_regret         = 17;
  optional string emotional_reaction    = 18;
  optional string reminder_slot         = 19;
  optional google.protobuf.Timestamp paywall_seen_at = 20;
  optional string paywall_choice        = 21;
}

message PatchOnboardingStateRequest {
  string user_id = 1;
  // existing:
  optional string native_language    = 2;
  optional string target_language    = 3;
  optional string proficiency_level  = 4;
  optional int32  daily_goal_xp      = 5;
  repeated string motivation         = 6;
  bool    motivation_set             = 7;
  optional string signup_source      = 8;
  optional google.protobuf.Timestamp date_of_birth = 9;

  // new in v3:
  optional string age_bracket           = 10;
  optional int32  daily_commit_minutes  = 11;
  optional string pain_point            = 12;
  optional string speaking_situation    = 13;
  optional string past_blocker          = 14;
  optional string future_regret         = 15;
  optional string emotional_reaction    = 16;
  optional string reminder_slot         = 17;
  optional google.protobuf.Timestamp paywall_seen_at = 18;
  optional string paywall_choice        = 19;
}
```

**Repository update:** `PatchState` уже использует dynamic UPDATE по non-nil полям — нужно
добавить 10 новых ветвей в build-query. Тесты — на каждое новое поле + комбинация.

**Validation** (в `service/onboarding/patch_state.go`):
- `age_bracket ∈ enum_set` либо ошибка `InvalidArgument`.
- `daily_commit_minutes ∈ {5,10,15,25}`.
- Все text-перечисления — против hard-coded sets.
- Длина каждой строки ≤ 32 символов (защита от мусора).

### 2.3 Backend: список ВСЕХ языков (для welcome и home)

Конкурент показывает огромный каталог изучаемых языков. Сейчас у нас в спеке только 6 (kk/ru/en/es/de/fr).
Расширяем до **12+**: EN, ES, DE, FR, IT, PT, AR, JA, ZH, KO, RU, KK (+ TR / NL / PL опционально).

**Где хранится list of supported target languages?**

Сейчас — нигде явно (фильтры в API принимают любой string). Решение для v3:

**Опция A (preferred — простая):** hard-coded enum на клиенте в `src/lib/supported-languages.ts`,
backend принимает любой ISO 639-1 код в `target_language`. Список синхронизируется вручную с
тем, для каких языков есть seeded контент (tracks/lessons).

**Опция B (более чистая):** новый endpoint `GET /api/v1/languages` → список с метаданными:
```json
{
  "languages": [
    { "code": "en", "name_native": "English", "name_ui": "Английский",
      "flag_emoji": "🇬🇧", "supported_levels": ["a1","a2","b1","b2","c1"],
      "lessons_count": 142, "active_learners": 12453 },
    ...
  ]
}
```

**Решение для MVP — A** (hard-coded, мгновенно работает). B — Phase 6+.

### 2.4 auth-service: OAuth (Google / Apple) для claim

Текущий ClaimGuestAccount принимает email + password. Конкурент использует только Google / Apple
sign-in без email/password. Расширяем:

```proto
service AuthService {
  // existing
  rpc ClaimGuestAccount (ClaimGuestAccountRequest) returns (ClaimGuestAccountResponse);

  // new
  rpc ClaimGuestWithOAuth (ClaimGuestWithOAuthRequest) returns (ClaimGuestAccountResponse);
}

message ClaimGuestWithOAuthRequest {
  string guest_user_id = 1;
  string provider      = 2;  // 'google' | 'apple'
  string id_token      = 3;  // Google ID token / Apple identity token (JWT)
  string display_name  = 4;  // optional, можно достать из id_token
}
```

**Pipeline:**
1. Verify `id_token` через `google.golang.org/api/idtoken` или Apple JWT JWKS endpoint.
2. Извлечь `email`, `sub` (provider user id), `name`.
3. Проверить unique по email (если занят — `AlreadyExists`).
4. `UPDATE users.profiles SET is_guest=false, email=$1, display_name=$2, oauth_provider=$3,
   oauth_sub=$4, guest_device_id=NULL WHERE user_id=$5 AND is_guest=true RETURNING *`.
5. Issue fresh JWT.

**Миграция:** `users.profiles ADD COLUMN oauth_provider TEXT, ADD COLUMN oauth_sub TEXT,
ADD UNIQUE INDEX (oauth_provider, oauth_sub) WHERE oauth_provider IS NOT NULL`.

**Гражданственно:** email/password claim не убираем — оставляем для совместимости и web-flow.

### 2.5 Gateway: новые routes

```
# Public
POST   /api/v1/auth/guest                       # CreateGuestSession (rate-limit 10/min/IP) — уже в spec v2

# Protected (guest JWT работает)
GET    /api/v1/me/onboarding                    # OnboardingService.GetState (v2)
PATCH  /api/v1/me/onboarding                    # OnboardingService.PatchState (v2 + v3 поля)
POST   /api/v1/me/onboarding/complete           # OnboardingService.Complete (v2)
POST   /api/v1/auth/claim                       # email/password claim (v2)
POST   /api/v1/auth/claim/oauth                 # NEW: { provider, id_token, display_name? }
```

**Rate-limiting `/auth/claim*`:** 5/min/IP, чтобы предотвратить email-spray атаки.

### 2.6 course-service: first-lesson seed

Из spec v2 §4.6 — добавить seed-lessons под каждый target_language × level. Для v3 расширяем
до **12 языков × 1 first-lesson** (5 шагов: greeting / match_pairs / listening / fill_blank / story).

Файл `services/course-service/migrations/seed_first_lessons.sql` — по-прежнему required.
Lesson IDs стабильные UUID v5 от namespace + language, чтобы можно было заново seed'ить.

Endpoint `GET /api/v1/lessons/first?target_language=en&level=a1` уже в спеке v2.

### 2.7 notifications-service: reminder-slot-aware schedule

Сейчас `gamification cron RemindersScheduler` шлёт push в hourly bucket по `user.timezone`.
Добавим **уважение `reminder_slot`** — если у юзера выбрано `morning`, не дёргаем его в 21:00.

В `notifications-service` (или прямо в gamification-cron — переиспользовать `user.Client`):
- При построении send-list дополнительно фильтруем по `profile.reminder_slot`:
  - `morning` → шлём только в `07:00-11:00` локального времени.
  - `day` → `11:00-17:00`.
  - `evening` → `17:00-22:00`.
  - `flex` или `NULL` → текущая логика (любой час кроме quiet hours).

**Зависимость:** notifications-service должен иметь доступ к `users.profiles.reminder_slot`.
Уже есть `user.Client` с кешем — расширить cached fields. Альтернатива — joined view в репозитории.

### 2.8 Что НЕ делаем в backend

- **Реальный paywall / биллинг** — Phase 6. Сейчас только запись `paywall_seen_at` и `paywall_choice`.
- **Реальный OAuth (Apple/Google verification)** — может быть отложен на Sprint 2 если будет тяжело;
  в Sprint 1 — заглушка `provider=guest_fake` принимает любой `id_token` и просто маркирует claim.
- **Список языков как API** — hard-coded на клиенте.
- **A/B-тест воронки** — позже.
- **Анти-абуз гостей** — оставляем простой rate-limit.

---

## 3. Mobile changes (`eng_mob`)

### 3.1 Дизайн-система

**Тема:** оставляем текущую navy + green primary (#58cc02) — НЕ копируем orange Oki. У нас
есть своя идентичность. Но **формат компонентов** заимствуем у Oki:

- Pill-buttons (rounded-full) — у нас уже есть.
- Карточки опций с emoji + bold title + muted-text subtitle — у нас уже частично.
- Collapse-after-select (выбранная остается, остальные скрываются) — НОВОЕ, нужен компонент `<CollapsibleOptions>`.
- Yellow/orange highlight для selected — у нас primary green, оставляем зелёный (consistency с brand).
- Прогресс-бар сверху на каждом шаге — у нас уже есть в `OnboardingShell`.

### 3.2 AI-mascot Lumi

**Что:** AI-сгенерированный character (cat / fox / owl — обсудим). 4 позы как минимум:
- `idle` — нейтральная.
- `cheering` — праздничная (для reaction-positive).
- `thumbs_up` — для подтверждений / motivation.
- `wink` — для trust-builder экранов.

**Как сгенерировать:** Midjourney / DALL-E 3 prompts — отдельный side-task. Положить в
`assets/mascot/lumi-<pose>.png` (4 PNG + 4@2x + 4@3x). Опционально — `assets/mascot/lumi-<pose>.json`
(Lottie) если хотим анимации.

**Компонент** `src/components/onboarding/Mascot.tsx`:
```tsx
interface MascotProps { pose?: 'idle' | 'cheering' | 'thumbs_up' | 'wink'; size?: number; }
```

Использует `<Image>` или `<LottieView>` в зависимости от наличия ассета (паттерн `lottie-manifest.ts`).

### 3.3 Файлы

**Новые:**

```
src/app/onboarding/
  goal.tsx                  # Шаг 2 (rename existing? — да, текущий goal.tsx переезжает в daily-commit)
  age.tsx                   # Шаг 3
  level.tsx                 # Шаг 4 (расширить существующий — добавить mini-test option)
  daily-commit.tsx          # Шаг 5 (replace existing goal.tsx, переименовать)
  pain-points.tsx           # Шаг 6
  speaking-situation.tsx    # Шаг 7
  past-blocker.tsx          # Шаг 8
  future-regret.tsx         # Шаг 9
  emotional-reaction.tsx    # Шаг 10
  reminder-time.tsx         # Шаг 11
  push-optin.tsx            # Шаг 12 (replace existing notifications.tsx)
  paywall.tsx               # Шаг 13
  signup.tsx                # Шаг 14
  # interstitials:
  reaction.tsx              # Generic reaction-screen (берёт текст из mapping по prev step)
  trust.tsx                 # "У тебя больше навыков"
  projection.tsx            # bar chart "vs other methods"
  plan.tsx                  # stacked-bar "как раскрывается путь"
  building.tsx              # "Собираем твои ответы" + testimonials carousel
  roadmap.tsx               # vertical timeline 5 milestones
  value-prop.tsx            # "В 50 раз доступнее" + 4 features

src/components/onboarding/
  Mascot.tsx                # AI mascot Lumi (4 pose)
  CollapsibleOptions.tsx    # Список опций с collapse-after-select
  OptionCard.tsx            # Карточка опции (emoji + title + subtitle)
  ProjectionChart.tsx       # Bar chart Oki vs others (Recharts? — нет RN-варианта, делаем
                            # руками через Reanimated + View bars)
  StackedBarChart.tsx       # Stacked bar (3 столбца × 4 категории)
  TestimonialCard.tsx       # Карточка отзыва (avatar + name + age + stars + quote + badge)
  TestimonialCarousel.tsx   # Auto-playing carousel с progress bar
  RoadmapTimeline.tsx       # Vertical timeline с avatar-узлами и copy
  FeatureGrid.tsx           # 2×2 features-cards для value-prop
  PaywallCard.tsx           # SKU карточка с selected state
  ExitIntentSheet.tsx       # Bottom sheet "-50% скидка" при попытке закрыть paywall
  OAuthButton.tsx           # Кнопка "Continue with Google/Apple"
  SocialProofBadge.tsx      # "12 654 человек получают напоминания" + avatars
  MotivationProjection.tsx  # Персонализированный copy под goal

src/lib/
  supported-languages.ts    # Hard-coded list 12+ языков с метаданными
  onboarding-reactions.ts   # Mapping step.choice → reaction.text + mascot.pose
  onboarding-copy.ts        # Personalized templates под goal (для projection / plan / roadmap)
  testimonials.ts           # Hard-coded 5-10 testimonials (с переводом на UI lang)
  placement-questions.ts    # 12 langs × 8+ вопросов (как в spec v2)
  guest-session.ts          # Bootstrap helper (как в spec v2)

src/hooks/
  use-guest-session.ts      # Auto-bootstrap (как в spec v2)
  use-claim-account.ts      # Mutation: email/password OR OAuth
  use-placement.ts          # Local state для test
  use-onboarding-flow.ts    # Стейт-машина текущего шага + branching
```

**Изменённые:**

```
src/app/_layout.tsx                       # Guest bootstrap effect (spec v2)
src/app/index.tsx                         # Guard: guest exists → onboarding/welcome
src/app/onboarding/_layout.tsx            # 14 + 7 interstitials = 21 route, all hidden header
src/app/onboarding/welcome.tsx            # ПОЛНОСТЬЮ переделать — каталог 12 языков grid + UI lang switcher
src/app/onboarding/language.tsx           # УДАЛИТЬ (target language теперь на welcome)
src/app/onboarding/done.tsx               # УДАЛИТЬ (заменяем signup на конец)
src/app/onboarding/notifications.tsx      # УДАЛИТЬ (переехал в push-optin.tsx)
src/app/(tabs)/index.tsx                  # +секция "Мои языки" (только current) + кнопка "Добавить язык"
src/app/profile/settings.tsx              # +кнопка "Добавить язык" → /onboarding/add-language
src/lib/onboarding-storage.ts             # +новые поля state, миграция v1→v2→v3
src/lib/api-client.ts                     # +OnboardingApi, +AuthApi.claim/claimOAuth
src/lib/auth-service.ts                   # Поддержка guest JWT + OAuth tokens
src/hooks/use-onboarding.ts               # Mutate теперь идёт в backend
src/components/onboarding/OnboardingShell.tsx  # Прогресс-бар динамический под 14+7 шагов;
                                          # mascot-slot опциональный (для reaction-screens)
src/types/api.ts                          # +OnboardingState v3 поля
```

### 3.4 Welcome-экран (Шаг 1): каталог языков

**Layout:**

```
┌──────────────────────────────────────┐
│ [logo Lumi]    [RU ▾]   (UI lang)   │
│                                       │
│  Привет! Готов начать                │
│  говорить вместе с Lumi?             │
│                                       │
│  ⭐ Speaking  ⭐ Writing               │
│  ⭐ Vocab    ⭐ AI-уроки               │
│                                       │
│  ─── Какой язык учим? ───            │
│                                       │
│  ┌──────┐ ┌──────┐ ┌──────┐         │
│  │ 🇬🇧EN │ │ 🇪🇸ES │ │ 🇩🇪DE │  …      │
│  └──────┘ └──────┘ └──────┘         │
│  (grid 3 кол × 4 ряда = 12 языков)   │
│                                       │
│  [Начать учиться] (disabled до       │
│   выбора языка)                       │
│                                       │
│  У меня уже есть аккаунт. Войти →   │
│                                       │
│  ToS · Privacy                       │
└──────────────────────────────────────┘
```

**Логика:**
1. UI language switcher (top-right) — список 3+ languages для интерфейса (ru/en/kk минимум).
   Меняет i18n-store, ре-рендерит копи.
2. Grid из supported-languages.ts. Tap → highlight + enable CTA.
3. CTA → `PATCH /me/onboarding { target_language: $code }` → router push `goal`.
4. Footer: "У меня уже есть аккаунт. Войти" → `/auth/login` (не claim — отдельный сценарий
   когда зашёл с другого устройства).

### 3.5 Шаги 2-11: single-select pattern

**OptionCard** компонент:

```tsx
<OptionCard
  emoji="💼"
  title="Работа и карьера"
  subtitle="Работа, рост и новые возможности"
  selected={value === 'work'}
  onPress={() => setValue('work')}
/>
```

**CollapsibleOptions** — wrapper, который после выбора через Reanimated `LayoutAnimation`
сжимает остальные опции в высоту 0 с fade-out. Только выбранная остаётся.

CTA в конце экрана `disabled` пока value не выбран. После выбора CTA становится primary + анимируется.

### 3.6 Reaction-interstitials (5 штук)

**Generic `reaction.tsx` route с params:**

```tsx
// onboarding-reactions.ts
export const REACTIONS = {
  speaking_situation: {
    freeze:             { text: 'Для таких пауз соберем речевые стартеры: как начать, продолжить и не потеряться в ответе.', pose: 'thumbs_up' },
    translate_in_head:  { text: 'Будем тренировать прямой ответ — без перевода в голове.', pose: 'cheering' },
    too_short:          { text: 'Научимся раскрывать мысль — добавим коннекторы и примеры.', pose: 'thumbs_up' },
    avoid:              { text: 'Создадим безопасную среду, где не страшно пробовать.', pose: 'wink' },
  },
  past_blocker: { ... },
  future_regret: { ... },
  emotional_reaction: { ... },
  reminder_slot: { ... },
};
```

Reaction-screen UI:
```
┌──────────────────────────────────────┐
│           [Mascot Lumi pose]         │
│                                       │
│                                       │
│   Для таких пауз соберем             │
│   речевые стартеры: как начать,      │
│   продолжить и не потеряться         │
│   в ответе.                           │
│                                       │
│                                       │
│        [Продолжить]                   │
└──────────────────────────────────────┘
```

### 3.7 Personalized projection (interstitial-projection)

**Chart:** bar chart "Lumi vs Other methods" — 4 точки на оси X (Начало / 2 нед / 1 мес / 3 мес).
Реализация: 4 пары столбцов через `<View>` + Reanimated `withTiming` для grow-анимации.

**Copy:** timeline 3 пункта внизу, **персонализирован под goal**:

```ts
// onboarding-copy.ts
export const PROJECTION_TEMPLATES = {
  work: {
    title: 'Представь: рабочие задачи перестают давить.',
    subtitle: 'Через месяц ты удивишься, как далеко удастся зайти.',
    timeline: [
      'Через 2 недели: быстрее отвечаешь в знакомых рабочих ситуациях.',
      'Через месяц: нужные фразы быстрее приходят в голову на встречах.',
      'Через 3 месяца: ты звучишь ясно и уверенно в работе.',
    ],
    bottom: 'Сфокусируемся на том английском, который нужен для созвонов, встреч и переписок.',
  },
  travel: { ... },
  exam: { ... },
  ...
};
```

Аналогично для interstitial-plan (stacked-bar), interstitial-roadmap, interstitial-value-prop.

### 3.8 Paywall (Шаг 13)

**SKU карточки:**

```tsx
<PaywallCard
  title="Годовой"
  badge="Самый выгодный"
  monthlyPrice="$8.25"
  totalPrice="$99.00"
  saving="Экономьте 27% по сравнению с месячным"
  selected={selected === 'annual'}
  onPress={() => setSelected('annual')}
/>
<PaywallCard
  title="Ежемесячно"
  monthlyPrice="$9.99"
  totalPrice="$9.99"
  selected={selected === 'monthly'}
  onPress={() => setSelected('monthly')}
/>
```

**CTA:** "Начать учиться сегодня →" с подписью "Включен 3-дневный бесплатный период".

**Логика заглушки** (без реальной покупки):
1. CTA → `PATCH /me/onboarding { paywall_choice: 'annual' }` + analytics.
2. Сразу router push на signup без вызова biling.
3. В фьючере (Phase 6) — здесь будет StoreKit / RevenueCat call.

**X (close):** триггерит `ExitIntentSheet` — модал bottom sheet с "Получи скидку 50% → USD 4.99/мес".
- "Получить скидку" → `paywall_choice='special_offer'` → router push signup.
- "Нет, спасибо" → `paywall_choice='dismissed'` → router push signup.

В любом случае попадаем на signup — paywall не блокирующий для MVP.

### 3.9 Sign-up (Шаг 14)

**Только OAuth для MVP:**

```
┌──────────────────────────────────────┐
│ ← Back                                │
│                                       │
│  Создать аккаунт                     │
│  Зарегистрируйтесь, чтобы            │
│  сохранить прогресс                   │
│                                       │
│  [G Продолжить с Google]              │
│  [🍎 Продолжить с Apple]               │
│                                       │
│  ToS · Privacy                       │
│                                       │
│  У меня уже есть аккаунт →            │
│  (открывает /auth/login)              │
└──────────────────────────────────────┘
```

**Зависимости (mobile native):**
- Google: `@react-native-google-signin/google-signin` (Expo plugin).
- Apple: `expo-apple-authentication` (только iOS; на Android — скрываем кнопку).

**Flow:**
1. User tap → native OAuth dialog → получаем `id_token`.
2. `POST /api/v1/auth/claim/oauth { provider, id_token, display_name }`.
3. Получаем fresh JWT (без `is_guest`).
4. `markOnboardingComplete()` локально + `POST /me/onboarding/complete` бэк.
5. `router.replace('/(tabs)')`.

**Skip:** скрытый текст-link внизу "Позже" → `markOnboardingComplete()` без claim (juзер останется
гостем; на 3-м открытии lesson покажем register-wall снова).

### 3.10 Home-tab: секция "Мои языки"

В `src/app/(tabs)/index.tsx` после header, до Daily Lesson:

```
┌──────────────────────────────────────┐
│ LingoLearn (header)                   │
├──────────────────────────────────────┤
│                                       │
│ 🌍 Мои языки           [+ Добавить] │
│                                       │
│  ┌──────────────┐ ┌──────────────┐  │
│  │ 🇬🇧 English   │ │ + Добавить   │  │
│  │ B1 · streak 5│ │ еще один язык│  │
│  └──────────────┘ └──────────────┘  │
│                                       │
│ 🗓️ Daily Lesson ...                  │
│ ...
└──────────────────────────────────────┘
```

Реализация:
- Hook `useUserLanguages()` → `GET /me/onboarding` → возвращает `target_language` (для MVP только один).
  Дополнительно — позже когда добавим много языков.
- "+ Добавить язык" → route `/onboarding/add-language` (mini-flow: 3 шага — выбор языка + level + done).

**Multi-language data model (опционально для MVP):**

Сейчас `users.profiles.target_language TEXT` — single. Чтобы поддержать много языков на одного
юзера — новая табличка `users.user_languages (user_id, language, level, added_at)`.

**Решение для MVP:** держим single `target_language`. Кнопка "+ Добавить" пока показывает
Toast "Скоро" или редактирует основной target_language. Multi-language — Phase 6+.

### 3.11 Mini-test (placement) — без изменений против spec v2

Из spec v2 §4.5: client-side validation, hardcoded questions в `placement-questions.ts`.
Расширяем pool до 12 языков × 8+ вопросов.

### 3.12 Локализация

i18n через `expo-localization` + `i18n-js` (или `react-i18next`). Файлы:
```
src/locales/ru.json
src/locales/en.json
src/locales/kk.json
```

Все строки (включая reactions, projection copy, paywall) — через `t('onboarding.welcome.title')`.

**Solution:** в Sprint 1 — только RU. EN и KK — Sprint 3+.

---

## 4. Sprint breakdown

### Sprint 0 — Design assets (1 неделя, параллельно с Sprint 1)

- [ ] AI-сгенерировать mascot Lumi (4 позы), экспорт PNG 1x/2x/3x.
- [ ] Иллюстрации для interstitial-trust и interstitial-value-prop (опционально — emoji fallback).
- [ ] Список 12 supported languages с emoji-флагами в `supported-languages.ts`.
- [ ] Контент тестимониалов (5 штук × локализация).
- [ ] Placement questions pool (12 langs × 8+).

### Sprint 1 — Backend foundation (3 дня)

- [ ] users-service: миграция `003_onboarding_v3_fields.up.sql` (10 новых колонок).
- [ ] users-service: расширить proto OnboardingState/PatchRequest + repository PatchState
      + validation для новых enum-полей.
- [ ] auth-service: `ClaimGuestWithOAuth` RPC (с заглушкой verification — `provider='guest_fake'`).
- [ ] users-service: миграция `004_oauth_credentials.up.sql` (oauth_provider, oauth_sub).
- [ ] gateway: новый route `POST /api/v1/auth/claim/oauth`.
- [ ] Тесты на каждое новое поле + ClaimWithOAuth happy path.
- [ ] **Verify:** `go build ./... && go test ./...` clean.

### Sprint 2 — Mobile bootstrap + базовые шаги (4 дня)

- [ ] Guest session bootstrap в `_layout.tsx` (spec v2 §4.4).
- [ ] Storage migration v1→v2→v3 в `onboarding-storage.ts`.
- [ ] OnboardingApi в `api-client.ts` (getState/patchState/complete).
- [ ] `Mascot.tsx` компонент (с fallback на emoji).
- [ ] `OptionCard.tsx` + `CollapsibleOptions.tsx` (с Reanimated layout animation).
- [ ] Welcome (Шаг 1) — каталог 12 языков grid + UI lang switcher.
- [ ] Шаги 2-5 (goal / age / level / daily-commit) — single-select с CollapsibleOptions.
- [ ] Все шаги PATCH на backend, ошибка → toast + локальный fallback.
- [ ] **Verify:** `npx tsc --noEmit` clean, manual smoke flow welcome → daily-commit.

### Sprint 3 — Эмоциональные шаги + reactions (4 дня)

- [ ] Шаги 6-11 (pain / speaking / past / future / emotional / reminder).
- [ ] 5 reaction-interstitials через generic `reaction.tsx` + `onboarding-reactions.ts` mapping.
- [ ] Mini-test (placement) — компонент + 12 langs hardcoded questions.
- [ ] **Verify:** manual smoke полный flow welcome → reminder-time.

### Sprint 4 — Interstitials + paywall (4 дня)

- [ ] `ProjectionChart` + `StackedBarChart` + `TestimonialCarousel` + `RoadmapTimeline`
      + `FeatureGrid` компоненты.
- [ ] Interstitials: trust / projection / plan / building / roadmap / value-prop.
- [ ] `onboarding-copy.ts` — персонализированные templates для 9 goals.
- [ ] Paywall-экран с двумя SKU + ExitIntentSheet (-50% скидка).
- [ ] Analytics events `paywall_seen / paywall_chosen / paywall_dismissed`.
- [ ] **Verify:** полный flow welcome → paywall.

### Sprint 5 — Push opt-in + sign-up + Home (3 дня)

- [ ] Шаг 12 push opt-in: integration с `registerForPushNotifications()` (уже есть в Phase 3).
- [ ] Шаг 14 sign-up: Google Sign-In + Apple Authentication + claim mutation.
- [ ] notifications-service: reminder_slot-aware schedule (см. §2.7).
- [ ] Home-tab: секция "Мои языки" (single language MVP).
- [ ] `/onboarding/add-language` mini-flow (опционально).
- [ ] Полная цепочка E2E: bootstrap → 14 шагов → claim → /(tabs).
- [ ] **Verify:** `npx tsc --noEmit` clean, `go test ./...` clean.

### Sprint 6 — Polish + analytics + a11y (2 дня)

- [ ] Analytics no-op events на каждый шаг (PostHog integration — позже).
- [ ] Accessibility: screen-reader labels, color contrast, dynamic type.
- [ ] Smoke на физических iOS + Android.
- [ ] Migration existing users (с `completed_at` в AsyncStorage v1) → backend one-shot + skip v3.
- [ ] Feature flag `ONBOARDING_V3_ENABLED` (env-var в app.config.ts).

---

## 5. Acceptance criteria

### MVP (после Sprint 5)

- [ ] Гость bootstrap'ится автоматически при первом open.
- [ ] Юзер может пройти весь 14-step + 7 interstitials онбординг без crash'ей.
- [ ] Каждый шаг PATCH'ит backend; прерывание → resume на следующий open с того же шага.
- [ ] Локализация RU полная; EN/KK — placeholder OK.
- [ ] Mascot Lumi отображается во всех reaction-экранах с правильной позой.
- [ ] Projection и plan charts корректно отображают копи под выбранную goal.
- [ ] Paywall показывается; X close → ExitIntent sheet; финал — переход на sign-up (без реальной покупки).
- [ ] Sign-up с Google → claim guest → user_id сохраняется; XP/streak гостя не теряются.
- [ ] Home-tab показывает текущий target_language; "+Добавить" — Toast "скоро".
- [ ] notifications-service уважает `reminder_slot`.
- [ ] `npx tsc --noEmit` clean (mobile).
- [ ] `go build ./... && go test ./...` clean.
- [ ] Feature flag `ONBOARDING_V3_ENABLED=true` → новый flow; false → старый.

### Полный (после Sprint 6)

- [ ] EN + KK локализация.
- [ ] Apple Sign-In работает на физическом iOS.
- [ ] Analytics events fire (console-log пока что).
- [ ] Existing users с `@onboarding_v1.completed_at` пропускают v3.
- [ ] E2E smoke на iOS + Android.

---

## 6. Non-goals / Future

- **Реальный paywall / биллинг через StoreKit / Google Play Billing / RevenueCat** — Phase 6.
- **Email/password registration** — оставляем как `/auth/register` для web; в mobile только OAuth.
- **Multi-language support** — single target_language в MVP; multi — Phase 6+.
- **A/B-тест воронки** (короткий 6-шаг vs полный 14-шаг) — после baseline данных.
- **Реальный verification OAuth id_token** — Sprint 2; в Sprint 1 — stub.
- **Personalized lesson recommendations** на основе pain_point/speaking_situation/etc — Phase 6.
- **Cohort onboarding** ("X учеников учатся вместе с тобой") — Phase 7.
- **Audio в reaction-экранах** (mascot говорит голосом) — позже.
- **A11y polish** (full VoiceOver / TalkBack walkthrough) — на этапе app-store release.

---

## 7. Open questions

1. **Имя mascot:** Lumi? Нужно проверить trademark. Альтернативы: Ling, Polly, Echo, Mira.
2. **Дизайн mascot:** cat / fox / owl / robot? Должен ли стилистически отличаться от Oki?
3. **Списочный paywall pricing:** $8.25 / $9.99 — финальные цены или TBD?
4. **Apple Sign-In requirement:** App Store требует если есть любой 3rd-party login. Это значит
   обязательно нужно добавлять — не optional.
5. **Multi-language home tab:** показывать ли "+ Добавить" сразу или только после первого
   completed-language? (Решение MVP: показывать, но Toast "скоро".)
6. **Где хранится UI language?** AsyncStorage (как сейчас в spec v2) или в `users.profiles`?
   (Решение: AsyncStorage; sync с backend при logged-in — отдельная задача.)
7. **Quiet hours vs reminder_slot:** пересекаются. Если у юзера `reminder_slot='morning'` И
   `quiet_hours=22:00-08:00` — что приоритетнее? (Решение: оба фильтра применяются; reminder_slot
   определяет диапазон отправки, quiet_hours — жёсткий запрет.)

---

## 8. References

- `onboarding-spec.md` — предыдущая итерация (v2), на которой базируется этот документ.
- Скриншоты конкурента Oki — `/home/aziz/Documents/startup/eng/Onb /Onb /IMG_4743..IMG_4776.PNG`
  (33 экрана, изучены покадрово).
- `phase-1-gamification.md`, `phase-2-step-formats.md`, `phase-3-adaptive-learning.md` —
  зависимости от других фаз.
- `phase-6-monetization.md` — будущая фаза для реального paywall.

---

**Последнее обновление:** 2026-05-25
**Автор:** Cognition / Devin (на основе анализа Oki competitor screenshots + spec v2)
**Статус:** 📝 Planning — требует ревью + Sprint 0 (design assets) до Sprint 1
