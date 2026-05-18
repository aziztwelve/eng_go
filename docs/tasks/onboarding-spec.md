# Spec: Onboarding (Duolingo-style + Oki/Aleem-localized)

**Срок:** 3 недели (5 спринтов)
**Сложность:** Высокая (затрагивает auth + user-service + mobile + web)
**Зависимости:** Phase 1 (gamification), Phase 2 (interactive steps), Phase 3 (push)
**Статус:** 📝 Planning

---

## 0. TL;DR

Заменить текущий 5-step онбординг (welcome → language → level → goal → notifications → done,
живущий в AsyncStorage) на **10-шаговый Duolingo-style flow** с:

- guest-mode на backend (юзер пробует продукт ДО регистрации);
- расширением `users.users` (motivation/source/native_lang/target_lang/level/daily_goal/dob/onboarded_at);
- мини-плейсмент-тестом (5 вопросов через существующие interactive step types);
- регистрацией ПОСЛЕ first-lesson с claim-account flow (XP/SRS/streak гостя переезжают);
- локализацией RU-first (как Oki/Aleem) и социальными пруфами в стиле Duolingo.

**Ключевые цели:**
- Activation rate (% юзеров завершивших first-lesson) — **≥ 60%**.
- Onboarding completion rate — **≥ 75%**.
- D1 retention — **≥ 45%**.
- Guest → registered conversion — **≥ 50%** после first-lesson.

---

## 1. Сравнение референсов

### 1.1 Duolingo (англ., глобальный)

| Что | Как |
|---|---|
| Auth gating | **Полностью после first-lesson.** Юзер заходит и сразу попадает в onboarding без аккаунта. |
| Mascot | Duo Owl — активный коуч, speech-bubbles на каждом шаге, фолбэки на ошибки. |
| Mini-test | Hybrid: `Я никогда не учил <язык>` (skip → A1) ИЛИ `Я знаю немного` (5–7 вопросов). |
| Motivation Q | Да, обязательный. 6 опций (Travel/Brain/Family/School/Work/Culture/Other). Используется для копий push'ей и подбора курсов. |
| Source attribution | Да, обязательный. TikTok/Friend/Search/Ad/AppStore/YouTube/Other — для unattributed-аналитики. |
| Social proof | На welcome (`X миллионов учеников`) + во время загрузки first-lesson (`Учатся в твоей возрастной группе...`). |
| Notifications opt-in | После first-lesson, до `Streak day 1`. Если skip → second prompt в `Streak risk` экране на D2. |
| Plan summary | Да, перед first-lesson — «Твой план учёбы» + предсказание (`At this rate you'll know N words in 30 days`). |
| Длина | 10–15 шагов в зависимости от branch (skip/test). |
| Локализация | EN-first, RU/KZ как secondary. |

### 1.2 Oki (бывший Aleem.kz, KZ)

| Что | Как |
|---|---|
| Auth gating | Onboarding → выбор предмета → register-wall перед content access. Auth ближе к началу, чем у Duolingo. |
| Mascot | Нет персонажа. Иллюстрации на главных тачках, в основном flat icons. |
| Mini-test | Нет placement test. Юзер выбирает класс (5–11) и предмет, программа подаёт по школьному стандарту. |
| Motivation Q | Нет. Зато явно спрашивает «готовишься к ЕНТ / SAT / общее обучение» — очень domain-specific. |
| Source attribution | Не приоритет. |
| Social proof | Минимально — на лендинге, не в onboarding'е. |
| Notifications opt-in | Стандартный системный prompt после регистрации, без контекстного экрана. |
| Plan summary | Нет — после регистрации сразу dashboard. |
| Длина | 5–7 шагов. Очень короткий, потому что узкий ICP (школьники). |
| Локализация | **RU/KZ-first** — копии нативные, без машинного перевода. Это сильная сторона Oki. |

### 1.3 Что берём у каждого

| Аспект | Duolingo | Oki | Наш выбор | Почему |
|---|---|---|---|---|
| Auth gating | После first-lesson | После выбора | **Duolingo** | Активация важнее всего на ранней фазе. |
| Mascot | Duo Owl | Нет | **Oki** (без mascot) | У нас нет дизайнера на анимации, можно добавить позже за один компонент. |
| Mini-placement | Hybrid | Нет | **Duolingo (Hybrid)** | У нас уже есть interactive step types (Phase 2) — переиспользовать. |
| Motivation Q | Да | Нет | **Duolingo** | Нужно для персонализации push'ей и копий лессонов. |
| Source attribution | Да | Нет | **Duolingo** | Бесплатная attribution-аналитика. |
| Social proof | На welcome + перед lesson | Минимально | **Duolingo (упрощённо)** | На welcome + 1 промежуточный карточкой. |
| Plan summary | Да | Нет | **Duolingo** | Психологический якорь, повышает completion. |
| Локализация | EN-first | RU/KZ-first | **Oki** | Наша целевая аудитория — русско/казахоязычные. Все копии писать сразу нативно, не через перевод. |
| Длина | 10–15 | 5–7 | **10 шагов** | Компромисс. Меньше = упрощено, больше = dropout. |
| DOB | Skippable | Обязательно (класс) | **Skippable** | Не блокируем. Спрашиваем ОПЦИОНАЛЬНО. |

---

