package v1

import (
	"context"

	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/quiz-service/internal/model"
	"github.com/elearning/quiz-service/internal/service/quiz"
	quizv1 "github.com/elearning/shared/pkg/proto/quiz/v1"
)

// API реализует gRPC сервис для квизов
type API struct {
	quizv1.UnimplementedQuizServiceServer
	quizService quiz.Service
}

// NewAPI создает новый gRPC API
func NewAPI(quizService quiz.Service) *API {
	return &API{
		quizService: quizService,
	}
}

// CreateQuiz создает новый квиз
func (a *API) CreateQuiz(ctx context.Context, req *quizv1.CreateQuizRequest) (*quizv1.CreateQuizResponse, error) {
	var timeLimitMinutes *int
	if req.TimeLimitMinutes != nil {
		val := int(*req.TimeLimitMinutes)
		timeLimitMinutes = &val
	}

	quiz, err := a.quizService.CreateQuiz(ctx, &quiz.CreateQuizRequest{
		LessonID:               req.LessonId,
		Title:                  req.Title,
		Description:            req.Description,
		TimeLimitMinutes:       timeLimitMinutes,
		MaxAttempts:            int(req.MaxAttempts),
		PassingScorePercentage: req.PassingScorePercentage,
		ShuffleQuestions:       req.ShuffleQuestions,
		ShowCorrectAnswers:     req.ShowCorrectAnswers,
		IsRequired:             req.IsRequired,
	})
	if err != nil {
		return nil, err
	}

	return &quizv1.CreateQuizResponse{
		Quiz: modelQuizToProto(quiz),
	}, nil
}

// GetQuiz получает квиз с вопросами
func (a *API) GetQuiz(ctx context.Context, req *quizv1.GetQuizRequest) (*quizv1.GetQuizResponse, error) {
	quizWithQuestions, err := a.quizService.GetQuiz(ctx, req.QuizId)
	if err != nil {
		return nil, err
	}

	return &quizv1.GetQuizResponse{
		Quiz: modelQuizWithQuestionsToProto(quizWithQuestions),
	}, nil
}

// UpdateQuiz обновляет квиз
func (a *API) UpdateQuiz(ctx context.Context, req *quizv1.UpdateQuizRequest) (*quizv1.UpdateQuizResponse, error) {
	var timeLimitMinutes *int
	if req.TimeLimitMinutes != nil {
		val := int(*req.TimeLimitMinutes)
		timeLimitMinutes = &val
	}

	quiz, err := a.quizService.UpdateQuiz(ctx, &quiz.UpdateQuizRequest{
		ID:                     req.Id,
		Title:                  req.Title,
		Description:            req.Description,
		TimeLimitMinutes:       timeLimitMinutes,
		MaxAttempts:            int(req.MaxAttempts),
		PassingScorePercentage: req.PassingScorePercentage,
		ShuffleQuestions:       req.ShuffleQuestions,
		ShowCorrectAnswers:     req.ShowCorrectAnswers,
		IsRequired:             req.IsRequired,
	})
	if err != nil {
		return nil, err
	}

	return &quizv1.UpdateQuizResponse{
		Quiz: modelQuizToProto(quiz),
	}, nil
}

// DeleteQuiz удаляет квиз
func (a *API) DeleteQuiz(ctx context.Context, req *quizv1.DeleteQuizRequest) (*quizv1.DeleteQuizResponse, error) {
	err := a.quizService.DeleteQuiz(ctx, req.QuizId)
	if err != nil {
		return nil, err
	}

	return &quizv1.DeleteQuizResponse{
		Success: true,
	}, nil
}

// ListQuizzes возвращает список квизов
func (a *API) ListQuizzes(ctx context.Context, req *quizv1.ListQuizzesRequest) (*quizv1.ListQuizzesResponse, error) {
	quizzes, err := a.quizService.ListQuizzes(ctx, int(req.Limit), int(req.Offset))
	if err != nil {
		return nil, err
	}

	protoQuizzes := make([]*quizv1.Quiz, len(quizzes))
	for i, q := range quizzes {
		protoQuizzes[i] = modelQuizToProto(q)
	}

	return &quizv1.ListQuizzesResponse{
		Quizzes: protoQuizzes,
	}, nil
}

