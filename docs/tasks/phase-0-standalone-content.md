# Phase 0: Standalone-контент и развязка геймификации 🏛️

**Срок:** 3-5 дней  
**Сложность:** Низкая  
**Зависимости:** —  
**Статус:** ✅ Done (см. [PHASE_0_PROGRESS.md](./PHASE_0_PROGRESS.md))

---

## 🎯 Цели

### Главные цели:
1. **Сохранить** существующую структуру курсов (Course → Module → Lesson → Step) **без изменений**
2. **Добавить возможность** создавать standalone-уроки/шаги БЕЗ привязки к курсу
3. **Развязать геймификацию** от курсов — XP/streaks/hearts работают везде
4. **Подготовить фундамент** для всех последующих фаз

### Что НЕ делаем:
- ❌ Не ломаем существующую логику курсов
- ❌ Не меняем структуру модулей
- ❌ Не убираем enrollment в курсы

---

## 🏗️ Архитектура: две параллельные структуры

```
┌─────────────────────────────────────────────────────────────┐
│                     CONTENT (контент)                       │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ВАРИАНТ 1: Курсы (как сейчас)                              │
│  Course → Module → Lesson → Step                            │
│                                                              │
│  ВАРИАНТ 2: Standalone (новое)                              │
│  Track (опционально) → Lesson → Step                        │
│                  ↓                                           │
│              или просто Lesson → Step                       │
│                                                              │
└─────────────────────────────────────────────────────────────┘
                          ↓
              [действия пользователя]
                          ↓
┌─────────────────────────────────────────────────────────────┐
│              GAMIFICATION (геймификация)                    │
├─────────────────────────────────────────────────────────────┤
│  XP, Streaks, Hearts, Daily Goals, Achievements, Leagues    │
│  ──────────────────────────────────────────────────────     │
│  Реагирует на ЛЮБОЕ выполнение Step,                        │
│  независимо от того, в курсе он или нет                     │
└─────────────────────────────────────────────────────────────┘
```

### Ключевая идея:
**Геймификация = независимая подсистема**, реагирует на event'ы (`step.completed`, `lesson.completed`), а не на конкретный контейнер.

---

## 💾 Изменения в БД

### 1. Сделать `module_id` опциональным в `lessons`

**Текущая схема:**
```sql
-- courses.lessons
module_id UUID NOT NULL REFERENCES courses.modules(id)
```

**Новая схема:**
```sql
ALTER TABLE courses.lessons 
    ALTER COLUMN module_id DROP NOT NULL;

-- Lesson может существовать БЕЗ module → значит и без course
-- Это и есть "standalone lesson"
```

### 2. Добавить новую таблицу `learning_tracks` (опционально)

**Track** — лёгкая обёртка для группировки standalone-уроков по теме (не путать с Course!).

```sql
CREATE TABLE courses.learning_tracks (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code            VARCHAR(50) UNIQUE NOT NULL,    -- 'daily-english', 'travel-stories'
    title           VARCHAR(200) NOT NULL,
    description     TEXT,
    icon_url        TEXT,
    language        VARCHAR(10),                    -- 'en', 'es', etc
    level           VARCHAR(5),                     -- 'A1', 'B2', etc
    track_type      VARCHAR(20) NOT NULL,           -- 'daily', 'stories', 'podcast', 'thematic'
    is_published    BOOLEAN DEFAULT FALSE,
    sort_order      INT DEFAULT 0,
    created_by      UUID,
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_tracks_published ON courses.learning_tracks(is_published, language);
```

### 3. Добавить связь Lesson ↔ Track

```sql
CREATE TABLE courses.track_lessons (
    track_id        UUID NOT NULL REFERENCES courses.learning_tracks(id),
    lesson_id       UUID NOT NULL REFERENCES courses.lessons(id),
    order_index     INT NOT NULL DEFAULT 0,
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    PRIMARY KEY (track_id, lesson_id)
);

CREATE INDEX idx_track_lessons_track_order ON courses.track_lessons(track_id, order_index);
```