## 2. UX flow — 10 шагов (~90 секунд happy path)

```
[guest-bootstrap] ─→ 1.welcome ─→ 2.native ─→ 3.target ─→ 4.motivation ─→ 5.source
                                                                              │
   ┌──────────────────────── 6.level-path ←──────────────────────────────────┘
   │
   ├─ "С нуля" ────────────────────────────────────────┐
   │                                                    ▼
   └─ "Знаю немного" ─→ 7.placement (5 вопросов) ──→ 8.goal ─→ 9.plan ─→ 10.first-lesson
                                                                              │
                                                                              ▼
                                                              [register-wall + claim]
                                                                              │
                                                                              ▼
                                                                  [notifications opt-in]
                                                                              │
                                                                              ▼
                                                                          [done]
```

### 2.1 Guest bootstrap (предшествует welcome)

**Cron-position:** при первом app-open, до welcome-screen.

**Что делаем:**
1. Mobile генерирует `device_id` (UUID v4, persist в AsyncStorage `@device_id`).
2. `POST /api/v1/auth/guest { device_id }` → выдаёт guest JWT (claims: `is_guest=true`, `user_id`, `device_id`).
3. JWT кладём в `AuthService` token store как regular (gateway всё равно проверит is_guest claim).

**Если уже есть JWT (любого типа) — bootstrap skip.**

### 2.2 Шаг 1: Welcome

| Поле | Значение |
|---|---|
| Title | «Учим язык весело и эффективно» |
| Subtitle | «Короткие уроки, AI-учитель, streak — всё что нужно чтобы не бросить.» |
| Body | 4 фичи (current welcome.tsx) + **новая social-proof карточка** «Уже {{N}} учеников с нами» (число из бэкенд-config или захардкоженный плейсхолдер). |
| CTA | «Начать» |
| Back | Hidden. |

**Backend hit:** none.

### 2.3 Шаг 2: Native language

| Поле | Значение |
|---|---|
| Title | «На каком языке тебе удобнее?» |
| Subtitle | «Это язык, на котором будут показаны переводы и подсказки.» |
| Body | List 6 языков (kk/ru/en/es/de/fr) с флагами. Default highlight: `ru`. |
| CTA | «Дальше» (disabled пока не выбрано) |

**Backend hit:** `PATCH /api/v1/me/onboarding { native_language: "ru" }`.

**Защита:** если pre-detected по device locale — кнопка enabled c выбранным.

### 2.4 Шаг 3: Target language

| Поле | Значение |
|---|---|
| Title | «Какой язык учим?» |
| Subtitle | «Можно потом добавить ещё в настройках.» |
| Body | List 6 языков, без `native_language` (фильтруем). |
| CTA | «Дальше» |

**Backend hit:** `PATCH /api/v1/me/onboarding { target_language: "en" }`.

### 2.5 Шаг 4: Motivation

| Поле | Значение |
|---|---|
| Title | «Зачем тебе этот язык?» |
| Subtitle | «Можно выбрать несколько. Это поможет нам подбирать уроки.» |
| Body | 7 chip-опций: Travel/Work/Family/School/Brain/Culture/Fun + Other. Multi-select up to 3. |
| CTA | «Дальше» (enabled даже без выбора — soft mandatory, можно skip) |

**Backend hit:** `PATCH /api/v1/me/onboarding { motivation: ["travel","work"] }` (text[]).

**Использование:**
- В push-копиях (`gamification cron RemindersScheduler`): если `motivation includes 'work'` → «Не забудь про урок — твой английский для работы ждёт».
- В Phase post-MVP: фильтрация tracks/курсов.

### 2.6 Шаг 5: Source attribution

| Поле | Значение |
|---|---|
| Title | «Откуда узнал о нас?» |
| Subtitle | (нет subtitle) |
| Body | 7 опций (TikTok / Instagram / Friend / AppStore / YouTube / Search / Ad). |
| CTA | «Дальше» (enabled с дефолтом или skip ссылкой) |

**Backend hit:** `PATCH /api/v1/me/onboarding { signup_source: "tiktok" }`.

**Использование:** аналитика для marketing dashboard (post-MVP). На клиенте — также fire `trackEvent('source_attributed', {source})`.

### 2.7 Шаг 6: Level path (binary)

| Поле | Значение |
|---|---|
| Title | «Как хорошо ты знаешь {{target_language_name}}?» |
| Subtitle | (нет) |
| Body | 2 большие карточки: <br>① **«С нуля»** (icon: 🌱) — без подзаголовка → skip к 8.goal с `level=beginner`. <br>② **«Я уже знаю немного»** (icon: 🧠) — «Пройди мини-тест на 60 секунд» → переход к 7.placement. |
| CTA | (нет, выбор = navigate) |

**Backend hit (для С нуля):** `PATCH /api/v1/me/onboarding { proficiency_level: "beginner" }` → router push к goal.
**Для тест-ветки:** ничего не пишем (level определит test).

### 2.8 Шаг 7: Mini placement test (только в branch «Знаю немного»)

