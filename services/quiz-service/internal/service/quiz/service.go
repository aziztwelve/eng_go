package quiz

import (
	"context"
	"fmt"
	"time"

	"github.com/google/uuid"

	"github.com/elearning/quiz-service/internal/model"
	"github.com/elearning/quiz-service/internal/repository"
)

// Service интерфейс для бизнес-логики квизов
type Service interface {
	// Quiz management
	CreateQuiz(ctx context.Context, req *CreateQuizRequest) (*model.Quiz, error)
	GetQuiz(ctx context.Context, quizID string) (*model.QuizWithQuestions, error)
	UpdateQuiz(ctx context.Context, req *UpdateQuizRequest) (*model.Quiz, error)
	DeleteQuiz(ctx context.Context, quizID string) error
	ListQuizzes(ctx context.Context, limit, offset int) ([]*model.Quiz, error)
	GetQuizzesByLesson(ctx context.Context, lessonID string) ([]*model.Quiz, error)

	// Question management
	AddQuestion(ctx context.Context, req *AddQuestionRequest) (*model.QuizQuestion, error)
	UpdateQuestion(ctx context.Context, req *UpdateQuestionRequest) (*model.QuizQuestion, error)
	DeleteQuestion(ctx context.Context, questionID string) error

	// Quiz attempts
	StartQuizAttempt(ctx context.Context, req *StartAttemptRequest) (*model.QuizAttempt, error)
	SubmitAnswer(ctx context.Context, req *SubmitAnswerRequest) (*model.QuizAttemptAnswer, error)
	CompleteQuizAttempt(ctx context.Context, attemptID string) (*model.QuizAttempt, error)
	GetAttempt(ctx context.Context, attemptID string) (*model.AttemptWithAnswers, error)
	GetUserAttempts(ctx context.Context, userID, quizID string) ([]*model.QuizAttempt, error)
}

type service struct {
	quizRepo          repository.QuizRepository
	questionRepo      repository.QuestionRepository
	answerRepo        repository.AnswerRepository
	attemptRepo       repository.AttemptRepository
	attemptAnswerRepo repository.AttemptAnswerRepository
}

// NewService создает новый сервис для квизов
func NewService(
	quizRepo repository.QuizRepository,
	questionRepo repository.QuestionRepository,
	answerRepo repository.AnswerRepository,
	attemptRepo repository.AttemptRepository,
	attemptAnswerRepo repository.AttemptAnswerRepository,
) Service {
	return &service{
		quizRepo:          quizRepo,
		questionRepo:      questionRepo,
		answerRepo:        answerRepo,
		attemptRepo:       attemptRepo,
		attemptAnswerRepo: attemptAnswerRepo,
	}
}

// CreateQuizRequest запрос на создание квиза
type CreateQuizRequest struct {
	LessonID               string
	Title                  string
	Description            string
	TimeLimitMinutes       *int
	MaxAttempts            int
	PassingScorePercentage float64
	ShuffleQuestions       bool
	ShowCorrectAnswers     bool
	IsRequired             bool
}

func (s *service) CreateQuiz(ctx context.Context, req *CreateQuizRequest) (*model.Quiz, error) {
	quiz := &model.Quiz{
		ID:                     uuid.New().String(),
		LessonID:               req.LessonID,
		Title:                  req.Title,
		Description:            req.Description,
		TimeLimitMinutes:       req.TimeLimitMinutes,
		MaxAttempts:            req.MaxAttempts,
		PassingScorePercentage: req.PassingScorePercentage,
		ShuffleQuestions:       req.ShuffleQuestions,
		ShowCorrectAnswers:     req.ShowCorrectAnswers,
		IsRequired:             req.IsRequired,
	}

	if err := s.quizRepo.Create(ctx, quiz); err != nil {
		return nil, fmt.Errorf("failed to create quiz: %w", err)
	}

	return quiz, nil
}

func (s *service) GetQuiz(ctx context.Context, quizID string) (*model.QuizWithQuestions, error) {
	return s.quizRepo.GetWithQuestions(ctx, quizID)
}

// UpdateQuizRequest запрос на обновление квиза
type UpdateQuizRequest struct {
	ID                     string
	Title                  string
	Description            string
	TimeLimitMinutes       *int
	MaxAttempts            int
	PassingScorePercentage float64
	ShuffleQuestions       bool
	ShowCorrectAnswers     bool
	IsRequired             bool
}

func (s *service) UpdateQuiz(ctx context.Context, req *UpdateQuizRequest) (*model.Quiz, error) {
	// Проверяем что квиз существует
	existing, err := s.quizRepo.GetByID(ctx, req.ID)
	if err != nil {
		return nil, fmt.Errorf("quiz not found: %w", err)
	}

	// Обновляем поля
	existing.Title = req.Title
	existing.Description = req.Description
	existing.TimeLimitMinutes = req.TimeLimitMinutes
	existing.MaxAttempts = req.MaxAttempts
	existing.PassingScorePercentage = req.PassingScorePercentage
	existing.ShuffleQuestions = req.ShuffleQuestions
	existing.ShowCorrectAnswers = req.ShowCorrectAnswers
	existing.IsRequired = req.IsRequired

	if err := s.quizRepo.Update(ctx, existing); err != nil {
		return nil, fmt.Errorf("failed to update quiz: %w", err)
	}

	return existing, nil
}

