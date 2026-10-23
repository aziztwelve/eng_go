package auth

import (
	"context"
	"errors"
	"github.com/elearning/auth-service/internal/model"
	"github.com/elearning/auth-service/internal/repository"
	"github.com/golang-jwt/jwt/v5"
	"testing"
	"time"
)

type validationRepo struct {
	repository.AuthRepository
	user model.User
	err  error
}

func (r validationRepo) GetByID(context.Context, string) (model.User, error) { return r.user, r.err }
func TestDeletedAccountCannotUseUnexpiredAccessToken(t *testing.T) {
	repo := validationRepo{user: model.User{ID: "a", Role: "student"}}
	svc := &service{jwtSecret: "test-key", authRepository: repo}
	token, err := jwt.NewWithClaims(jwt.SigningMethodHS256, accessTokenClaims{RegisteredClaims: jwt.RegisteredClaims{ExpiresAt: jwt.NewNumericDate(time.Now().Add(time.Hour))}, UserID: "a", Role: "admin"}).SignedString([]byte("test-key"))
	if err != nil {
		t.Fatal(err)
	}
	id, role, _, err := svc.ValidateToken(context.Background(), token)
	if err != nil || id != "a" || role != "student" {
		t.Fatal("current role must replace stale claim", id, role, err)
	}
	svc.authRepository = validationRepo{err: model.ErrUserNotFound}
	if _, _, _, err = svc.ValidateToken(context.Background(), token); !errors.Is(err, model.ErrInvalidToken) {
		t.Fatal("deleted user token accepted", err)
	}
	databaseFailure := errors.New("database unavailable")
	svc.authRepository = validationRepo{err: databaseFailure}
	if _, _, _, err = svc.ValidateToken(context.Background(), token); !errors.Is(err, databaseFailure) {
		t.Fatal("outage mistaken for revoked token", err)
	}
}
