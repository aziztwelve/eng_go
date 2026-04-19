package postgres

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/quiz-service/internal/model"
	"github.com/elearning/quiz-service/internal/repository"
)

type attemptRepository struct {
	db *pgxpool.Pool
}

// NewAttemptRepository создает новый репозиторий для попыток
func NewAttemptRepository(db *pgxpool.Pool) repository.AttemptRepository {
	return &attemptRepository{db: db}
}

func (r *attemptRepository) Create(ctx context.Context, attempt *model.QuizAttempt) error {
	query := `
		INSERT INTO quiz_attempts (
			id, quiz_id, user_id, attempt_number, started_at
		) VALUES ($1, $2, $3, $4, $5)
		RETURNING created_at, updated_at
	`

	return r.db.QueryRow(ctx, query,
		attempt.ID, attempt.QuizID, attempt.UserID,
		attempt.AttemptNumber, attempt.StartedAt,
	).Scan(&attempt.CreatedAt, &attempt.UpdatedAt)
}

func (r *attemptRepository) GetByID(ctx context.Context, id string) (*model.QuizAttempt, error) {
	query := `
		SELECT id, quiz_id, user_id, attempt_number, started_at,
			completed_at, score_percentage, total_points, earned_points,
			is_passed, time_spent_seconds, created_at, updated_at
		FROM quiz_attempts
		WHERE id = $1
	`

	attempt := &model.QuizAttempt{}
	err := r.db.QueryRow(ctx, query, id).Scan(
		&attempt.ID, &attempt.QuizID, &attempt.UserID, &attempt.AttemptNumber,
		&attempt.StartedAt, &attempt.CompletedAt, &attempt.ScorePercentage,
		&attempt.TotalPoints, &attempt.EarnedPoints, &attempt.IsPassed,
		&attempt.TimeSpentSeconds, &attempt.CreatedAt, &attempt.UpdatedAt,
	)
	if err != nil {
		return nil, fmt.Errorf("failed to get attempt: %w", err)
	}

	return attempt, nil
}

func (r *attemptRepository) GetByUserAndQuiz(ctx context.Context, userID, quizID string) ([]*model.QuizAttempt, error) {
	query := `
		SELECT id, quiz_id, user_id, attempt_number, started_at,
			completed_at, score_percentage, total_points, earned_points,
			is_passed, time_spent_seconds, created_at, updated_at
		FROM quiz_attempts
		WHERE user_id = $1 AND quiz_id = $2
		ORDER BY attempt_number DESC
	`

	rows, err := r.db.Query(ctx, query, userID, quizID)
	if err != nil {
		return nil, fmt.Errorf("failed to get attempts: %w", err)
	}
	defer rows.Close()

	var attempts []*model.QuizAttempt
	for rows.Next() {
		attempt := &model.QuizAttempt{}
		err := rows.Scan(
			&attempt.ID, &attempt.QuizID, &attempt.UserID, &attempt.AttemptNumber,
			&attempt.StartedAt, &attempt.CompletedAt, &attempt.ScorePercentage,
			&attempt.TotalPoints, &attempt.EarnedPoints, &attempt.IsPassed,
			&attempt.TimeSpentSeconds, &attempt.CreatedAt, &attempt.UpdatedAt,
		)
		if err != nil {
			return nil, fmt.Errorf("failed to scan attempt: %w", err)
		}
		attempts = append(attempts, attempt)
	}

	return attempts, nil
}

func (r *attemptRepository) Update(ctx context.Context, attempt *model.QuizAttempt) error {
	query := `
		UPDATE quiz_attempts
		SET completed_at = $2, score_percentage = $3, total_points = $4,
			earned_points = $5, is_passed = $6, time_spent_seconds = $7,
			updated_at = NOW()
		WHERE id = $1
		RETURNING updated_at
	`

	return r.db.QueryRow(ctx, query,
		attempt.ID, attempt.CompletedAt, attempt.ScorePercentage,
		attempt.TotalPoints, attempt.EarnedPoints, attempt.IsPassed,
		attempt.TimeSpentSeconds,
	).Scan(&attempt.UpdatedAt)
}

func (r *attemptRepository) Delete(ctx context.Context, id string) error {
	query := `DELETE FROM quiz_attempts WHERE id = $1`
	_, err := r.db.Exec(ctx, query, id)
	return err
}

func (r *attemptRepository) GetWithAnswers(ctx context.Context, attemptID string) (*model.AttemptWithAnswers, error) {
	// Получаем попытку
	attempt, err := r.GetByID(ctx, attemptID)
	if err != nil {
		return nil, err
	}

	// Получаем ответы
	answerRepo := NewAttemptAnswerRepository(r.db)
	answers, err := answerRepo.GetByAttemptID(ctx, attemptID)
	if err != nil {
		return nil, err
	}

	// Преобразуем []*QuizAttemptAnswer в []QuizAttemptAnswer
	answersList := make([]model.QuizAttemptAnswer, len(answers))
	for i, a := range answers {
		answersList[i] = *a
	}

	return &model.AttemptWithAnswers{
		Attempt: *attempt,
		Answers: answersList,
	}, nil
}

func (r *attemptRepository) CountAttempts(ctx context.Context, userID, quizID string) (int, error) {
	query := `
		SELECT COUNT(*)
		FROM quiz_attempts
		WHERE user_id = $1 AND quiz_id = $2
	`

	var count int
	err := r.db.QueryRow(ctx, query, userID, quizID).Scan(&count)
	if err != nil {
		return 0, fmt.Errorf("failed to count attempts: %w", err)
	}

	return count, nil
}

func (r *attemptRepository) GetBestAttempt(ctx context.Context, userID, quizID string) (*model.QuizAttempt, error) {
	query := `
		SELECT id, quiz_id, user_id, attempt_number, started_at,
			completed_at, score_percentage, total_points, earned_points,
			is_passed, time_spent_seconds, created_at, updated_at
		FROM quiz_attempts
		WHERE user_id = $1 AND quiz_id = $2 AND completed_at IS NOT NULL
		ORDER BY score_percentage DESC, completed_at ASC
		LIMIT 1
	`

	attempt := &model.QuizAttempt{}
	err := r.db.QueryRow(ctx, query, userID, quizID).Scan(
		&attempt.ID, &attempt.QuizID, &attempt.UserID, &attempt.AttemptNumber,
		&attempt.StartedAt, &attempt.CompletedAt, &attempt.ScorePercentage,
		&attempt.TotalPoints, &attempt.EarnedPoints, &attempt.IsPassed,
		&attempt.TimeSpentSeconds, &attempt.CreatedAt, &attempt.UpdatedAt,
	)
	if err != nil {
		return nil, fmt.Errorf("failed to get best attempt: %w", err)
	}

	return attempt, nil
}
