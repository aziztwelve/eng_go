package auth

import (
	"context"

	"golang.org/x/crypto/bcrypt"

	"github.com/elearning/auth-service/internal/model"
)

// ClaimGuestAccount — конвертация гостя в registered user.
//
// Caller обязан передать guestUserID гостя из его JWT. После успеха:
//   - user.IsGuest = false
//   - user.Email, user.Username, user.PasswordHash заполнены
//   - user.GuestDeviceID = NULL
//   - user_id PRESERVED — все downstream-данные (XP/streak/SRS) остаются
//     привязаны к тому же user_id, без необходимости их миграции.
//
// Возвращает:
//   - ErrInvalidCredentials если guestUserID/email/password пустые
//   - ErrUserAlreadyExists если email занят
//   - ErrUserNotFound если guest не существует или уже не is_guest
func (s *service) ClaimGuestAccount(
	ctx context.Context,
	guestUserID, email, password, username string,
) (model.User, model.TokenPair, error) {
	if guestUserID == "" || email == "" || password == "" || username == "" {
		return model.User{}, model.TokenPair{}, model.ErrInvalidCredentials
	}

	// Hash пароля (тот же bcrypt cost что для Register).
	passwordHash, err := bcrypt.GenerateFromPassword([]byte(password), bcryptCost)
	if err != nil {
		return model.User{}, model.TokenPair{}, err
	}

	user, err := s.authRepository.ClaimGuest(ctx, guestUserID, email, username, string(passwordHash))
	if err != nil {
		return model.User{}, model.TokenPair{}, err
	}

	// Выдаём fresh-токены БЕЗ is_guest claim.
	tokens, err := s.issueTokens(user.ID, user.Role, false)
	if err != nil {
		return model.User{}, model.TokenPair{}, err
	}

	return user, tokens, nil
}