// GetQuizzesByLesson возвращает квизы для урока
func (a *API) GetQuizzesByLesson(ctx context.Context, req *quizv1.GetQuizzesByLessonRequest) (*quizv1.GetQuizzesByLessonResponse, error) {
	quizzes, err := a.quizService.GetQuizzesByLesson(ctx, req.LessonId)
	if err != nil {
		return nil, err
	}

	protoQuizzes := make([]*quizv1.Quiz, len(quizzes))
	for i, q := range quizzes {
		protoQuizzes[i] = modelQuizToProto(q)
	}

	return &quizv1.GetQuizzesByLessonResponse{
		Quizzes: protoQuizzes,
	}, nil
}

// AddQuestion добавляет вопрос к квизу
func (a *API) AddQuestion(ctx context.Context, req *quizv1.AddQuestionRequest) (*quizv1.AddQuestionResponse, error) {
	answers := make([]quiz.AddAnswerRequest, len(req.Answers))
	for i, a := range req.Answers {
		answers[i] = quiz.AddAnswerRequest{
			AnswerText: a.AnswerText,
			IsCorrect:  a.IsCorrect,
			OrderIndex: int(a.OrderIndex),
		}
	}

	var imageURL *string
	if req.ImageUrl != nil {
		imageURL = req.ImageUrl
	}

	question, err := a.quizService.AddQuestion(ctx, &quiz.AddQuestionRequest{
		QuizID:       req.QuizId,
		QuestionType: req.QuestionType,
		QuestionText: req.QuestionText,
		Explanation:  req.Explanation,
		ImageURL:     imageURL,
		Points:       int(req.Points),
		OrderIndex:   int(req.OrderIndex),
		Answers:      answers,
	})
	if err != nil {
		return nil, err
	}

	return &quizv1.AddQuestionResponse{
		Question: modelQuestionToProto(question),
	}, nil
}

// UpdateQuestion обновляет вопрос
func (a *API) UpdateQuestion(ctx context.Context, req *quizv1.UpdateQuestionRequest) (*quizv1.UpdateQuestionResponse, error) {
	var imageURL *string
	if req.ImageUrl != nil {
		imageURL = req.ImageUrl
	}

	question, err := a.quizService.UpdateQuestion(ctx, &quiz.UpdateQuestionRequest{
		ID:           req.Id,
		QuestionType: req.QuestionType,
		QuestionText: req.QuestionText,
		Explanation:  req.Explanation,
		ImageURL:     imageURL,
		Points:       int(req.Points),
		OrderIndex:   int(req.OrderIndex),
	})
	if err != nil {
		return nil, err
	}

	return &quizv1.UpdateQuestionResponse{
		Question: modelQuestionToProto(question),
	}, nil
}

// DeleteQuestion удаляет вопрос
func (a *API) DeleteQuestion(ctx context.Context, req *quizv1.DeleteQuestionRequest) (*quizv1.DeleteQuestionResponse, error) {
	err := a.quizService.DeleteQuestion(ctx, req.QuestionId)
	if err != nil {
		return nil, err
	}

	return &quizv1.DeleteQuestionResponse{
		Success: true,
	}, nil
}

// StartQuizAttempt начинает попытку прохождения квиза
func (a *API) StartQuizAttempt(ctx context.Context, req *quizv1.StartQuizAttemptRequest) (*quizv1.StartQuizAttemptResponse, error) {
	attempt, err := a.quizService.StartQuizAttempt(ctx, &quiz.StartAttemptRequest{
		QuizID: req.QuizId,
		UserID: req.UserId,
	})
	if err != nil {
		return nil, err
	}

	return &quizv1.StartQuizAttemptResponse{
		Attempt: modelAttemptToProto(attempt),
	}, nil
}

