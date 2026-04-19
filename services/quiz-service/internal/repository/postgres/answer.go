package postgres

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/quiz-service/internal/model"
	"github.com/elearning/quiz-service/internal/repository"
)

type answerRepository struct {
	db *pgxpool.Pool
}

// NewAnswerRepository создает новый репозиторий для ответов
func NewAnswerRepository(db *pgxpool.Pool) repository.AnswerRepository {
	return &answerRepository{db: db}
}

func (r *answerRepository) Create(ctx context.Context, answer *model.QuizAnswer) error {
	query := `
		INSERT INTO quiz_answers (
			id, question_id, answer_text, is_correct, order_index
		) VALUES ($1, $2, $3, $4, $5)
		RETURNING created_at
	`

	return r.db.QueryRow(ctx, query,
		answer.ID, answer.QuestionID, answer.AnswerText,
		answer.IsCorrect, answer.OrderIndex,
	).Scan(&answer.CreatedAt)
}

func (r *answerRepository) GetByID(ctx context.Context, id string) (*model.QuizAnswer, error) {
	query := `
		SELECT id, question_id, answer_text, is_correct, order_index, created_at
		FROM quiz_answers
		WHERE id = $1
	`

	answer := &model.QuizAnswer{}
	err := r.db.QueryRow(ctx, query, id).Scan(
		&answer.ID, &answer.QuestionID, &answer.AnswerText,
		&answer.IsCorrect, &answer.OrderIndex, &answer.CreatedAt,
	)
	if err != nil {
		return nil, fmt.Errorf("failed to get answer: %w", err)
	}

	return answer, nil
}

func (r *answerRepository) GetByQuestionID(ctx context.Context, questionID string) ([]*model.QuizAnswer, error) {
	query := `
		SELECT id, question_id, answer_text, is_correct, order_index, created_at
		FROM quiz_answers
		WHERE question_id = $1
		ORDER BY order_index ASC
	`

	rows, err := r.db.Query(ctx, query, questionID)
	if err != nil {
		return nil, fmt.Errorf("failed to get answers: %w", err)
	}
	defer rows.Close()

	var answers []*model.QuizAnswer
	for rows.Next() {
		answer := &model.QuizAnswer{}
		err := rows.Scan(
			&answer.ID, &answer.QuestionID, &answer.AnswerText,
			&answer.IsCorrect, &answer.OrderIndex, &answer.CreatedAt,
		)
		if err != nil {
			return nil, fmt.Errorf("failed to scan answer: %w", err)
		}
		answers = append(answers, answer)
	}

	return answers, nil
}

func (r *answerRepository) Update(ctx context.Context, answer *model.QuizAnswer) error {
	query := `
		UPDATE quiz_answers
		SET answer_text = $2, is_correct = $3, order_index = $4
		WHERE id = $1
	`

	_, err := r.db.Exec(ctx, query,
		answer.ID, answer.AnswerText, answer.IsCorrect, answer.OrderIndex,
	)
	return err
}

func (r *answerRepository) Delete(ctx context.Context, id string) error {
	query := `DELETE FROM quiz_answers WHERE id = $1`
	_, err := r.db.Exec(ctx, query, id)
	return err
}

func (r *answerRepository) CreateBatch(ctx context.Context, answers []*model.QuizAnswer) error {
	if len(answers) == 0 {
		return nil
	}

	tx, err := r.db.Begin(ctx)
	if err != nil {
		return fmt.Errorf("failed to begin transaction: %w", err)
	}
	defer tx.Rollback(ctx)

	query := `
		INSERT INTO quiz_answers (
			id, question_id, answer_text, is_correct, order_index
		) VALUES ($1, $2, $3, $4, $5)
	`

	for _, answer := range answers {
		_, err := tx.Exec(ctx, query,
			answer.ID, answer.QuestionID, answer.AnswerText,
			answer.IsCorrect, answer.OrderIndex,
		)
		if err != nil {
			return fmt.Errorf("failed to insert answer: %w", err)
		}
	}

	return tx.Commit(ctx)
}
