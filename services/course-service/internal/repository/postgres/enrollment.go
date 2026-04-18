package postgres

import (
	"context"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

type enrollmentRepository struct {
	pool *pgxpool.Pool
}

// NewEnrollmentRepository создает новый экземпляр репозитория записей
func NewEnrollmentRepository(pool *pgxpool.Pool) repository.EnrollmentRepository {
	return &enrollmentRepository{pool: pool}
}

// Create создает новую запись на курс
func (r *enrollmentRepository) Create(ctx context.Context, enrollment *model.Enrollment) error {
	enrollment.ID = uuid.New().String()
	enrollment.EnrolledAt = time.Now()

	query := `
		INSERT INTO enrollments (id, user_id, course_id, status, enrolled_at, access_until)
		VALUES ($1, $2, $3, $4, $5, $6)
	`

	_, err := r.pool.Exec(ctx, query,
		enrollment.ID,
		enrollment.UserID,
		enrollment.CourseID,
		enrollment.Status,
		enrollment.EnrolledAt,
		enrollment.AccessUntil,
	)

	return err
}

// GetByID получает запись по ID
func (r *enrollmentRepository) GetByID(ctx context.Context, id string) (*model.Enrollment, error) {
	query := `
		SELECT id, user_id, course_id, status, enrolled_at, access_until
		FROM enrollments
		WHERE id = $1
	`

	enrollment := &model.Enrollment{}
	err := r.pool.QueryRow(ctx, query, id).Scan(
		&enrollment.ID,
		&enrollment.UserID,
		&enrollment.CourseID,
		&enrollment.Status,
		&enrollment.EnrolledAt,
		&enrollment.AccessUntil,
	)

	if err != nil {
		return nil, err
	}

	return enrollment, nil
}

// GetByUserAndCourse получает запись по пользователю и курсу
func (r *enrollmentRepository) GetByUserAndCourse(ctx context.Context, userID, courseID string) (*model.Enrollment, error) {
	query := `
		SELECT id, user_id, course_id, status, enrolled_at, access_until
		FROM enrollments
		WHERE user_id = $1 AND course_id = $2
	`

	enrollment := &model.Enrollment{}
	err := r.pool.QueryRow(ctx, query, userID, courseID).Scan(
		&enrollment.ID,
		&enrollment.UserID,
		&enrollment.CourseID,
		&enrollment.Status,
		&enrollment.EnrolledAt,
		&enrollment.AccessUntil,
	)

	if err != nil {
		return nil, err
	}

	return enrollment, nil
}

// CheckAccess проверяет доступ пользователя к курсу
func (r *enrollmentRepository) CheckAccess(ctx context.Context, userID, courseID string) (bool, error) {
	query := `
		SELECT EXISTS(
			SELECT 1 FROM enrollments
			WHERE user_id = $1 
			  AND course_id = $2 
			  AND status = 'active'
			  AND (access_until IS NULL OR access_until > NOW())
		)
	`

	var hasAccess bool
	err := r.pool.QueryRow(ctx, query, userID, courseID).Scan(&hasAccess)
	return hasAccess, err
}

// ListByUserID возвращает список записей пользователя
func (r *enrollmentRepository) ListByUserID(ctx context.Context, userID string) ([]*model.Enrollment, error) {
	query := `
		SELECT id, user_id, course_id, status, enrolled_at, access_until
		FROM enrollments
		WHERE user_id = $1
		ORDER BY enrolled_at DESC
	`

	rows, err := r.pool.Query(ctx, query, userID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var enrollments []*model.Enrollment
	for rows.Next() {
		enrollment := &model.Enrollment{}
		err := rows.Scan(
			&enrollment.ID,
			&enrollment.UserID,
			&enrollment.CourseID,
			&enrollment.Status,
			&enrollment.EnrolledAt,
			&enrollment.AccessUntil,
		)
		if err != nil {
			return nil, err
		}
		enrollments = append(enrollments, enrollment)
	}

	return enrollments, nil
}

// ListByCourseID возвращает список записей на курс
func (r *enrollmentRepository) ListByCourseID(ctx context.Context, courseID string) ([]*model.Enrollment, error) {
	query := `
		SELECT id, user_id, course_id, status, enrolled_at, access_until
		FROM enrollments
		WHERE course_id = $1
		ORDER BY enrolled_at DESC
	`

	rows, err := r.pool.Query(ctx, query, courseID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var enrollments []*model.Enrollment
	for rows.Next() {
		enrollment := &model.Enrollment{}
		err := rows.Scan(
			&enrollment.ID,
			&enrollment.UserID,
			&enrollment.CourseID,
			&enrollment.Status,
			&enrollment.EnrolledAt,
			&enrollment.AccessUntil,
		)
		if err != nil {
			return nil, err
		}
		enrollments = append(enrollments, enrollment)
	}

	return enrollments, nil
}
