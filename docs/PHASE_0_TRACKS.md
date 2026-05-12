# Phase 0 — Standalone Content & Learning Tracks

Поддержка контента, который живёт **вне курсов/модулей**: тематические треки
(Daily English, Short Stories, Podcast Bites), куда можно складывать уроки
(standalone или module-bound). Backward-совместимо: все существующие курсы,
модули и уроки продолжают работать без изменений.

## Мотивация

Старая модель обязывала каждый урок принадлежать модулю, а модуль — курсу:

```
Course → Module → Lesson → Step
```

Это не подходит для быстрого «лёгкого» контента: daily-коротышей, подкастов,
стори-постов. Phase 0 вводит альтернативный путь:

```
Lesson (module_id = NULL)  ↔  Track   (many-to-many)
```

А также добавляет трекам семантику: `thematic | daily | stories | podcast`.

## Модель данных

### Изменения существующих таблиц

**`lessons.module_id`** теперь `NULLABLE`:

- Уроки с `module_id IS NOT NULL` — те же, что раньше (принадлежат модулю курса).
- Уроки с `module_id IS NULL` — **standalone**, доступны только через трек или прямой запрос по UUID.
- Старый `UNIQUE(module_id, order_index)` заменён на **partial unique**:
  `UNIQUE (module_id, order_index) WHERE module_id IS NOT NULL`.

**`lesson_progress.course_id`** тоже `NULLABLE` — для прогресса по standalone-урокам.

### Новые таблицы

```sql
CREATE TABLE learning_tracks (
    id              UUID PRIMARY KEY,
    code            VARCHAR(50) UNIQUE NOT NULL,   -- slug для URL
    title           VARCHAR(200) NOT NULL,
    description     TEXT,
    icon_url        TEXT,
    language        VARCHAR(10),
    level           VARCHAR(5),
    track_type      VARCHAR(20) NOT NULL DEFAULT 'thematic',
    is_published    BOOLEAN NOT NULL DEFAULT false,
    sort_order      INT NOT NULL DEFAULT 0,
    created_by      UUID,
    created_at      TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE track_lessons (
    track_id     UUID REFERENCES learning_tracks(id) ON DELETE CASCADE,
    lesson_id    UUID REFERENCES lessons(id)         ON DELETE CASCADE,
    order_index  INT NOT NULL DEFAULT 0,
    created_at   TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (track_id, lesson_id)
);
```

Связь `track_lessons` — **many-to-many**: один урок может быть в нескольких треках.
Индекс `idx_track_lessons_track_order` ускоряет выборку уроков в нужном порядке.

### Аналитика прогресса

В `step_progress` добавлены поля:

- `source_type VARCHAR(20) NOT NULL DEFAULT 'course'` — `course | track | standalone`
- `source_id UUID` — id источника (course_id или track_id или NULL)

Это позволяет считать прогресс отдельно по курсам и трекам без ломки существующих запросов.

Миграция: [`services/course-service/migrations/000008_standalone_content.up.sql`](../services/course-service/migrations/000008_standalone_content.up.sql).

## Backend (Go)

### Слои

| Файл | Назначение |
| --- | --- |
| `internal/model/track.go` | Структуры `Track`, `TrackLesson` + константы `TrackTypeThematic/Daily/Stories/Podcast` |
| `internal/repository/track.go` | Интерфейс `TrackRepository` + `TrackListFilters` |
| `internal/repository/postgres/track.go` | Postgres impl: CRUD, list с фильтрами, линки, `ReorderLessons` в транзакции |
| `internal/service/track.go` | `TrackService` — бизнес-логика и валидация (code/title required) |
| `internal/converter/track.go` | `model.Track ↔ coursev1.Track`, `UpdateTrackRequest` partial-apply |
| `internal/api/course/v1/track.go` | 10 gRPC handlers |

### Null-safety для lessons

`Lesson.ModuleID` в модели остался `string`; пустая строка `""` означает standalone.
Repository использует `sql.NullString` при scan/insert, чтобы мапить `""` ↔ `NULL`:

```go
var moduleID sql.NullString
err := rows.Scan(&lesson.ID, &moduleID, ...)
lesson.ModuleID = moduleID.String  // "" если NULL
```

