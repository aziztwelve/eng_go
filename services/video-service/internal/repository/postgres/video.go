package postgres

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/pkg/errors"

	"github.com/elearning/video-service/internal/model"
	"github.com/elearning/video-service/internal/repository"
)

type videoRepository struct {
	pool *pgxpool.Pool
}

// NewVideoRepository создает новый репозиторий
func NewVideoRepository(pool *pgxpool.Pool) repository.VideoRepository {
	return &videoRepository{pool: pool}
}

func (r *videoRepository) Create(ctx context.Context, video *model.Video) error {
	query := `
		INSERT INTO videos (id, title, description, storage_key, bucket_name, content_type, 
		                  size_bytes, duration_seconds, resolution, thumbnail_url, status, uploaded_by)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
		RETURNING created_at, updated_at
	`

	err := r.pool.QueryRow(ctx, query,
		video.ID, video.Title, video.Description, video.StorageKey, video.BucketName,
		video.ContentType, video.SizeBytes, video.DurationSeconds, video.Resolution,
		video.ThumbnailURL, video.Status, video.UploadedBy,
	).Scan(&video.CreatedAt, &video.UpdatedAt)

	if err != nil {
		return errors.Wrap(err, "failed to create video")
	}

	return nil
}

func (r *videoRepository) GetByID(ctx context.Context, id string) (*model.Video, error) {
	query := `
		SELECT id, title, description, storage_key, bucket_name, content_type, size_bytes,
		       duration_seconds, resolution, thumbnail_url, status, uploaded_by,
		       created_at, updated_at, deleted_at
		FROM videos
		WHERE id = $1 AND deleted_at IS NULL
	`

	video := &model.Video{}
	err := r.pool.QueryRow(ctx, query, id).Scan(
		&video.ID, &video.Title, &video.Description, &video.StorageKey, &video.BucketName,
		&video.ContentType, &video.SizeBytes, &video.DurationSeconds, &video.Resolution,
		&video.ThumbnailURL, &video.Status, &video.UploadedBy,
		&video.CreatedAt, &video.UpdatedAt, &video.DeletedAt,
	)

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, errors.New("video not found")
		}
		return nil, errors.Wrap(err, "failed to get video")
	}

	return video, nil
}

func (r *videoRepository) List(ctx context.Context, page, pageSize int, status string) ([]*model.Video, int, error) {
	offset := (page - 1) * pageSize

	// Построение WHERE условия
	whereClause := "WHERE deleted_at IS NULL"
	args := []interface{}{pageSize, offset}
	argPos := 3

	if status != "" {
		whereClause += fmt.Sprintf(" AND status = $%d", argPos)
		args = append(args, status)
		argPos++
	}

	// Получение общего количества
	countQuery := fmt.Sprintf("SELECT COUNT(*) FROM videos %s", whereClause)
	var total int
	err := r.pool.QueryRow(ctx, countQuery, args[2:]...).Scan(&total)
	if err != nil {
		return nil, 0, errors.Wrap(err, "failed to count videos")
	}

	// Получение списка
	query := fmt.Sprintf(`
		SELECT id, title, description, storage_key, bucket_name, content_type, size_bytes,
		       duration_seconds, resolution, thumbnail_url, status, uploaded_by,
		       created_at, updated_at, deleted_at
		FROM videos
		%s
		ORDER BY created_at DESC
		LIMIT $1 OFFSET $2
	`, whereClause)

	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, errors.Wrap(err, "failed to list videos")
	}
	defer rows.Close()

	videos := make([]*model.Video, 0)
	for rows.Next() {
		video := &model.Video{}
		err := rows.Scan(
			&video.ID, &video.Title, &video.Description, &video.StorageKey, &video.BucketName,
			&video.ContentType, &video.SizeBytes, &video.DurationSeconds, &video.Resolution,
			&video.ThumbnailURL, &video.Status, &video.UploadedBy,
			&video.CreatedAt, &video.UpdatedAt, &video.DeletedAt,
		)
		if err != nil {
			return nil, 0, errors.Wrap(err, "failed to scan video")
		}
		videos = append(videos, video)
	}

	return videos, total, nil
}

func (r *videoRepository) Update(ctx context.Context, video *model.Video) error {
	query := `
		UPDATE videos
		SET title = $2, description = $3, duration_seconds = $4, resolution = $5,
		    thumbnail_url = $6, status = $7
		WHERE id = $1 AND deleted_at IS NULL
	`

	_, err := r.pool.Exec(ctx, query,
		video.ID, video.Title, video.Description, video.DurationSeconds,
		video.Resolution, video.ThumbnailURL, video.Status,
	)

	if err != nil {
		return errors.Wrap(err, "failed to update video")
	}

	return nil
}

func (r *videoRepository) Delete(ctx context.Context, id string) error {
	query := `
		UPDATE videos
		SET deleted_at = NOW(), status = 'deleted'
		WHERE id = $1 AND deleted_at IS NULL
	`

	_, err := r.pool.Exec(ctx, query, id)
	if err != nil {
		return errors.Wrap(err, "failed to delete video")
	}

	return nil
}