| Поле | Значение |
|---|---|
| Title | «Мини-тест» |
| Subtitle | «5 вопросов. Не страшно ошибаться — мы калибруем уровень.» |
| Body | Один за другим 5 вопросов через `<StepRenderer>` (Phase 2 контракт). <br>Q1 — `match_pairs` (A1, basic vocab). <br>Q2 — `translate` (A2, simple sentence). <br>Q3 — `fill_blank` (B1, grammar). <br>Q4 — `listening` (B1-B2, ear training). <br>Q5 — `translate` (B2, complex sentence). <br>На каждый — progress bar `i/5`, без timer. |
| CTA | (нет, авто после Q5) |

**Scoring (на клиенте, не вызывает step-validation backend — иначе attempts засрутся):**

```ts
// types: PlacementResult { level: ProficiencyLevel; correctCount: number }

const correct = answers.filter(a => a.isCorrect).length;
let level: ProficiencyLevel;
if (correct <= 1) level = 'a1';
else if (correct === 2) level = 'a2';
else if (correct === 3) level = 'b1';
else if (correct === 4) level = 'b1';
else level = 'b2'; // all 5
```

**Альтернатива (если нужно reuse step-validation):** invoke `POST /steps/:id/submit` для каждого
с `source_type=placement`. Но это создаёт SRS-карточки и mistakes — НЕЖЕЛАТЕЛЬНО. **Решение:**
скоринг полностью клиентский, без backend-вызовов на каждый ответ. В конце:
`PATCH /api/v1/me/onboarding { proficiency_level, placement_score: correct }`.

**Контент тест-вопросов** — захардкожен в `src/lib/placement-questions.ts` per-target-language.
Pool ≥ 8 вопросов на каждый из 6 целевых, рандомно выбираем 5. Подсетки: A1×2, A2×2, B1×2, B2×2.

### 2.9 Шаг 8: Daily goal

| Поле | Значение |
|---|---|
| Title | «Сколько готов уделять в день?» |
| Subtitle | «Цель можно поменять в любой момент.» |
| Body | 4 карточки. Изменение от текущего: добавляем time-equivalent копию (`5 мин/день`, `10 мин`, `15 мин`, `20+ мин`). Default selected: 20 XP / 10 мин. |
| CTA | «Дальше» |

**Backend hit:** `PATCH /api/v1/me/onboarding { daily_goal_xp: 20 }` + параллельно
`PUT /api/v1/gamification/daily-goal { target_xp: 20 }` (как сейчас в goal.tsx).

### 2.10 Шаг 9: Plan / coach card

| Поле | Значение |
|---|---|
| Title | «Твой план готов!» |
| Subtitle | (нет) |
| Body | Большая карточка summary (как done.tsx сейчас): язык / уровень / цель. **Дополнительно:** мотивационный recap based on motivation: «Ты учишь английский для путешествий. С {{daily_goal_xp}} XP в день ты освоишь ~{{N}} слов за месяц». N считается клиентский — `daily_goal_xp / 2 * 30`. |
| CTA | «Попробовать первый урок» |

**Backend hit:** none (read из state).

**Опциональный mini-step 9.5 (DOB):** «Когда у тебя день рождения?» (skip ссылкой). Если введён —
`PATCH { date_of_birth: "2000-05-15" }`. По умолчанию НЕ показывается (`SHOW_DOB_STEP=false`),
включаем feature-flag'ом позже.

### 2.11 Шаг 10: First lesson (guest)

**Это НЕ часть onboarding stack'а** — это переход в `app/learn/[lessonId]` с пред-выбранным
`lessonId` (специальный seeded «первый урок» под целевой язык + уровень).

| Поле | Значение |
|---|---|
| Source | seed-lesson `first_lesson_<target_lang>_<level>` (см. SEEDING.md). 5 шагов: greeting (translate), match_pairs, listening, fill_blank, story. |
| Mid-overlay | После Q3 — мотивационная плашка «Отлично, продолжай! 💪». |
| Финал | Стандартный lesson-complete экран (XPGain + daily-goal toast). После него — **register-wall modal** (см. 2.12). |
| Гость может ошибаться? | Да, hearts работают. |
| Можно ли пройти без аккаунта? | Да — guest user в backend, gamification/srs/step-validation работают как для regular. |

**Backend changes для guest support:** см. §3.

### 2.12 Register wall (post first-lesson)

Появляется как **modal/screen** после lesson-complete, с кнопкой «Сохрани прогресс».

| Поле | Значение |
|---|---|
| Title | «Сохрани свои +50 XP!» |
| Subtitle | «Создай аккаунт чтобы продолжить с любого устройства.» |
| Body | 3 поля: email / password / display_name. Pre-filled `display_name` = «Ученик» (плейсхолдер). + sign-in-with-Apple / Google buttons (post-MVP). |
| CTA primary | «Создать аккаунт» |
| CTA secondary | «У меня уже есть аккаунт» → login с claim после. |
| Skip | Доступен («Позже») — но streak/XP останутся только на этом устройстве. На третий открытом lesson — wall становится non-skippable. |

**Backend flow:**
1. `POST /api/v1/auth/register { email, password, display_name }` — стандартный, но видит is_guest claim → создаёт permanent user через **claim**:
2. Внутри auth-service: `ClaimGuestAccount(guest_user_id, email, password, display_name)` →
   - перепривязывает все строки в `gamification.user_stats / streak_freezes / etc`, `srs.*`, `social.*`, `notifications.devices` с `user_id=guest_user_id` на `user_id=new_user_id`. **Пере-маппинг** (а не миграция строк): мы НЕ создаём нового user, а **переименовываем** существующего guest-user → ставим `is_guest=false`, `email/password/display_name` заполняем. user_id не меняется. Это упрощает claim до простого UPDATE-statement.
   - emit JWT уже без `is_guest`.

