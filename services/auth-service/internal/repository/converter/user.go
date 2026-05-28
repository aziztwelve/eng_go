package converter

import (
	"database/sql"

	"github.com/elearning/auth-service/internal/model"
	repoModel "github.com/elearning/auth-service/internal/repository/model"
)

// ToRepoUser конвертирует доменную модель в модель репозитория
func ToRepoUser(user model.User) repoModel.User {
	return repoModel.User{
		ID:            user.ID,
		Email:         strPtrToNull(user.Email),
		Username:      user.Username,
		PasswordHash:  strPtrToNull(user.PasswordHash),
		Role:          user.Role,
		CreatedAt:     user.CreatedAt,
		IsGuest:       user.IsGuest,
		GuestDeviceID: strPtrToNull(user.GuestDeviceID),
		OAuthProvider: strPtrToNull(user.OAuthProvider),
		OAuthSub:      strPtrToNull(user.OAuthSub),
	}
}

// ToDomainUser конвертирует модель репозитория в доменную модель
func ToDomainUser(user repoModel.User) model.User {
	return model.User{
		ID:            user.ID,
		Email:         nullToStrPtr(user.Email),
		Username:      user.Username,
		PasswordHash:  nullToStrPtr(user.PasswordHash),
		Role:          user.Role,
		CreatedAt:     user.CreatedAt,
		IsGuest:       user.IsGuest,
		GuestDeviceID: nullToStrPtr(user.GuestDeviceID),
		OAuthProvider: nullToStrPtr(user.OAuthProvider),
		OAuthSub:      nullToStrPtr(user.OAuthSub),
	}
}

func strPtrToNull(s *string) sql.NullString {
	if s == nil {
		return sql.NullString{}
	}
	return sql.NullString{String: *s, Valid: true}
}

func nullToStrPtr(n sql.NullString) *string {
	if !n.Valid {
		return nil
	}
	v := n.String
	return &v
}