### 4. Добавить `source_type` в прогресс (для аналитики)

```sql
ALTER TABLE courses.user_step_progress
    ADD COLUMN source_type VARCHAR(20) DEFAULT 'course';
    -- 'course' | 'track' | 'standalone'

ALTER TABLE courses.user_step_progress
    ADD COLUMN source_id UUID;
    -- course_id, track_id, или NULL для pure standalone
```

---

## 📐 Бизнес-логика

### 1. Lesson может быть:

| Вариант | `module_id` | Track? | Описание |
|---------|-------------|--------|----------|
| A. В курсе | NOT NULL | — | Урок в module курса (как сейчас) |
| B. В треке | NULL | да | Standalone, привязан к одному/нескольким трекам |
| C. Полностью независимый | NULL | нет | Доступен всем, без обёртки |

### 2. Step привязан к Lesson (как сейчас)

Структура Step не меняется. `lesson_id` остаётся обязательным.

### 3. Когда вызывается геймификация

```go
// В Course Service при completion
func (s *CourseService) CompleteStep(userID, stepID UUID) error {
    step := s.GetStep(stepID)
    lesson := s.GetLesson(step.LessonID)
    
    // Определяем источник (для аналитики)
    sourceType, sourceID := determineSource(lesson, userID)
    
    // Записываем progress
    s.RecordProgress(userID, stepID, sourceType, sourceID)
    
    // Универсальный вызов геймификации (НЕ зависит от source)
    s.gamificationClient.AddXP(GamificationRequest{
        UserID:     userID,
        Amount:     calculateXP(step.Type),
        Reason:     "step_completed",
        SourceID:   stepID,
        SourceType: "step",
    })
    
    s.gamificationClient.RecordStreakActivity(userID)
    
    return nil
}

func determineSource(lesson *Lesson, userID UUID) (string, UUID) {
    if lesson.ModuleID != nil {
        // В курсе
        course := getCourseByModule(lesson.ModuleID)
        return "course", course.ID
    }
    
    // Проверить track из контекста запроса (откуда юзер открыл lesson)
    if currentTrackID := getCurrentTrack(userID, lesson.ID); currentTrackID != nil {
        return "track", *currentTrackID
    }
    
    return "standalone", uuid.Nil
}
```

### 4. Доступ к контенту

| Контент | Доступ |
|---------|--------|
| Lesson в курсе | Если есть enrollment ИЛИ курс free |
| Lesson в треке | Доступен всем (если track published) |
| Standalone Lesson | Доступен всем |

```go
func (s *CourseService) CanAccessLesson(userID, lessonID UUID) bool {
    lesson := s.GetLesson(lessonID)
    
    // Standalone — доступен всем
    if lesson.ModuleID == nil {
        return true
    }
    
    // В курсе — проверяем enrollment или free
    course := getCourseByModule(*lesson.ModuleID)
    if course.IsFree {
        return true
    }
    
    return s.IsEnrolled(userID, course.ID)
}
```

---

## 🔌 API Endpoints

### Tracks (новые)
```
GET    /api/v1/tracks                         — список треков
       ?language=en&type=daily&level=A1
GET    /api/v1/tracks/:id                     — детали + lessons
GET    /api/v1/tracks/:id/lessons             — уроки трека (sorted)
POST   /api/v1/tracks                         — создать (admin)
PUT    /api/v1/tracks/:id                     — обновить (admin)
DELETE /api/v1/tracks/:id                     — удалить (admin)

POST   /api/v1/tracks/:id/lessons             — добавить урок в трек (admin)
       { "lesson_id": "...", "order_index": 0 }
DELETE /api/v1/tracks/:id/lessons/:lessonId   — убрать урок из трека (admin)
```

### Standalone Lessons (новые)
```
POST   /api/v1/lessons                        — создать standalone lesson
       { "title": "...", "module_id": null, ... }
       (admin only)

GET    /api/v1/lessons/:id                    — получить lesson 
                                                (без course context)
GET    /api/v1/lessons/standalone             — все standalone lessons
       ?language=en&level=A1
```