func (s *service) DeleteQuiz(ctx context.Context, quizID string) error {
	return s.quizRepo.Delete(ctx, quizID)
}

func (s *service) ListQuizzes(ctx context.Context, limit, offset int) ([]*model.Quiz, error) {
	return s.quizRepo.List(ctx, limit, offset)
}

func (s *service) GetQuizzesByLesson(ctx context.Context, lessonID string) ([]*model.Quiz, error) {
	return s.quizRepo.GetByLessonID(ctx, lessonID)
}

// AddQuestionRequest запрос на добавление вопроса
type AddQuestionRequest struct {
	QuizID       string
	QuestionType string
	QuestionText string
	Explanation  string
	Points       int
	OrderIndex   int
	Answers      []AddAnswerRequest
}

// AddAnswerRequest запрос на добавление варианта ответа
type AddAnswerRequest struct {
	AnswerText string
	IsCorrect  bool
	OrderIndex int
}

func (s *service) AddQuestion(ctx context.Context, req *AddQuestionRequest) (*model.QuizQuestion, error) {
	// Создаем вопрос
	question := &model.QuizQuestion{
		ID:           uuid.New().String(),
		QuizID:       req.QuizID,
		QuestionType: req.QuestionType,
		QuestionText: req.QuestionText,
		Explanation:  req.Explanation,
		Points:       req.Points,
		OrderIndex:   req.OrderIndex,
	}

	if err := s.questionRepo.Create(ctx, question); err != nil {
		return nil, fmt.Errorf("failed to create question: %w", err)
	}

	// Создаем варианты ответов
	if len(req.Answers) > 0 {
		answers := make([]*model.QuizAnswer, len(req.Answers))
		for i, a := range req.Answers {
			answers[i] = &model.QuizAnswer{
				ID:         uuid.New().String(),
				QuestionID: question.ID,
				AnswerText: a.AnswerText,
				IsCorrect:  a.IsCorrect,
				OrderIndex: a.OrderIndex,
			}
		}

		if err := s.answerRepo.CreateBatch(ctx, answers); err != nil {
			return nil, fmt.Errorf("failed to create answers: %w", err)
		}
	}

	return question, nil
}

// UpdateQuestionRequest запрос на обновление вопроса
type UpdateQuestionRequest struct {
	ID           string
	QuestionType string
	QuestionText string
	Explanation  string
	Points       int
	OrderIndex   int
}

func (s *service) UpdateQuestion(ctx context.Context, req *UpdateQuestionRequest) (*model.QuizQuestion, error) {
	existing, err := s.questionRepo.GetByID(ctx, req.ID)
	if err != nil {
		return nil, fmt.Errorf("question not found: %w", err)
	}

	existing.QuestionType = req.QuestionType
	existing.QuestionText = req.QuestionText
	existing.Explanation = req.Explanation
	existing.Points = req.Points
	existing.OrderIndex = req.OrderIndex

	if err := s.questionRepo.Update(ctx, existing); err != nil {
		return nil, fmt.Errorf("failed to update question: %w", err)
	}

	return existing, nil
}

func (s *service) DeleteQuestion(ctx context.Context, questionID string) error {
	return s.questionRepo.Delete(ctx, questionID)
}

// StartAttemptRequest запрос на начало попытки
type StartAttemptRequest struct {
	QuizID string
	UserID string
}

func (s *service) StartQuizAttempt(ctx context.Context, req *StartAttemptRequest) (*model.QuizAttempt, error) {
	// Получаем квиз
	quiz, err := s.quizRepo.GetByID(ctx, req.QuizID)
	if err != nil {
		return nil, fmt.Errorf("quiz not found: %w", err)
	}

	// Проверяем количество попыток
	count, err := s.attemptRepo.CountAttempts(ctx, req.UserID, req.QuizID)
	if err != nil {
		return nil, fmt.Errorf("failed to count attempts: %w", err)
	}

	if count >= quiz.MaxAttempts {
		return nil, fmt.Errorf("maximum attempts reached (%d/%d)", count, quiz.MaxAttempts)
	}

	// Создаем новую попытку
	attempt := &model.QuizAttempt{
		ID:            uuid.New().String(),
		QuizID:        req.QuizID,
		UserID:        req.UserID,
		AttemptNumber: count + 1,
		StartedAt:     time.Now(),
	}

	if err := s.attemptRepo.Create(ctx, attempt); err != nil {
		return nil, fmt.Errorf("failed to create attempt: %w", err)
	}

	return attempt, nil
}

// SubmitAnswerRequest запрос на отправку ответа
type SubmitAnswerRequest struct {
	AttemptID         string
	QuestionID        string
	SelectedAnswerIDs []string
	TextAnswer        *string
}

