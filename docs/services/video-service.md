# Video Service

Сервис для управления видео контентом: загрузка, хранение в MinIO, генерация signed URLs для безопасного доступа.

## Порт

- gRPC: `50054`

## Технологии

- Go 1.24
- gRPC
- PostgreSQL (схема `videos`)
- MinIO (S3-compatible storage)
- Protocol Buffers

## Архитектура

```
┌─────────────┐
│   Gateway   │
└──────┬──────┘
       │ gRPC
┌──────▼──────────┐
│  Video Service  │
│     :50054      │
└────┬────────┬───┘
     │        │
     │        └──────────┐
     │                   │
┌────▼─────┐      ┌─────▼─────┐
│PostgreSQL│      │   MinIO   │
│ (videos) │      │  (videos) │
└──────────┘      └───────────┘
```

## База данных

### Схема: `videos`

**Таблица: `videos`**

```sql
CREATE TABLE videos.videos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title VARCHAR(255) NOT NULL,
    description TEXT,
    storage_key VARCHAR(500) NOT NULL,
    bucket_name VARCHAR(100) NOT NULL,
    content_type VARCHAR(100) NOT NULL,
    size_bytes BIGINT NOT NULL,
    duration_seconds INTEGER,
    resolution VARCHAR(20),
    status VARCHAR(20) NOT NULL DEFAULT 'processing',
    uploaded_by UUID,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);
```

**Статусы видео:**
- `processing` — обрабатывается
- `active` — доступно для просмотра
- `failed` — ошибка обработки
- `deleted` — удалено

## API (gRPC)

### GetVideoURL

Получить signed URL для просмотра видео.

**Request:**
```protobuf
message GetVideoURLRequest {
  string video_id = 1;
  string user_id = 2;  // optional
}
```

**Response:**
```protobuf
message GetVideoURLResponse {
  string signed_url = 1;
  int32 expires_in_seconds = 2;
}
```

**Пример (через Gateway):**
```bash
curl http://localhost:8080/api/v1/videos/{video_id}/url
```

**Response:**
```json
{
  "signed_url": "http://localhost:9000/videos/...",
  "expires_in_seconds": 7200
}
```

### GetVideoMetadata

Получить метаданные видео.

**Request:**
```protobuf
message GetVideoMetadataRequest {
  string video_id = 1;
}
```

**Response:**
```protobuf
message GetVideoMetadataResponse {
  Video video = 1;
}

message Video {
  string id = 1;
  string title = 2;
  string description = 3;
  int32 duration_seconds = 4;
  string resolution = 5;
  string status = 6;
  google.protobuf.Timestamp created_at = 7;
}
```

**Пример:**
```bash
curl http://localhost:8080/api/v1/videos/{video_id}
```

### UploadVideo

Загрузить видео (streaming).

**Request (stream):**
```protobuf
message UploadVideoRequest {
  oneof data {
    VideoMetadata metadata = 1;
    bytes chunk = 2;
  }
}

message VideoMetadata {
  string title = 1;
  string description = 2;
  string content_type = 3;
  int64 size_bytes = 4;
}
```

**Response:**
```protobuf
message UploadVideoResponse {
  string video_id = 1;
  string message = 2;
}
```

### ListVideos

Получить список видео с пагинацией.

**Request:**
```protobuf
message ListVideosRequest {
  int32 page = 1;
  int32 page_size = 2;
  string status = 3;  // optional filter
}
```

**Response:**
```protobuf
message ListVideosResponse {
  repeated Video videos = 1;
  int32 total = 2;
}
```

### DeleteVideo

Удалить видео.

**Request:**
```protobuf
message DeleteVideoRequest {
  string video_id = 1;
}
```

**Response:**
```protobuf
message DeleteVideoResponse {
  bool success = 1;
  string message = 2;
}
```

## Конфигурация

### Environment Variables

```bash
# gRPC Server
GRPC_HOST=0.0.0.0
GRPC_PORT=50054

# Logger
LOGGER_LEVEL=info
LOGGER_AS_JSON=false

# PostgreSQL
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=elearning
POSTGRES_SCHEMA=videos
POSTGRES_USER=video_user
POSTGRES_PASSWORD=video_pass

# MinIO
MINIO_ENDPOINT=localhost:9000
MINIO_ACCESS_KEY=minioadmin
MINIO_SECRET_KEY=minioadmin
MINIO_USE_SSL=false
MINIO_REGION=us-east-1
MINIO_BUCKET=videos

# Video Settings
SIGNED_URL_EXPIRES_SECONDS=7200  # 2 hours
```

## Запуск

### Локально

```bash
# С env файлом
task run-video

# Или напрямую
cd services/video-service
export $(cat ../../deploy/env/video.env | grep -v '^#' | xargs)
go run cmd/main.go
```

### Docker

```bash
# Через docker-compose (если настроен)
docker compose -f deploy/compose/video/docker-compose.yml up
```

## Интеграция с курсами

### Структура content в steps

Для video шагов в таблице `steps`:

```json
{
  "video_id": "10000001-0000-0000-0000-000000000001",
  "title": "Introduction to English",
  "duration_seconds": 180
}
```

### Workflow

1. **Frontend** получает step с `type = 'video'`
2. Извлекает `video_id` из `content`
3. Запрашивает signed URL: `GET /api/v1/videos/{video_id}/url`
4. Получает временную ссылку на видео
5. Воспроизводит видео через HTML5 `<video>` или плеер

## MinIO Storage

### Bucket Structure

```
videos/
├── greetings.mp4
├── introductions.mp4
├── polite-expressions.mp4
└── ...
```

### Signed URLs

- Генерируются с помощью AWS S3 SDK
- Срок действия: 2 часа (настраивается)
- Безопасный доступ без публичных URL

## Тестовые данные

После seeding доступны 8 видео:

```sql
-- English A1 (5 videos)
10000001-0000-0000-0000-000000000001  Morning Greetings Video
10000001-0000-0000-0000-000000000002  Introduction Examples
10000001-0000-0000-0000-000000000003  Conversation Practice
10000001-0000-0000-0000-000000000004  Numbers Video Tutorial
10000001-0000-0000-0000-000000000005  Time Expressions

-- Business English (3 videos)
10000001-0000-0000-0000-000000000006  Professional Email Writing
10000001-0000-0000-0000-000000000007  Meeting Etiquette
10000001-0000-0000-0000-000000000008  Presentation Skills
```

## Миграции

```bash
# Применить миграции
task migrate-up-video

# Или вручную
cd services/video-service/migrations
for f in *.up.sql; do
  PGPASSWORD=change_me_in_production \
  psql -h localhost -U admin -d elearning -f "$f"
done
```

## Troubleshooting

### Видео не загружается

```bash
# Проверить MinIO
curl http://localhost:9000/minio/health/live

# Проверить bucket
docker exec elearning-minio mc ls local/videos
```

### Ошибка подключения к БД

```bash
# Проверить пользователя
docker exec elearning-postgres psql -U admin -d elearning \
  -c "SELECT rolname FROM pg_roles WHERE rolname = 'video_user';"

# Проверить схему
docker exec elearning-postgres psql -U admin -d elearning \
  -c "\dn videos"
```

### Signed URL не работает

- Проверить `MINIO_ENDPOINT` (должен быть доступен с клиента)
- Проверить `SIGNED_URL_EXPIRES_SECONDS`
- Убедиться что файл существует в MinIO

## Roadmap

- [ ] Транскодинг видео (разные разрешения)
- [ ] Генерация превью/thumbnails
- [ ] Поддержка субтитров
- [ ] Аналитика просмотров
- [ ] CDN интеграция