### Existing endpoints — без изменений
- `/api/v1/courses/*` — работает как раньше
- `/api/v1/lessons/:id` — работает для lessons в курсах И standalone

### Прогресс
```
GET    /api/v1/progress/tracks/:trackId       — прогресс по треку
GET    /api/v1/progress/standalone            — прогресс по standalone-урокам
```

---

## 🎨 Admin Panel: добавления

### Новая страница `/admin/tracks`
- Список треков
- Create / Edit / Delete
- Перемещение уроков между треками
- Привязка standalone-уроков к трекам

### Расширение `/admin/lessons`
- Создание lesson БЕЗ выбора module/course (новая опция)
- Toggle: "Standalone" / "В курсе"
- При standalone — выбор треков (multi-select)

### Visualization:
- Колонка "Type": 📚 Course | 🎯 Track | 🌟 Standalone
- Filters: показать только standalone

---

## 🎨 Frontend: главная страница для пользователя

### Главная страница для авторизованного юзера:

```
┌──────────────────────────────────────────────┐
│  🔥 12  ⚡ 1250 XP  ❤️ ❤️ ❤️ ❤️ ❤️           │  Topbar (геймификация)
├──────────────────────────────────────────────┤
│                                              │
│  📅 Daily Lesson                             │  Standalone — ежедневный урок
│  ┌────────────────────────────────────────┐  │
│  │ Today's lesson: 5 minutes              │  │
│  │ [Start →]                              │  │
│  └────────────────────────────────────────┘  │
│                                              │
│  🎯 Learning Tracks                          │  Standalone — треки
│  [Daily English] [Travel Stories] [Tips]    │
│                                              │
│  📚 My Courses                               │  Курсы (если есть)
│  [Course 1] [Course 2] [Course 3]            │
│                                              │
│  🎁 Recommended Courses                      │  Маркет курсов
│  [Premium Course 1] [Premium Course 2]      │
│                                              │
└──────────────────────────────────────────────┘
```

### Sections на главной:
1. **Daily Lesson** — один standalone урок на день (генерируется системой)
2. **Continue Learning** — последний открытый урок (курс или track)
3. **Learning Tracks** — список доступных треков
4. **My Courses** — курсы, на которые записан
5. **Browse Courses** — каталог курсов

---

## 💾 Бэкенд задачи

### 0.1 Миграции
- [x] Сделать `module_id` nullable в `courses.lessons`
- [x] Создать таблицу `courses.learning_tracks`
- [x] Создать таблицу `courses.track_lessons`
- [x] Расширить `courses.step_progress` полями `source_type`, `source_id`
      (фактически в `courses.step_progress`, не `user_step_progress`)

### 0.2 Course Service: расширение

#### Модели:
- [x] `model/track.go` — Track структура
- [x] Обновить `model/lesson.go`: `ModuleID *string` (pointer для nullable)
- [x] `model/progress.go`: `LessonProgress.CourseID *string`

#### Repositories:
- [x] `repository/postgres/track.go`:
  - [x] `Create(track)`
  - [x] `Update(track)`
  - [x] `Delete(id)`
  - [x] `GetByID(id)` / `GetByCode(code)`
  - [x] `List(filters)`
  - [x] `AddLesson(trackID, lessonID, orderIndex)`
  - [x] `RemoveLesson(trackID, lessonID)`
  - [x] `GetLessons(trackID)` — отсортировано
- [x] Расширить `repository/postgres/lesson.go`:
  - [x] `CreateStandalone(lesson)` — без module_id (через Create + module_id IS NULL)
  - [x] `ListStandalone(filters)` — где module_id IS NULL
  - [x] standalone-aware queries в `progress.go`

#### Services:
- [x] `service/track.go`:
  - [x] CRUD методы
  - [x] `GetTracksWithLessons(filters)`
- [x] Обновить `service/lesson.go`:
  - [x] `Create(lesson, options)` — поддерживать standalone
  - [x] `CanAccess(userID, lessonID)` — учесть standalone (via `MarkStepComplete`)
