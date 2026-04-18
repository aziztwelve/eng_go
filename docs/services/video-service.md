# Video Service

**Порт:** 50054  
**Протокол:** gRPC  
**Статус:** ✅ Реализован

## Описание

Video Service управляет видео контентом платформы. Использует MinIO (S3-compatible storage) для хранения видео файлов и PostgreSQL для метаданных. Генерирует временные signed URLs для безопасного доступа к видео.

## Архитектура

```
┌─────────────────────────────────────────────────────────────┐
│                      Video Service                          │
│                                                               │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │   gRPC API   │  │   Service    │  │  Repository  │      │
│  │   (Port      │→ │   Layer      │→ │   (Postgres) │      │
│  │   50054)     │  │              │  │              │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
│                           ↓                                  │
│                    ┌──────────────┐                         │
│                    │   Storage    │                         │
│                    │   (MinIO)    │                         │
│                    └──────────────┘                         │
└─────────────────────────────────────────────────────────────┘
```

## Основные возможности

### 1. Управление видео
- Загрузка видео через gRPC streaming
- Хранение в MinIO (S3-compatible)
- Метаданные в PostgreSQL
- Soft delete

### 2. Безопасный доступ
- Генерация signed URLs с ограниченным временем жизни (2 часа)
- Персонализированные URL для каждого пользователя
- Защита от несанкционированного доступа

### 3. Метаданные
- Название и описание
- Размер файла
- Длительность видео
- Разрешение (720p, 1080p)
- URL превью
- Статус (active, processing, deleted)

## gRPC API

### GetVideoURL

Получить signed URL для просмотра видео.

**Request:**
```protobuf
message GetVideoURLRequest {
  string video_id = 1;
  string user_id = 2;
}
```

**Response:**
```protobuf
message GetVideoURLResponse {
  string signed_url = 1;
  int32 expires_in_seconds = 2;
}
```

**Пример:**
```bash
grpcurl -plaintext -d '{
  "video_id": "video-001-greetings",
  "user_id": "user-uuid"
}' localhost:50054 video.v1.VideoService/GetVideoURL
```

### UploadVideo

Загрузить видео (streaming).

