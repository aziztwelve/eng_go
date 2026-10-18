package auth

import (
	"context"
	"errors"
	"testing"
	"time"

	"github.com/elearning/auth-service/internal/model"
	"github.com/elearning/auth-service/internal/social"
	"github.com/google/uuid"
)

type socialRepoFake struct {
	fakeAuthRepo
	hash           string
	valid          bool
	created        bool
	subject, email string
	writes         int
	conflict       bool
}

func (r *socialRepoFake) CreateSocialChallenge(_ context.Context, id, provider, hash string) error {
	r.hash = hash
	r.valid = true
	return nil
}
func (r *socialRepoFake) SocialChallengeHash(context.Context, string, string) (string, error) {
	if !r.valid {
		return "", model.ErrInvalidCredentials
	}
	return r.hash, nil
}
func (r *socialRepoFake) ConsumeSocialChallenge(context.Context, string, string) (bool, error) {
	if !r.valid {
		return false, nil
	}
	r.valid = false
	return true, nil
}
func (r *socialRepoFake) FindOrCreateSocialUser(_ context.Context, provider, sub, email, name string) (model.User, bool, error) {
	r.writes++
	r.subject = sub
	r.email = email
	if r.conflict {
		return model.User{}, false, model.ErrUserAlreadyExists
	}
	return model.User{ID: "learner", Role: "student"}, r.created, nil
}

type socialVerifierFake struct {
	invalid bool
	hash    string
}

func (v *socialVerifierFake) Enabled(p string) bool { return p == "apple" || p == "google" }
func (v *socialVerifierFake) Verify(_ context.Context, p, code, token, hash string) (social.Identity, error) {
	v.hash = hash
	if v.invalid {
		return social.Identity{}, social.ErrInvalid
	}
	return social.Identity{Subject: "provider-stable-sub", Email: "signed@example.com", Name: "Signed name"}, nil
}
func TestSocialLoginChallengeAndReplay(t *testing.T) {
	repo := &socialRepoFake{created: true}
	verifier := &socialVerifierFake{}
	svc := &service{authRepository: repo, social: verifier, jwtSecret: "test", accessTTL: time.Hour, refreshTTL: time.Hour}
	id, nonce, err := svc.SocialChallenge(context.Background(), "apple")
	if err != nil || nonce == "" {
		t.Fatal(err)
	}
	if _, err := uuid.Parse(id); err != nil {
		t.Fatal(err)
	}
	if repo.hash == nonce || len(repo.hash) != 64 {
		t.Fatal("raw nonce persisted")
	}
	verifier.invalid = true
	if _, _, err := svc.SocialLogin(context.Background(), "apple", id, "", "bad-token", ""); !errors.Is(err, social.ErrInvalid) {
		t.Fatal(err)
	}
	if repo.writes != 0 || !repo.valid {
		t.Fatal("invalid credentials wrote identity or consumed challenge")
	}
	verifier.invalid = false
	tokens, created, err := svc.SocialLogin(context.Background(), "apple", id, "", "verified-token", "")
	if err != nil || !created || tokens.AccessToken == "" {
		t.Fatalf("%v created=%v", err, created)
	}
	if repo.subject != "provider-stable-sub" || repo.email != "signed@example.com" || verifier.hash != repo.hash {
		t.Fatal("did not use verified claims/nonce")
	}
	if _, _, err := svc.SocialLogin(context.Background(), "apple", id, "", "verified-token", ""); !errors.Is(err, model.ErrInvalidCredentials) {
		t.Fatal("challenge replay accepted")
	}
	if repo.writes != 1 {
		t.Fatal("replay created user")
	}
	repo.created = false
	id, _, _ = svc.SocialChallenge(context.Background(), "apple")
	if _, created, err := svc.SocialLogin(context.Background(), "apple", id, "", "token", ""); err != nil || created {
		t.Fatalf("repeat login: %v", err)
	}
	repo.conflict = true
	id, _, _ = svc.SocialChallenge(context.Background(), "google")
	if _, _, err := svc.SocialLogin(context.Background(), "google", id, "code", "", ""); !errors.Is(err, model.ErrUserAlreadyExists) {
		t.Fatal("email conflict ignored")
	}
}