- [x] Обновить `service/progress.go`:
  - [x] При записи progress — определить source (`module_id IS NULL` → `standalone`)
- [ ] `GetProgressByTrack(userID, trackID)` — отложено, по треку прогресс
      пока считается на клиенте через lesson_progress
- [ ] `GetStandaloneProgress(userID)` — отложено, не нужен для UI Phase 0

#### gRPC API:
- [x] Добавить методы для Track в proto
- [x] Сгенерировать код
- [x] Имплементация handlers

### 0.3 Gateway: новые endpoints
- [x] `GET /api/v1/tracks` — список
- [x] `GET /api/v1/tracks/:id` (UUID **или** `code`)
- [x] `GET /api/v1/tracks/:id?include_lessons=true`
- [x] `POST /api/v1/admin/tracks` (admin)
- [x] `PUT  /api/v1/admin/tracks/:id` (admin)
- [x] `DELETE /api/v1/admin/tracks/:id` (admin)
- [x] `PUT  /api/v1/admin/tracks/:id/publish` (admin)
- [x] `POST/DELETE/PUT /api/v1/admin/tracks/:id/lessons[...]` (admin)
- [x] `POST /api/v1/admin/courses/modules/:moduleId/lessons` уже без course/module
      coupling в логике; standalone-уроки создаются через track-add (см. ниже)
- [x] `GET  /api/v1/lessons/:id` — публичный универсальный read (course-bound + standalone)
- [ ] `GET /api/v1/lessons/standalone` — **не делали** (заменено `useDailyLesson` +
      `/tracks?track_type=daily`)

### 0.4 Seed данные
- [x] `seeds/006_tracks.sql`: 3 трека (Daily English / Stories / Podcast)
- [x] 6 standalone lessons + по text-step’у на каждый

### 0.5 Подготовка к Phase 1 (gamification)
- [x] Определить event'ы:
  - [x] `step.completed` (с `source_type`, `source_id`)
  - [x] `lesson.completed`
  - [ ] `quiz.failed` (для hearts) — относится к Phase 1, тут только заглушка
- [x] Hooks в Course Service:
      `internal/client/gamification/{client,noop}.go` + вызовы из
      `progress.MarkStepComplete`. Подмена noop → gRPC-клиент = одна строка в DI.

### 0.6 Тесты
- [ ] Unit/integration тесты — по решению user’а на этом этапе не вводили
- [x] E2E smoke: `scripts/e2e_phase0.sh` (login → tracks → standalone lesson →
      complete step → проверка `step_progress.source_type='standalone'`)

---

## 🎨 Фронтенд задачи

### Admin Panel (`eng_next2`):

#### Новые страницы:
- [x] `/admin/tracks` — список треков
- [x] `/admin/tracks/new` — создать
- [x] `/admin/tracks/[id]` — редактирование (с управлением lessons)

#### Расширение:
- [x] Add-lesson UI делается прямо в `/admin/tracks/[id]` (выбор существующего
      урока + reorder); отдельной страницы `/admin/lessons/new`
      со standalone-toggle решили не вводить — стандартный course-flow
      остался без изменений
- [ ] `/admin/courses/:id` — пометки рядом с lessons если урок есть в треках
      (cosmetic, отложено в Phase 1)

#### Компоненты:
- [x] `components/admin/Sidebar.tsx` — пункт «Tracks»
- [x] Track list/edit-формы — встроены в `app/admin/tracks/*` (без выноса в отдельные компоненты)
- [x] `components/tracks/LessonTypeBadge.tsx` — Course/Track/Standalone
      (web-версия; mobile-аналог `components/tracks/lesson-type-badge.tsx`)

### User-facing (`eng_next2` + `eng_mob`):

#### Главная страница:
- [x] Web (`app/page.tsx`): секции Daily Lesson + Tracks (Hero и featured-курсы — как было)
- [x] Mobile (`(tabs)/index.tsx`): секции Daily / Tracks / Courses
- [x] Web компонент `DailyLessonCard.tsx`
- [x] Web компоненты `TrackCard.tsx`, `TrackLessonsList.tsx`
- [x] Mobile компоненты `tracks/track-card.tsx`, `tracks/track-lessons-list.tsx`,
      `tracks/daily-lesson-card.tsx`, `tracks/lesson-type-badge.tsx`

