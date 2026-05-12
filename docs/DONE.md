# ✅ Course Service - Реализация завершена

**Дата:** 2026-04-13  
**Статус:** ГОТОВО К ИСПОЛЬЗОВАНИЮ

## Что реализовано

### Course Service
- 2,139 строк Go кода
- 18 gRPC методов (6 student + 12 admin)
- 5 таблиц БД (courses, modules, lessons, steps, enrollments)
- Kafka consumer для order.paid
- Mock Video Service client
- Полная документация на русском

### Миграции
✅ Все миграции применены успешно:
- Auth Service: 1 миграция
- User Service: 1 миграция
- Course Service: 5 миграций

### Документация
- elearning/START.md - быстрый запуск
- services/course-service/README.md - полное руководство
- services/course-service/QUICKSTART.md - быстрый старт
- docs/services/course-service.md - архитектура
- docs/COURSE_SERVICE_IMPLEMENTATION.md - детали реализации

## Быстрый запуск

```bash
# 1. PostgreSQL уже запущен
task up-core

# 2. Миграции уже применены
task migrate-up-all

# 3. Запустить сервисы (4 терминала)
task run-auth                                      # Терминал 1
task run-user                                      # Терминал 2
cd services/course-service && go run cmd/main.go  # Терминал 3
cd services/gateway && go run cmd/main.go          # Терминал 4
```

## Проверка

```bash
curl http://localhost:8081/health
grpcurl -plaintext localhost:50053 list
```

## Следующие шаги

- Развернуть Kafka для полной функциональности
- Реализовать Video Service
- Реализовать Order Service
- Реализовать Payment Service
- Реализовать Progress Service

---

## Phase 0 — Standalone content + Learning Tracks (2026-05-12)

**Статус:** ✅ Done. Подробности — [tasks/PHASE_0_PROGRESS.md](./tasks/PHASE_0_PROGRESS.md).

Что добавлено:

- БД: `module_id` nullable в `lessons`, таблицы `learning_tracks` /
  `track_lessons`, поля `source_type` / `source_id` в `step_progress`,
  nullable `course_id` в `lesson_progress` (миграция `000008`).
- Course Service: модели/репо/сервисы/grpc для треков, standalone-aware
  `MarkStepComplete` (без enrollment-проверки для standalone), gamification
  client interface + `noop` реализация (готовая точка для Phase 1).
- Gateway: публичные `GET /api/v1/tracks`, `GET /api/v1/tracks/:id`
  (UUID или `code`, `?include_lessons=true`), универсальный
  `GET /api/v1/lessons/:id` с `is_standalone`. Admin: полный CRUD по трекам
  и привязке уроков.
- Web (`eng_next2`): `/tracks`, `/tracks/[id]`, `/lessons/[id]`, секции
  Daily / Tracks на главной, hooks `use-tracks` + `use-daily-lesson`,
  компоненты `TrackCard` / `TrackLessonsList` / `DailyLessonCard` /
  `LessonTypeBadge`. Admin: `/admin/tracks`, `/admin/tracks/new`,
  `/admin/tracks/[id]`.
- Mobile (`eng_mob`): новый таб **Home** + **Tracks**, экраны
  `(tabs)/index.tsx`, `(tabs)/tracks/index.tsx`, `(tabs)/tracks/[id].tsx`,
  компоненты `components/tracks/*`, hooks `use-tracks` + `use-daily-lesson`,
  `TracksApi` / `LessonsApi` namespaces в `lib/api-client.ts`.
  Универсальный `learn/[lessonId].tsx` уже умел работать со standalone-урокам.
- Seeds: `seeds/006_tracks.sql` — 3 трека, 6 standalone-уроков, по
  одному text-step’у на каждый.
- E2E: `scripts/e2e_phase0.sh` — register → login → tracks → standalone
  lesson → complete step → проверка `step_progress.source_type='standalone'`
  и `lesson_progress.course_id IS NULL`.

Открытые вопросы / отложено в Phase 1:

- `is_correct=true` всегда в gamification hook (правильно/неправильно
  начнёт различаться в Phase 2 при `SubmitAnswer`).
- Mistakes / SR / XP не пишутся (только логируются noop’ом).
- `/api/v1/lessons/standalone` отдельным эндпоинтом не делали — для главной
  достаточно `useDailyLesson` (`/tracks?track_type=daily` → первый урок).
- Unit/integration тесты не вводили — на этом этапе только E2E smoke.

---

**Готово!** Course Service полностью реализован и готов к использованию 🎉
