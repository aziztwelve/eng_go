# 🏗️ Архитектура платформы (Best Practices)

Этот документ описывает **целевую архитектуру** платформы с учётом всех 6 фаз. Покрывает: Kafka, Redis, Clean Architecture, observability, security.

---

## 📊 Текущее состояние

### Что уже есть ✅
- **Микросервисы:** auth, user, course, video, quiz, gateway
- **gRPC** для межсервисной коммуникации
- **PostgreSQL** — основная БД (одна, со схемами)
- **MinIO** — S3-совместимое хранилище для видео
- **Gateway HTTP REST** на :8081
- **Clean Architecture** в каждом сервисе (model/repo/service/api)
- **Zap logger** для структурированного логирования
- **Docker Compose** для инфраструктуры
- **Task runner** для CLI

### Чего НЕ хватает ❌
- ❌ **Event-driven архитектура** (Kafka)
- ❌ **Кэширование** (Redis)
- ❌ **Observability** — нет метрик, traces
- ❌ **Service mesh** — нет circuit breaker, retries
- ❌ **Secrets management** — токены в .env
- ❌ **API versioning** strategy
- ❌ **Idempotency** для критичных операций
- ❌ **Rate limiting**
- ❌ **CI/CD** для каждого сервиса

---

## 🎯 Целевая архитектура

```
                       Internet
                          │
                          ▼
                   ┌──────────────┐
                   │  Cloudflare  │ (CDN, DDoS, WAF)
                   └──────┬───────┘
                          │
                          ▼
                   ┌──────────────┐
                   │  Load        │
                   │  Balancer    │ (Nginx / Traefik)
                   └──────┬───────┘
                          │
            ┌─────────────┼─────────────┐
            ▼             ▼             ▼
        ┌────────┐   ┌────────┐   ┌────────┐
        │Gateway │   │Gateway │   │Gateway │  ← Horizontally scaled
        │ pod 1  │   │ pod 2  │   │ pod 3  │
        └────┬───┘   └───┬────┘   └───┬────┘
             │           │            │
             └───────────┼────────────┘
                         │ gRPC
                         ▼
        ┌────────────────────────────────────┐
        │       MICROSERVICES MESH           │
        │                                    │
        │  ┌─────────┐  ┌──────────┐         │
        │  │ Auth    │  │ User     │         │
        │  └─────────┘  └──────────┘         │
        │                                    │
        │  ┌─────────┐  ┌──────────┐         │
        │  │ Course  │  │ Video    │         │
        │  └─────────┘  └──────────┘         │
        │                                    │
        │  ┌─────────────┐  ┌─────────┐      │
        │  │Gamification │  │   SRS   │      │
        │  └─────────────┘  └─────────┘      │
        │                                    │
        │  ┌─────────┐  ┌──────────┐         │
        │  │   AI    │  │ Payment  │         │
        │  └─────────┘  └──────────┘         │
        └────────┬───────────────────────────┘
                 │
        ┌────────┼─────────┬─────────┬──────────┐
        ▼        ▼         ▼         ▼          ▼
    ┌──────┐ ┌─────┐  ┌──────┐  ┌──────┐  ┌─────────┐
    │Postgr│ │Redis│  │Kafka │  │MinIO │  │ Vault   │
    │ pool │ │ HA  │  │     │  │      │  │(secrets)│
    └──────┘ └─────┘  └──────┘  └──────┘  └─────────┘

   ┌────────────────────────────────────────────────┐
   │           OBSERVABILITY STACK                  │
   │                                                │
   │  Prometheus + Grafana    ← метрики            │
   │  Loki / ELK              ← логи               │
   │  Jaeger / Tempo          ← traces             │
   │  AlertManager            ← алерты             │
   └────────────────────────────────────────────────┘
```

---

## 🐘 PostgreSQL: стратегия

### Текущее: одна БД, разные схемы
```
elearning (database)
├── auth (schema)
├── users (schema)
├── courses (schema)
├── videos (schema)
└── quizzes (schema)
```

### Целевое: те же схемы, но разные пользователи

```sql
-- Каждый сервис имеет своего пользователя, который видит только свою схему
GRANT USAGE ON SCHEMA auth TO auth_user;
GRANT USAGE ON SCHEMA users TO user_user;
GRANT USAGE ON SCHEMA courses TO course_user;
-- ... etc.

REVOKE ALL ON SCHEMA auth FROM PUBLIC;
```

**Зачем:**
- Изоляция данных
- Каждый сервис видит только свою схему
- Cross-service queries запрещены → принудительная коммуникация через gRPC

