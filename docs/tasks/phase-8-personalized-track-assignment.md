# Phase 8: Персональный подбор треков (Personalized Track Assignment) 🎯

**Срок:** 3–5 дней
**Сложность:** Средняя
**Зависимости:** Phase 0 (standalone-контент, `learning_tracks`/`track_lessons`), онбординг (`user-service`: `GetOnboardingState`/`CompleteOnboarding`)
**Статус:** 📝 Plan (на согласование)

---

## 🎯 Цели

### Главные:
1. Перейти от **динамического матчинга** треков (фильтр на каждый запрос) к **материализованному персональному плану** пользователя.
2. Связать треки с юзером **после онбординга** по `level + target_language + motivation`, с порядком и статусом.
3. Сделать набор «Мои треки» **стабильным**, отслеживаемым и адаптивным (разблокировка по прогрессу/уровню).
4. Сохранить динамический каталог «Все треки» для discovery.

### Что НЕ делаем:
- ❌ Не ломаем каталог `GET /tracks` (остаётся для discovery).
- ❌ Не трогаем структуру `lessons`/`steps`/`track_lessons`.
- ❌ Не убираем курсы (Course → Module → Lesson) — это отдельная ветка.

---

## 🧩 Проблема (текущее состояние)

- Таблицы связи **`user ↔ track` нет**. Персонализация — чисто по атрибутам на лету:
  - `learning_tracks(level, language, motivation[])` + фильтр в `ListTracks`
    (`UPPER(level)`, `language=`, `motivation = '{}' OR motivation && $goals`).
  - Gateway `ListTracks` подставляет фильтры из профиля, если не переданы.
- Минусы:
  - «Мои треки» **нестабильны**: меняются при добавлении контента/смене фильтра.
  - Негде хранить **порядок плана**, **статус** (active/locked/completed), **источник** (auto/manual).
  - Нет ручного «добавить/убрать трек», нет адаптивности, слабая аналитика.
- Артефакт: **1009 `personal-*` треков** — это имитация персонализации через пред-генерацию
  контента, помеченного `motivation`. По правильной модели per-user — это **enrollment**,
  а не 1009 отдельных треков.

---

## 🏗️ Целевая архитектура

Три слоя: **Контент → Назначение (план) → Прогресс**.

```
┌──────────────────────── CONTENT (каталог) ─────────────────────────┐
│ learning_tracks (language, level CEFR, motivation[], sort_order,    │
│                  difficulty?, prerequisite_track_id?)               │
│        └── track_lessons ── lessons ── steps                        │
└─────────────────────────────────────────────────────────────────────┘
                         │  selection + ranking (по профилю)
                         ▼
┌──────────────────── ASSIGNMENT (план юзера) ───────────────────────┐
│ user_tracks(user_id, track_id, order_index, status, source)         │
│   status: active | locked | completed                               │
│   source: onboarding | manual | recommend                           │
└─────────────────────────────────────────────────────────────────────┘
                         │  читается на главном экране
                         ▼
┌──────────────────────── PROGRESS (есть) ───────────────────────────┐
│ track_lessons-прогресс, step_progress, gamification, SRS            │
└─────────────────────────────────────────────────────────────────────┘
```

**Ключевая идея:** Каталог (контент) ≠ План пользователя. План — это
материализованный, упорядоченный, адаптируемый срез каталога, созданный на
завершении онбординга.

### Бенчмарк (как у других)
- **Duolingo:** один курс на пару языков; placement-тест = точка входа по уровню;
  мотивация → в основном нотификации/daily goal, не ветвит контент.
- **Busuu/Babbel:** контент сегментирован по темам/целям; при онбординге собирается
  персистентный **study plan** под цель + уровень + время.
- Наш выбор — **гибрид**: уровень = точка входа, цель/мотивация = отбор и ранжирование,
  план персистится в `user_tracks`.

---

## 💾 Изменения в БД

Новая таблица (схема `courses`):

```sql
CREATE TABLE IF NOT EXISTS courses.user_tracks (
    user_id     UUID NOT NULL,
    track_id    UUID NOT NULL REFERENCES courses.learning_tracks(id) ON DELETE CASCADE,
    order_index INT  NOT NULL DEFAULT 0,
    status      VARCHAR(16) NOT NULL DEFAULT 'active',     -- active | locked | completed
    source      VARCHAR(16) NOT NULL DEFAULT 'onboarding', -- onboarding | manual | recommend
    added_at    TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at  TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, track_id)
);

CREATE INDEX IF NOT EXISTS idx_user_tracks_user_order
    ON courses.user_tracks(user_id, order_index);
CREATE INDEX IF NOT EXISTS idx_user_tracks_user_status
    ON courses.user_tracks(user_id, status);
```

