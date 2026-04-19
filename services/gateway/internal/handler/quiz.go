package handler

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	quizv1 "github.com/elearning/shared/pkg/proto/quiz/v1"
)

// QuizHandler обрабатывает запросы к Quiz Service
type QuizHandler struct {
	quizClient *client.QuizClient
}

// NewQuizHandler создает новый handler для квизов
func NewQuizHandler(quizClient *client.QuizClient) *QuizHandler {
	return &QuizHandler{
		quizClient: quizClient,
	}
}

// CreateQuiz создает новый квиз
// POST /api/v1/quizzes
func (h *QuizHandler) CreateQuiz(c *gin.Context) {
	var req dto.CreateQuizRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	var timeLimitMinutes *int32
	if req.TimeLimitMinutes != nil {
		val := int32(*req.TimeLimitMinutes)
		timeLimitMinutes = &val
	}

	resp, err := h.quizClient.CreateQuiz(c.Request.Context(), &quizv1.CreateQuizRequest{
		LessonId:               req.LessonID,
		Title:                  req.Title,
		Description:            req.Description,
		TimeLimitMinutes:       timeLimitMinutes,
		MaxAttempts:            int32(req.MaxAttempts),
		PassingScorePercentage: req.PassingScorePercentage,
		ShuffleQuestions:       req.ShuffleQuestions,
		ShowCorrectAnswers:     req.ShowCorrectAnswers,
		IsRequired:             req.IsRequired,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusCreated, protoQuizToDTO(resp.Quiz))
}

// GetQuiz получает квиз с вопросами
// GET /api/v1/quizzes/:id
func (h *QuizHandler) GetQuiz(c *gin.Context) {
	quizID := c.Param("id")

	resp, err := h.quizClient.GetQuiz(c.Request.Context(), &quizv1.GetQuizRequest{
		QuizId: quizID,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, dto.QuizResponse{
		Quiz: protoQuizWithQuestionsToDTO(resp.Quiz),
	})
}

// UpdateQuiz обновляет квиз
// PUT /api/v1/quizzes/:id
func (h *QuizHandler) UpdateQuiz(c *gin.Context) {
	quizID := c.Param("id")

	var req dto.UpdateQuizRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	var timeLimitMinutes *int32
	if req.TimeLimitMinutes != nil {
		val := int32(*req.TimeLimitMinutes)
		timeLimitMinutes = &val
	}

	resp, err := h.quizClient.UpdateQuiz(c.Request.Context(), &quizv1.UpdateQuizRequest{
		Id:                     quizID,
		Title:                  req.Title,
		Description:            req.Description,
		TimeLimitMinutes:       timeLimitMinutes,
		MaxAttempts:            int32(req.MaxAttempts),
		PassingScorePercentage: req.PassingScorePercentage,
		ShuffleQuestions:       req.ShuffleQuestions,
		ShowCorrectAnswers:     req.ShowCorrectAnswers,
		IsRequired:             req.IsRequired,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, protoQuizToDTO(resp.Quiz))
}

// DeleteQuiz удаляет квиз
// DELETE /api/v1/quizzes/:id
func (h *QuizHandler) DeleteQuiz(c *gin.Context) {
	quizID := c.Param("id")

	_, err := h.quizClient.DeleteQuiz(c.Request.Context(), &quizv1.DeleteQuizRequest{
		QuizId: quizID,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, gin.H{"success": true})
}

// ListQuizzes возвращает список квизов
// GET /api/v1/quizzes?limit=10&offset=0
func (h *QuizHandler) ListQuizzes(c *gin.Context) {
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "10"))
	offset, _ := strconv.Atoi(c.DefaultQuery("offset", "0"))

	resp, err := h.quizClient.ListQuizzes(c.Request.Context(), &quizv1.ListQuizzesRequest{
		Limit:  int32(limit),
		Offset: int32(offset),
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	quizzes := make([]dto.QuizDTO, len(resp.Quizzes))
	for i, q := range resp.Quizzes {
		quizzes[i] = protoQuizToDTO(q)
	}

	c.JSON(http.StatusOK, dto.QuizListResponse{
		Quizzes: quizzes,
	})
}

// GetQuizzesByLesson возвращает квизы для урока
// GET /api/v1/lessons/:lessonId/quizzes
func (h *QuizHandler) GetQuizzesByLesson(c *gin.Context) {
	lessonID := c.Param("lessonId")

	resp, err := h.quizClient.GetQuizzesByLesson(c.Request.Context(), &quizv1.GetQuizzesByLessonRequest{
		LessonId: lessonID,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	quizzes := make([]dto.QuizDTO, len(resp.Quizzes))
	for i, q := range resp.Quizzes {
		quizzes[i] = protoQuizToDTO(q)
	}

	c.JSON(http.StatusOK, dto.QuizListResponse{
		Quizzes: quizzes,
	})
}

// AddQuestion добавляет вопрос к квизу
// POST /api/v1/quizzes/:id/questions
func (h *QuizHandler) AddQuestion(c *gin.Context) {
	var req dto.AddQuestionRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	answers := make([]*quizv1.AddAnswerRequest, len(req.Answers))
	for i, a := range req.Answers {
		answers[i] = &quizv1.AddAnswerRequest{
			AnswerText: a.AnswerText,
			IsCorrect:  a.IsCorrect,
			OrderIndex: int32(a.OrderIndex),
		}
	}

	resp, err := h.quizClient.AddQuestion(c.Request.Context(), &quizv1.AddQuestionRequest{
		QuizId:       req.QuizID,
		QuestionType: req.QuestionType,
		QuestionText: req.QuestionText,
		Explanation:  req.Explanation,
		Points:       int32(req.Points),
		OrderIndex:   int32(req.OrderIndex),
		Answers:      answers,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusCreated, protoQuestionToDTO(resp.Question))
}

// UpdateQuestion обновляет вопрос
// PUT /api/v1/questions/:id
func (h *QuizHandler) UpdateQuestion(c *gin.Context) {
	questionID := c.Param("id")

	var req dto.UpdateQuestionRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.quizClient.UpdateQuestion(c.Request.Context(), &quizv1.UpdateQuestionRequest{
		Id:           questionID,
		QuestionType: req.QuestionType,
		QuestionText: req.QuestionText,
		Explanation:  req.Explanation,
		Points:       int32(req.Points),
		OrderIndex:   int32(req.OrderIndex),
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, protoQuestionToDTO(resp.Question))
}

// DeleteQuestion удаляет вопрос
// DELETE /api/v1/questions/:id
func (h *QuizHandler) DeleteQuestion(c *gin.Context) {
	questionID := c.Param("id")

	_, err := h.quizClient.DeleteQuestion(c.Request.Context(), &quizv1.DeleteQuestionRequest{
		QuestionId: questionID,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, gin.H{"success": true})
}

// StartQuizAttempt начинает попытку прохождения квиза
// POST /api/v1/quizzes/:id/attempts
func (h *QuizHandler) StartQuizAttempt(c *gin.Context) {
	quizID := c.Param("id")
	userID := c.GetString("user_id") // Из middleware

	resp, err := h.quizClient.StartQuizAttempt(c.Request.Context(), &quizv1.StartQuizAttemptRequest{
		QuizId: quizID,
		UserId: userID,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusCreated, protoAttemptToDTO(resp.Attempt))
}

// SubmitAnswer отправляет ответ на вопрос
// POST /api/v1/attempts/:attemptId/answers
func (h *QuizHandler) SubmitAnswer(c *gin.Context) {
	var req dto.SubmitAnswerRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.quizClient.SubmitAnswer(c.Request.Context(), &quizv1.SubmitAnswerRequest{
		AttemptId:         req.AttemptID,
		QuestionId:        req.QuestionID,
		SelectedAnswerIds: req.SelectedAnswerIDs,
		TextAnswer:        req.TextAnswer,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusCreated, protoAttemptAnswerToDTO(resp.Answer))
}

// CompleteQuizAttempt завершает попытку
// POST /api/v1/attempts/:attemptId/complete
func (h *QuizHandler) CompleteQuizAttempt(c *gin.Context) {
	attemptID := c.Param("attemptId")

	resp, err := h.quizClient.CompleteQuizAttempt(c.Request.Context(), &quizv1.CompleteQuizAttemptRequest{
		AttemptId: attemptID,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, protoAttemptToDTO(resp.Attempt))
}

// GetAttempt получает попытку с ответами
// GET /api/v1/attempts/:attemptId
func (h *QuizHandler) GetAttempt(c *gin.Context) {
	attemptID := c.Param("attemptId")

	resp, err := h.quizClient.GetAttempt(c.Request.Context(), &quizv1.GetAttemptRequest{
		AttemptId: attemptID,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, protoAttemptWithAnswersToDTO(resp.Attempt))
}

// GetUserAttempts получает все попытки пользователя для квиза
// GET /api/v1/quizzes/:id/attempts/my
func (h *QuizHandler) GetUserAttempts(c *gin.Context) {
	quizID := c.Param("id")
	userID := c.GetString("user_id") // Из middleware

	resp, err := h.quizClient.GetUserAttempts(c.Request.Context(), &quizv1.GetUserAttemptsRequest{
		UserId: userID,
		QuizId: quizID,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	attempts := make([]dto.QuizAttemptDTO, len(resp.Attempts))
	for i, a := range resp.Attempts {
		attempts[i] = protoAttemptToDTO(a)
	}

	c.JSON(http.StatusOK, dto.AttemptListResponse{
		Attempts: attempts,
	})
}

// Converter functions

func protoQuizToDTO(q *quizv1.Quiz) dto.QuizDTO {
	var timeLimitMinutes *int
	if q.TimeLimitMinutes != nil {
		val := int(*q.TimeLimitMinutes)
		timeLimitMinutes = &val
	}

	return dto.QuizDTO{
		ID:                     q.Id,
		LessonID:               q.LessonId,
		Title:                  q.Title,
		Description:            q.Description,
		TimeLimitMinutes:       timeLimitMinutes,
		MaxAttempts:            int(q.MaxAttempts),
		PassingScorePercentage: q.PassingScorePercentage,
		ShuffleQuestions:       q.ShuffleQuestions,
		ShowCorrectAnswers:     q.ShowCorrectAnswers,
		IsRequired:             q.IsRequired,
		CreatedAt:              q.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		UpdatedAt:              q.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}
}

func protoQuestionToDTO(q *quizv1.QuizQuestion) dto.QuizQuestionDTO {
	return dto.QuizQuestionDTO{
		ID:           q.Id,
		QuizID:       q.QuizId,
		QuestionType: q.QuestionType,
		QuestionText: q.QuestionText,
		Explanation:  q.Explanation,
		Points:       int(q.Points),
		OrderIndex:   int(q.OrderIndex),
		CreatedAt:    q.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		UpdatedAt:    q.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}
}

func protoAnswerToDTO(a *quizv1.QuizAnswer) dto.QuizAnswerDTO {
	return dto.QuizAnswerDTO{
		ID:         a.Id,
		QuestionID: a.QuestionId,
		AnswerText: a.AnswerText,
		IsCorrect:  a.IsCorrect,
		OrderIndex: int(a.OrderIndex),
		CreatedAt:  a.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}
}

func protoQuizWithQuestionsToDTO(qwq *quizv1.QuizWithQuestions) dto.QuizWithQuestionsDTO {
	questions := make([]dto.QuestionWithAnswersDTO, len(qwq.Questions))
	for i, q := range qwq.Questions {
		answers := make([]dto.QuizAnswerDTO, len(q.Answers))
		for j, a := range q.Answers {
			answers[j] = protoAnswerToDTO(a)
		}

		questions[i] = dto.QuestionWithAnswersDTO{
			Question: protoQuestionToDTO(q.Question),
			Answers:  answers,
		}
	}

	return dto.QuizWithQuestionsDTO{
		Quiz:      protoQuizToDTO(qwq.Quiz),
		Questions: questions,
	}
}

func protoAttemptToDTO(a *quizv1.QuizAttempt) dto.QuizAttemptDTO {
	var completedAt *string
	if a.CompletedAt != nil {
		val := a.CompletedAt.AsTime().Format("2006-01-02T15:04:05Z07:00")
		completedAt = &val
	}

	var scorePercentage *float64
	if a.ScorePercentage != nil {
		scorePercentage = a.ScorePercentage
	}

	var totalPoints *int
	if a.TotalPoints != nil {
		val := int(*a.TotalPoints)
		totalPoints = &val
	}

	var earnedPoints *int
	if a.EarnedPoints != nil {
		val := int(*a.EarnedPoints)
		earnedPoints = &val
	}

	var timeSpentSeconds *int
	if a.TimeSpentSeconds != nil {
		val := int(*a.TimeSpentSeconds)
		timeSpentSeconds = &val
	}

	return dto.QuizAttemptDTO{
		ID:               a.Id,
		QuizID:           a.QuizId,
		UserID:           a.UserId,
		AttemptNumber:    int(a.AttemptNumber),
		StartedAt:        a.StartedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		CompletedAt:      completedAt,
		ScorePercentage:  scorePercentage,
		TotalPoints:      totalPoints,
		EarnedPoints:     earnedPoints,
		IsPassed:         a.IsPassed,
		TimeSpentSeconds: timeSpentSeconds,
		CreatedAt:        a.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		UpdatedAt:        a.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}
}

func protoAttemptAnswerToDTO(a *quizv1.QuizAttemptAnswer) dto.QuizAttemptAnswerDTO {
	var textAnswer *string
	if a.TextAnswer != nil {
		textAnswer = a.TextAnswer
	}

	var isCorrect *bool
	if a.IsCorrect != nil {
		isCorrect = a.IsCorrect
	}

	return dto.QuizAttemptAnswerDTO{
		ID:                a.Id,
		AttemptID:         a.AttemptId,
		QuestionID:        a.QuestionId,
		SelectedAnswerIDs: a.SelectedAnswerIds,
		TextAnswer:        textAnswer,
		IsCorrect:         isCorrect,
		PointsEarned:      int(a.PointsEarned),
		CreatedAt:         a.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}
}

func protoAttemptWithAnswersToDTO(awa *quizv1.AttemptWithAnswers) dto.AttemptWithAnswersDTO {
	answers := make([]dto.QuizAttemptAnswerDTO, len(awa.Answers))
	for i, a := range awa.Answers {
		answers[i] = protoAttemptAnswerToDTO(a)
	}

	return dto.AttemptWithAnswersDTO{
		Attempt: protoAttemptToDTO(awa.Attempt),
		Answers: answers,
	}
}
