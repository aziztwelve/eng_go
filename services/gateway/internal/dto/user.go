package dto

// UserResponse DTO для ответа с информацией о пользователе
type UserResponse struct {
	ID        string `json:"id"`
	Email     string `json:"email"`
	FullName  string `json:"full_name"`
	Role      string `json:"role"`
	CreatedAt string `json:"created_at"`
	UpdatedAt string `json:"updated_at"`
}

// UpdateUserRequest DTO для обновления пользователя
type UpdateUserRequest struct {
	FullName string `json:"full_name"`
	Role     string `json:"role"`
}