Опционально на `learning_tracks` (для качества подбора):
- `difficulty INT` — для ранжирования внутри уровня.
- `prerequisite_track_id UUID NULL` — для последовательной разблокировки.

---

## 🔢 Алгоритм подбора (selection + ranking)

Запускается на `CompleteOnboarding`. Вход: `user_id, target_language, level, goal` (одна главная цель).

1. **Фильтр кандидатов** (по каталогу), по **одной главной цели**:
   `language = target_language`
   AND `UPPER(level) = UPPER(:level)`
   AND (`motivation = '{}'` OR `motivation && ARRAY[:goal]`)   -- целевые + универсальные
   AND `is_published = true`.
2. **Ранжирование:**
   - целевые (`motivation && ARRAY[:goal]`) — выше;
   - затем универсальные (`'{}'`) — в хвост;
   - тай-брейк: `difficulty`/`sort_order` по возрастанию.
3. **Кап и статусы (1 активный за раз):**
   - первый по рангу → `status='active'` (текущий трек под цель);
   - остальные → `status='locked'` (упорядоченная очередь, открываются по мере
     прохождения предыдущего / роста уровня).
4. **Запись** в `user_tracks` (`source='onboarding'`), `order_index` = позиция в ранге.
5. **Идемпотентность:** повторный вызов не дублирует (UPSERT по PK), не затирает `manual`
   и не сбрасывает уже `completed`.

---

## 🔄 Поток

```
Онбординг (level + target_language + goal)
  → user-service.CompleteOnboarding
      → course-service.GenerateUserPlan(user_id, lang, level, goal)        [новый gRPC]
          → SELECT+rank по learning_tracks → UPSERT в user_tracks
Главный экран «Мои треки»
  → GET /api/v1/me/tracks      → user_tracks JOIN learning_tracks (стабильный план)
Каталог «Все треки»
  → GET /api/v1/tracks?...     → динамический discovery (без изменений)
Добавить/убрать вручную
  → POST/DELETE /api/v1/me/tracks/{trackId}   (source='manual')
```

---

## 🔌 API-контракты

### gRPC (course-service)
- `GenerateUserPlan(user_id, language, level, goal) → { tracks_assigned }`   // одна цель
- `GetUserTracks(user_id) → repeated UserTrack { track, order_index, status, source }`
- `AddUserTrack(user_id, track_id)` / `RemoveUserTrack(user_id, track_id)`

### REST (gateway, авторизованные)
- `GET  /api/v1/me/tracks` → план текущего юзера (JOIN с треком: title, icon, type, progress).
- `POST /api/v1/me/tracks/{trackId}` → добавить (`manual`).
- `DELETE /api/v1/me/tracks/{trackId}` → убрать.
- (внутр.) генерация плана — по событию завершения онбординга, не публичный REST.

---

## 🛠️ Изменения по сервисам

### course-service
- Миграция `0000XX_user_tracks.{up,down}.sql`.
- `repository/postgres/user_track.go`: List/Upsert/Delete/GeneratePlan.
- `service/user_track.go`: алгоритм подбора + статусы.
- gRPC api: `GenerateUserPlan`, `GetUserTracks`, `Add/RemoveUserTrack` + proto.

### user-service
- В `CompleteOnboarding` после сохранения профиля — gRPC-вызов
  `course.GenerateUserPlan(...)` (best-effort: ошибка не валит онбординг, логируем).

### gateway
- Хендлеры `GET /me/tracks`, `POST/DELETE /me/tracks/:id` (user_id из JWT).
- Прокинуть прогресс в ответ (переиспользовать существующий `GetTrackProgress`).

### mobile (eng_mob)
- `MyTracks` (вкладка «Уроки») переключить с `useTracks({level,language,motivation})`
  на новый `useMyTracks()` → `GET /me/tracks`.
- Каталог «Все треки» (`tracks/index.tsx`) — без изменений (discovery).
- Кнопка «Добавить в мои» в каталоге → `POST /me/tracks/{id}`.

---

## 📈 Адаптивность / прогрессия (фаза 8.1, опционально)
- Завершил `active`-трек → следующий `locked` → `active`.
- Поднялся уровень (A1→A2) → подмешать A2-треки той же цели (`source='recommend'`).
- Рекомендации по слабым навыкам из SRS/skill-strength (`source='recommend'`).

---