### Best practices:
- ✅ **Соединения через pgx pool** (уже используется)
- ✅ **Миграции** через `goose` или `golang-migrate` (уже есть)
- ✅ **Индексы** на все foreign keys и часто фильтруемые поля
- ✅ **EXPLAIN ANALYZE** для тяжёлых запросов
- ✅ **Connection pooling settings:**
  ```go
  config.MaxConns = 25
  config.MinConns = 5
  config.MaxConnLifetime = 1 * time.Hour
  config.MaxConnIdleTime = 30 * time.Minute
  ```
- ❌ **НЕ** делать долгие транзакции (block other connections)
- ❌ **НЕ** хранить blobs (видео, аудио → MinIO)

### Когда выделять отдельную БД (Phase 6+):
- Когда сервис нужно scale независимо
- Когда данные критично разделить (например, payments)
- При мульти-тенант архитектуре

**Кандидаты на отдельные БД:**
- `payments` — финансовые данные критичны
- `ai` — может быть огромным (миллионы сообщений)
- `analytics` (если появится) — для отчётов

---

## 🔴 Redis: где и зачем

### Use Cases в нашей платформе:

#### 1. **Кэш популярных данных** (общий)
```
KEY                              TTL      Пример
─────────────────────────────────────────────────────────────────
user:{id}                        5 min    User profile
course:{id}                      10 min   Course details
course:list:lang={lang}          5 min    Course catalog
lesson:{id}                      10 min   Lesson content
```

**Реализация (Cache-Aside pattern):**
```go
func (s *CourseService) GetCourse(ctx context.Context, id UUID) (*Course, error) {
    // 1. Try cache first
    key := fmt.Sprintf("course:%s", id)
    if cached, err := s.cache.Get(ctx, key); err == nil {
        return cached, nil
    }
    
    // 2. Cache miss → fetch from DB
    course, err := s.repo.GetByID(ctx, id)
    if err != nil { return nil, err }
    
    // 3. Set in cache (fire-and-forget)
    go s.cache.Set(ctx, key, course, 10*time.Minute)
    
    return course, nil
}

// Invalidate on update
func (s *CourseService) UpdateCourse(ctx context.Context, c *Course) error {
    err := s.repo.Update(ctx, c)
    if err != nil { return err }
    
    // Invalidate
    s.cache.Delete(ctx, fmt.Sprintf("course:%s", c.ID))
    return nil
}
```

#### 2. **Leaderboards** (Phase 4)
```
ZSET: leaderboard:cohort:{cohort_id}
  - score: weekly_xp
  - member: user_id
  
Команды:
  ZADD leaderboard:cohort:abc 580 user_alice
  ZINCRBY leaderboard:cohort:abc 15 user_alice  ← user gained 15 XP
  ZREVRANGE leaderboard:cohort:abc 0 9          ← top 10
  ZREVRANK leaderboard:cohort:abc user_alice    ← my rank
```

#### 3. **Rate limiting** (Gateway)
```
KEY: ratelimit:user:{id}
TTL: 1 minute
VALUE: counter

Команды:
  INCR ratelimit:user:abc
  EXPIRE ratelimit:user:abc 60
  
Если > 100/min → 429 Too Many Requests
```

#### 4. **Session storage** (если будут)
```
KEY: session:{token}
TTL: matches JWT expiry
VALUE: user data + metadata
```

#### 5. **Distributed locks** (для cron jobs)
```
KEY: lock:weekly_league_rotation
TTL: 5 minutes
Значение: server_id

SET lock:cron:rotation server-1 NX EX 300

Если ok → этот сервер делает работу
Если nil → другой сервер уже делает
```

#### 6. **Pub/Sub** (real-time notifications)
```
PUBLISH user:{id}:notifications "{...}"

WebSocket connection subscribes:
SUBSCRIBE user:{id}:notifications
```

#### 7. **AI conversation context** (Phase 5)
```
KEY: ai:conv:{conv_id}:context
TTL: 30 minutes
VALUE: JSON с последними 10 сообщениями

→ Быстрый доступ для AI service без обращения к PostgreSQL
```

### Redis настройки:

**Production:**
- **Redis Sentinel** или **Redis Cluster** для HA
- **maxmemory-policy: allkeys-lru** (для кэша)
- **maxmemory: 4GB** (зависит от scale)
- **persistence: RDB** (AOF только для критичных данных)

