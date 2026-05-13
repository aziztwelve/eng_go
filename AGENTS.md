# Backend (microservices-course/elearning)

Микросервисный E-learning стек. Phase 0 + Phase 1 (gamification) done.
Дальше — Phase 2 (новые форматы шагов) или 5/6.

## Сервисы

| Сервис | Порт gRPC | Schema | Назначение |
|--------|-----------|--------|------------|
| auth-service | 50051 | auth | JWT login/refresh |
| user-service | 50052 | users | Profile (`date_of_birth`, `timezone`) |
| course-service | 50053 | courses | Курсы / модули / уроки / шаги / прогресс |
| video-service | 50054 | videos | MinIO upload, manifests |
| quiz-service | 50055 | quiz_service | Quizzes, attempts, answers |
| gateway | :8080 (HTTP) | — | REST API, agg, JWT validation |
| gamification-service | 50058 | gamification | XP / hearts / streak / achievements / daily-goal |

## Основные команды

```bash
# Из корня elearning/
task migrate-up-all                       # Накатить миграции всех сервисов
task seed-gamification                    # 32 achievements seed
task proto:gen                            # Сгенерировать .pb.go из .proto

# Сервис локально
cd services/<name> && go run ./cmd

# Build + test всего
for s in services/*/; do (cd "$s" && go build ./... && go test ./...); done
```

## Конвенции

- `platform/pkg/{logger,closer,postgres}` — общая инфра (zap, graceful
  shutdown, pgxpool).
- godotenv-конфиг через `internal/config/config.go`. Адреса других сервисов
  — `<NAME>_SERVICE_ADDR` env.
- gRPC clients в `internal/client/<dep>/{client,grpc,noop}.go` —
  интерфейс + реальная реализация + no-op fallback (если адрес пуст).
  No-op гарантирует, что сервис стартует и без зависимости.
- Слои: `api → service → repository → postgres`. Конвертеры
  proto↔model — в `internal/converter/`.
- `repository.ErrNotFound` маппится в `codes.NotFound` на gRPC.
- Generated proto: `shared/pkg/proto/<svc>/v1/`.

## Gamification — ключевые моменты

- `service/service.go` — `today()` (UTC, deprecated для пользовательских
  процессов), `todayInTZ(ctx, userID)` / `nowInTZ` — для streak / daily-goal
  / matchCriteria. Используют кэшированный `user.Client.Timezone` (TTL 5
  мин внутри grpcClient).
- Cross-service hooks: `OnStepCompleted`, `OnLessonCompleted`,
  `OnCourseCompleted` (course-service), `OnQuizCompleted` (quiz-service),
  `OnWrongAnswer`/`LoseHeart` (quiz-service).
- XP reasons: `step_completed`, `lesson_completed`, `course_completed`,
  `quiz_completed`, `quiz_perfect`, `daily_goal`, `achievement`,
  `streak_bonus`, `practice`. matchCriteria различает quiz_completed vs
  perfect_quizzes по reason'у.
- `user_stats.learned_languages text[]` — денормализация языков
  завершённых курсов (для `languages` achievement).
- Achievement criteria types: `streak`, `total_xp`, `daily_goal_completed`,
  `steps_completed`, `lessons_completed`, `time_of_day`, `date`,
  `weekend_pair`, `comeback`, `courses_completed`, `quiz_completed`,
  `perfect_quizzes`, `languages`, `birthday`. Все — implemented.

## Документация

- `docs/tasks/PHASE_1_PROGRESS.md` — живой статус Phase 1 + late additions.
- `docs/tasks/phase-{0..6}-*.md` — планы по фазам.
- `docs/sdd/<service>.md` — service design docs.

## Verification

Перед коммитом:
```bash
cd services/gamification-service && go test ./internal/service/   # Юнит-тесты
go build ./...                                                     # Все сервисы билдятся
```

## Что осталось из Phase 1

- [ ] Gateway extension: `POST /progress/steps/:id/complete` ответ с
  `gamification?: AddXPResponse` (если ещё не сделано).
- [ ] `SubmitQuizAnswer` → `LoseHeart` интеграция (если не сделано —
  проверить `quiz-service/internal/service/quiz/service.go`).
