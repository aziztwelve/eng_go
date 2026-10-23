package v1

import (
	"context"
	"errors"
	"github.com/elearning/auth-service/internal/model"
	def "github.com/elearning/auth-service/internal/service"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"testing"
)

type validateStub struct {
	def.AuthService
	err error
}

func (s validateStub) ValidateToken(context.Context, string) (string, string, bool, error) {
	return "a", "student", false, s.err
}
func TestValidationOutageIsNotARevokedSession(t *testing.T) {
	a := &api{authService: validateStub{err: errors.New("database down")}}
	if _, err := a.ValidateToken(context.Background(), &authv1.ValidateTokenRequest{}); status.Code(err) != codes.Unavailable {
		t.Fatal("outage must propagate as unavailable", err)
	}
	a.authService = validateStub{err: model.ErrInvalidToken}
	res, err := a.ValidateToken(context.Background(), &authv1.ValidateTokenRequest{})
	if err != nil || res.Valid {
		t.Fatal("invalid token must remain rejected", res, err)
	}
}