### 2.13 Шаг 11: Notifications opt-in (post-register)

Тот же экран что сейчас `app/onboarding/notifications.tsx` (Phase 3 work). Без изменений в логике,
только переезжает в позицию ПОСЛЕ register-wall.

### 2.14 Шаг 12: Done

Минимальный экран с CTA «На главную» → `router.replace('/(tabs)')`. Без `markOnboardingComplete()`
(уже сделан в шаге 9 / при register).

---

## 3. Backend changes

### 3.1 user-service: миграция и proto

**Migration `00001X_users_onboarding_fields.up.sql`:**

```sql
ALTER TABLE users.users
  ADD COLUMN native_language       TEXT,
  ADD COLUMN target_language       TEXT,
  ADD COLUMN proficiency_level     TEXT,        -- 'beginner'|'a1'|'a2'|'b1'|'b2'|'just_for_fun'
  ADD COLUMN daily_goal_xp         INT,
  ADD COLUMN motivation            TEXT[],
  ADD COLUMN signup_source         TEXT,
  ADD COLUMN onboarded_at          TIMESTAMPTZ,
  ADD COLUMN is_guest              BOOLEAN NOT NULL DEFAULT FALSE,
  ADD COLUMN guest_device_id       TEXT;

CREATE UNIQUE INDEX ix_users_guest_device
  ON users.users(guest_device_id) WHERE is_guest;

CREATE INDEX ix_users_onboarded_at ON users.users(onboarded_at);

-- Constraint: гость не имеет email/password
ALTER TABLE users.users
  ADD CONSTRAINT chk_guest_no_credentials
  CHECK (NOT is_guest OR (email IS NULL OR email = ''));
```

**Down migration:**

```sql
DROP INDEX users.ix_users_guest_device;
DROP INDEX users.ix_users_onboarded_at;
ALTER TABLE users.users
  DROP CONSTRAINT chk_guest_no_credentials,
  DROP COLUMN guest_device_id,
  DROP COLUMN is_guest,
  DROP COLUMN onboarded_at,
  DROP COLUMN signup_source,
  DROP COLUMN motivation,
  DROP COLUMN daily_goal_xp,
  DROP COLUMN proficiency_level,
  DROP COLUMN target_language,
  DROP COLUMN native_language;
```

**Proto (`shared/proto/users/v1/user.proto` или новый `onboarding.proto`):**

```proto
service OnboardingService {
  rpc GetState (GetOnboardingStateRequest) returns (OnboardingState);
  rpc PatchState (PatchOnboardingStateRequest) returns (OnboardingState);
  rpc Complete (CompleteOnboardingRequest) returns (OnboardingState);
}

message OnboardingState {
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
}

message PatchOnboardingStateRequest {
  string user_id = 1;
  optional string native_language    = 2;
  optional string target_language    = 3;
  optional string proficiency_level  = 4;
  optional int32  daily_goal_xp      = 5;
  // motivation: repeated → отправляется ЦЕЛИКОМ (replace), не append
  repeated string motivation         = 6;
  bool    motivation_set             = 7;  // флаг чтобы отличить "не передавали" от []
  optional string signup_source      = 8;
  optional google.protobuf.Timestamp date_of_birth = 9;
}

message CompleteOnboardingRequest {
  string user_id = 1;
}
```

**Repository (`internal/repository/onboarding/postgres.go`):**

```go
type Repository interface {
  GetState(ctx context.Context, userID uuid.UUID) (*model.OnboardingState, error)
  PatchState(ctx context.Context, userID uuid.UUID, patch model.OnboardingPatch) (*model.OnboardingState, error)
  Complete(ctx context.Context, userID uuid.UUID) (*model.OnboardingState, error)
}
```

`PatchState` — выполняет одной транзакцией dynamic UPDATE по non-nil полям + RETURNING.

### 3.2 auth-service: guest-mode + claim

**Migrations:** auth-service не нужны, потому что юзер создаётся в **users-сервисе** (там новые
поля). Auth держит только `auth.credentials` (email + password_hash).

**Новые RPC в `auth.proto`:**

```proto
service AuthService {
  rpc CreateGuestSession (CreateGuestSessionRequest) returns (CreateGuestSessionResponse);
  rpc ClaimGuestAccount  (ClaimGuestAccountRequest)  returns (ClaimGuestAccountResponse);
}

message CreateGuestSessionRequest {
  string device_id = 1;  // client-generated UUID v4
}

message CreateGuestSessionResponse {
  string user_id      = 1;
  string access_token = 2;
  string refresh_token = 3;
  google.protobuf.Timestamp expires_at = 4;
}

message ClaimGuestAccountRequest {
  string guest_user_id = 1;  // из JWT
  string email         = 2;
  string password      = 3;
  string display_name  = 4;
}

message ClaimGuestAccountResponse {
  string user_id      = 1;  // == guest_user_id (same UUID, claimed)
  string access_token = 2;
  string refresh_token = 3;
}
```

**Pipeline `CreateGuestSession`:**

