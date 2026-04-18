package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/auth-service/internal/model"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

// TokenPairToProto конвертирует доменную модель TokenPair в proto
func TokenPairToProto(tokenPair model.TokenPair) *authv1.LoginResponse {
	return &authv1.LoginResponse{
		AccessToken:  tokenPair.AccessToken,
		RefreshToken: tokenPair.RefreshToken,
		ExpiresAt:    timestamppb.New(tokenPair.ExpiresAt),
	}
}