**Request:**
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
  int32 duration_seconds = 5;
  string resolution = 6;
  string uploaded_by = 7;
}
```

**Response:**
```protobuf
message UploadVideoResponse {
  string video_id = 1;
  string message = 2;
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
```

### ListVideos

Получить список видео с пагинацией.

**Request:**
```protobuf
message ListVideosRequest {
  int32 page = 1;
  int32 page_size = 2;
  string status = 3; // active, processing, deleted
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

Удалить видео (soft delete).

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

## База данных

### Схема videos.videos

```sql
CREATE TABLE videos.videos (
    id UUID PRIMARY KEY,
    
    -- Метаданные
    title VARCHAR(255) NOT NULL,
    description TEXT,
    
    -- Хранилище
    storage_key VARCHAR(500) NOT NULL UNIQUE,
    bucket_name VARCHAR(100) NOT NULL DEFAULT 'videos',
    
    -- Файл
    content_type VARCHAR(100) NOT NULL,
    size_bytes BIGINT NOT NULL,
    
    -- Опциональные поля
    duration_seconds INT,
    resolution VARCHAR(20),
    thumbnail_url TEXT,
    uploaded_by UUID,
    
    -- Статус
    status VARCHAR(50) NOT NULL DEFAULT 'active',
    
    -- Timestamps
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMP
);
```

**Индексы:**
- `idx_videos_status` - по статусу
- `idx_videos_created_at` - по дате создания
- `idx_videos_storage_key` - по ключу хранилища
- `idx_videos_uploaded_by` - по загрузившему

## MinIO Storage

### Конфигурация

```bash
MINIO_ENDPOINT=localhost:9000
MINIO_ACCESS_KEY=minioadmin
MINIO_SECRET_KEY=minioadmin
MINIO_BUCKET=videos
MINIO_USE_SSL=false
```

### Структура хранения

```
videos/
├── video-001-greetings.mp4
├── video-002-introductions.mp4
├── video-003-polite-expressions.mp4
└── ...
```

### MinIO Console

- **URL:** http://localhost:9001
- **Username:** minioadmin
- **Password:** minioadmin

## Интеграция с другими сервисами

### Course Service → Video Service

Course Service вызывает Video Service для получения signed URLs при запросе контента видео-шага:

```go
// Course Service
videoURL, err := videoClient.GetVideoURL(ctx, videoID, userID)

// Возвращает URL студенту
return &GetStepContentResponse{
    Step: step,
    VideoUrl: videoURL, // Signed URL действителен 2 часа
}
```

**Поток данных:**
```
Student → API Gateway → Course Service → Video Service → MinIO
                                              ↓
                                        Signed URL (2h)
                                              ↓
Student ← API Gateway ← Course Service ← Video Service
```

## Конфигурация

### Переменные окружения

```bash
# gRPC
GRPC_HOST=0.0.0.0
GRPC_PORT=50054

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
MINIO_BUCKET=videos
MINIO_USE_SSL=false
MINIO_REGION=

# Video Settings
SIGNED_URL_EXPIRES_SECONDS=7200  # 2 hours

# Logging
LOGGER_LEVEL=info
LOGGER_AS_JSON=false
```

## Развертывание

### Локальная разработка

```bash
# 1. Поднять инфраструктуру
task up-core
task up-video

# 2. Применить миграции
PGPASSWORD=admin psql -h localhost -p 5432 -U admin -d elearning << EOF
CREATE USER video_user WITH PASSWORD 'video_pass';
GRANT ALL PRIVILEGES ON DATABASE elearning TO video_user;
EOF

PGPASSWORD=video_pass psql -h localhost -p 5432 -U video_user -d elearning \
  -f services/video-service/migrations/000001_create_videos.up.sql

# 3. Загрузить seed данные
PGPASSWORD=video_pass psql -h localhost -p 5432 -U video_user -d elearning \
  -f services/video-service/seeds/001_videos.sql

# 4. Запустить сервис
task run-video
```

### Production

Для production рекомендуется использовать AWS S3 вместо MinIO:

```bash
# Production конфигурация
MINIO_ENDPOINT=s3.amazonaws.com
MINIO_ACCESS_KEY=${AWS_ACCESS_KEY_ID}
MINIO_SECRET_KEY=${AWS_SECRET_ACCESS_KEY}
MINIO_USE_SSL=true
MINIO_REGION=us-east-1
MINIO_BUCKET=my-production-videos
```

**Код остается тот же!** MinIO SDK полностью совместим с AWS S3.

## Мониторинг

### Health Check

```bash
grpcurl -plaintext localhost:50054 grpc.health.v1.Health/Check
```

### Метрики

- Количество видео по статусам
- Размер хранилища
- Количество запросов signed URLs
- Время генерации URLs

## Безопасность

### Signed URLs

- Временные ссылки с ограниченным доступом (2 часа)
- Персонализированы для каждого пользователя
- Автоматическая ротация при истечении

### Права доступа

- Проверка прав выполняется в Course Service
- Video Service не проверяет enrollment
- Разделение ответственности между сервисами

## Ограничения и будущие улучшения

### Текущие ограничения

- Нет транскодирования видео
- Нет генерации thumbnails
- Нет аналитики просмотров
- Нет поддержки adaptive streaming (HLS/DASH)

### Планируемые улучшения

1. **Транскодирование** - FFmpeg для создания разных качеств
2. **Thumbnails** - автоматическая генерация превью
3. **Аналитика** - отслеживание просмотров и метрики
4. **CDN** - интеграция с CloudFront для production
5. **Adaptive Streaming** - HLS/DASH для лучшего UX
6. **Субтитры** - поддержка .vtt/.srt файлов

## Troubleshooting

### MinIO не запускается

```bash
# Проверить логи
task logs-video

# Пересоздать контейнер
task down-video
task up-video
```

### Ошибка "bucket not found"

```bash
# Создать bucket вручную
docker exec elearning-minio mc mb myminio/videos
docker exec elearning-minio mc anonymous set download myminio/videos
```

### Signed URL не работает

- Проверить что MinIO доступен на указанном endpoint
- Проверить время жизни URL (по умолчанию 2 часа)
- Убедиться что bucket имеет правильные permissions

## Ссылки

- [MinIO Documentation](https://min.io/docs/minio/linux/index.html)
- [AWS S3 Compatibility](https://docs.min.io/docs/aws-cli-with-minio.html)
- [gRPC Streaming](https://grpc.io/docs/languages/go/basics/#server-side-streaming-rpc)

## Версия

**Текущая версия:** 1.0.0  
**Дата релиза:** 2026-04-15  
**Статус:** Production Ready