**Структура клиента в Go:**
```go
// platform/pkg/cache/cache.go
type Cache interface {
    Get(ctx context.Context, key string, dest interface{}) error
    Set(ctx context.Context, key string, value interface{}, ttl time.Duration) error
    Delete(ctx context.Context, keys ...string) error
    
    // For leaderboards
    ZAdd(ctx context.Context, key string, score float64, member string) error
    ZIncrBy(ctx context.Context, key string, increment float64, member string) error
    ZRevRangeWithScores(ctx context.Context, key string, start, stop int64) ([]Z, error)
    ZRevRank(ctx context.Context, key string, member string) (int64, error)
}

type RedisCache struct {
    client *redis.Client
}
```

---

## 📨 Kafka: event-driven архитектура

### Зачем нужна Kafka:

1. **Декаплинг сервисов** — Course Service не должен напрямую вызывать Gamification
2. **Asynchronous processing** — heavy ops (AI, email) в фоне
3. **Event sourcing** — история изменений
4. **Fan-out** — один event → много consumers
5. **Reliability** — at-least-once delivery с retry

### Топики в нашей платформе:

```
┌─────────────────────────────────────────────────────────────┐
│                       KAFKA TOPICS                          │
└─────────────────────────────────────────────────────────────┘

📚 Course events:
  ├─ course.created
  ├─ course.published
  ├─ lesson.completed
  └─ step.completed         ← главный для геймификации

🎮 Gamification events:
  ├─ xp.gained
  ├─ level.up
  ├─ achievement.unlocked
  ├─ streak.broken
  └─ streak.milestone       ← 7, 30, 100, 365 days

❤️ Hearts events:
  ├─ heart.lost
  └─ heart.refilled

👤 User events:
  ├─ user.registered
  ├─ user.deleted
  └─ profile.updated

💰 Payment events:
  ├─ subscription.created
  ├─ subscription.cancelled
  ├─ subscription.expired
  ├─ purchase.completed
  └─ payment.failed

🤖 AI events:
  ├─ ai.conversation.started
  ├─ ai.message.sent
  └─ ai.cost.recorded

📊 Analytics events:
  ├─ user.action            ← всё, что делает юзер
  └─ ab.experiment          ← для A/B тестов
```

### Структура event (схема):

```go
// shared/events/events.go
type Event struct {
    ID            string    `json:"id"`            // UUID
    Type          string    `json:"type"`          // 'step.completed'
    Version       string    `json:"version"`       // 'v1'
    Source        string    `json:"source"`        // 'course-service'
    Timestamp     time.Time `json:"timestamp"`
    UserID        string    `json:"user_id,omitempty"`
    CorrelationID string    `json:"correlation_id,omitempty"`
    Payload       json.RawMessage `json:"payload"`
}

type StepCompletedPayload struct {
    UserID       string  `json:"user_id"`
    StepID       string  `json:"step_id"`
    StepType     string  `json:"step_type"`        // 'quiz', 'translate', etc
    LessonID     string  `json:"lesson_id"`
    SourceType   string  `json:"source_type"`      // 'course', 'track', 'standalone'
    SourceID     string  `json:"source_id,omitempty"`
    IsCorrect    bool    `json:"is_correct"`
    TimeSpentMs  int     `json:"time_spent_ms"`
    QualityScore int     `json:"quality_score"`    // 0-5 для SM-2
}
```

### Producer (Course Service):

```go
// services/course-service/internal/events/publisher.go
type EventPublisher struct {
    producer sarama.SyncProducer
    topic    string
}

func (p *EventPublisher) Publish(ctx context.Context, event Event) error {
    payload, err := json.Marshal(event)
    if err != nil { return err }
    
    msg := &sarama.ProducerMessage{
        Topic: p.topic,
        Key:   sarama.StringEncoder(event.UserID),  // partition by user
        Value: sarama.ByteEncoder(payload),
        Headers: []sarama.RecordHeader{
            {Key: []byte("event_type"), Value: []byte(event.Type)},
            {Key: []byte("version"),    Value: []byte(event.Version)},
        },
    }
    
    _, _, err = p.producer.SendMessage(msg)
    return err
}

// В CompleteStep после успешной транзакции:
publisher.Publish(ctx, Event{
    Type:    "step.completed",
    Source:  "course-service",
    UserID:  userID,
    Payload: stepCompletedPayload,
})
```

### Consumer (Gamification Service):

```go
// services/gamification-service/internal/events/consumer.go
type StepCompletedConsumer struct {
    xpService      *XPService
    streakService  *StreakService
}

func (c *StepCompletedConsumer) Handle(ctx context.Context, msg *sarama.ConsumerMessage) error {
    var event Event
    if err := json.Unmarshal(msg.Value, &event); err != nil {
        return err  // → DLQ (Dead Letter Queue)
    }
    
    var payload StepCompletedPayload
    if err := json.Unmarshal(event.Payload, &payload); err != nil {
        return err
    }
    
    // Idempotency check
    if c.alreadyProcessed(event.ID) { return nil }
    
    // Business logic
    xp := calculateXP(payload.StepType, payload.IsCorrect)
    if err := c.xpService.Add(ctx, payload.UserID, xp); err != nil {
        return err
    }
    
    if payload.IsCorrect {
        c.streakService.RecordActivity(ctx, payload.UserID)
    }
    
    // Mark processed
    c.markProcessed(event.ID)
    
    return nil
}
```

