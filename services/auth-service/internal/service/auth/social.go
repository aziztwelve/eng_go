package auth

import (
	"context"
	"crypto/rand"
	"crypto/sha256"
	"encoding/base64"
	"encoding/hex"
	"strings"

	"github.com/elearning/auth-service/internal/model"
	"github.com/elearning/auth-service/internal/social"
	"github.com/google/uuid"
)

type socialVerifier interface {
	Enabled(string) bool
	Verify(context.Context, string, string, string, string) (social.Identity, error)
}

// Separate extension keeps the legacy repository interface compatible.
type socialRepository interface {
	CreateSocialChallenge(context.Context, string, string, string) error
	SocialChallengeHash(context.Context, string, string) (string, error)
	ConsumeSocialChallenge(context.Context, string, string) (bool, error)
	FindOrCreateSocialUser(context.Context, string, string, string, string) (model.User, bool, error)
}

func (s *service) SocialChallenge(ctx context.Context, provider string) (string, string, error) {
	if !s.social.Enabled(provider) {
		return "", "", social.ErrUnavailable
	}
	bytes := make([]byte, 32)
	if _, err := rand.Read(bytes); err != nil {
		return "", "", err
	}
	nonce := base64.RawURLEncoding.EncodeToString(bytes)
	id := uuid.NewString()
	hash := sha256.Sum256([]byte(nonce))
	repo, ok := s.authRepository.(socialRepository)
	if !ok {
		return "", "", social.ErrUnavailable
	}
	if err := repo.CreateSocialChallenge(ctx, id, provider, hex.EncodeToString(hash[:])); err != nil {
		return "", "", err
	}
	return id, nonce, nil
}

func (s *service) SocialLogin(ctx context.Context, provider, challengeID, code, token, name string) (model.TokenPair, bool, error) {
	if !s.social.Enabled(provider) {
		return model.TokenPair{}, false, social.ErrUnavailable
	}
	if _, err := uuid.Parse(challengeID); err != nil {
		return model.TokenPair{}, false, model.ErrInvalidCredentials
	}
	repo, ok := s.authRepository.(socialRepository)
	if !ok {
		return model.TokenPair{}, false, social.ErrUnavailable
	}
	hash, err := repo.SocialChallengeHash(ctx, challengeID, provider)
	if err != nil {
		return model.TokenPair{}, false, err
	}
	identity, err := s.social.Verify(ctx, provider, code, token, hash)
	if err != nil {
		return model.TokenPair{}, false, err
	}
	consumed, err := repo.ConsumeSocialChallenge(ctx, challengeID, provider)
	if err != nil {
		return model.TokenPair{}, false, err
	}
	if !consumed {
		return model.TokenPair{}, false, model.ErrInvalidCredentials
	}
	// Apple only supplies a name at the first authorization. It is display data,
	// never an account identifier. Google supplies its signed name instead.
	if provider == "google" {
		name = identity.Name
	}
	name = strings.TrimSpace(name)
	if len([]rune(name)) > 80 {
		name = string([]rune(name)[:80])
	}
	user, created, err := repo.FindOrCreateSocialUser(ctx, provider, identity.Subject, identity.Email, name)
	if err != nil {
		return model.TokenPair{}, false, err
	}
	tokens, err := s.issueTokens(user.ID, user.Role, false)
	return tokens, created, err
}