#### Routing:
- [x] Web: `/tracks` — список треков (поиск + фильтр по типу)
- [x] Web: `/tracks/[id]` — детали (id или code) + lessons
- [x] Web: `/lessons/[id]` — универсальный view (course-bound + standalone)
- [x] Mobile: `(tabs)/tracks/index.tsx` + `(tabs)/tracks/[id].tsx`
- [x] Mobile: `learn/[lessonId].tsx` уже универсален (без changes)

#### Hooks:
- [x] Web: `hooks/use-tracks.ts` (`useTracks`, `useTrack`)
- [x] Web: `hooks/use-daily-lesson.ts`
- [x] Mobile: `hooks/use-tracks.ts` + `hooks/use-daily-lesson.ts`
- [x] Mobile: `lib/api-client.ts` — namespaces `TracksApi`, `LessonsApi`

---

## ✅ Acceptance Criteria

### Backend:
- [x] Можно создать lesson без module_id
- [x] Standalone lesson доступен любому авторизованному юзеру
- [x] Track CRUD работает
- [x] Lesson можно привязать к нескольким трекам
- [x] Progress сохраняется с правильным source_type
- [x] Существующие курсы работают без изменений (backward compatibility)

### Admin:
- [x] Можно создавать standalone-уроки через admin
- [x] Можно создавать треки через admin
- [x] Можно добавлять lessons в треки drag&drop

### Frontend:
- [x] Главная показывает Daily Lesson + Tracks + Courses
- [x] Юзер может пройти standalone lesson без enrollment
- [x] Routing работает для всех типов lessons

---

## 🔬 Тестирование

### Manual scenarios:
1. **Backward compat:** существующий курс работает как раньше
2. **Создание standalone:**
   - Admin создаёт lesson без module_id
   - Lesson появляется в `/admin/lessons` со значком "Standalone"
3. **Создание track:**
   - Admin создаёт track "Daily English"
   - Добавляет 5 standalone lessons
4. **Доступ:**
   - Юзер без enrollments → видит Daily Lesson + Tracks
   - Юзер открывает standalone lesson → проходит без enrollment
5. **Прогресс:**
   - Завершение шага в курсе → progress.source_type = 'course'
   - Завершение в треке → progress.source_type = 'track'
   - Завершение standalone → progress.source_type = 'standalone'

---

## 📚 Референсы

### Inspiration:
- **Duolingo Stories** — отдельный standalone-контент
- **Duolingo Podcasts** — тематические подборки
- **Babbel "Daily Lesson"** — урок дня

### Архитектурные паттерны:
- **Tagged content** — Lesson tagged with multiple Tracks
- **Decoupled gamification** — XP/streaks как event-driven подсистема

---

## 📝 Замечания

### Почему делаем именно так:

1. **Минимальная инвазивность** — существующая структура курсов не ломается
2. **Гибкость** — Lesson может быть в курсе И/ИЛИ в треках одновременно
3. **Будущее-proof** — Phase 1+ строятся на чистом фундаменте

### Альтернатива (отвергнутая):
- Жёстко привязать всё к курсам и сделать "виртуальный free course" → плохо масштабируется

### Что НЕ затрагиваем:
- Course CRUD — без изменений
- Module CRUD — без изменений  
- Step CRUD — без изменений
- Enrollment — без изменений (для курсов)

### Edge cases:
- **Lesson был в курсе → переехал в standalone** — нужен ли history? Решение: оставить в курсе, плюс добавить в track
- **Track удалён, но в нём были lessons** — lessons остаются (lesson не зависит от track), удаляются только записи в `track_lessons`
- **Lesson удалён** — каскадно удалить из всех треков и progress

---

**Следующий шаг:** [Phase 1: Геймификация](./phase-1-gamification.md)