### Partitioning стратегия:

```
KEY: user_id  (для всех событий с user_id)
  → Гарантирует order для одного юзера
  → Параллельная обработка для разных юзеров

Партиций: 10-30 (зависит от throughput)
Replication factor: 3 (production)
```

### Best practices Kafka:

✅ **Schema Registry** (Confluent / Apicurio) для версионирования  
✅ **Idempotency keys** в consumers (deduplication)  
✅ **Dead Letter Queue (DLQ)** для poison messages  
✅ **Consumer groups** — каждый сервис в своей группе  
✅ **Manual commit** offsets после успешной обработки  
✅ **Outbox pattern** — публикация событий в одной транзакции с DB write  

❌ **НЕ** делать sync calls в consumer на критичный путь  
❌ **НЕ** хранить большие payloads в Kafka (>1MB) → S3 + reference  

### Outbox pattern (важно!):

**Проблема:** что если упадёт сервис после `INSERT` но до `Publish`?

```
TRANSACTION:
  INSERT step_progress (id, user_id, ...)
  INSERT outbox_events (id, type, payload, status='pending')
COMMIT

Separately, фоновый воркер:
  SELECT * FROM outbox_events WHERE status='pending'
  → Publish to Kafka
  → UPDATE status='published'
```

→ Гарантия "transactional outbox":
- Если транзакция упала → event не отправляется
- Если транзакция прошла → event точно будет опубликован (eventually)

---

## 🏛️ Clean Architecture (детально)

### Уровни (Onion Architecture):

```
┌────────────────────────────────────────────────┐
│  Frameworks & Drivers (внешний слой)           │
│  - gRPC handlers                               │
│  - HTTP handlers (gateway)                     │
│  - Kafka consumers                             │
│  - Database (pgx)                              │
│  - External APIs (OpenAI, Stripe)              │
├────────────────────────────────────────────────┤
│  Interface Adapters                            │
│  - Repositories (interface + impl)             │
│  - Converters (DTO ↔ Domain)                   │
│  - Event publishers                            │
├────────────────────────────────────────────────┤
│  Use Cases (Application Logic)                 │
│  - Services                                    │
│  - Business workflows                          │
├────────────────────────────────────────────────┤
│  Entities (Enterprise Business Rules)          │
│  - Domain models                               │
│  - Pure business logic                         │
│  - No dependencies on external code            │
└────────────────────────────────────────────────┘

Зависимости направлены ВНУТРЬ ←─── (Dependency Rule)
```

### Структура одного сервиса:

```
services/course-service/
├── cmd/
│   └── main.go                          # Composition root
│
├── internal/
│   ├── api/                             # ◄── Interface Adapters
│   │   ├── grpc/
│   │   │   ├── server.go
│   │   │   ├── course_handler.go        # gRPC implementation
│   │   │   └── interceptors/
│   │   │       ├── logging.go
│   │   │       ├── auth.go
│   │   │       └── metrics.go
│   │   └── http/                        # для admin endpoints если нужно
│   │
│   ├── service/                         # ◄── Use Cases
│   │   ├── course_service.go            # CourseService interface
│   │   ├── course_service_impl.go       # implementation
│   │   ├── module_service.go
│   │   └── lesson_service.go
│   │
│   ├── repository/                      # ◄── Interface Adapters
│   │   ├── course_repo.go               # interface CourseRepository
│   │   ├── postgres/
│   │   │   ├── course_repo_pg.go        # PostgreSQL impl
│   │   │   └── queries.sql              # SQL queries
│   │   └── cache/
│   │       └── course_repo_cache.go     # Cache decorator
│   │
│   ├── model/                           # ◄── Entities
│   │   ├── course.go
│   │   ├── module.go
│   │   ├── lesson.go
│   │   ├── step.go
│   │   └── errors.go
│   │
│   ├── events/                          # ◄── Interface Adapters
│   │   ├── publisher.go                 # interface
│   │   ├── kafka_publisher.go           # Kafka impl
│   │   └── consumer.go                  # incoming events handler
│   │
│   ├── converter/                       # ◄── Interface Adapters
│   │   ├── grpc_converter.go            # proto ↔ domain
│   │   └── db_converter.go              # db row ↔ domain
│   │
│   ├── config/
│   │   └── config.go
│   │
│   └── app/
│       └── app.go                       # Dependency Injection
│
├── migrations/
├── seeds/
└── tests/
    ├── unit/
    ├── integration/
    └── fixtures/
```

