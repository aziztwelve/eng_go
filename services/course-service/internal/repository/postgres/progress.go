package postgres

import (
	"context"
	"database/sql"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

type progressRepository struct {
	pool *pgxpool.Pool
}

// NewProgressRepository создает новый экземпляр репозитория прогресса
func NewProgressRepository(pool *pgxpool.Pool) repository.ProgressRepository {
	return &progressRepository{pool: pool}
}

// nullStringValue: для *string возвращает nil-friendly значение для PG.
func nullStringValue(s *string) interface{} {
	if s == nil || *s == "" {
		return nil
	}
	return *s
}

// CreateStepProgress создает новую запись прогресса по шагу.
// source_type / source_id выставляются один раз при создании; ON CONFLICT
// их не перезаписывает.
func (r *progressRepository) CreateStepProgress(ctx context.Context, progress *model.StepProgress) error {
	progress.ID = uuid.New().String()
	progress.CreatedAt = time.Now()
	progress.UpdatedAt = time.Now()

	if progress.SourceType == "" {
		progress.SourceType = model.SourceTypeCourse
	}

	query := `
		INSERT INTO step_progress (id, user_id, step_id, lesson_id, completed, completed_at, time_spent_seconds, attempts, score, source_type, source_id, created_at, updated_at)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
		ON CONFLICT (user_id, step_id) DO UPDATE SET
			completed = EXCLUDED.completed,
			completed_at = EXCLUDED.completed_at,
			time_spent_seconds = EXCLUDED.time_spent_seconds,
			attempts = EXCLUDED.attempts,
			score = EXCLUDED.score,
			updated_at = EXCLUDED.updated_at
		RETURNING id, created_at, updated_at
	`

	err := r.pool.QueryRow(ctx, query,
		progress.ID,
		progress.UserID,
		progress.StepID,
		progress.LessonID,
		progress.Completed,
		progress.CompletedAt,
		progress.TimeSpentSeconds,
		progress.Attempts,
		progress.Score,
		string(progress.SourceType),
		nullStringValue(progress.SourceID),
		progress.CreatedAt,
		progress.UpdatedAt,
	).Scan(&progress.ID, &progress.CreatedAt, &progress.UpdatedAt)

	return err
}

// UpdateStepProgress обновляет запись прогресса по шагу.
// source_type / source_id неизменны после первой записи.
func (r *progressRepository) UpdateStepProgress(ctx context.Context, progress *model.StepProgress) error {
	progress.UpdatedAt = time.Now()

	query := `
		UPDATE step_progress
		SET completed = $1, completed_at = $2, time_spent_seconds = $3, attempts = $4, score = $5, updated_at = $6
		WHERE user_id = $7 AND step_id = $8
	`

	_, err := r.pool.Exec(ctx, query,
		progress.Completed,
		progress.CompletedAt,
		progress.TimeSpentSeconds,
		progress.Attempts,
		progress.Score,
		progress.UpdatedAt,
		progress.UserID,
		progress.StepID,
	)

	return err
}

// GetStepProgress получает прогресс по шагу
func (r *progressRepository) GetStepProgress(ctx context.Context, userID, stepID string) (*model.StepProgress, error) {
	query := `
		SELECT id, user_id, step_id, lesson_id, completed, completed_at, time_spent_seconds, attempts, score, source_type, source_id, created_at, updated_at
		FROM step_progress
		WHERE user_id = $1 AND step_id = $2
	`

	progress := &model.StepProgress{}
	var sourceType string
	var sourceID sql.NullString
	err := r.pool.QueryRow(ctx, query, userID, stepID).Scan(
		&progress.ID,
		&progress.UserID,
		&progress.StepID,
		&progress.LessonID,
		&progress.Completed,
		&progress.CompletedAt,
		&progress.TimeSpentSeconds,
		&progress.Attempts,
		&progress.Score,
		&sourceType,
		&sourceID,
		&progress.CreatedAt,
		&progress.UpdatedAt,
	)

	if err == pgx.ErrNoRows {
		return nil, nil
	}

	if err != nil {
		return nil, err
	}

	progress.SourceType = model.SourceType(sourceType)
	if sourceID.Valid {
		v := sourceID.String
		progress.SourceID = &v
	}
	return progress, nil
}

// ListStepProgressByLesson получает список прогресса по шагам урока
func (r *progressRepository) ListStepProgressByLesson(ctx context.Context, userID, lessonID string) ([]*model.StepProgress, error) {
	query := `
		SELECT id, user_id, step_id, lesson_id, completed, completed_at, time_spent_seconds, attempts, score, source_type, source_id, created_at, updated_at
		FROM step_progress
		WHERE user_id = $1 AND lesson_id = $2
		ORDER BY created_at ASC
	`

	rows, err := r.pool.Query(ctx, query, userID, lessonID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var progresses []*model.StepProgress
	for rows.Next() {
		progress := &model.StepProgress{}
		var sourceType string
		var sourceID sql.NullString
		err := rows.Scan(
			&progress.ID,
			&progress.UserID,
			&progress.StepID,
			&progress.LessonID,
			&progress.Completed,
			&progress.CompletedAt,
			&progress.TimeSpentSeconds,
			&progress.Attempts,
			&progress.Score,
			&sourceType,
			&sourceID,
			&progress.CreatedAt,
			&progress.UpdatedAt,
		)
		if err != nil {
			return nil, err
		}
		progress.SourceType = model.SourceType(sourceType)
		if sourceID.Valid {
			v := sourceID.String
			progress.SourceID = &v
		}
		progresses = append(progresses, progress)
	}

	return progresses, nil
}

// CreateLessonProgress создает новую запись прогресса по уроку
func (r *progressRepository) CreateLessonProgress(ctx context.Context, progress *model.LessonProgress) error {
	progress.ID = uuid.New().String()
	progress.StartedAt = time.Now()
	progress.LastActivityAt = time.Now()

	query := `
		INSERT INTO lesson_progress (id, user_id, lesson_id, course_id, total_steps, completed_steps, progress_percentage, started_at, last_activity_at, completed_at)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)
		ON CONFLICT (user_id, lesson_id) DO UPDATE SET
			total_steps = EXCLUDED.total_steps,
			completed_steps = EXCLUDED.completed_steps,
			progress_percentage = EXCLUDED.progress_percentage,
			last_activity_at = EXCLUDED.last_activity_at,
			completed_at = EXCLUDED.completed_at
		RETURNING id, started_at, last_activity_at
	`

	err := r.pool.QueryRow(ctx, query,
		progress.ID,
		progress.UserID,
		progress.LessonID,
		nullStringValue(progress.CourseID),
		progress.TotalSteps,
		progress.CompletedSteps,
		progress.ProgressPercentage,
		progress.StartedAt,
		progress.LastActivityAt,
		progress.CompletedAt,
	).Scan(&progress.ID, &progress.StartedAt, &progress.LastActivityAt)

	return err
}

// UpdateLessonProgress обновляет запись прогресса по уроку
func (r *progressRepository) UpdateLessonProgress(ctx context.Context, progress *model.LessonProgress) error {
	progress.LastActivityAt = time.Now()

	query := `
		UPDATE lesson_progress
		SET total_steps = $1, completed_steps = $2, progress_percentage = $3, last_activity_at = $4, completed_at = $5
		WHERE user_id = $6 AND lesson_id = $7
	`

	_, err := r.pool.Exec(ctx, query,
		progress.TotalSteps,
		progress.CompletedSteps,
		progress.ProgressPercentage,
		progress.LastActivityAt,
		progress.CompletedAt,
		progress.UserID,
		progress.LessonID,
	)

	return err
}

// GetLessonProgress получает прогресс по уроку
func (r *progressRepository) GetLessonProgress(ctx context.Context, userID, lessonID string) (*model.LessonProgress, error) {
	query := `
		SELECT id, user_id, lesson_id, course_id, total_steps, completed_steps, progress_percentage, started_at, last_activity_at, completed_at
		FROM lesson_progress
		WHERE user_id = $1 AND lesson_id = $2
	`

	progress := &model.LessonProgress{}
	var courseID sql.NullString
	err := r.pool.QueryRow(ctx, query, userID, lessonID).Scan(
		&progress.ID,
		&progress.UserID,
		&progress.LessonID,
		&courseID,
		&progress.TotalSteps,
		&progress.CompletedSteps,
		&progress.ProgressPercentage,
		&progress.StartedAt,
		&progress.LastActivityAt,
		&progress.CompletedAt,
	)

	if err == pgx.ErrNoRows {
		return nil, nil
	}

	if err != nil {
		return nil, err
	}

	if courseID.Valid {
		v := courseID.String
		progress.CourseID = &v
	}
	return progress, nil
}

// ListLessonProgressByCourse получает список прогресса по урокам курса
func (r *progressRepository) ListLessonProgressByCourse(ctx context.Context, userID, courseID string) ([]*model.LessonProgress, error) {
	query := `
		SELECT id, user_id, lesson_id, course_id, total_steps, completed_steps, progress_percentage, started_at, last_activity_at, completed_at
		FROM lesson_progress
		WHERE user_id = $1 AND course_id = $2
		ORDER BY started_at ASC
	`

	rows, err := r.pool.Query(ctx, query, userID, courseID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var progresses []*model.LessonProgress
	for rows.Next() {
		progress := &model.LessonProgress{}
		var cID sql.NullString
		err := rows.Scan(
			&progress.ID,
			&progress.UserID,
			&progress.LessonID,
			&cID,
			&progress.TotalSteps,
			&progress.CompletedSteps,
			&progress.ProgressPercentage,
			&progress.StartedAt,
			&progress.LastActivityAt,
			&progress.CompletedAt,
		)
		if err != nil {
			return nil, err
		}
		if cID.Valid {
			v := cID.String
			progress.CourseID = &v
		}
		progresses = append(progresses, progress)
	}

	return progresses, nil
}

// RecalculateLessonProgress пересчитывает прогресс по уроку.
// Поддерживает standalone-уроки (module_id IS NULL → course_id = nil).
func (r *progressRepository) RecalculateLessonProgress(ctx context.Context, userID, lessonID string) (*model.LessonProgress, error) {
	// Получаем module_id урока (может быть NULL для standalone)
	var moduleID sql.NullString
	err := r.pool.QueryRow(ctx, `
		SELECT module_id
		FROM lessons
		WHERE id = $1
	`, lessonID).Scan(&moduleID)

	if err != nil {
		return nil, err
	}

	// Если урок принадлежит модулю — резолвим course_id через модуль
	var courseID *string
	if moduleID.Valid {
		var cID string
		if err := r.pool.QueryRow(ctx, `
			SELECT course_id
			FROM modules
			WHERE id = $1
		`, moduleID.String).Scan(&cID); err != nil {
			return nil, err
		}
		courseID = &cID
	}

	// Подсчитываем общее количество шагов в уроке
	var totalSteps int32
	if err := r.pool.QueryRow(ctx, `
		SELECT COUNT(*) FROM steps WHERE lesson_id = $1
	`, lessonID).Scan(&totalSteps); err != nil {
		return nil, err
	}

	// Подсчитываем завершенные шаги
	var completedSteps int32
	if err := r.pool.QueryRow(ctx, `
		SELECT COUNT(*) FROM step_progress
		WHERE user_id = $1 AND lesson_id = $2 AND completed = true
	`, userID, lessonID).Scan(&completedSteps); err != nil {
		return nil, err
	}

	// Вычисляем процент прогресса
	var progressPercentage float64
	if totalSteps > 0 {
		progressPercentage = (float64(completedSteps) / float64(totalSteps)) * 100
	}

	// Определяем completed_at
	var completedAt *time.Time
	if progressPercentage >= 100 {
		now := time.Now()
		completedAt = &now
	}

	// Создаем или обновляем lesson_progress
	progress := &model.LessonProgress{
		UserID:             userID,
		LessonID:           lessonID,
		CourseID:           courseID,
		TotalSteps:         totalSteps,
		CompletedSteps:     completedSteps,
		ProgressPercentage: progressPercentage,
		CompletedAt:        completedAt,
	}

	// Проверяем существует ли запись
	existing, err := r.GetLessonProgress(ctx, userID, lessonID)
	if err != nil {
		return nil, err
	}

	if existing == nil {
		err = r.CreateLessonProgress(ctx, progress)
	} else {
		progress.ID = existing.ID
		progress.StartedAt = existing.StartedAt
		// Не перезаписываем completed_at если уже был завершен
		if existing.CompletedAt != nil {
			progress.CompletedAt = existing.CompletedAt
		}
		err = r.UpdateLessonProgress(ctx, progress)
	}

	if err != nil {
		return nil, err
	}

	return progress, nil
}
