# Phase 0 — Progress Log

> Живой статус «доводки» Phase 0 (standalone content + learning tracks).
> Обновляется по мере закрытия задач. См. [README.md](./README.md)
> и [phase-0-standalone-content.md](./phase-0-standalone-content.md).

**Дата последнего обновления:** 2026-05-12

---

## ✅ Сделано

### Backend (`microservices-course/elearning`)

Коммит: `feat(phase-0): standalone-lesson progress, source tracking, gamification hooks`

- **Standalone-уроки теперь реально проходимы:**
  - `service.MarkStepComplete` определяет контекст по `lesson.module_id`:
    - `module_id IS NULL` → `source_type='standalone'`, enrollment не проверяется.
    - `module_id` задан → как раньше: модуль → курс → CheckAccess.
  - `repo.RecalculateLessonProgress` корректно работает при `module_id IS NULL`
    (раньше падал на запросе module → course_id).
- **`step_progress.source_type` / `source_id` теперь пишется** при создании
  записи и не перезаписывается при последующих апдейтах.
- **`LessonProgress.CourseID`** стал `*string` (nullable) end-to-end:
  модель → репозиторий (`sql.NullString`) → конвертер → proto (`""`).
- **Gamification hook (Phase 1 prep):**
  - `services/course-service/internal/client/gamification/`:
    - `client.go` — интерфейс `Client` с методами `OnStepCompleted`,
      `OnLessonCompleted` + DTO `StepCompletedEvent`, `LessonCompletedEvent`.
    - `noop.go` — заглушка, логирует на `debug`.
  - Подключён в DI (`internal/app/app.go`); вызывается из `progress.MarkStepComplete`
    после успешной записи прогресса (на этапе шага и на завершении урока).
  - Готовая точка входа: чтобы запустить настоящий gamification-сервис, нужно
    только подменить `gamification.NewNoopClient()` на gRPC-клиент.
- **Gateway:** добавлен публичный `GET /api/v1/lessons/:id` —
  возвращает `{lesson, steps}`, в `lesson.is_standalone` маркер. Не требует
  enrollment, потому что бизнес-логика проверяется ниже по стеку.

Файлы:

- `services/course-service/internal/model/progress.go`
- `services/course-service/internal/repository/postgres/progress.go`
- `services/course-service/internal/service/progress.go`
- `services/course-service/internal/converter/progress.go`
- `services/course-service/internal/client/gamification/{client,noop}.go`
- `services/course-service/internal/app/app.go`
- `services/gateway/internal/app/app.go`
- `services/gateway/internal/handler/lesson.go`

### Web (`eng_next2`)

Коммит: `feat(phase-0): user-facing tracks + universal lesson view`

- **Страницы:**
  - `/tracks` — каталог опубликованных треков, фильтры по типу
    (daily/stories/podcast/thematic) и поиску.
  - `/tracks/[id]` — детали трека + список уроков (через
    `GET /tracks/:id?include_lessons=true`). Параметр — UUID или `code`.
  - `/lessons/[id]` — универсальный просмотр урока: работает и для
    course-bound, и для standalone. Рендерит `text` (Markdown), `video`
    (плейсхолдер), `quiz`. На «Дальше» → `POST /progress/steps/:id/complete`.
- **Компоненты `components/tracks/`:**
  `TrackCard`, `TrackLessonsList`, `DailyLessonCard`, `LessonTypeBadge`.
- **Главная (`app/page.tsx`):** новые секции **Daily Lesson** (через
  `useDailyLesson`) и **Tracks** (через `useTracks({ limit: 6 })`).
  Hero и featured courses не трогали (featured всё ещё на моках).
- **Навигация:** в `navbar` добавлен пункт «Треки» с иконкой `Compass`.
- **Hooks / types / i18n:**
  - `hooks/use-tracks.ts` — `useTracks(filters)`, `useTrack(idOrCode, includeLessons)`.
  - `hooks/use-daily-lesson.ts` — берёт первый daily-трек + его первый урок.
  - `types/api.ts` — `Track`, `TrackWithLessons`, `ListTracksResponse`,
    `TrackFilters`, `LessonDetails.is_standalone`.
  - `lib/i18n.tsx` — `common.tracks`, `common.daily`, `common.explore_tracks`,
    `common.standalone` (ru + en).

---

## 🚧 Осталось (todo)

| # | Задача | Статус |
|---|--------|--------|
| 10 | E2E-скрипт `scripts/e2e_phase0.sh` (login → list tracks → standalone lesson → complete step → проверка `source_type`) | в работе |
| 11 | Mobile: расширить `eng_mob/src/lib/api-client.ts` методами Tracks/Lessons | pending |
| 12 | Mobile: новый таб `(tabs)/tracks` + экраны `index/[id]` + универсальный `learn/[lessonId]` + RN-компоненты | pending |
| 13 | Mobile: главный экран `(tabs)/index.tsx` с Daily/Tracks/Courses-секциями | pending |
| 14 | Docs: проставить `[x]` на закрытых пунктах в `phase-0-standalone-content.md`, обновить `README.md` Phase 0 (status), `DONE.md` | pending |

---

## 📌 Замечания / открытые вопросы

- **Phase 1 hook сейчас вызывается с `is_correct=true` всегда** — корректное
  значение появится в Phase 2, когда `SubmitAnswer` отделится от
  `MarkStepComplete` и начнёт различать правильные/неправильные ответы
  по типам шагов (translate / match / fill-in).
- **Mistakes / SR / XP не пишутся** — все события только логируются noop’ом.
  Никаких таблиц для gamification не заведено (это уже Phase 1).
- **`/lessons/standalone` отдельным эндпоинтом не делали** — для главной
  достаточно `useDailyLesson` (один daily-track → его уроки).
- **Тесты unit/integration не вводили** — по решению user’а на этом этапе
  ограничиваемся одним E2E-скриптом (см. задачу 10).
- **AGENTS.md `eng_next2`** напоминает про Next 16. Все новые страницы —
  `'use client'` + TanStack Query, как остальные пользовательские страницы.
  RSC сознательно не вводил, чтобы не плодить параллельный стиль.