// SubmitAnswer отправляет ответ на вопрос
func (a *API) SubmitAnswer(ctx context.Context, req *quizv1.SubmitAnswerRequest) (*quizv1.SubmitAnswerResponse, error) {
	var textAnswer *string
	if req.TextAnswer != nil {
		textAnswer = req.TextAnswer
	}

	answer, err := a.quizService.SubmitAnswer(ctx, &quiz.SubmitAnswerRequest{
		AttemptID:         req.AttemptId,
		QuestionID:        req.QuestionId,
		SelectedAnswerIDs: req.SelectedAnswerIds,
		TextAnswer:        textAnswer,
	})
	if err != nil {
		return nil, err
	}

	return &quizv1.SubmitAnswerResponse{
		Answer: modelAttemptAnswerToProto(answer),
	}, nil
}

// CompleteQuizAttempt завершает попытку и подсчитывает результаты
func (a *API) CompleteQuizAttempt(ctx context.Context, req *quizv1.CompleteQuizAttemptRequest) (*quizv1.CompleteQuizAttemptResponse, error) {
	attempt, err := a.quizService.CompleteQuizAttempt(ctx, req.AttemptId)
	if err != nil {
		return nil, err
	}

	return &quizv1.CompleteQuizAttemptResponse{
		Attempt: modelAttemptToProto(attempt),
	}, nil
}

// GetAttempt получает попытку с ответами
func (a *API) GetAttempt(ctx context.Context, req *quizv1.GetAttemptRequest) (*quizv1.GetAttemptResponse, error) {
	attemptWithAnswers, err := a.quizService.GetAttempt(ctx, req.AttemptId)
	if err != nil {
		return nil, err
	}

	return &quizv1.GetAttemptResponse{
		Attempt: modelAttemptWithAnswersToProto(attemptWithAnswers),
	}, nil
}

// GetUserAttempts получает все попытки пользователя для квиза
func (a *API) GetUserAttempts(ctx context.Context, req *quizv1.GetUserAttemptsRequest) (*quizv1.GetUserAttemptsResponse, error) {
	attempts, err := a.quizService.GetUserAttempts(ctx, req.UserId, req.QuizId)
	if err != nil {
		return nil, err
	}

	protoAttempts := make([]*quizv1.QuizAttempt, len(attempts))
	for i, a := range attempts {
		protoAttempts[i] = modelAttemptToProto(a)
	}

	return &quizv1.GetUserAttemptsResponse{
		Attempts: protoAttempts,
	}, nil
}

// Converter functions

func modelQuizToProto(q *model.Quiz) *quizv1.Quiz {
	var timeLimitMinutes *int32
	if q.TimeLimitMinutes != nil {
		val := int32(*q.TimeLimitMinutes)
		timeLimitMinutes = &val
	}

	return &quizv1.Quiz{
		Id:                     q.ID,
		LessonId:               q.LessonID,
		Title:                  q.Title,
		Description:            q.Description,
		TimeLimitMinutes:       timeLimitMinutes,
		MaxAttempts:            int32(q.MaxAttempts),
		PassingScorePercentage: q.PassingScorePercentage,
		ShuffleQuestions:       q.ShuffleQuestions,
		ShowCorrectAnswers:     q.ShowCorrectAnswers,
		IsRequired:             q.IsRequired,
		CreatedAt:              timestamppb.New(q.CreatedAt),
		UpdatedAt:              timestamppb.New(q.UpdatedAt),
	}
}

func modelQuestionToProto(q *model.QuizQuestion) *quizv1.QuizQuestion {
	return &quizv1.QuizQuestion{
		Id:           q.ID,
		QuizId:       q.QuizID,
		QuestionType: q.QuestionType,
		QuestionText: q.QuestionText,
		Explanation:  q.Explanation,
		ImageUrl:     q.ImageURL,
		Points:       int32(q.Points),
		OrderIndex:   int32(q.OrderIndex),
		CreatedAt:    timestamppb.New(q.CreatedAt),
		UpdatedAt:    timestamppb.New(q.UpdatedAt),
	}
}