## 🧹 Миграция с текущего состояния
1. Внедрить `user_tracks` + генерацию плана (новые юзеры получают план сразу).
2. **Бэкофилл** для существующих юзеров: одноразовый скрипт — для каждого юзера с
   завершённым онбордингом вызвать `GenerateUserPlan`.
3. **`personal-*` треки (1009 шт.) — удалить** (решение принято). Безопасный порядок:
   a) убедиться, что новый план + бэкофилл работают и юзеры не зависят от `personal-*`;
   b) проверить отсутствие прогресса: нет строк в `step_progress`/`user_tracks`,
      ссылающихся на эти треки (иначе — сначала мигрировать прогресс/исключить);
   c) `DELETE FROM learning_tracks WHERE code LIKE 'personal-%'`
      (каскадно удалит `track_lessons`; `lessons` остаются — при необходимости
      почистить осиротевшие отдельным шагом).
   ⚠️ Деструктивно — выполнять только после финального подтверждения.

> **⚠️ Риск контента (критично).** Сейчас весь goal-разнообразный контент — это и есть
> `personal-*` треки. Кураторских треков всего 4: `travel-a1` (полноценный, 40 уроков),
> `daily-english`, `english-stories-b1`, `english-podcast-a2` (1–3 урока). Если удалить
> `personal-*` **до** создания канонических треков по `(цель × уровень)`, то план для
> всех целей кроме `travel` станет **пустым**. Поэтому удаление обязательно связать с
> подзадачей **«наполнить каталог каноническими треками по целям»** (как был импортирован
> travel из docx). Готовый материал уже есть: `TRACKS FOLDER/CAREER` и
> `TRACKS FOLDER/EDUCATION` (.docx) — под цели work/study, но в БД пока не импортирован.
4. «Мои треки» переключить на `GET /me/tracks`.

---

## ✅ Этапы внедрения (чеклист)
- [ ] Миграция `user_tracks` (+ опц. `difficulty`/`prerequisite_track_id`).
- [ ] Репозиторий + сервис подбора (selection/ranking) в course-service.
- [ ] gRPC `GenerateUserPlan` / `GetUserTracks` / `Add/Remove` + proto.
- [ ] Вызов `GenerateUserPlan` из `CompleteOnboarding` (best-effort).
- [ ] Gateway REST: `GET /me/tracks`, `POST/DELETE /me/tracks/:id`.
- [ ] Mobile: `useMyTracks` + переключение `MyTracks` на план.
- [ ] Бэкофилл-скрипт для существующих юзеров.
- [ ] Тесты (unit на ранжирование, e2e: онбординг → план → /me/tracks).
- [ ] Ревизия `personal-*` треков.

---

## ✅ Решения (зафиксировано)
1. **`N_ACTIVE` = 1** активный трек за раз на юзера; остальные — `locked`-очередь
   с разблокировкой по прогрессу/уровню. (Фокус, как у Duolingo.)
2. **Одна цель (не мультицель).** Подбор строго по **главной цели** юзера
   (`goal`), плюс универсальные треки (`motivation = '{}'`) в хвост очереди.
   Совпадает с онбордингом («выбери **главную** цель»).
   Доступные цели (9): `work, travel, exam, study, social, fun, content, brain,
   relocation`. Словарь онбординга = `motivation` треков 1:1.
3. **`personal-*` треки — удалить.** Выполнить **отдельным безопасным шагом**:
   только после внедрения новой системы + бэкофилла и проверки, что на трек нет
   прогресса (`step_progress`/`user_tracks`). Удаление каскадит `track_lessons`,
   сами `lessons` остаются. ⚠️ Деструктивно (1009 строк) — требует финального
   подтверждения перед запуском.

### Ещё на согласование (можно решить по ходу):
- **Универсальные треки (`motivation = '{}'`)** — добавлять в очередь всегда или
  только если целевых мало? (предлагаю: добавлять в хвост очереди.)
- **Ручное управление:** убирать можно любые треки; `onboarding`-трек при удалении
  помечается, чтобы повторная генерация его не возвращала.
- **Пересборка плана** при смене цели/уровня: дополнять новыми треками, не трогая
  `completed` и `manual` (полную перегенерацию не делаем).

---

## 🧪 Тест-план
- Unit: ранжирование (целевые > универсальные; стабильный порядок).
- Unit: идемпотентность `GenerateUserPlan` (UPSERT, не трогает `manual`).
- e2e: онбординг `ads@` (A1/en/travel) → `/me/tracks` содержит `travel-a1` как `active`.
- e2e: смена цели → план перестроен по новым правилам (см. вопрос 5).
- Регресс: `GET /tracks` (каталог) не изменился.