Helper `nullStringPtr(s string) interface{}` — для insert: возвращает `nil` для пустой строки.
Это инвариантно не ломает существующий код (converter, gRPC, handlers), который трактует
`ModuleID` как обычную строку.

### gRPC (proto)

10 новых RPC в `CourseService` (см. `shared/proto/course/v1/course.proto`):

- `ListTracks`, `GetTrack`, `GetTrackByCode`
- `CreateTrack`, `UpdateTrack`, `DeleteTrack`, `PublishTrack`
- `AddLessonToTrack`, `RemoveLessonFromTrack`, `ReorderTrackLessons`

+ 14 новых messages (`Track`, `TrackWithLessons`, все `*Request/*Response`).

Регенерация: `task proto:gen`.

### REST (gateway)

Транспорт для frontend — через `services/gateway/internal/handler/track.go`.

Endpoints:

**Public** (auth не требуется):
- `GET /api/v1/tracks`
- `GET /api/v1/tracks/:idOrCode?include_lessons=true`  (UUID или `code`)

**Admin** (требует `admin` role):
- `GET    /api/v1/admin/tracks`
- `POST   /api/v1/admin/tracks`
- `PUT    /api/v1/admin/tracks/:id`
- `DELETE /api/v1/admin/tracks/:id`
- `PUT    /api/v1/admin/tracks/:id/publish`
- `POST   /api/v1/admin/tracks/:id/lessons`
- `DELETE /api/v1/admin/tracks/:id/lessons/:lessonId`
- `PUT    /api/v1/admin/tracks/:id/lessons/reorder`

Полные форматы запросов/ответов: [ADMIN_API.md](./ADMIN_API.md#learning-tracks-phase-0--standalone-content).

## Frontend (Next.js 16)

Admin Panel в `eng_next2`:

| Файл | Что |
| --- | --- |
| `src/lib/admin-api.ts` | +5 интерфейсов, +9 методов (listTracks, createTrack, …, reorderTrackLessons) |
| `src/components/admin/Sidebar.tsx` | Пункт меню «Tracks» |
| `src/app/admin/tracks/page.tsx` | Список с фильтрами (type, search), inline publish/delete |
| `src/app/admin/tracks/new/page.tsx` | Форма создания трека |
| `src/app/admin/tracks/[id]/page.tsx` | Редактирование + управление уроками (add by UUID, remove, reorder ↑/↓) |

Вход в UI: `/admin/tracks` (с admin-токеном).

## Seed

`services/course-service/seeds/006_tracks.sql`:
- 3 трека: `daily-english` (daily), `english-stories-b1` (stories), `english-podcast-a2` (podcast)
- 6 standalone-уроков (с `module_id = NULL`)
- 6 связей в `track_lessons`
- 6 текстовых шагов (чтобы уроки не были пустыми)

Применить: `task seed-course` или `psql -f seeds/006_tracks.sql`.

## Обратная совместимость

- Все существующие миграции и seeds курсов продолжают работать без изменений.
- Старые gRPC-методы `CourseService` не затронуты, только добавлены новые.
- REST эндпоинты `/courses/*` остались прежними.
- Все 6 сервисов (`auth`, `user`, `course`, `video`, `quiz`, `gateway`) собираются и проходят `go vet` чисто.
- Конвенция `Lesson.ModuleID == ""` ↔ standalone — новая только для кода, который осознанно работает с треками.

## E2E smoke test

```bash
# 1. Поднять инфру
task up-core

# 2. Применить миграции + seed
task migrate-up-course
task seed-course

# 3. Запустить сервисы
task run-auth    # :50051
task run-course  # :50053
task run-gateway # :8081

# 4. Проверить
curl http://localhost:8081/api/v1/tracks                                    # 3 трека
curl 'http://localhost:8081/api/v1/tracks/daily-english?include_lessons=true'  # с уроками

# 5. Admin flow
TOKEN=$(curl -s -X POST http://localhost:8081/api/v1/auth/login \
  -H 'Content-Type: application/json' \
  -d '{"email":"admin@test.com","password":"password123"}' \
  | jq -r .access_token)

curl -H "Authorization: Bearer $TOKEN" http://localhost:8081/api/v1/admin/tracks
```

Frontend: `cd eng_next2 && npm run dev` → http://localhost:3000/admin/tracks.