func modelAnswerToProto(a *model.QuizAnswer) *quizv1.QuizAnswer {
	return &quizv1.QuizAnswer{
		Id:         a.ID,
		QuestionId: a.QuestionID,
		AnswerText: a.AnswerText,
		IsCorrect:  a.IsCorrect,
		OrderIndex: int32(a.OrderIndex),
		CreatedAt:  timestamppb.New(a.CreatedAt),
	}
}

func modelQuizWithQuestionsToProto(qwq *model.QuizWithQuestions) *quizv1.QuizWithQuestions {
	questions := make([]*quizv1.QuestionWithAnswers, len(qwq.Questions))
	for i, q := range qwq.Questions {
		answers := make([]*quizv1.QuizAnswer, len(q.Answers))
		for j, a := range q.Answers {
			answers[j] = modelAnswerToProto(&a)
		}

		questions[i] = &quizv1.QuestionWithAnswers{
			Question: modelQuestionToProto(&q.Question),
			Answers:  answers,
		}
	}

	return &quizv1.QuizWithQuestions{
		Quiz:      modelQuizToProto(&qwq.Quiz),
		Questions: questions,
	}
}

func modelAttemptToProto(a *model.QuizAttempt) *quizv1.QuizAttempt {
	var completedAt *timestamppb.Timestamp
	if a.CompletedAt != nil {
		completedAt = timestamppb.New(*a.CompletedAt)
	}

	var scorePercentage *float64
	if a.ScorePercentage != nil {
		scorePercentage = a.ScorePercentage
	}

	var totalPoints *int32
	if a.TotalPoints != nil {
		val := int32(*a.TotalPoints)
		totalPoints = &val
	}

	var earnedPoints *int32
	if a.EarnedPoints != nil {
		val := int32(*a.EarnedPoints)
		earnedPoints = &val
	}

	var timeSpentSeconds *int32
	if a.TimeSpentSeconds != nil {
		val := int32(*a.TimeSpentSeconds)
		timeSpentSeconds = &val
	}

	return &quizv1.QuizAttempt{
		Id:               a.ID,
		QuizId:           a.QuizID,
		UserId:           a.UserID,
		AttemptNumber:    int32(a.AttemptNumber),
		StartedAt:        timestamppb.New(a.StartedAt),
		CompletedAt:      completedAt,
		ScorePercentage:  scorePercentage,
		TotalPoints:      totalPoints,
		EarnedPoints:     earnedPoints,
		IsPassed:         a.IsPassed,
		TimeSpentSeconds: timeSpentSeconds,
		CreatedAt:        timestamppb.New(a.CreatedAt),
		UpdatedAt:        timestamppb.New(a.UpdatedAt),
	}
}

func modelAttemptAnswerToProto(a *model.QuizAttemptAnswer) *quizv1.QuizAttemptAnswer {
	var textAnswer *string
	if a.TextAnswer != nil {
		textAnswer = a.TextAnswer
	}

	var isCorrect *bool
	if a.IsCorrect != nil {
		isCorrect = a.IsCorrect
	}

	return &quizv1.QuizAttemptAnswer{
		Id:                a.ID,
		AttemptId:         a.AttemptID,
		QuestionId:        a.QuestionID,
		SelectedAnswerIds: a.SelectedAnswerIDs,
		TextAnswer:        textAnswer,
		IsCorrect:         isCorrect,
		PointsEarned:      int32(a.PointsEarned),
		CreatedAt:         timestamppb.New(a.CreatedAt),
	}
}

func modelAttemptWithAnswersToProto(awa *model.AttemptWithAnswers) *quizv1.AttemptWithAnswers {
	answers := make([]*quizv1.QuizAttemptAnswer, len(awa.Answers))
	for i, a := range awa.Answers {
		answers[i] = modelAttemptAnswerToProto(&a)
	}

	return &quizv1.AttemptWithAnswers{
		Attempt: modelAttemptToProto(&awa.Attempt),
		Answers: answers,
	}
}
