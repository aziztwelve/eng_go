package dto

// MarkStepCompleteRequest содержит данные для отметки шага как завершенного
type MarkStepCompleteRequest struct {
	TimeSpentSeconds int32    `json:"time_spent_seconds"`
	Attempts         *int32   `json:"attempts,omitempty"`
	Score            *float64 `json:"score,omitempty"`
}

// StepProgressResponse содержит информацию о прогрессе по шагу
type StepProgressResponse struct {
	ID               string   `json:"id"`
	UserID           string   `json:"user_id"`
	StepID           string   `json:"step_id"`
	LessonID         string   `json:"lesson_id"`
	Completed        bool     `json:"completed"`
	CompletedAt      *string  `json:"completed_at,omitempty"`
	TimeSpentSeconds int32    `json:"time_spent_seconds"`
	Attempts         int32    `json:"attempts"`
	Score            *float64 `json:"score,omitempty"`
	CreatedAt        string   `json:"created_at"`
	UpdatedAt        string   `json:"updated_at"`
}

// LessonProgressResponse содержит информацию о прогрессе по уроку
type LessonProgressResponse struct {
	ID                 string  `json:"id"`
	UserID             string  `json:"user_id"`
	LessonID           string  `json:"lesson_id"`
	CourseID           string  `json:"course_id"`
	TotalSteps         int32   `json:"total_steps"`
	CompletedSteps     int32   `json:"completed_steps"`
	ProgressPercentage float64 `json:"progress_percentage"`
	StartedAt          string  `json:"started_at"`
	LastActivityAt     string  `json:"last_activity_at"`
	CompletedAt        *string `json:"completed_at,omitempty"`
}

// MarkStepCompleteResponse содержит результат отметки шага
type MarkStepCompleteResponse struct {
	StepProgress   StepProgressResponse   `json:"step_progress"`
	LessonProgress LessonProgressResponse `json:"lesson_progress"`
}

// GetStepProgressResponse содержит прогресс по шагу
type GetStepProgressResponse struct {
	Progress *StepProgressResponse `json:"progress"`
	Exists   bool                  `json:"exists"`
}

// GetLessonProgressResponse содержит прогресс по уроку
type GetLessonProgressResponse struct {
	Progress       *LessonProgressResponse `json:"progress"`
	StepProgresses []StepProgressResponse  `json:"step_progresses"`
}

// GetCourseProgressResponse содержит прогресс по курсу
type GetCourseProgressResponse struct {
	LessonProgresses          []LessonProgressResponse `json:"lesson_progresses"`
	TotalLessons              int32                    `json:"total_lessons"`
	CompletedLessons          int32                    `json:"completed_lessons"`
	OverallProgressPercentage float64                  `json:"overall_progress_percentage"`
}
