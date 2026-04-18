package user

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

func (s *serv) GetUserLanguages(ctx context.Context, userID string) (nativeLang, targetLang string, err error) {
	if userID == "" {
		return "", "", model.ErrInvalidUserID
	}

	nativeLang, targetLang, err = s.userRepository.GetUserLanguages(ctx, userID)
	if err != nil {
		return "", "", err
	}

	return nativeLang, targetLang, nil
}
