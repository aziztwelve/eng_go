package dto

// Auth DTOs
type RegisterRequest struct {
	Email    string `json:"email" binding:"required,email"`
	Password string `json:"password" binding:"required,min=8"`
	Username string `json:"username" binding:"required,min=3"`
}

type LoginRequest struct {
	Email    string `json:"email" binding:"required,email"`
	Password string `json:"password" binding:"required"`
}

type RefreshTokenRequest struct {
	RefreshToken string `json:"refresh_token" binding:"required"`
}

type RegisterResponse struct {
	UserID string `json:"user_id"`
}

type LoginResponse struct {
	AccessToken  string `json:"access_token"`
	RefreshToken string `json:"refresh_token"`
	ExpiresAt    string `json:"expires_at"`
}

type RefreshTokenResponse struct {
	AccessToken string `json:"access_token"`
	ExpiresAt   string `json:"expires_at"`
}

// === Guest mode (onboarding §3.2) ===

// GuestSessionRequest — клиент передаёт стабильный device_id (UUID v4).
type GuestSessionRequest struct {
	DeviceID string `json:"device_id" binding:"required"`
}

// GuestSessionResponse — JWT для гостя + user_id.
type GuestSessionResponse struct {
	UserID       string `json:"user_id"`
	AccessToken  string `json:"access_token"`
	RefreshToken string `json:"refresh_token"`
	ExpiresAt    string `json:"expires_at"`
	Created      bool   `json:"created"`
}

// ClaimGuestRequest — гость становится registered user.
// guest_user_id берётся из JWT (middleware).
type ClaimGuestRequest struct {
	Email    string `json:"email" binding:"required,email"`
	Password string `json:"password" binding:"required,min=8"`
	Username string `json:"username" binding:"required,min=3"`
}

// ClaimGuestResponse — обновлённые токены (user_id сохраняется).
type ClaimGuestResponse struct {
	UserID       string `json:"user_id"`
	AccessToken  string `json:"access_token"`
	RefreshToken string `json:"refresh_token"`
	ExpiresAt    string `json:"expires_at"`
}

// MeResponse содержит полную информацию о текущем пользователе
type MeResponse struct {
	// Из auth-service
	ID        string `json:"id"`
	Email     string `json:"email"`
	Username  string `json:"username"`
	Role      string `json:"role"`
	CreatedAt string `json:"created_at"`

	// Из user-service
	Profile *ProfileData `json:"profile,omitempty"`
}

// ProfileData содержит данные профиля пользователя
type ProfileData struct {
	FirstName   *string `json:"first_name,omitempty"`
	LastName    *string `json:"last_name,omitempty"`
	AvatarURL   *string `json:"avatar_url,omitempty"`
	Bio         *string `json:"bio,omitempty"`
	NativeLang  *string `json:"native_lang,omitempty"`
	TargetLang  *string `json:"target_lang,omitempty"`
	DateOfBirth *string `json:"date_of_birth,omitempty"`
	Timezone    *string `json:"timezone,omitempty"`
}
