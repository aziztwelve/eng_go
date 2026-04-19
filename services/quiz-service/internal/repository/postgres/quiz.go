package postgres

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/quiz-service/internal/model"
	"github.com/elearning/quiz-service/internal/repository"
)

type quizRepository struct {
	db *pgxpool.Pool
}

// NewQuizRepository создает новый репозиторий для квизов
func NewQuizRepository(db *pgxpool.Pool) repository.QuizRepository {
	return &quizRepository{db: db}
}

func (r *quizRepository) Create(ctx context.Context, quiz *model.Quiz) error {
	query := `
		INSERT INTO quizzes (
			id, lesson_id, title, description, time_limit_minutes,
			max_attempts, passing_score_percentage, shuffle_questions,
			show_correct_answers, is_required
		) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)
		RETURNING created_at, updated_at
	`

	return r.db.QueryRow(ctx, query,
		quiz.ID, quiz.LessonID, quiz.Title, quiz.Description, quiz.TimeLimitMinutes,
		quiz.MaxAttempts, quiz.PassingScorePercentage, quiz.ShuffleQuestions,
		quiz.ShowCorrectAnswers, quiz.IsRequired,
	).Scan(&quiz.CreatedAt, &quiz.UpdatedAt)
}

func (r *quizRepository) GetByID(ctx context.Context, id string) (*model.Quiz, error) {
	query := `
		SELECT id, lesson_id, title, description, time_limit_minutes,
			max_attempts, passing_score_percentage, shuffle_questions,
			show_correct_answers, is_required, created_at, updated_at
		FROM quizzes
		WHERE id = $1
	`

	quiz := &model.Quiz{}
	err := r.db.QueryRow(ctx, query, id).Scan(
		&quiz.ID, &quiz.LessonID, &quiz.Title, &quiz.Description, &quiz.TimeLimitMinutes,
		&quiz.MaxAttempts, &quiz.PassingScorePercentage, &quiz.ShuffleQuestions,
		&quiz.ShowCorrectAnswers, &quiz.IsRequired, &quiz.CreatedAt, &quiz.UpdatedAt,
	)
	if err != nil {
		return nil, fmt.Errorf("failed to get quiz: %w", err)
	}

	return quiz, nil
}

func (r *quizRepository) GetByLessonID(ctx context.Context, lessonID string) ([]*model.Quiz, error) {
	query := `
		SELECT id, lesson_id, title, description, time_limit_minutes,
			max_attempts, passing_score_percentage, shuffle_questions,
			show_correct_answers, is_required, created_at, updated_at
		FROM quizzes
		WHERE lesson_id = $1
		ORDER BY created_at ASC
	`

	rows, err := r.db.Query(ctx, query, lessonID)
	if err != nil {
		return nil, fmt.Errorf("failed to get quizzes by lesson: %w", err)
	}
	defer rows.Close()

	var quizzes []*model.Quiz
	for rows.Next() {
		quiz := &model.Quiz{}
		err := rows.Scan(
			&quiz.ID, &quiz.LessonID, &quiz.Title, &quiz.Description, &quiz.TimeLimitMinutes,
			&quiz.MaxAttempts, &quiz.PassingScorePercentage, &quiz.ShuffleQuestions,
			&quiz.ShowCorrectAnswers, &quiz.IsRequired, &quiz.CreatedAt, &quiz.UpdatedAt,
		)
		if err != nil {
			return nil, fmt.Errorf("failed to scan quiz: %w", err)
		}
		quizzes = append(quizzes, quiz)
	}

	return quizzes, nil
}

func (r *quizRepository) Update(ctx context.Context, quiz *model.Quiz) error {
	query := `
		UPDATE quizzes
		SET title = $2, description = $3, time_limit_minutes = $4,
			max_attempts = $5, passing_score_percentage = $6,
			shuffle_questions = $7, show_correct_answers = $8,
			is_required = $9, updated_at = NOW()
		WHERE id = $1
		RETURNING updated_at
	`

	return r.db.QueryRow(ctx, query,
		quiz.ID, quiz.Title, quiz.Description, quiz.TimeLimitMinutes,
		quiz.MaxAttempts, quiz.PassingScorePercentage, quiz.ShuffleQuestions,
		quiz.ShowCorrectAnswers, quiz.IsRequired,
	).Scan(&quiz.UpdatedAt)
}

func (r *quizRepository) Delete(ctx context.Context, id string) error {
	query := `DELETE FROM quizzes WHERE id = $1`
	_, err := r.db.Exec(ctx, query, id)
	return err
}

func (r *quizRepository) List(ctx context.Context, limit, offset int) ([]*model.Quiz, error) {
	query := `
		SELECT id, lesson_id, title, description, time_limit_minutes,
			max_attempts, passing_score_percentage, shuffle_questions,
			show_correct_answers, is_required, created_at, updated_at
		FROM quizzes
		ORDER BY created_at DESC
		LIMIT $1 OFFSET $2
	`

	rows, err := r.db.Query(ctx, query, limit, offset)
	if err != nil {
		return nil, fmt.Errorf("failed to list quizzes: %w", err)
	}
	defer rows.Close()

	var quizzes []*model.Quiz
	for rows.Next() {
		quiz := &model.Quiz{}
		err := rows.Scan(
			&quiz.ID, &quiz.LessonID, &quiz.Title, &quiz.Description, &quiz.TimeLimitMinutes,
			&quiz.MaxAttempts, &quiz.PassingScorePercentage, &quiz.ShuffleQuestions,
			&quiz.ShowCorrectAnswers, &quiz.IsRequired, &quiz.CreatedAt, &quiz.UpdatedAt,
		)
		if err != nil {
			return nil, fmt.Errorf("failed to scan quiz: %w", err)
		}
		quizzes = append(quizzes, quiz)
	}

	return quizzes, nil
}

func (r *quizRepository) GetWithQuestions(ctx context.Context, quizID string) (*model.QuizWithQuestions, error) {
	// Получаем квиз
	quiz, err := r.GetByID(ctx, quizID)
	if err != nil {
		return nil, err
	}

	// Получаем вопросы с ответами
	questionRepo := NewQuestionRepository(r.db)
	questions, err := questionRepo.GetAllWithAnswers(ctx, quizID)
	if err != nil {
		return nil, err
	}

	return &model.QuizWithQuestions{
		Quiz:      *quiz,
		Questions: questions,
	}, nil
}
