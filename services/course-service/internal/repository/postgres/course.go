package postgres

import (
	"context"
	"fmt"
	"strings"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

type courseRepository struct {
	pool *pgxpool.Pool
}

// NewCourseRepository создает новый экземпляр репозитория курсов
func NewCourseRepository(pool *pgxpool.Pool) repository.CourseRepository {
	return &courseRepository{pool: pool}
}

// Create создает новый курс
func (r *courseRepository) Create(ctx context.Context, course *model.Course) error {
	course.ID = uuid.New().String()

	query := `
		INSERT INTO courses (id, title, description, price, instructor_id, level, language, thumbnail_url, is_published)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
		RETURNING created_at, updated_at
	`

	return r.pool.QueryRow(ctx, query,
		course.ID,
		course.Title,
		course.Description,
		course.Price,
		course.InstructorID,
		course.Level,
		course.Language,
		course.ThumbnailURL,
		course.IsPublished,
	).Scan(&course.CreatedAt, &course.UpdatedAt)
}

// GetByID получает курс по ID
func (r *courseRepository) GetByID(ctx context.Context, id string) (*model.Course, error) {
	query := `
		SELECT id, title, description, price, instructor_id, level, language, 
		       thumbnail_url, is_published, created_at, updated_at
		FROM courses
		WHERE id = $1
	`

	course := &model.Course{}
	err := r.pool.QueryRow(ctx, query, id).Scan(
		&course.ID,
		&course.Title,
		&course.Description,
		&course.Price,
		&course.InstructorID,
		&course.Level,
		&course.Language,
		&course.ThumbnailURL,
		&course.IsPublished,
		&course.CreatedAt,
		&course.UpdatedAt,
	)

	if err != nil {
		return nil, err
	}

	return course, nil
}

// Update обновляет курс
func (r *courseRepository) Update(ctx context.Context, course *model.Course) error {
	query := `
		UPDATE courses
		SET title = $2, description = $3, price = $4, level = $5, 
		    language = $6, thumbnail_url = $7
		WHERE id = $1
		RETURNING updated_at
	`

	return r.pool.QueryRow(ctx, query,
		course.ID,
		course.Title,
		course.Description,
		course.Price,
		course.Level,
		course.Language,
		course.ThumbnailURL,
	).Scan(&course.UpdatedAt)
}

// Delete удаляет курс
func (r *courseRepository) Delete(ctx context.Context, id string) error {
	query := `DELETE FROM courses WHERE id = $1`
	_, err := r.pool.Exec(ctx, query, id)
	return err
}

// List возвращает список курсов с фильтрацией
func (r *courseRepository) List(ctx context.Context, filters repository.ListFilters) ([]*model.Course, int, error) {
	var conditions []string
	var args []interface{}
	argPos := 1

	// Фильтры
	if filters.Language != nil {
		conditions = append(conditions, fmt.Sprintf("language = $%d", argPos))
		args = append(args, *filters.Language)
		argPos++
	}

	if filters.Level != nil {
		conditions = append(conditions, fmt.Sprintf("level = $%d", argPos))
		args = append(args, *filters.Level)
		argPos++
	}

	if filters.MinPrice != nil {
		conditions = append(conditions, fmt.Sprintf("price >= $%d", argPos))
		args = append(args, *filters.MinPrice)
		argPos++
	}

	if filters.MaxPrice != nil {
		conditions = append(conditions, fmt.Sprintf("price <= $%d", argPos))
		args = append(args, *filters.MaxPrice)
		argPos++
	}

	// Только опубликованные курсы
	conditions = append(conditions, "is_published = true")

	whereClause := ""
	if len(conditions) > 0 {
		whereClause = "WHERE " + strings.Join(conditions, " AND ")
	}

	// Подсчет общего количества
	countQuery := fmt.Sprintf("SELECT COUNT(*) FROM courses %s", whereClause)
	var total int
	err := r.pool.QueryRow(ctx, countQuery, args...).Scan(&total)
	if err != nil {
		return nil, 0, err
	}

	// Получение курсов с пагинацией
	query := fmt.Sprintf(`
		SELECT id, title, description, price, instructor_id, level, language, 
		       thumbnail_url, is_published, created_at, updated_at
		FROM courses
		%s
		ORDER BY created_at DESC
		LIMIT $%d OFFSET $%d
	`, whereClause, argPos, argPos+1)

	args = append(args, filters.Limit, filters.Offset)

	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	var courses []*model.Course
	for rows.Next() {
		course := &model.Course{}
		err := rows.Scan(
			&course.ID,
			&course.Title,
			&course.Description,
			&course.Price,
			&course.InstructorID,
			&course.Level,
			&course.Language,
			&course.ThumbnailURL,
			&course.IsPublished,
			&course.CreatedAt,
			&course.UpdatedAt,
		)
		if err != nil {
			return nil, 0, err
		}
		courses = append(courses, course)
	}

	return courses, total, nil
}

// Publish публикует или снимает с публикации курс
func (r *courseRepository) Publish(ctx context.Context, id string, isPublished bool) error {
	query := `UPDATE courses SET is_published = $2 WHERE id = $1`
	_, err := r.pool.Exec(ctx, query, id, isPublished)
	return err
}

// CreateModule создает новый модуль
func (r *courseRepository) CreateModule(ctx context.Context, module *model.Module) error {
	module.ID = uuid.New().String()

	query := `
		INSERT INTO modules (id, course_id, title, description, order_index)
		VALUES ($1, $2, $3, $4, $5)
		RETURNING created_at, updated_at
	`

	return r.pool.QueryRow(ctx, query,
		module.ID,
		module.CourseID,
		module.Title,
		module.Description,
		module.OrderIndex,
	).Scan(&module.CreatedAt, &module.UpdatedAt)
}

// GetModuleByID получает модуль по ID
func (r *courseRepository) GetModuleByID(ctx context.Context, id string) (*model.Module, error) {
	query := `
		SELECT id, course_id, title, description, order_index, created_at, updated_at
		FROM modules
		WHERE id = $1
	`

	module := &model.Module{}
	err := r.pool.QueryRow(ctx, query, id).Scan(
		&module.ID,
		&module.CourseID,
		&module.Title,
		&module.Description,
		&module.OrderIndex,
		&module.CreatedAt,
		&module.UpdatedAt,
	)

	if err != nil {
		return nil, err
	}

	return module, nil
}

// UpdateModule обновляет модуль
func (r *courseRepository) UpdateModule(ctx context.Context, module *model.Module) error {
	query := `
		UPDATE modules
		SET title = $2, description = $3, order_index = $4
		WHERE id = $1
		RETURNING updated_at
	`

	return r.pool.QueryRow(ctx, query,
		module.ID,
		module.Title,
		module.Description,
		module.OrderIndex,
	).Scan(&module.UpdatedAt)
}

// DeleteModule удаляет модуль
func (r *courseRepository) DeleteModule(ctx context.Context, id string) error {
	query := `DELETE FROM modules WHERE id = $1`
	_, err := r.pool.Exec(ctx, query, id)
	return err
}

// ListModulesByCourseID возвращает список модулей курса
func (r *courseRepository) ListModulesByCourseID(ctx context.Context, courseID string) ([]*model.Module, error) {
	query := `
		SELECT id, course_id, title, description, order_index, created_at, updated_at
		FROM modules
		WHERE course_id = $1
		ORDER BY order_index ASC
	`

	rows, err := r.pool.Query(ctx, query, courseID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var modules []*model.Module
	for rows.Next() {
		module := &model.Module{}
		err := rows.Scan(
			&module.ID,
			&module.CourseID,
			&module.Title,
			&module.Description,
			&module.OrderIndex,
			&module.CreatedAt,
			&module.UpdatedAt,
		)
		if err != nil {
			return nil, err
		}
		modules = append(modules, module)
	}

	return modules, nil
}

// CreateLesson создает новый урок
func (r *courseRepository) CreateLesson(ctx context.Context, lesson *model.Lesson) error {
	lesson.ID = uuid.New().String()

	query := `
		INSERT INTO lessons (id, module_id, title, description, order_index)
		VALUES ($1, $2, $3, $4, $5)
		RETURNING created_at, updated_at
	`

	return r.pool.QueryRow(ctx, query,
		lesson.ID,
		lesson.ModuleID,
		lesson.Title,
		lesson.Description,
		lesson.OrderIndex,
	).Scan(&lesson.CreatedAt, &lesson.UpdatedAt)
}

// GetLessonByID получает урок по ID
func (r *courseRepository) GetLessonByID(ctx context.Context, id string) (*model.Lesson, error) {
	query := `
		SELECT id, module_id, title, description, order_index, created_at, updated_at
		FROM lessons
		WHERE id = $1
	`

	lesson := &model.Lesson{}
	err := r.pool.QueryRow(ctx, query, id).Scan(
		&lesson.ID,
		&lesson.ModuleID,
		&lesson.Title,
		&lesson.Description,
		&lesson.OrderIndex,
		&lesson.CreatedAt,
		&lesson.UpdatedAt,
	)

	if err != nil {
		return nil, err
	}

	return lesson, nil
}

// UpdateLesson обновляет урок
func (r *courseRepository) UpdateLesson(ctx context.Context, lesson *model.Lesson) error {
	query := `
		UPDATE lessons
		SET title = $2, description = $3, order_index = $4
		WHERE id = $1
		RETURNING updated_at
	`

	return r.pool.QueryRow(ctx, query,
		lesson.ID,
		lesson.Title,
		lesson.Description,
		lesson.OrderIndex,
	).Scan(&lesson.UpdatedAt)
}

// DeleteLesson удаляет урок
func (r *courseRepository) DeleteLesson(ctx context.Context, id string) error {
	query := `DELETE FROM lessons WHERE id = $1`
	_, err := r.pool.Exec(ctx, query, id)
	return err
}

// ListLessonsByModuleID возвращает список уроков модуля
func (r *courseRepository) ListLessonsByModuleID(ctx context.Context, moduleID string) ([]*model.Lesson, error) {
	query := `
		SELECT id, module_id, title, description, order_index, created_at, updated_at
		FROM lessons
		WHERE module_id = $1
		ORDER BY order_index ASC
	`

	rows, err := r.pool.Query(ctx, query, moduleID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var lessons []*model.Lesson
	for rows.Next() {
		lesson := &model.Lesson{}
		err := rows.Scan(
			&lesson.ID,
			&lesson.ModuleID,
			&lesson.Title,
			&lesson.Description,
			&lesson.OrderIndex,
			&lesson.CreatedAt,
			&lesson.UpdatedAt,
		)
		if err != nil {
			return nil, err
		}
		lessons = append(lessons, lesson)
	}

	return lessons, nil
}

// CreateStep создает новый шаг
func (r *courseRepository) CreateStep(ctx context.Context, step *model.Step) error {
	step.ID = uuid.New().String()

	query := `
		INSERT INTO steps (id, lesson_id, type, title, content, order_index)
		VALUES ($1, $2, $3, $4, $5, $6)
		RETURNING created_at, updated_at
	`

	return r.pool.QueryRow(ctx, query,
		step.ID,
		step.LessonID,
		step.Type,
		step.Title,
		step.Content,
		step.OrderIndex,
	).Scan(&step.CreatedAt, &step.UpdatedAt)
}

// GetStepByID получает шаг по ID
func (r *courseRepository) GetStepByID(ctx context.Context, id string) (*model.Step, error) {
	query := `
		SELECT id, lesson_id, type, title, content, order_index, created_at, updated_at
		FROM steps
		WHERE id = $1
	`

	step := &model.Step{}
	var stepType string
	err := r.pool.QueryRow(ctx, query, id).Scan(
		&step.ID,
		&step.LessonID,
		&stepType,
		&step.Title,
		&step.Content,
		&step.OrderIndex,
		&step.CreatedAt,
		&step.UpdatedAt,
	)

	if err != nil {
		return nil, err
	}

	step.Type = model.StepType(stepType)
	return step, nil
}

// UpdateStep обновляет шаг
func (r *courseRepository) UpdateStep(ctx context.Context, step *model.Step) error {
	query := `
		UPDATE steps
		SET type = $2, title = $3, content = $4, order_index = $5
		WHERE id = $1
		RETURNING updated_at
	`

	return r.pool.QueryRow(ctx, query,
		step.ID,
		step.Type,
		step.Title,
		step.Content,
		step.OrderIndex,
	).Scan(&step.UpdatedAt)
}

// DeleteStep удаляет шаг
func (r *courseRepository) DeleteStep(ctx context.Context, id string) error {
	query := `DELETE FROM steps WHERE id = $1`
	_, err := r.pool.Exec(ctx, query, id)
	return err
}

// ListStepsByLessonID возвращает список шагов урока
func (r *courseRepository) ListStepsByLessonID(ctx context.Context, lessonID string) ([]*model.Step, error) {
	query := `
		SELECT id, lesson_id, type, title, content, order_index, created_at, updated_at
		FROM steps
		WHERE lesson_id = $1
		ORDER BY order_index ASC
	`

	rows, err := r.pool.Query(ctx, query, lessonID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var steps []*model.Step
	for rows.Next() {
		step := &model.Step{}
		var stepType string
		err := rows.Scan(
			&step.ID,
			&step.LessonID,
			&stepType,
			&step.Title,
			&step.Content,
			&step.OrderIndex,
			&step.CreatedAt,
			&step.UpdatedAt,
		)
		if err != nil {
			return nil, err
		}
		step.Type = model.StepType(stepType)
		steps = append(steps, step)
	}

	return steps, nil
}

// GetCourseWithModules получает курс со всеми модулями
func (r *courseRepository) GetCourseWithModules(ctx context.Context, courseID string) (*model.Course, []*model.Module, error) {
	course, err := r.GetByID(ctx, courseID)
	if err != nil {
		return nil, nil, err
	}

	modules, err := r.ListModulesByCourseID(ctx, courseID)
	if err != nil {
		return nil, nil, err
	}

	return course, modules, nil
}
