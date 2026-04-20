package postgres

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/quiz-service/internal/model"
	"github.com/elearning/quiz-service/internal/repository"
)

type questionRepository struct {
	db *pgxpool.Pool
}

// NewQuestionRepository создает новый репозиторий для вопросов
func NewQuestionRepository(db *pgxpool.Pool) repository.QuestionRepository {
	return &questionRepository{db: db}
}

func (r *questionRepository) Create(ctx context.Context, question *model.QuizQuestion) error {
	query := `
		INSERT INTO quiz_questions (
			id, quiz_id, question_type, question_text, explanation,
			image_url, points, order_index
		) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
		RETURNING created_at, updated_at
	`

	return r.db.QueryRow(ctx, query,
		question.ID, question.QuizID, question.QuestionType, question.QuestionText,
		question.Explanation, question.ImageURL, question.Points, question.OrderIndex,
	).Scan(&question.CreatedAt, &question.UpdatedAt)
}

func (r *questionRepository) GetByID(ctx context.Context, id string) (*model.QuizQuestion, error) {
	query := `
		SELECT id, quiz_id, question_type, question_text, explanation,
			image_url, points, order_index, created_at, updated_at
		FROM quiz_questions
		WHERE id = $1
	`

	question := &model.QuizQuestion{}
	err := r.db.QueryRow(ctx, query, id).Scan(
		&question.ID, &question.QuizID, &question.QuestionType, &question.QuestionText,
		&question.Explanation, &question.ImageURL, &question.Points, &question.OrderIndex,
		&question.CreatedAt, &question.UpdatedAt,
	)
	if err != nil {
		return nil, fmt.Errorf("failed to get question: %w", err)
	}

	return question, nil
}

func (r *questionRepository) GetByQuizID(ctx context.Context, quizID string) ([]*model.QuizQuestion, error) {
	query := `
		SELECT id, quiz_id, question_type, question_text, explanation,
			image_url, points, order_index, created_at, updated_at
		FROM quiz_questions
		WHERE quiz_id = $1
		ORDER BY order_index ASC
	`

	rows, err := r.db.Query(ctx, query, quizID)
	if err != nil {
		return nil, fmt.Errorf("failed to get questions: %w", err)
	}
	defer rows.Close()

	var questions []*model.QuizQuestion
	for rows.Next() {
		question := &model.QuizQuestion{}
		err := rows.Scan(
			&question.ID, &question.QuizID, &question.QuestionType, &question.QuestionText,
			&question.Explanation, &question.ImageURL, &question.Points, &question.OrderIndex,
			&question.CreatedAt, &question.UpdatedAt,
		)
		if err != nil {
			return nil, fmt.Errorf("failed to scan question: %w", err)
		}
		questions = append(questions, question)
	}

	return questions, nil
}

func (r *questionRepository) Update(ctx context.Context, question *model.QuizQuestion) error {
	query := `
		UPDATE quiz_questions
		SET question_type = $2, question_text = $3, explanation = $4,
			image_url = $5, points = $6, order_index = $7, updated_at = NOW()
		WHERE id = $1
		RETURNING updated_at
	`

	return r.db.QueryRow(ctx, query,
		question.ID, question.QuestionType, question.QuestionText,
		question.Explanation, question.ImageURL, question.Points, question.OrderIndex,
	).Scan(&question.UpdatedAt)
}

func (r *questionRepository) Delete(ctx context.Context, id string) error {
	query := `DELETE FROM quiz_questions WHERE id = $1`
	_, err := r.db.Exec(ctx, query, id)
	return err
}

func (r *questionRepository) GetWithAnswers(ctx context.Context, questionID string) (*model.QuestionWithAnswers, error) {
	// Получаем вопрос
	question, err := r.GetByID(ctx, questionID)
	if err != nil {
		return nil, err
	}

	// Получаем ответы
	answerRepo := NewAnswerRepository(r.db)
	answers, err := answerRepo.GetByQuestionID(ctx, questionID)
	if err != nil {
		return nil, err
	}

	// Преобразуем []*QuizAnswer в []QuizAnswer
	answersList := make([]model.QuizAnswer, len(answers))
	for i, a := range answers {
		answersList[i] = *a
	}

	return &model.QuestionWithAnswers{
		Question: *question,
		Answers:  answersList,
	}, nil
}

func (r *questionRepository) GetAllWithAnswers(ctx context.Context, quizID string) ([]model.QuestionWithAnswers, error) {
	// Получаем все вопросы
	questions, err := r.GetByQuizID(ctx, quizID)
	if err != nil {
		return nil, err
	}

	// Для каждого вопроса получаем ответы
	answerRepo := NewAnswerRepository(r.db)
	result := make([]model.QuestionWithAnswers, 0, len(questions))

	for _, question := range questions {
		answers, err := answerRepo.GetByQuestionID(ctx, question.ID)
		if err != nil {
			return nil, err
		}

		// Преобразуем []*QuizAnswer в []QuizAnswer
		answersList := make([]model.QuizAnswer, len(answers))
		for i, a := range answers {
			answersList[i] = *a
		}

		result = append(result, model.QuestionWithAnswers{
			Question: *question,
			Answers:  answersList,
		})
	}

	return result, nil
}