### Пример: правильная структура слоёв

#### **Model (Entity)** — чистая бизнес-логика
```go
// internal/model/course.go
package model

import "time"

type Course struct {
    ID          UUID
    Title       string
    Description string
    Level       CourseLevel
    Status      CourseStatus
    AccessType  AccessType
    CreatedAt   time.Time
    UpdatedAt   time.Time
}

type CourseLevel string
const (
    LevelA1 CourseLevel = "A1"
    LevelA2 CourseLevel = "A2"
    // ...
)

// Domain method (pure business logic)
func (c *Course) CanBeAccessedBy(user *User, hasSubscription bool, hasPurchase bool) bool {
    switch c.AccessType {
    case AccessFree:
        return true
    case AccessPremium:
        return hasSubscription
    case AccessPaid:
        return hasPurchase
    }
    return false
}

// Validation
func (c *Course) Validate() error {
    if c.Title == "" { return ErrEmptyTitle }
    if c.Level == "" { return ErrEmptyLevel }
    return nil
}
```

#### **Repository** — интерфейс + реализация
```go
// internal/repository/course_repo.go
package repository

import (
    "context"
    "course-service/internal/model"
)

type CourseRepository interface {
    Create(ctx context.Context, course *model.Course) error
    GetByID(ctx context.Context, id UUID) (*model.Course, error)
    Update(ctx context.Context, course *model.Course) error
    Delete(ctx context.Context, id UUID) error
    List(ctx context.Context, filters CourseFilters) ([]*model.Course, error)
}

// internal/repository/postgres/course_repo_pg.go
type courseRepoPG struct {
    pool *pgxpool.Pool
}

func NewCourseRepoPG(pool *pgxpool.Pool) repository.CourseRepository {
    return &courseRepoPG{pool: pool}
}

func (r *courseRepoPG) GetByID(ctx context.Context, id UUID) (*model.Course, error) {
    var row courseRow
    err := r.pool.QueryRow(ctx, `
        SELECT id, title, description, level, status, access_type, created_at, updated_at
        FROM courses.courses WHERE id = $1
    `, id).Scan(&row.ID, &row.Title, /*...*/)
    
    if err == pgx.ErrNoRows { return nil, model.ErrCourseNotFound }
    if err != nil { return nil, fmt.Errorf("get course: %w", err) }
    
    return rowToCourse(row), nil
}
```

#### **Service** — orchestration use cases
```go
// internal/service/course_service.go
package service

type CourseService struct {
    repo       repository.CourseRepository
    publisher  events.Publisher
    cache      cache.Cache
    logger     *zap.Logger
}

func NewCourseService(
    repo repository.CourseRepository,
    publisher events.Publisher,
    cache cache.Cache,
    logger *zap.Logger,
) *CourseService {
    return &CourseService{
        repo:      repo,
        publisher: publisher,
        cache:     cache,
        logger:    logger,
    }
}

func (s *CourseService) CreateCourse(ctx context.Context, input CreateCourseInput) (*model.Course, error) {
    // 1. Build domain entity
    course := &model.Course{
        ID:          uuid.New(),
        Title:       input.Title,
        Description: input.Description,
        Level:       input.Level,
        Status:      model.StatusDraft,
        CreatedAt:   time.Now(),
    }
    
    // 2. Validate
    if err := course.Validate(); err != nil {
        return nil, fmt.Errorf("validate: %w", err)
    }
    
    // 3. Persist
    if err := s.repo.Create(ctx, course); err != nil {
        return nil, fmt.Errorf("create course: %w", err)
    }
    
    // 4. Publish event (eventually consistent)
    s.publisher.Publish(ctx, events.Event{
        Type:    "course.created",
        UserID:  input.CreatedBy,
        Payload: course,
    })
    
    return course, nil
}
```

#### **gRPC Handler** — тонкий слой
```go
// internal/api/grpc/course_handler.go
type CourseHandler struct {
    pb.UnimplementedCourseServiceServer
    service *service.CourseService
    log     *zap.Logger
}

func (h *CourseHandler) CreateCourse(ctx context.Context, req *pb.CreateCourseRequest) (*pb.Course, error) {
    // 1. Convert gRPC → domain input
    input := converter.GRPCToCreateCourseInput(req)
    
    // 2. Call service
    course, err := h.service.CreateCourse(ctx, input)
    if err != nil {
        return nil, mapErrorToGRPCStatus(err)
    }
    
    // 3. Convert domain → gRPC
    return converter.CourseToGRPC(course), nil
}
```

