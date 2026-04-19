package postgres

import (
	"context"
	"fmt"
	"strings"

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

func (r *videoRepository) List(ctx context.Context, page, pageSize int, status, search string) ([]*model.Video, int, error) {
	offset := (page - 1) * pageSize

	// Построение WHERE условия и аргументов
	whereClause := "WHERE deleted_at IS NULL"
	var countArgs []interface{}
	var filterArgs []interface{}
	filterArgPos := 3 // $1 и $2 зарезервированы для LIMIT и OFFSET

	if status != "" {
		whereClause += fmt.Sprintf(" AND status = $%d", filterArgPos)
		countArgs = append(countArgs, status)
		filterArgs = append(filterArgs, status)
		filterArgPos++
	}

	if search != "" {
		whereClause += fmt.Sprintf(" AND (title ILIKE $%d OR description ILIKE $%d)", filterArgPos, filterArgPos)
		countArgs = append(countArgs, "%"+search+"%")
		filterArgs = append(filterArgs, "%"+search+"%")
		filterArgPos++
	}

	// Получение общего количества (только фильтры, без LIMIT/OFFSET)
	countQuery := fmt.Sprintf("SELECT COUNT(*) FROM videos %s", whereClause)
	// Для count query нужно перенумеровать параметры с $1
	countQueryRenumbered := whereClause
	if status != "" {
		countQueryRenumbered = strings.Replace(countQueryRenumbered, "$3", "$1", 1)
		if search != "" {
			countQueryRenumbered = strings.Replace(countQueryRenumbered, "$4", "$2", -1)
		}
	} else if search != "" {
		countQueryRenumbered = strings.Replace(countQueryRenumbered, "$3", "$1", -1)
	}
	countQuery = fmt.Sprintf("SELECT COUNT(*) FROM videos %s", countQueryRenumbered)
	
	var total int
	err := r.pool.QueryRow(ctx, countQuery, countArgs...).Scan(&total)
	if err != nil {
		return nil, 0, errors.Wrap(err, "failed to count videos")
	}

	// Получение списка (параметры: $1=limit, $2=offset, $3+=filters)
	query := fmt.Sprintf(`
		SELECT id, title, description, storage_key, bucket_name, content_type, size_bytes,
		       duration_seconds, resolution, thumbnail_url, status, uploaded_by,
		       created_at, updated_at, deleted_at
		FROM videos
		%s
		ORDER BY created_at DESC
		LIMIT $1 OFFSET $2
	`, whereClause)

	// Собираем все аргументы: LIMIT, OFFSET, затем фильтры
	queryArgs := append([]interface{}{pageSize, offset}, filterArgs...)

	rows, err := r.pool.Query(ctx, query, queryArgs...)
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