func (s *service) SubmitAnswer(ctx context.Context, req *SubmitAnswerRequest) (*model.QuizAttemptAnswer, error) {
	// Получаем вопрос с правильными ответами
	questionWithAnswers, err := s.questionRepo.GetWithAnswers(ctx, req.QuestionID)
	if err != nil {
		return nil, fmt.Errorf("question not found: %w", err)
	}

	// Проверяем ответ и считаем баллы
	isCorrect, pointsEarned := s.checkAnswer(questionWithAnswers, req.SelectedAnswerIDs, req.TextAnswer)

	// Сохраняем ответ студента
	attemptAnswer := &model.QuizAttemptAnswer{
		ID:                uuid.New().String(),
		AttemptID:         req.AttemptID,
		QuestionID:        req.QuestionID,
		SelectedAnswerIDs: req.SelectedAnswerIDs,
		TextAnswer:        req.TextAnswer,
		IsCorrect:         &isCorrect,
		PointsEarned:      pointsEarned,
	}

	if err := s.attemptAnswerRepo.Create(ctx, attemptAnswer); err != nil {
		return nil, fmt.Errorf("failed to save answer: %w", err)
	}

	return attemptAnswer, nil
}

func (s *service) CompleteQuizAttempt(ctx context.Context, attemptID string) (*model.QuizAttempt, error) {
	// Получаем попытку с ответами
	attemptWithAnswers, err := s.attemptRepo.GetWithAnswers(ctx, attemptID)
	if err != nil {
		return nil, fmt.Errorf("attempt not found: %w", err)
	}

	// Получаем квиз
	quiz, err := s.quizRepo.GetByID(ctx, attemptWithAnswers.Attempt.QuizID)
	if err != nil {
		return nil, fmt.Errorf("quiz not found: %w", err)
	}

	// Получаем все вопросы квиза
	questions, err := s.questionRepo.GetByQuizID(ctx, quiz.ID)
	if err != nil {
		return nil, fmt.Errorf("failed to get questions: %w", err)
	}

	// Считаем общее количество баллов
	totalPoints := 0
	for _, q := range questions {
		totalPoints += q.Points
	}

	// Считаем заработанные баллы
	earnedPoints := 0
	for _, a := range attemptWithAnswers.Answers {
		earnedPoints += a.PointsEarned
	}

	// Считаем процент
	scorePercentage := float64(earnedPoints) / float64(totalPoints) * 100
	isPassed := scorePercentage >= quiz.PassingScorePercentage

	// Считаем время
	now := time.Now()
	timeSpent := int(now.Sub(attemptWithAnswers.Attempt.StartedAt).Seconds())

	// Обновляем попытку
	attemptWithAnswers.Attempt.CompletedAt = &now
	attemptWithAnswers.Attempt.ScorePercentage = &scorePercentage
	attemptWithAnswers.Attempt.TotalPoints = &totalPoints
	attemptWithAnswers.Attempt.EarnedPoints = &earnedPoints
	attemptWithAnswers.Attempt.IsPassed = isPassed
	attemptWithAnswers.Attempt.TimeSpentSeconds = &timeSpent

	if err := s.attemptRepo.Update(ctx, &attemptWithAnswers.Attempt); err != nil {
		return nil, fmt.Errorf("failed to update attempt: %w", err)
	}

	return &attemptWithAnswers.Attempt, nil
}

func (s *service) GetAttempt(ctx context.Context, attemptID string) (*model.AttemptWithAnswers, error) {
	return s.attemptRepo.GetWithAnswers(ctx, attemptID)
}

func (s *service) GetUserAttempts(ctx context.Context, userID, quizID string) ([]*model.QuizAttempt, error) {
	return s.attemptRepo.GetByUserAndQuiz(ctx, userID, quizID)
}

// checkAnswer проверяет правильность ответа
func (s *service) checkAnswer(question *model.QuestionWithAnswers, selectedIDs []string, textAnswer *string) (bool, int) {
	switch question.Question.QuestionType {
	case "multiple_choice", "true_false":
		return s.checkMultipleChoice(question, selectedIDs)
	case "multiple_select":
		return s.checkMultipleSelect(question, selectedIDs)
	case "text_input":
		// Для текстовых ответов требуется ручная проверка
		return false, 0
	default:
		return false, 0
	}
}

func (s *service) checkMultipleChoice(question *model.QuestionWithAnswers, selectedIDs []string) (bool, int) {
	if len(selectedIDs) != 1 {
		return false, 0
	}

	for _, answer := range question.Answers {
		if answer.ID == selectedIDs[0] && answer.IsCorrect {
			return true, question.Question.Points
		}
	}

	return false, 0
}

func (s *service) checkMultipleSelect(question *model.QuestionWithAnswers, selectedIDs []string) (bool, int) {
	// Собираем правильные ответы
	correctIDs := make(map[string]bool)
	for _, answer := range question.Answers {
		if answer.IsCorrect {
			correctIDs[answer.ID] = true
		}
	}

	// Проверяем что выбраны все правильные и нет неправильных
	if len(selectedIDs) != len(correctIDs) {
		return false, 0
	}

	for _, id := range selectedIDs {
		if !correctIDs[id] {
			return false, 0
		}
	}

	return true, question.Question.Points
}
