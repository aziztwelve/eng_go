package dto

// Course DTOs
type ListCoursesRequest struct {
	Language *string  `form:"language"`
	Level    *string  `form:"level"`
	MinPrice *float64 `form:"min_price"`
	MaxPrice *float64 `form:"max_price"`
	Limit    int32    `form:"limit" binding:"min=1,max=100"`
	Offset   int32    `form:"offset" binding:"min=0"`
}

type CourseResponse struct {
	ID           string  `json:"id"`
	Title        string  `json:"title"`
	Description  string  `json:"description"`
	Price        float64 `json:"price"`
	InstructorID string  `json:"instructor_id"`
	Level        string  `json:"level"`
	Language     string  `json:"language"`
	CreatedAt    string  `json:"created_at"`
	UpdatedAt    string  `json:"updated_at"`
}

type ListCoursesResponse struct {
	Courses []CourseResponse `json:"courses"`
	Total   int32            `json:"total"`
}
