package dto

// Quiz DTOs

type QuizDTO struct {
	ID                     string  `json:"id"`
	LessonID               string  `json:"lesson_id"`
	Title                  string  `json:"title"`
	Description            string  `json:"description"`
	TimeLimitMinutes       *int    `json:"time_limit_minutes,omitempty"`
	MaxAttempts            int     `json:"max_attempts"`
	PassingScorePercentage float64 `json:"passing_score_percentage"`
	ShuffleQuestions       bool    `json:"shuffle_questions"`
	ShowCorrectAnswers     bool    `json:"show_correct_answers"`
	IsRequired             bool    `json:"is_required"`
	CreatedAt              string  `json:"created_at"`
	UpdatedAt              string  `json:"updated_at"`
}

type QuizQuestionDTO struct {
	ID           string  `json:"id"`
	QuizID       string  `json:"quiz_id"`
	QuestionType string  `json:"question_type"`
	QuestionText string  `json:"question_text"`
	Explanation  string  `json:"explanation"`
	ImageURL     *string `json:"image_url,omitempty"`
	Points       int     `json:"points"`
	OrderIndex   int     `json:"order_index"`
	CreatedAt    string  `json:"created_at"`
	UpdatedAt    string  `json:"updated_at"`
}

type QuizAnswerDTO struct {
	ID         string `json:"id"`
	QuestionID string `json:"question_id"`
	AnswerText string `json:"answer_text"`
	IsCorrect  bool   `json:"is_correct"`
	OrderIndex int    `json:"order_index"`
	CreatedAt  string `json:"created_at"`
}

type QuestionWithAnswersDTO struct {
	Question QuizQuestionDTO `json:"question"`
	Answers  []QuizAnswerDTO `json:"answers"`
}

type QuizWithQuestionsDTO struct {
	Quiz      QuizDTO                  `json:"quiz"`
	Questions []QuestionWithAnswersDTO `json:"questions"`
}

type QuizAttemptDTO struct {
	ID               string   `json:"id"`
	QuizID           string   `json:"quiz_id"`
	UserID           string   `json:"user_id"`
	AttemptNumber    int      `json:"attempt_number"`
	StartedAt        string   `json:"started_at"`
	CompletedAt      *string  `json:"completed_at,omitempty"`
	ScorePercentage  *float64 `json:"score_percentage,omitempty"`
	TotalPoints      *int     `json:"total_points,omitempty"`
	EarnedPoints     *int     `json:"earned_points,omitempty"`
	IsPassed         bool     `json:"is_passed"`
	TimeSpentSeconds *int     `json:"time_spent_seconds,omitempty"`
	CreatedAt        string   `json:"created_at"`
	UpdatedAt        string   `json:"updated_at"`
}

type QuizAttemptAnswerDTO struct {
	ID                string   `json:"id"`
	AttemptID         string   `json:"attempt_id"`
	QuestionID        string   `json:"question_id"`
	SelectedAnswerIDs []string `json:"selected_answer_ids"`
	TextAnswer        *string  `json:"text_answer,omitempty"`
	IsCorrect         *bool    `json:"is_correct,omitempty"`
	PointsEarned      int      `json:"points_earned"`
	CreatedAt         string   `json:"created_at"`
}

type AttemptWithAnswersDTO struct {
	Attempt QuizAttemptDTO         `json:"attempt"`
	Answers []QuizAttemptAnswerDTO `json:"answers"`
}

// Request DTOs

type CreateQuizRequest struct {
	LessonID               string  `json:"lesson_id" binding:"required"`
	Title                  string  `json:"title" binding:"required"`
	Description            string  `json:"description"`
	TimeLimitMinutes       *int    `json:"time_limit_minutes"`
	MaxAttempts            int     `json:"max_attempts" binding:"required,min=1"`
	PassingScorePercentage float64 `json:"passing_score_percentage" binding:"required,min=0,max=100"`
	ShuffleQuestions       bool    `json:"shuffle_questions"`
	ShowCorrectAnswers     bool    `json:"show_correct_answers"`
	IsRequired             bool    `json:"is_required"`
}

type UpdateQuizRequest struct {
	Title                  string  `json:"title" binding:"required"`
	Description            string  `json:"description"`
	TimeLimitMinutes       *int    `json:"time_limit_minutes"`
	MaxAttempts            int     `json:"max_attempts" binding:"required,min=1"`
	PassingScorePercentage float64 `json:"passing_score_percentage" binding:"required,min=0,max=100"`
	ShuffleQuestions       bool    `json:"shuffle_questions"`
	ShowCorrectAnswers     bool    `json:"show_correct_answers"`
	IsRequired             bool    `json:"is_required"`
}

type AddQuestionRequest struct {
	QuizID       string              `json:"quiz_id" binding:"required"`
	QuestionType string              `json:"question_type" binding:"required"`
	QuestionText string              `json:"question_text" binding:"required"`
	Explanation  string              `json:"explanation"`
	ImageURL     *string             `json:"image_url"`
	Points       int                 `json:"points" binding:"required,min=1"`
	OrderIndex   int                 `json:"order_index" binding:"required,min=1"`
	Answers      []AddAnswerRequest  `json:"answers" binding:"required,min=1"`
}

type AddAnswerRequest struct {
	AnswerText string `json:"answer_text" binding:"required"`
	IsCorrect  bool   `json:"is_correct"`
	OrderIndex int    `json:"order_index" binding:"required,min=1"`
}

type UpdateQuestionRequest struct {
	QuestionType string  `json:"question_type" binding:"required"`
	QuestionText string  `json:"question_text" binding:"required"`
	Explanation  string  `json:"explanation"`
	ImageURL     *string `json:"image_url"`
	Points       int     `json:"points" binding:"required,min=1"`
	OrderIndex   int     `json:"order_index" binding:"required,min=1"`
}

type StartQuizAttemptRequest struct {
	QuizID string `json:"quiz_id" binding:"required"`
	UserID string `json:"user_id" binding:"required"`
}

type SubmitAnswerRequest struct {
	AttemptID         string   `json:"attempt_id" binding:"required"`
	QuestionID        string   `json:"question_id" binding:"required"`
	SelectedAnswerIDs []string `json:"selected_answer_ids"`
	TextAnswer        *string  `json:"text_answer"`
}

// Response DTOs

type QuizListResponse struct {
	Quizzes []QuizDTO `json:"quizzes"`
}

type QuizResponse struct {
	Quiz QuizWithQuestionsDTO `json:"quiz"`
}

type AttemptListResponse struct {
	Attempts []QuizAttemptDTO `json:"attempts"`
}
