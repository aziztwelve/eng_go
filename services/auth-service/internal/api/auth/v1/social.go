package v1

import (
	"context"
	"errors"
	"github.com/elearning/auth-service/internal/converter"
	"github.com/elearning/auth-service/internal/model"
	"github.com/elearning/auth-service/internal/social"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func socialError(err error) error {
	switch {
	case errors.Is(err, social.ErrUnavailable):
		return status.Error(codes.Unavailable, "Social sign-in is not configured or temporarily unavailable")
	case errors.Is(err, model.ErrInvalidCredentials), errors.Is(err, social.ErrInvalid):
		return status.Error(codes.Unauthenticated, "Unable to verify social sign-in; please try again")
	case errors.Is(err, model.ErrUserAlreadyExists):
		return status.Error(codes.AlreadyExists, "An account with this email already exists. Sign in using its existing method.")
	default:
		return status.Error(codes.Internal, "Social sign-in failed")
	}
}
func (a *api) SocialChallenge(ctx context.Context, req *authv1.SocialChallengeRequest) (*authv1.SocialChallengeResponse, error) {
	id, nonce, err := a.authService.SocialChallenge(ctx, req.GetProvider())
	if err != nil {
		return nil, socialError(err)
	}
	return &authv1.SocialChallengeResponse{ChallengeId: id, Nonce: nonce, ExpiresIn: 300}, nil
}
func (a *api) SocialLogin(ctx context.Context, req *authv1.SocialLoginRequest) (*authv1.SocialLoginResponse, error) {
	tokens, created, err := a.authService.SocialLogin(ctx, req.GetProvider(), req.GetChallengeId(), req.GetAuthorizationCode(), req.GetIdentityToken(), req.GetDisplayName())
	if err != nil {
		return nil, socialError(err)
	}
	return &authv1.SocialLoginResponse{Tokens: converter.TokenPairToProto(tokens), Created: created}, nil
}