```
1. validate device_id (UUID v4 format)
2. usersClient.GetByGuestDevice(device_id)
3. if found → reuse (idempotent app-reinstall on same device)
   if not found → usersClient.CreateGuest({device_id})
4. emit JWT { user_id, is_guest=true, device_id, exp=30d }
5. write refresh_token to auth.refresh_tokens
```

**Pipeline `ClaimGuestAccount`:**

```
1. validate caller is guest (from JWT claims)
2. validate email uniqueness via users.GetByEmail (must NotFound)
3. usersClient.ClaimGuest(guest_user_id, email, display_name)
   → users-service: UPDATE users SET is_guest=false, email=$2, display_name=$3,
     guest_device_id=NULL WHERE user_id=$1 AND is_guest=true RETURNING *
4. auth: INSERT INTO credentials (user_id, password_hash) VALUES (...)
5. emit fresh JWT { user_id, is_guest=false, exp=14d }
```

**Race-safety:** все шаги в transaction. Если другой процесс уже claim'ил тот же email — UPDATE
вернёт zero rows, возвращаем `ErrAlreadyClaimed`.

**Cleanup of dead guests:** добавить cron `auth-service/internal/cron/guest_cleanup.go` —
раз в неделю удаляет `is_guest=true AND created_at < NOW() - INTERVAL '90 days'` (после grace period).
Cascade удаляет gamification/srs/social rows через FK ON DELETE CASCADE.

### 3.3 Guest support в downstream-сервисах

**gamification / srs / step-validation / social / notifications:** none changes. Они принимают
`user_id UUID` без проверки is_guest — гость валидно создаёт XP, hearts, SRS-карты, mistakes,
streak, devices/preferences. Это нативно работает.

**course-service:** none changes. Гость может progress на любом lesson (включая paid — для MVP
все курсы доступны; Phase 6 monetization введёт paywall).

### 3.4 Gateway routes

**Public (без auth):**

```
POST   /api/v1/auth/guest                  # CreateGuestSession (rate-limit 10/min/IP)
```

**Protected (любой auth, включая guest JWT):**

```
GET    /api/v1/me/onboarding                # OnboardingService.GetState
PATCH  /api/v1/me/onboarding                # OnboardingService.PatchState (partial)
POST   /api/v1/me/onboarding/complete       # OnboardingService.Complete
POST   /api/v1/auth/claim                   # ClaimGuestAccount (требует is_guest=true)
```

**JWT middleware:** не различает guest и regular для protected-endpoints. Только `/admin/*`
делает дополнительную проверку `is_guest=false`. Все остальные сервисы принимают любой валидный JWT.

**Rate-limiting `/auth/guest`:** redis-based, 10 запросов/IP/час. Защита от заполнения users-таблицы
ботами. (Не критичен для MVP — отложить, добавить sentinel-комментарий в gateway middleware.)

### 3.5 Что НЕ делаем в backend

- Email-verification для гостей при claim (отложено — пускаем как есть, верификация уже есть для regular flow).
- Apple/Google sign-in для register-wall (Sprint post-MVP).
- Анонимная analytics-таблица для motivation/source (используем поля в users).
- Покупка/подписка через guest (Phase 6 разрулит после регистрации).

---

## 4. Mobile changes (`eng_mob`)

### 4.1 Файлы

**Новые:**

```
src/app/onboarding/
  native-language.tsx       # Шаг 2
  motivation.tsx            # Шаг 4 (multi-select chips)
  source.tsx                # Шаг 5
  level-path.tsx            # Шаг 6 (binary card-choice)
  placement.tsx             # Шаг 7 (mini-test 5Q)
  plan.tsx                  # Шаг 9 (coach summary)
  first-lesson.tsx          # Шаг 10 (re-route to learn/[lessonId] с особой query-param)
  register-wall.tsx         # Post-lesson modal/screen

src/components/onboarding/
  PlacementTest.tsx         # Wrapper над <StepRenderer>, локальный scoring
  PlacementQuestion.tsx     # Один вопрос с Q-counter
  SocialProofCard.tsx       # «Уже X учеников...» карточка
  CoachCard.tsx             # Plan summary (без mascot, иллюстрация)
  ChipMultiSelect.tsx       # Generic chip-selector для motivation/source
  GoalEstimateCard.tsx      # «N слов за месяц» расчёт

src/lib/
  placement-questions.ts    # Hardcoded 6 langs × 8+ вопросов
  guest-session.ts          # Bootstrap helper

src/hooks/
  use-guest-session.ts      # Авто-bootstrap на app-open
  use-claim-account.ts      # Claim mutation
  use-placement.ts          # Local state для test (current Q, answers, finalLevel)
```

**Изменённые:**

```
src/app/_layout.tsx                       # Bootstrap guest session before render
src/app/index.tsx                         # Guard: guest exists → onboarding/welcome
src/app/onboarding/_layout.tsx            # Расширить stack с новыми routes
src/app/onboarding/welcome.tsx            # + SocialProofCard
src/app/onboarding/language.tsx           # → переименовать в target-language логически (route остается language.tsx, но скрин теперь Шаг 3)
src/app/onboarding/level.tsx              # Удалить (заменён level-path + placement) ИЛИ оставить как fallback
src/app/onboarding/goal.tsx               # +time-equivalent копия, default 20 XP
src/app/onboarding/notifications.tsx      # Без логики, только move в позицию post-register
src/app/onboarding/done.tsx               # Упростить (plan summary переехал в plan.tsx)

src/lib/onboarding-storage.ts             # Расширить OnboardingState: motivation/source/native_language/dob
src/lib/api-client.ts                     # +OnboardingApi (getState/patchState/complete), +AuthApi.createGuest/claim
src/lib/auth-service.ts                   # Поддержка guest JWT (тот же storage), differentiate is_guest claim
src/hooks/use-onboarding.ts               # Mutate теперь идёт в backend (с fallback на AsyncStorage при offline)
```