#### **Composition Root** — DI
```go
// cmd/main.go
func main() {
    ctx := context.Background()
    
    // Config
    cfg := config.MustLoad()
    
    // Logger
    logger := logger.New(cfg.Logger)
    
    // Database
    pool := postgres.MustConnect(ctx, cfg.Postgres)
    defer pool.Close()
    
    // Cache
    redisClient := redis.NewClient(cfg.Redis)
    cacheImpl := cache.NewRedisCache(redisClient)
    
    // Event publisher
    publisher := events.NewKafkaPublisher(cfg.Kafka)
    
    // Repositories
    courseRepo := postgres.NewCourseRepoPG(pool)
    // Optional: wrap with cache decorator
    courseRepoCached := cache.NewCourseRepoCache(courseRepo, cacheImpl)
    
    // Services
    courseSvc := service.NewCourseService(courseRepoCached, publisher, cacheImpl, logger)
    
    // gRPC server
    grpcServer := grpc.NewServer(
        grpc.UnaryInterceptor(grpc.ChainUnaryInterceptor(
            interceptors.Logging(logger),
            interceptors.Metrics(),
            interceptors.Auth(authClient),
        )),
    )
    
    pb.RegisterCourseServiceServer(grpcServer, api.NewCourseHandler(courseSvc, logger))
    
    // Start
    lis, _ := net.Listen("tcp", cfg.GRPCAddr)
    
    // Graceful shutdown
    go func() {
        sig := <-signals
        logger.Info("shutdown", zap.String("signal", sig.String()))
        grpcServer.GracefulStop()
    }()
    
    grpcServer.Serve(lis)
}
```

---

## 🔭 Observability (Prometheus, Grafana, Tracing)

### 1. Metrics (Prometheus)

```go
// platform/pkg/metrics/metrics.go
var (
    HTTPRequestsTotal = promauto.NewCounterVec(prometheus.CounterOpts{
        Name: "http_requests_total",
        Help: "Total HTTP requests",
    }, []string{"method", "path", "status"})
    
    HTTPRequestDuration = promauto.NewHistogramVec(prometheus.HistogramOpts{
        Name: "http_request_duration_seconds",
        Help: "HTTP request duration",
        Buckets: prometheus.ExponentialBuckets(0.001, 2, 12),
    }, []string{"method", "path"})
    
    GRPCRequestsTotal = promauto.NewCounterVec(prometheus.CounterOpts{
        Name: "grpc_requests_total",
        Help: "Total gRPC requests",
    }, []string{"service", "method", "status"})
    
    DatabaseQueryDuration = promauto.NewHistogramVec(prometheus.HistogramOpts{
        Name: "db_query_duration_seconds",
        Help: "Database query duration",
    }, []string{"query"})
    
    CacheHits = promauto.NewCounterVec(prometheus.CounterOpts{
        Name: "cache_hits_total",
        Help: "Cache hits",
    }, []string{"key_prefix"})
    
    CacheMisses = promauto.NewCounterVec(prometheus.CounterOpts{
        Name: "cache_misses_total",
        Help: "Cache misses",
    }, []string{"key_prefix"})
    
    // Бизнес метрики
    StepsCompleted = promauto.NewCounter(prometheus.CounterOpts{
        Name: "steps_completed_total",
        Help: "Total steps completed",
    })
    
    XPGained = promauto.NewCounter(prometheus.CounterOpts{
        Name: "xp_gained_total",
        Help: "Total XP gained by all users",
    })
)
```

### 2. Распределённый Tracing (Jaeger / Tempo)

```go
// platform/pkg/tracing/tracing.go
func InitTracer(serviceName string) trace.Tracer {
    exporter, _ := otlptracegrpc.New(ctx,
        otlptracegrpc.WithEndpoint(jaegerEndpoint),
        otlptracegrpc.WithInsecure(),
    )
    
    tp := sdktrace.NewTracerProvider(
        sdktrace.WithBatcher(exporter),
        sdktrace.WithResource(resource.NewWithAttributes(
            semconv.SchemaURL,
            semconv.ServiceName(serviceName),
        )),
    )
    
    otel.SetTracerProvider(tp)
    return tp.Tracer(serviceName)
}

// Использование
func (s *Service) DoWork(ctx context.Context) {
    ctx, span := s.tracer.Start(ctx, "DoWork")
    defer span.End()
    
    span.SetAttributes(attribute.String("user.id", userID))
    
    // pass ctx down → автоматическое propagation
    s.repo.GetData(ctx)
}
```

