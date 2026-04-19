package model

import "time"

// Quiz представляет квиз
type Quiz struct {
	ID                     string    `json:"id"`
	LessonID               string    `json:"lesson_id"`
	Title                  string    `json:"title"`
	Description            string    `json:"description"`
	TimeLimitMinutes       *int      `json:"time_limit_minutes"`
	MaxAttempts            int       `json:"max_attempts"`
	PassingScorePercentage float64   `json:"passing_score_percentage"`
	ShuffleQuestions       bool      `json:"shuffle_questions"`
	ShowCorrectAnswers     bool      `json:"show_correct_answers"`
	IsRequired             bool      `json:"is_required"`
	CreatedAt              time.Time `json:"created_at"`
	UpdatedAt              time.Time `json:"updated_at"`
}

// QuizQuestion представляет вопрос в квизе
type QuizQuestion struct {
	ID           string    `json:"id"`
	QuizID       string    `json:"quiz_id"`
	QuestionType string    `json:"question_type"` // multiple_choice, multiple_select, true_false, text_input, matching
	QuestionText string    `json:"question_text"`
	Explanation  string    `json:"explanation"`
	Points       int       `json:"points"`
	OrderIndex   int       `json:"order_index"`
	CreatedAt    time.Time `json:"created_at"`
	UpdatedAt    time.Time `json:"updated_at"`
}

// QuizAnswer представляет вариант ответа на вопрос
type QuizAnswer struct {
	ID         string    `json:"id"`
	QuestionID string    `json:"question_id"`
	AnswerText string    `json:"answer_text"`
	IsCorrect  bool      `json:"is_correct"`
	OrderIndex int       `json:"order_index"`
	CreatedAt  time.Time `json:"created_at"`
}

// QuizAttempt представляет попытку прохождения квиза
type QuizAttempt struct {
	ID               string     `json:"id"`
	QuizID           string     `json:"quiz_id"`
	UserID           string     `json:"user_id"`
	AttemptNumber    int        `json:"attempt_number"`
	StartedAt        time.Time  `json:"started_at"`
	CompletedAt      *time.Time `json:"completed_at"`
	ScorePercentage  *float64   `json:"score_percentage"`
	TotalPoints      *int       `json:"total_points"`
	EarnedPoints     *int       `json:"earned_points"`
	IsPassed         bool       `json:"is_passed"`
	TimeSpentSeconds *int       `json:"time_spent_seconds"`
	CreatedAt        time.Time  `json:"created_at"`
	UpdatedAt        time.Time  `json:"updated_at"`
}

// QuizAttemptAnswer представляет ответ студента на вопрос
type QuizAttemptAnswer struct {
	ID                string    `json:"id"`
	AttemptID         string    `json:"attempt_id"`
	QuestionID        string    `json:"question_id"`
	SelectedAnswerIDs []string  `json:"selected_answer_ids"`
	TextAnswer        *string   `json:"text_answer"`
	IsCorrect         *bool     `json:"is_correct"`
	PointsEarned      int       `json:"points_earned"`
	CreatedAt         time.Time `json:"created_at"`
}

// QuizWithQuestions представляет квиз со всеми вопросами и ответами
type QuizWithQuestions struct {
	Quiz      Quiz                     `json:"quiz"`
	Questions []QuestionWithAnswers    `json:"questions"`
}

// QuestionWithAnswers представляет вопрос с вариантами ответов
type QuestionWithAnswers struct {
	Question QuizQuestion `json:"question"`
	Answers  []QuizAnswer `json:"answers"`
}

// AttemptWithAnswers представляет попытку со всеми ответами студента
type AttemptWithAnswers struct {
	Attempt QuizAttempt         `json:"attempt"`
	Answers []QuizAttemptAnswer `json:"answers"`
}