### 4.2 OnboardingShell обновления

- `total` динамический: 10 если выбран placement-path, 9 если skip.
- Поддержка `subtitle` пустой (для шагов где она опциональна).
- Прогресс-бар: показывает `(currentStep)/(totalForBranch)` — ре-вычисляется при выборе level-path.

### 4.3 Storage migration (текущий → новый)

В `getOnboardingState()` добавить:

```ts
function migrateV1toV2(raw: V1State): V2State {
  return {
    ...DEFAULT_STATE_V2,
    ...raw,
    motivation: [],
    signup_source: null,
    dob: null,
    placement_completed: !!raw.completed_at, // не теряем completion
  };
}
```

При первом open после deploy:
1. Если `@onboarding_v1` exist и `completed_at !== null` — перенести в backend через
   `PATCH /me/onboarding` (одной волной), затем `POST /me/onboarding/complete`.
2. Установить `@onboarding_v2_migrated=true`.
3. С этого момента storage только cache; source-of-truth — backend.

Юзеры с `completed_at !== null` после миграции — НЕ попадают в новый flow. Только новые юзеры.

### 4.4 Guest session bootstrap

В `app/_layout.tsx` вместо текущего поведения «no auth → render landing»:

```ts
useEffect(() => {
  void (async () => {
    const authed = await AuthService.isAuthenticated();
    if (!authed) {
      // Auto-create guest
      const deviceId = await getOrCreateDeviceId();
      const session = await AuthApi.createGuest({ device_id: deviceId });
      await AuthService.persist(session); // accessToken/refreshToken
    }
    setReady(true);
  })();
}, []);
```

`getOrCreateDeviceId` — AsyncStorage `@device_id`, генерируем UUID v4 через `expo-crypto.randomUUID()`.

### 4.5 Placement test details

**`PlacementTest.tsx`:**

```ts
interface Props {
  questions: PlacementQuestion[];  // ровно 5
  onComplete: (level: ProficiencyLevel, correctCount: number) => void;
}
```

Внутри:
- State `currentQ: 0..4`, `answers: boolean[]`.
- На каждый Q рендерим `<StepRenderer>` с `step` собранным из question + custom `onSubmit`,
  который НЕ вызывает backend, а только локально проверяет (используя validators-логику
  проверки в backend — НО мы НЕ можем её reuse в RN. Поэтому валидация на клиенте через
  per-type функции в `placement-questions.ts`).
- В конце — score → level (mapping выше) → `onComplete`.

**Альтернатива (более elegant):** добавить параметр `mode='dry_run'` в step-validation backend
RPC, который validate-only без attempts/SRS/gamification side-effects. **Решение для MVP:**
client-side validation на 5 простых вопросов — достаточно (дублирование validators невелико).

### 4.6 First-lesson seed

Добавить в `services/course-service/migrations/seed_first_lessons.sql`:

```sql
-- 6 first-lessons (по одному на target_language)
INSERT INTO courses.lessons (id, slug, title, target_language, ...) VALUES
  ('00000001-...', 'first-lesson-en', 'Первый урок: Basics', 'en', ...),
  ...;
-- 5 шагов на каждый: greeting/match_pairs/listening/fill_blank/story
```

Course-service exposes `GET /api/v1/lessons/first?target_language=en&level=beginner` →
возвращает соответствующий lesson_id. Mobile `first-lesson.tsx` дёргает этот endpoint и
делает `router.push('/learn/' + lessonId + '?source=onboarding')`.

После `lesson_complete` event — `app/learn/[lessonId].tsx` проверяет query-param `source` и
если `=onboarding` → mount `<RegisterWallModal>` поверх done-screen вместо обычного back-nav.

### 4.7 Аналитические события

Файл `src/lib/analytics.ts` (новый, пока no-op):

```ts
export function trackEvent(event: string, props: Record<string, any> = {}) {
  if (__DEV__) console.log('[analytics]', event, props);
  // Phase 6: integrate with PostHog/Mixpanel
}
```

События которые fire:
- `onboarding_started` (welcome view)
- `onboarding_step_completed` (каждый PATCH success, props={step, value})
- `onboarding_motivation_set` (props={values: string[]})
- `onboarding_source_attributed` (props={source})
- `onboarding_placement_started` / `_completed` (props={level, correct})
- `onboarding_first_lesson_started` / `_completed`
- `onboarding_register_wall_shown` / `_skipped` / `_completed` (props={method: 'email'|'google'})
- `onboarding_completed`

---

## 5. Web changes (`eng_next2`)

Зеркальный flow, базируется на тех же API и компонент-спеках:

```
src/app/(onboarding)/
  layout.tsx              # Container с progress bar
  welcome/page.tsx
  native/page.tsx
  target/page.tsx
  motivation/page.tsx
  source/page.tsx
  level/page.tsx
  placement/page.tsx
  goal/page.tsx
  plan/page.tsx
  first-lesson/page.tsx   # → redirect to /learn/[lessonId]?source=onboarding
  register/page.tsx       # Modal? Full page? — full page, в стиле текущего auth/login
  notifications/page.tsx
  done/page.tsx
```

Shared-компоненты (`src/components/onboarding/`):
- `PlacementTest.tsx` (web версия — пере-использует phase-2 step-renderer от eng_next2)
- `SocialProofCard.tsx`, `CoachCard.tsx`, `ChipMultiSelect.tsx`

API client: уже использует gateway `/api/v1/me/onboarding` — добавить wrappers в `lib/api/onboarding.ts`.

Storage: web использует cookies/localStorage для JWT. Guest session bootstrap идентичен:
при первом hit `/onboarding/welcome` без `auth_token` cookie — `POST /api/v1/auth/guest` →
set cookie → render.

**Локализация:** все строки через `next-intl` (RU как default, KZ как secondary). Соответствующий
локализационный файл в mobile через `expo-localization` + i18n-js (если ещё нет — добавить
в Sprint 5).

**Web НЕ блокирует mobile-релиз:** mobile flow можно запускать независимо. Web — Sprint 5.

---

## 6. Migration & rollout

### 6.1 Backend migration

**Order:**
1. Применить `00001X_users_onboarding_fields` (NULL-safe, non-breaking).
2. Deploy users-service с новым proto. Старые клиенты не вызывают новые RPC — OK.
3. Deploy auth-service с CreateGuestSession/ClaimGuestAccount.
4. Deploy gateway с новыми routes.
5. После Sprint 5 — deploy mobile/web.

**Rollback:** down-migration безопасна, но потеряем onboarding-state existing юзеров. Если уже
deployed — лучше forward-fix.

### 6.2 Frontend rollout

Feature flag `ONBOARDING_V2_ENABLED` (env-var в `app.config.ts`):
- false → старый flow (current 5-step, AsyncStorage only).
- true → новый flow.

Постепенная раскатка:
1. Sprint 1-4: develop behind flag, тестируем на staging.
2. После Sprint 4 done: enable flag на 10% users (через remote-config или server-side eligibility check).
3. Мониторим completion rate / D1 retention 1 week.
4. Rollout 100%.

### 6.3 Existing users

- Юзеры с `completed_at !== null` в AsyncStorage → не показываем новый онбординг. Migrate их
  данные в backend one-shot (см. §4.3).
- Юзеры в середине старого онбординга на момент deploy (рaramount-edge case) → завершают старый,
  при следующем open после `completed_at` set — same as above.

---

## 7. Acceptance criteria

### MVP (после Sprint 4)

- [ ] Гость может пройти весь onboarding без регистрации.
- [ ] Гость завершает first-lesson и видит +50 XP.
- [ ] При регистрации XP / hearts / streak / SRS-карты гостя сохраняются (user_id не меняется).
- [ ] Все 10 шагов синкаются с backend (PATCH `/me/onboarding`). Прерывание flow → resume на следующий запуск с того же шага.
- [ ] Drop в шаге 7 (placement) — резюм заходит на шаг 7, не на шаг 6.
- [ ] Локализация RU для всех строк (placeholder для KZ — допустим).
- [ ] `npx tsc --noEmit` clean (mobile).
- [ ] `go build ./... && go test ./...` clean во всех затронутых сервисах (users / auth / gateway).
- [ ] Placement test даёт reasonable level (manual smoke на 3 уровнях: 0/5 → a1, 3/5 → b1, 5/5 → b2).
- [ ] Old юзеры с `completed_at` в AsyncStorage не попадают в новый flow.
- [ ] `/auth/guest` не требует никакой auth и rate-limited (10/min/IP — placeholder OK).
- [ ] Guest cleanup cron: `is_guest=true AND created_at < NOW() - 90 days` удаляются (smoke в admin-инструменте).

### Полный (после Sprint 5)

- [ ] Web имеет идентичный flow.
- [ ] Локализация KZ полная (mobile + web).
- [ ] Analytics events пишутся в console (готовы к интеграции с PostHog/Mixpanel).
- [ ] Apple/Google sign-in доступны на register-wall (опционально — может быть после).
- [ ] DOB step с feature-flag (off by default).

---

## 8. Sprint breakdown

### Sprint 1 — Backend foundation (3 дня)

- [ ] users-service: миграция, репозиторий, сервис, proto, tests.
- [ ] auth-service: CreateGuestSession + ClaimGuestAccount RPC, integration tests.
- [ ] gateway: 4 новых route, JWT middleware accepts guest claim.
- [ ] guest cleanup cron в auth-service (одна горутина, daily tick).
- [ ] Manual smoke: создать гостя через curl → claim → проверить что user_id совпадает.

### Sprint 2 — Mobile core flow (3 дня)

- [ ] Mobile guest session bootstrap (`use-guest-session.ts` + `_layout.tsx` integration).
- [ ] Storage migration v1→v2 (`onboarding-storage.ts`).
- [ ] OnboardingApi в `api-client.ts`.
- [ ] Обновлённые экраны: welcome (+social proof), native-language, target-language (rename), motivation, source.
- [ ] Все шаги синкаются через PATCH.

