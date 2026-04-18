# Video Service

Сервис для управления видео контентом в e-learning платформе.

## Возможности

- **Хранение видео**: Использует MinIO (S3-compatible) для хранения видео файлов
- **Signed URLs**: Генерация временных URL с ограниченным доступом (2 часа)
- **Streaming Upload**: Загрузка видео через gRPC streaming
- **Метаданные**: Хранение информации о видео в PostgreSQL
- **CRUD операции**: Полный набор операций для управления видео

## Архитектура

```
Video Service (gRPC :50054)
├── Storage Layer (MinIO)
├── Repository Layer (PostgreSQL)
├── Service Layer (Business Logic)
└── API Layer (gRPC Handlers)
```

## Технологии

- **Go 1.24+**
- **gRPC** - API
- **MinIO** - S3-compatible хранилище
- **PostgreSQL** - метаданные
- **Clean Architecture**

## Быстрый старт

### 1. Поднять инфраструктуру

```bash
# Запустить PostgreSQL и MinIO
task up-core
task up-video

# Проверить статус
docker ps
```

### 2. Применить миграции

```bash
# Создать пользователя и схему
PGPASSWORD=admin psql -h localhost -p 5432 -U admin -d elearning << EOF
CREATE USER video_user WITH PASSWORD 'video_pass';
GRANT ALL PRIVILEGES ON DATABASE elearning TO video_user;
EOF

# Применить миграции
PGPASSWORD=video_pass psql -h localhost -p 5432 -U video_user -d elearning \
  -f services/video-service/migrations/000001_create_videos.up.sql

# Загрузить seed данные (опционально)
PGPASSWORD=video_pass psql -h localhost -p 5432 -U video_user -d elearning \
  -f services/video-service/seeds/001_videos.sql
```

### 3. Запустить сервис

```bash
# Создать .env файл
cp services/video-service/.env.template services/video-service/.env

# Запустить
task run-video
```

## Конфигурация

Основные переменные окружения:

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

# Video Settings
SIGNED_URL_EXPIRES_SECONDS=7200  # 2 hours
```

## gRPC API

### GetVideoURL

Получить signed URL для просмотра видео.

```bash
grpcurl -plaintext -d '{
  "video_id": "video-001-greetings",
  "user_id": "user-uuid"
}' localhost:50054 video.v1.VideoService/GetVideoURL
```

**Ответ:**
```json
{
  "signed_url": "http://localhost:9000/videos/video-001-greetings.mp4?X-Amz-...",
  "expires_in_seconds": 7200
}
```

### UploadVideo

Загрузить видео (streaming).

```bash
# Пример через grpcurl (для тестирования используйте клиент)
grpcurl -plaintext -d @ localhost:50054 video.v1.VideoService/UploadVideo
```

### GetVideoMetadata

Получить метаданные видео.

```bash
grpcurl -plaintext -d '{
  "video_id": "video-001-greetings"
}' localhost:50054 video.v1.VideoService/GetVideoMetadata
```

### ListVideos

Получить список видео.

```bash
grpcurl -plaintext -d '{
  "page": 1,
  "page_size": 10,
  "status": "active"
}' localhost:50054 video.v1.VideoService/ListVideos
```

### DeleteVideo

Удалить видео (soft delete).

```bash
grpcurl -plaintext -d '{
  "video_id": "video-001-greetings"
}' localhost:50054 video.v1.VideoService/DeleteVideo
```

## MinIO Console

Доступ к MinIO Console UI:

```
URL: http://localhost:9001
Username: minioadmin
Password: minioadmin
```

## База данных

### Схема videos.videos

| Поле | Тип | Описание |
|------|-----|----------|
| id | UUID | Первичный ключ |
| title | VARCHAR(255) | Название видео |
| description | TEXT | Описание |
| storage_key | VARCHAR(500) | Путь в MinIO |
| bucket_name | VARCHAR(100) | Bucket name |
| content_type | VARCHAR(100) | MIME type |
| size_bytes | BIGINT | Размер файла |
| duration_seconds | INT | Длительность |
| resolution | VARCHAR(20) | Качество (720p, 1080p) |
| thumbnail_url | TEXT | URL превью |
| uploaded_by | UUID | ID загрузившего |
| status | VARCHAR(50) | active/processing/deleted |
| created_at | TIMESTAMP | Дата создания |
| updated_at | TIMESTAMP | Дата обновления |
| deleted_at | TIMESTAMP | Дата удаления |

## Интеграция с Course Service

Course Service использует Video Service для получения signed URLs:

```go
// Course Service вызывает Video Service
videoURL, err := videoClient.GetVideoURL(ctx, videoID, userID)

// Возвращает временный URL студенту
return &GetStepContentResponse{
    Step: step,
    VideoUrl: videoURL,
}
```

## Переход на AWS S3

Для перехода на AWS S3 в production достаточно изменить конфигурацию:

```bash
# Production .env
MINIO_ENDPOINT=s3.amazonaws.com
MINIO_ACCESS_KEY=${AWS_ACCESS_KEY_ID}
MINIO_SECRET_KEY=${AWS_SECRET_ACCESS_KEY}
MINIO_USE_SSL=true
MINIO_REGION=us-east-1
MINIO_BUCKET=my-production-videos
```

Код остается тот же - MinIO SDK совместим с AWS S3!

## Структура проекта

```
services/video-service/
├── cmd/
│   └── main.go                 # Точка входа
├── internal/
│   ├── app/                    # Инициализация
│   ├── config/                 # Конфигурация
│   ├── model/                  # Доменные модели
│   ├── repository/             # Работа с БД
│   ├── storage/                # MinIO клиент
│   ├── service/                # Бизнес-логика
│   ├── converter/              # proto ↔ model
│   └── api/                    # gRPC handlers
├── migrations/                 # SQL миграции
├── seeds/                      # Тестовые данные
├── go.mod
└── .env.template
```

## Troubleshooting

### MinIO не запускается

```bash
# Проверить логи
task logs-video

# Пересоздать контейнер
task down-video
task up-video
```

### Ошибка подключения к PostgreSQL

```bash
# Проверить что пользователь создан
PGPASSWORD=admin psql -h localhost -p 5432 -U admin -d elearning \
  -c "\du video_user"

# Проверить схему
PGPASSWORD=video_pass psql -h localhost -p 5432 -U video_user -d elearning \
  -c "\dn videos"
```

### Видео не загружается

```bash
# Проверить bucket в MinIO
docker exec elearning-minio mc ls myminio/videos

# Создать bucket вручную если нужно
docker exec elearning-minio mc mb myminio/videos
```

## Следующие шаги

1. Интегрировать с Course Service (заменить MockVideoClient)
2. Добавить транскодирование видео (FFmpeg)
3. Генерация thumbnails
4. Добавить аналитику просмотров
5. Реализовать CDN интеграцию для production

## Лицензия

MIT
