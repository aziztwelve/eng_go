package postgres

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/quiz-service/internal/model"
	"github.com/elearning/quiz-service/internal/repository"
)

type attemptAnswerRepository struct {
	db *pgxpool.Pool
}

// NewAttemptAnswerRepository создает новый репозиторий для ответов студента
func NewAttemptAnswerRepository(db *pgxpool.Pool) repository.AttemptAnswerRepository {
	return &attemptAnswerRepository{db: db}
}

func (r *attemptAnswerRepository) Create(ctx context.Context, answer *model.QuizAttemptAnswer) error {
	query := `
		INSERT INTO quiz_attempt_answers (
			id, attempt_id, question_id, selected_answer_ids,
			text_answer, is_correct, points_earned
		) VALUES ($1, $2, $3, $4, $5, $6, $7)
		RETURNING created_at
	`

	return r.db.QueryRow(ctx, query,
		answer.ID, answer.AttemptID, answer.QuestionID,
		answer.SelectedAnswerIDs, answer.TextAnswer,
		answer.IsCorrect, answer.PointsEarned,
	).Scan(&answer.CreatedAt)
}

func (r *attemptAnswerRepository) GetByID(ctx context.Context, id string) (*model.QuizAttemptAnswer, error) {
	query := `
		SELECT id, attempt_id, question_id, selected_answer_ids,
			text_answer, is_correct, points_earned, created_at
		FROM quiz_attempt_answers
		WHERE id = $1
	`

	answer := &model.QuizAttemptAnswer{}
	err := r.db.QueryRow(ctx, query, id).Scan(
		&answer.ID, &answer.AttemptID, &answer.QuestionID,
		&answer.SelectedAnswerIDs, &answer.TextAnswer,
		&answer.IsCorrect, &answer.PointsEarned, &answer.CreatedAt,
	)
	if err != nil {
		return nil, fmt.Errorf("failed to get attempt answer: %w", err)
	}

	return answer, nil
}

func (r *attemptAnswerRepository) GetByAttemptID(ctx context.Context, attemptID string) ([]*model.QuizAttemptAnswer, error) {
	query := `
		SELECT id, attempt_id, question_id, selected_answer_ids,
			text_answer, is_correct, points_earned, created_at
		FROM quiz_attempt_answers
		WHERE attempt_id = $1
		ORDER BY created_at ASC
	`

	rows, err := r.db.Query(ctx, query, attemptID)
	if err != nil {
		return nil, fmt.Errorf("failed to get attempt answers: %w", err)
	}
	defer rows.Close()

	var answers []*model.QuizAttemptAnswer
	for rows.Next() {
		answer := &model.QuizAttemptAnswer{}
		err := rows.Scan(
			&answer.ID, &answer.AttemptID, &answer.QuestionID,
			&answer.SelectedAnswerIDs, &answer.TextAnswer,
			&answer.IsCorrect, &answer.PointsEarned, &answer.CreatedAt,
		)
		if err != nil {
			return nil, fmt.Errorf("failed to scan attempt answer: %w", err)
		}
		answers = append(answers, answer)
	}

	return answers, nil
}

func (r *attemptAnswerRepository) Update(ctx context.Context, answer *model.QuizAttemptAnswer) error {
	query := `
		UPDATE quiz_attempt_answers
		SET selected_answer_ids = $2, text_answer = $3,
			is_correct = $4, points_earned = $5
		WHERE id = $1
	`

	_, err := r.db.Exec(ctx, query,
		answer.ID, answer.SelectedAnswerIDs, answer.TextAnswer,
		answer.IsCorrect, answer.PointsEarned,
	)
	return err
}

func (r *attemptAnswerRepository) Delete(ctx context.Context, id string) error {
	query := `DELETE FROM quiz_attempt_answers WHERE id = $1`
	_, err := r.db.Exec(ctx, query, id)
	return err
}

func (r *attemptAnswerRepository) CreateBatch(ctx context.Context, answers []*model.QuizAttemptAnswer) error {
	if len(answers) == 0 {
		return nil
	}

	tx, err := r.db.Begin(ctx)
	if err != nil {
		return fmt.Errorf("failed to begin transaction: %w", err)
	}
	defer tx.Rollback(ctx)

	query := `
		INSERT INTO quiz_attempt_answers (
			id, attempt_id, question_id, selected_answer_ids,
			text_answer, is_correct, points_earned
		) VALUES ($1, $2, $3, $4, $5, $6, $7)
	`

	for _, answer := range answers {
		_, err := tx.Exec(ctx, query,
			answer.ID, answer.AttemptID, answer.QuestionID,
			answer.SelectedAnswerIDs, answer.TextAnswer,
			answer.IsCorrect, answer.PointsEarned,
		)
		if err != nil {
			return fmt.Errorf("failed to insert attempt answer: %w", err)
		}
	}

	return tx.Commit(ctx)
}
