package repository

import (
	"context"

	"github.com/elearning/quiz-service/internal/model"
)

// QuizRepository интерфейс для работы с квизами
type QuizRepository interface {
	// Quiz CRUD
	Create(ctx context.Context, quiz *model.Quiz) error
	GetByID(ctx context.Context, id string) (*model.Quiz, error)
	GetByLessonID(ctx context.Context, lessonID string) ([]*model.Quiz, error)
	Update(ctx context.Context, quiz *model.Quiz) error
	Delete(ctx context.Context, id string) error
	List(ctx context.Context, limit, offset int) ([]*model.Quiz, error)

	// Quiz with questions
	GetWithQuestions(ctx context.Context, quizID string) (*model.QuizWithQuestions, error)
}

// QuestionRepository интерфейс для работы с вопросами
type QuestionRepository interface {
	// Question CRUD
	Create(ctx context.Context, question *model.QuizQuestion) error
	GetByID(ctx context.Context, id string) (*model.QuizQuestion, error)
	GetByQuizID(ctx context.Context, quizID string) ([]*model.QuizQuestion, error)
	Update(ctx context.Context, question *model.QuizQuestion) error
	Delete(ctx context.Context, id string) error

	// Questions with answers
	GetWithAnswers(ctx context.Context, questionID string) (*model.QuestionWithAnswers, error)
	GetAllWithAnswers(ctx context.Context, quizID string) ([]model.QuestionWithAnswers, error)
}

// AnswerRepository интерфейс для работы с вариантами ответов
type AnswerRepository interface {
	// Answer CRUD
	Create(ctx context.Context, answer *model.QuizAnswer) error
	GetByID(ctx context.Context, id string) (*model.QuizAnswer, error)
	GetByQuestionID(ctx context.Context, questionID string) ([]*model.QuizAnswer, error)
	Update(ctx context.Context, answer *model.QuizAnswer) error
	Delete(ctx context.Context, id string) error
	
	// Batch operations
	CreateBatch(ctx context.Context, answers []*model.QuizAnswer) error
}

// AttemptRepository интерфейс для работы с попытками
type AttemptRepository interface {
	// Attempt CRUD
	Create(ctx context.Context, attempt *model.QuizAttempt) error
	GetByID(ctx context.Context, id string) (*model.QuizAttempt, error)
	GetByUserAndQuiz(ctx context.Context, userID, quizID string) ([]*model.QuizAttempt, error)
	Update(ctx context.Context, attempt *model.QuizAttempt) error
	Delete(ctx context.Context, id string) error

	// Attempt with answers
	GetWithAnswers(ctx context.Context, attemptID string) (*model.AttemptWithAnswers, error)
	
	// Statistics
	CountAttempts(ctx context.Context, userID, quizID string) (int, error)
	GetBestAttempt(ctx context.Context, userID, quizID string) (*model.QuizAttempt, error)
}

// AttemptAnswerRepository интерфейс для работы с ответами студента
type AttemptAnswerRepository interface {
	// Answer CRUD
	Create(ctx context.Context, answer *model.QuizAttemptAnswer) error
	GetByID(ctx context.Context, id string) (*model.QuizAttemptAnswer, error)
	GetByAttemptID(ctx context.Context, attemptID string) ([]*model.QuizAttemptAnswer, error)
	Update(ctx context.Context, answer *model.QuizAttemptAnswer) error
	Delete(ctx context.Context, id string) error
	
	// Batch operations
	CreateBatch(ctx context.Context, answers []*model.QuizAttemptAnswer) error
}