### Sprint 3 — Placement test + plan (4 дня)

- [ ] level-path screen.
- [ ] `placement-questions.ts` data — 8+ вопросов на 6 языков (по 4 уровня сложности).
  - **Зависит от:** ассеты для listening (TTS audio_url). Можно reuse существующий `tts_cache` или встроить inline через Web Speech API на mobile.
  - **MVP shortcut:** для listening использовать static audio URLs (CDN/MinIO).
- [ ] `PlacementTest.tsx` + `PlacementQuestion.tsx`.
- [ ] Local validation per step-type (translate/match_pairs/fill_blank/listening).
- [ ] Plan screen (`plan.tsx`) с `GoalEstimateCard`.
- [ ] goal.tsx обновление (time-equivalent копия).

### Sprint 4 — First lesson + register (4 дня)

- [ ] Course-service: seed first-lessons (6 langs × 5 steps), endpoint `GET /lessons/first`.
- [ ] Mobile `first-lesson.tsx` + integration с `app/learn/[lessonId]`.
- [ ] `RegisterWallModal` (`register-wall.tsx`).
- [ ] `useClaimAccount` hook.
- [ ] OAuth-кнопки заглушки (placeholder, скрытые).
- [ ] Полная цепочка smoke: guest bootstrap → 10 шагов → first-lesson → claim → /(tabs).
- [ ] Notifications opt-in переезжает в позицию post-register.

### Sprint 5 — Web port + analytics + polish (3 дня)

- [ ] eng_next2 страницы /onboarding/*.
- [ ] Локализация KZ для всех строк.
- [ ] Analytics events (no-op stub).
- [ ] Migration old → new для existing users.
- [ ] Feature flag `ONBOARDING_V2_ENABLED`.
- [ ] E2E smoke на iOS + Android + web.

---

## 9. Non-goals / Future

- **Apple/Google/Apple sign-in** — placeholders, реализация отдельно.
- **Mascot / Lottie-анимации** — только когда придёт дизайнер. Компонент `<CoachCard>` готов
  принимать `<LottieView>` через prop.
- **A/B тестинг длины** (8 vs 10 vs 12 шагов) — после baseline.
- **Interest-tags** для track-personalization — Phase post-MVP.
- **DOB enforcement** — для now skippable / hidden, добавить когда понадобится для achievement birthday.
- **Email-verification гостей при claim** — отложили (regular flow и так это умеет; гости claim'ятся
  с тем же email что использовали бы при register).
- **Анти-абуз гостей** (бот-защита, captcha) — Phase 6 или раньше если увидим аномалии.
- **Анти-fraud для motivation/source** (юзер выбирает «тот же что в test») — нет, доверяем.
- **Уведомления гостей** — гости не получают push (require notifications.devices, registered users only).
- **Premium upgrade promo** в plan-screen — Phase 6 интеграция.
- **Cohort onboarding** (juxtaposing X learning Y вместе) — далеко в будущем.

---

## 10. Open questions

1. **First-lesson XP bonus** (+50 при complete) — давать всем или только гостям? Решение: всем, как
   обычная nагradа за step_completed. Bonus уже встроен в gamification scoring (5 шагов × ~15 XP = ~75 XP).
2. **Listening Q в placement** — какое audio для гостя без TTS? Решение: pre-rendered MP3 в MinIO,
   `tts_cache` populate через seed.
3. **Web register-wall placement** — modal vs full-page? Decision: full-page, чтобы reuse существующий
   `/auth/register` layout.
4. **Skip first-lesson** — можно ли пропустить шаг 10? Текущее решение: НЕТ skip, чтобы максимизировать
   activation. Но добавить мелкую секондар-кнопку «У меня уже есть аккаунт» в самом конце для returning
   users (которых мы не определили на bootstrap stage).
5. **Native language KZ** — у нас 6 языков, но native-language и target-language могут пересекаться.
   Если native=kk, target=en — OK; если native=en, target=ru — OK; если native==target — UI должен
   запрещать (filter в Шаге 3). Edge case: native=kk и target=kk не имеет смысла, поэтому
   «Қазақша» исключаем из target-list если native=kk.
6. **Existing users без registered onboarding-полей** — после backend deploy все existing users имеют
   NULL в новых колонках. На клиенте: как только они пройдут хоть один lesson — backend
   через `OnLessonCompleted` hook **не** заполняет эти поля (они приходят только из onboarding).
   Решение: оставляем NULL, не блокирует функционал. Если в будущем понадобится — отдельная
   migration-таска (popup «дополни профиль»).

---

## 11. References

- [Duolingo onboarding teardown](https://www.appcues.com/blog/duolingo-onboarding) — что они делают и почему.
- [Aleem.kz / Oki](https://oki.kz) — local KZ EdTech, RU-first UX.
- [Phase 1 gamification](./phase-1-gamification.md) — XP / streak / hearts (используется в onboarding completion и first-lesson).
- [Phase 2 step formats](./phase-2-step-formats.md) — interactive step types (используются в placement test).
- [Phase 3 push notifications](./phase-3-adaptive-learning.md) — opt-in flow (используется на шаге 11).

---

**Последнее обновление:** 2026-05-18
**Автор:** Cognition / Devin
**Статус:** 📝 Planning — требует ревью перед началом Sprint 1
