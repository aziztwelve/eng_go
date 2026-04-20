package dto

// CourseResponse DTO для ответа с информацией о курсе
type CourseResponse struct {
	ID           string `json:"id"`
	Title        string `json:"title"`
	Description  string `json:"description"`
	Level        string `json:"level"`
	Language     string `json:"language"`
	Status       string `json:"status"`
	Price        float64 `json:"price,omitempty"`
	InstructorID string `json:"instructor_id,omitempty"`
	CreatedAt    string `json:"created_at"`
	UpdatedAt    string `json:"updated_at"`
}

// CourseDetailResponse DTO для детальной информации о курсе
type CourseDetailResponse struct {
	ID           string           `json:"id"`
	Title        string           `json:"title"`
	Description  string           `json:"description"`
	Level        string           `json:"level"`
	Language     string           `json:"language"`
	Status       string           `json:"status"`
	Price        float64          `json:"price,omitempty"`
	InstructorID string           `json:"instructor_id,omitempty"`
	Modules      []ModuleResponse `json:"modules"`
	CreatedAt    string           `json:"created_at"`
	UpdatedAt    string           `json:"updated_at"`
}

// ModuleResponse DTO для модуля
type ModuleResponse struct {
	ID          string           `json:"id"`
	Title       string           `json:"title"`
	Description string           `json:"description"`
	OrderIndex  int32            `json:"order_index"`
	Lessons     []LessonResponse `json:"lessons"`
}

// LessonResponse DTO для урока
type LessonResponse struct {
	ID          string         `json:"id"`
	Title       string         `json:"title"`
	Description string         `json:"description"`
	OrderIndex  int32          `json:"order_index"`
	Steps       []StepResponse `json:"steps"`
}

// StepResponse DTO для шага
type StepResponse struct {
	ID         string `json:"id"`
	Type       string `json:"type"`
	Title      string `json:"title"`
	Content    string `json:"content"`
	OrderIndex int32  `json:"order_index"`
}

// CreateCourseRequest DTO для создания курса
type CreateCourseRequest struct {
	Title       string `json:"title" binding:"required"`
	Description string `json:"description"`
	Level       string `json:"level" binding:"required"`
	Language    string `json:"language" binding:"required"`
}

// UpdateCourseRequest DTO для обновления курса
type UpdateCourseRequest struct {
	Title       string `json:"title"`
	Description string `json:"description"`
	Level       string `json:"level"`
	Language    string `json:"language"`
}

// PublishCourseRequest DTO для публикации курса
type PublishCourseRequest struct {
	Publish bool `json:"publish"`
}

// CreateModuleRequest DTO для создания модуля
type CreateModuleRequest struct {
	Title       string `json:"title" binding:"required"`
	Description string `json:"description"`
	OrderIndex  int32  `json:"order_index"`
}

// UpdateModuleRequest DTO для обновления модуля
type UpdateModuleRequest struct {
	Title       string `json:"title"`
	Description string `json:"description"`
	OrderIndex  int32  `json:"order_index"`
}

// CreateLessonRequest DTO для создания урока
type CreateLessonRequest struct {
	Title       string `json:"title" binding:"required"`
	Description string `json:"description"`
	OrderIndex  int32  `json:"order_index"`
}

// UpdateLessonRequest DTO для обновления урока
type UpdateLessonRequest struct {
	Title       string `json:"title"`
	Description string `json:"description"`
	OrderIndex  int32  `json:"order_index"`
}

// CreateStepRequest DTO для создания шага
type CreateStepRequest struct {
	Type       string `json:"type" binding:"required"`
	Content    string `json:"content" binding:"required"`
	OrderIndex int32  `json:"order_index"`
}

// UpdateStepRequest DTO для обновления шага
type UpdateStepRequest struct {
	Type       string `json:"type"`
	Content    string `json:"content"`
	OrderIndex int32  `json:"order_index"`
}

// ListCoursesRequest DTO для запроса списка курсов
type ListCoursesRequest struct {
	Page     int      `json:"page"`
	PageSize int      `json:"page_size"`
	Limit    int32    `json:"limit"`
	Offset   int32    `json:"offset"`
	Level    *string  `json:"level"`
	Language *string  `json:"language"`
	MinPrice *float64 `json:"min_price"`
	MaxPrice *float64 `json:"max_price"`
}

// ListCoursesResponse DTO для ответа со списком курсов
type ListCoursesResponse struct {
	Courses []CourseResponse `json:"courses"`
	Total   int32            `json:"total"`
}

// ToCourseDetailResponse конвертирует proto Course в CourseDetailResponse
func ToCourseDetailResponse(course interface{}) CourseDetailResponse {
	// Simplified version - returns basic info
	// Full implementation would need proper proto type
	return CourseDetailResponse{
		ID:          "",
		Title:       "",
		Description: "",
		Level:       "",
		Language:    "",
		Status:      "",
		Modules:     []ModuleResponse{},
		CreatedAt:   "",
		UpdatedAt:   "",
	}
}