### 3. Структурированные логи (Zap)

```go
logger.Info("step completed",
    zap.String("user_id", userID),
    zap.String("step_id", stepID),
    zap.String("trace_id", traceID),     // для корреляции с traces
    zap.Int("xp_earned", xp),
    zap.Bool("is_correct", true),
    zap.Duration("time_spent", duration),
)
```

### 4. Dashboard в Grafana

**Уровни dashboards:**

1. **Infrastructure** — CPU, RAM, disk, network
2. **Service-level** — RPS, error rate, p50/p95/p99 latency
3. **Business metrics:**
   - DAU/MAU
   - XP gained / минута
   - Active streaks
   - Conversions to Premium
4. **Database** — query time, connections, cache hit ratio
5. **Kafka** — consumer lag, throughput

### 5. Alerts (AlertManager)

```yaml
groups:
- name: critical
  rules:
  - alert: HighErrorRate
    expr: rate(http_requests_total{status=~"5.."}[5m]) > 0.05
    for: 5m
    annotations:
      summary: "Error rate >5%"
  
  - alert: SlowGRPCResponse
    expr: histogram_quantile(0.95, grpc_request_duration_seconds) > 1.0
    for: 10m
    annotations:
      summary: "p95 latency >1s"
      
  - alert: KafkaConsumerLag
    expr: kafka_consumer_lag > 1000
    for: 5m
```

---

## 🔐 Security best practices

### 1. Secrets management (Vault)
```
❌ ПЛОХО: secrets в .env files
✅ ХОРОШО: HashiCorp Vault или AWS Secrets Manager
```

```go
// Загрузка секрета при старте
secret, err := vault.Read("secret/data/auth/jwt")
config.JWTSecret = secret.Data["key"].(string)
```

### 2. JWT validation
```go
// Всегда:
- ✅ Проверять signature
- ✅ Проверять exp (expiry)
- ✅ Проверять iss (issuer)
- ✅ Использовать алгоритм RS256 (asymmetric) в production
- ❌ НЕ доверять claims без verification
```

### 3. SQL injection protection
```go
// ✅ ХОРОШО (parameterized)
pool.QueryRow(ctx, "SELECT * FROM users WHERE id = $1", userID)

// ❌ ПЛОХО (concat)
pool.QueryRow(ctx, fmt.Sprintf("SELECT * FROM users WHERE id = '%s'", userID))
```

### 4. Input validation
```go
// Валидируй ВСЁ на входе
func (h *Handler) Create(ctx context.Context, req *pb.CreateRequest) error {
    if len(req.Title) > 200 { return ErrTooLong }
    if !isValidLevel(req.Level) { return ErrInvalidLevel }
    if req.Price < 0 { return ErrNegativePrice }
    // ...
}
```

### 5. Rate limiting
```go
// На Gateway уровне через middleware
func RateLimit(limiter *redis_rate.Limiter) middleware.Func {
    return func(c *gin.Context) {
        userID := getUserID(c)
        res, err := limiter.Allow(c, fmt.Sprintf("rl:%s", userID), 
            redis_rate.PerMinute(100))
        
        if err != nil || !res.Allowed {
            c.AbortWithStatus(429)
            return
        }
        c.Next()
    }
}
```

### 6. Audit logging
```
Что логировать (immutable log):
✅ Login attempts (success/fail)
✅ Permission changes
✅ Payment events
✅ Admin actions
✅ Data export requests (GDPR)
```

---

## 🚀 CI/CD стратегия

### Структура pipeline:

```
┌─────────────────────────────────────────────────┐
│  Push / PR  →  GitHub Actions                  │
└──────────────────┬──────────────────────────────┘
                   │
                   ▼
        ┌──────────────────────┐
        │ Stage 1: Lint        │
        │ - golangci-lint      │
        │ - go vet             │
        │ - eslint (frontend)  │
        └──────────┬───────────┘
                   ▼
        ┌──────────────────────┐
        │ Stage 2: Test        │
        │ - go test (unit)     │
        │ - go test (integ.)   │
        │ - coverage >70%      │
        └──────────┬───────────┘
                   ▼
        ┌──────────────────────┐
        │ Stage 3: Build       │
        │ - Docker images      │
        │ - Tag with git SHA   │
        │ - Push to registry   │
        └──────────┬───────────┘
                   ▼
        ┌──────────────────────┐
        │ Stage 4: Deploy      │
        │ - staging (auto)     │
        │ - prod (manual)      │
        └──────────────────────┘
```

### Best practices:
- ✅ **Monorepo** — единый репозиторий для всех сервисов
- ✅ **Build only changed services** — экономия времени
- ✅ **Multi-stage Docker** — маленькие финальные images
- ✅ **Distroless base images** — безопаснее
- ✅ **Trivy scan** на CVE в images
- ✅ **Helm charts** для Kubernetes
- ✅ **Blue-green / canary deployments** для критичных сервисов

---

## 🐳 Containerization

### Multi-stage Dockerfile:
```dockerfile
# Build stage
FROM golang:1.24-alpine AS builder

WORKDIR /build
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o app ./cmd/main.go

# Final stage (minimal)
FROM gcr.io/distroless/static-debian12:nonroot

COPY --from=builder /build/app /app
COPY --from=builder /build/migrations /migrations

USER nonroot:nonroot
ENTRYPOINT ["/app"]
```

### Размер images:
- ❌ alpine:latest → ~200MB
- ✅ distroless → ~20MB
- ✅ scratch → ~10MB (если static binary)

---

## 📋 Чек-лист готовности к production

### Каждый сервис должен иметь:
- [ ] Health check endpoint (`/health`, `/ready`)
- [ ] Graceful shutdown (SIGTERM handling)
- [ ] Structured logging с trace_id
- [ ] Prometheus metrics endpoint (`/metrics`)
- [ ] OpenTelemetry tracing
- [ ] Config через env vars
- [ ] Migrations (forward + rollback)
- [ ] Unit tests > 70% coverage
- [ ] Integration tests для critical paths
- [ ] Dockerfile (multi-stage, distroless)
- [ ] Helm chart
- [ ] Runbook (что делать при инцидентах)
- [ ] SLI/SLO определены

---

## 🎯 Roadmap внедрения архитектуры

### Phase 0 (вместе с standalone content):
- [ ] Добавить Redis в инфраструктуру
- [ ] Добавить Kafka в инфраструктуру
- [ ] Создать `platform/pkg/cache/` (Redis wrapper)
- [ ] Создать `platform/pkg/events/` (Kafka wrapper)
- [ ] Создать `shared/events/` (event types)

### Phase 1+ (постепенно):
- [ ] Outbox pattern для Course Service
- [ ] Gamification Service слушает события из Kafka
- [ ] Redis для leaderboards (Phase 4)
- [ ] OpenTelemetry tracing
- [ ] Prometheus metrics

### Перед production:
- [ ] Vault для secrets
- [ ] HA setup (Postgres replica, Redis Sentinel)
- [ ] Rate limiting
- [ ] CI/CD pipelines
- [ ] Monitoring + alerts
- [ ] Backup strategy
- [ ] Disaster recovery plan

---

## 📚 Технологии: полный стек

### Backend:
- **Language:** Go 1.24
- **Framework:** Gin (HTTP) + grpc-go
- **DB:** PostgreSQL 16 + pgx
- **Cache:** Redis 7
- **Message Queue:** Kafka 3.x + Sarama
- **Object Storage:** MinIO
- **Migrations:** goose
- **Logger:** Zap
- **Validation:** validator/v10
- **Testing:** testify, gomock

### Frontend:
- **Web:** Next.js 16 + React 19 + TypeScript
- **Mobile:** Expo + React Native
- **State:** React Query
- **Styling:** Tailwind CSS + Shadcn/ui
- **Charts:** Recharts

### Infra:
- **Container:** Docker + Docker Compose (dev), Kubernetes (prod)
- **CI/CD:** GitHub Actions
- **Secrets:** HashiCorp Vault
- **Monitoring:** Prometheus + Grafana
- **Tracing:** Jaeger / Tempo
- **Logging:** Loki / ELK
- **CDN:** Cloudflare

### External APIs:
- **AI:** OpenAI GPT-4o / Claude
- **Speech:** OpenAI Whisper
- **TTS:** Google Cloud TTS / ElevenLabs
- **Payments:** Stripe + Kaspi Pay
- **Email:** SendGrid / Resend
- **Push:** Firebase Cloud Messaging

---

## 💡 Архитектурные принципы

1. **Single Responsibility** — каждый сервис делает одно
2. **API First** — proto-файлы как контракт
3. **Database per Service** — изоляция данных
4. **Event-Driven** — async для не-критичных операций
5. **Idempotency** — все publishers/consumers идемпотентны
6. **Graceful Degradation** — сервис работает даже если зависимости упали
7. **Observability First** — нет логов/метрик = ничего не работает
8. **Security by Default** — все защищено по умолчанию
9. **Test in Production** — feature flags, canary, A/B
10. **Documentation as Code** — README в каждом сервисе

---

[← Назад к README](./README.md)
