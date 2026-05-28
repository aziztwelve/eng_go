package auth

import (
	"context"
	"errors"
	"testing"
	"time"

	"github.com/elearning/auth-service/internal/model"
)

// fakeAuthRepo — заглушка repository.AuthRepository, используем только
// для ClaimGuestWithOAuth-тестов. Все методы кроме нужных — stub.
type fakeAuthRepo struct {
	claimOAuthResult model.User
	claimOAuthErr    error

	lastUserID   string
	lastEmail    string
	lastUsername string
	lastProvider string
	lastSub      string
	calls        int
}

func (f *fakeAuthRepo) Create(ctx context.Context, user model.User) error { return nil }
func (f *fakeAuthRepo) GetByEmail(ctx context.Context, email string) (model.User, error) {
	return model.User{}, model.ErrUserNotFound
}
func (f *fakeAuthRepo) GetByID(ctx context.Context, id string) (model.User, error) {
	return model.User{}, model.ErrUserNotFound
}
func (f *fakeAuthRepo) ListUsers(ctx context.Context, limit, offset int32, search, role string) ([]model.User, int32, error) {
	return nil, 0, nil
}
func (f *fakeAuthRepo) UpdateUserRole(ctx context.Context, userID, role string) (model.User, error) {
	return model.User{}, nil
}
func (f *fakeAuthRepo) DeleteUser(ctx context.Context, userID string) error { return nil }
func (f *fakeAuthRepo) SearchByUsername(ctx context.Context, query string, limit int32, excludeUserID string) ([]model.User, error) {
	return nil, nil
}
func (f *fakeAuthRepo) GetByGuestDeviceID(ctx context.Context, deviceID string) (model.User, error) {
	return model.User{}, model.ErrUserNotFound
}
func (f *fakeAuthRepo) ClaimGuest(ctx context.Context, userID, email, username, passwordHash string) (model.User, error) {
	return model.User{}, nil
}
func (f *fakeAuthRepo) ClaimGuestWithOAuth(ctx context.Context, userID, email, username, provider, sub string) (model.User, error) {
	f.calls++
	f.lastUserID = userID
	f.lastEmail = email
	f.lastUsername = username
	f.lastProvider = provider
	f.lastSub = sub
	if f.claimOAuthErr != nil {
		return model.User{}, f.claimOAuthErr
	}
	u := f.claimOAuthResult
	if u.ID == "" {
		u.ID = userID
	}
	if u.Role == "" {
		u.Role = "student"
	}
	return u, nil
}
func (f *fakeAuthRepo) CleanupExpiredGuests(ctx context.Context, cutoffDays int32) (int32, error) {
	return 0, nil
}

func newOAuthSvc() (*fakeAuthRepo, *service) {
	repo := &fakeAuthRepo{}
	return repo, &service{
		authRepository: repo,
		jwtSecret:      "test-secret-please-ignore",
		accessTTL:      15 * time.Minute,
		refreshTTL:     7 * 24 * time.Hour,
	}
}

func TestClaimGuestWithOAuth_HappyPath_Google(t *testing.T) {
	repo, svc := newOAuthSvc()
	user, tokens, err := svc.ClaimGuestWithOAuth(
		context.Background(),
		"guest-123",
		"google",
		"fake-google-id-token",
		"alice@example.com",
		"Alice",
	)
	if err != nil {
		t.Fatalf("err=%v", err)
	}
	if user.ID != "guest-123" {
		t.Fatalf("user_id preserved? got %q", user.ID)
	}
	if tokens.AccessToken == "" || tokens.RefreshToken == "" {
		t.Fatalf("tokens empty: %+v", tokens)
	}
	if repo.calls != 1 {
		t.Fatalf("calls=%d", repo.calls)
	}
	if repo.lastProvider != "google" {
		t.Fatalf("provider=%q, want google", repo.lastProvider)
	}
	if repo.lastEmail != "alice@example.com" {
		t.Fatalf("email=%q", repo.lastEmail)
	}
	if repo.lastUsername != "Alice" {
		t.Fatalf("username=%q, want Alice", repo.lastUsername)
	}
	if repo.lastSub == "" {
		t.Fatalf("sub empty — should be sha256 of provider:id_token")
	}
}

func TestClaimGuestWithOAuth_GeneratesUsername_WhenDisplayNameEmpty(t *testing.T) {
	repo, svc := newOAuthSvc()
	_, _, err := svc.ClaimGuestWithOAuth(
		context.Background(), "guest-1", "google", "tk", "u@e.com", "",
	)
	if err != nil {
		t.Fatalf("err=%v", err)
	}
	if !startsWith(repo.lastUsername, "user_") {
		t.Fatalf("username=%q, want 'user_<sub8>'", repo.lastUsername)
	}
	if len(repo.lastUsername) != len("user_")+8 {
		t.Fatalf("username len=%d, want %d", len(repo.lastUsername), len("user_")+8)
	}
}

func TestClaimGuestWithOAuth_GuestFakeStub(t *testing.T) {
	// guest_fake provider — Sprint 1 stub, должен приниматься без верификации.
	repo, svc := newOAuthSvc()
	_, tokens, err := svc.ClaimGuestWithOAuth(
		context.Background(), "guest-x", "guest_fake", "anything",
		"test@e.com", "Test User",
	)
	if err != nil {
		t.Fatalf("guest_fake should be accepted: %v", err)
	}
	if tokens.AccessToken == "" {
		t.Fatal("tokens empty")
	}
	if repo.lastProvider != "guest_fake" {
		t.Fatalf("provider=%q", repo.lastProvider)
	}
}

func TestClaimGuestWithOAuth_InvalidProvider(t *testing.T) {
	cases := []string{"facebook", "github", "", "GitHub"}
	for _, p := range cases {
		t.Run(p, func(t *testing.T) {
			repo, svc := newOAuthSvc()
			_, _, err := svc.ClaimGuestWithOAuth(
				context.Background(), "guest", p, "tk", "e@e.com", "Name",
			)
			if !errors.Is(err, model.ErrInvalidCredentials) {
				t.Fatalf("p=%q err=%v, want ErrInvalidCredentials", p, err)
			}
			if repo.calls != 0 {
				t.Fatalf("p=%q repo dialed", p)
			}
		})
	}
}

func TestClaimGuestWithOAuth_MissingFields(t *testing.T) {
	cases := []struct {
		name                       string
		userID, idToken, email     string
	}{
		{"missing_user_id", "", "tk", "e@e.com"},
		{"missing_id_token", "g1", "", "e@e.com"},
		{"missing_email", "g1", "tk", ""},
	}
	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			repo, svc := newOAuthSvc()
			_, _, err := svc.ClaimGuestWithOAuth(
				context.Background(), c.userID, "google", c.idToken, c.email, "Name",
			)
			if !errors.Is(err, model.ErrInvalidCredentials) {
				t.Fatalf("err=%v, want ErrInvalidCredentials", err)
			}
			if repo.calls != 0 {
				t.Fatalf("repo dialed for invalid input")
			}
		})
	}
}

func TestClaimGuestWithOAuth_RepoErrors(t *testing.T) {
	cases := []struct {
		name    string
		repoErr error
	}{
		{"email_taken", model.ErrUserAlreadyExists},
		{"guest_not_found", model.ErrUserNotFound},
	}
	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			repo, svc := newOAuthSvc()
			repo.claimOAuthErr = c.repoErr
			_, _, err := svc.ClaimGuestWithOAuth(
				context.Background(), "g1", "google", "tk", "e@e.com", "N",
			)
			if !errors.Is(err, c.repoErr) {
				t.Fatalf("err=%v, want %v", err, c.repoErr)
			}
		})
	}
}

func TestClaimGuestWithOAuth_SubIsStableForSameToken(t *testing.T) {
	// Один и тот же id_token должен дать одинаковый sub (важно для
	// идемпотентности при повторных вызовах через тот же OAuth-flow).
	repo1, svc1 := newOAuthSvc()
	repo2, svc2 := newOAuthSvc()
	_, _, _ = svc1.ClaimGuestWithOAuth(context.Background(), "g1", "google", "same-token", "a@e.com", "")
	_, _, _ = svc2.ClaimGuestWithOAuth(context.Background(), "g2", "google", "same-token", "b@e.com", "")
	if repo1.lastSub != repo2.lastSub {
		t.Fatalf("sub differs for same id_token: %q vs %q", repo1.lastSub, repo2.lastSub)
	}
}

func TestClaimGuestWithOAuth_ProviderNormalized(t *testing.T) {
	// Provider должен быть case-insensitive + trimmed.
	repo, svc := newOAuthSvc()
	_, _, err := svc.ClaimGuestWithOAuth(
		context.Background(), "g1", " Google ", "tk", "e@e.com", "N",
	)
	if err != nil {
		t.Fatalf("err=%v", err)
	}
	if repo.lastProvider != "google" {
		t.Fatalf("provider=%q, want normalized 'google'", repo.lastProvider)
	}
}

func startsWith(s, prefix string) bool {
	return len(s) >= len(prefix) && s[:len(prefix)] == prefix
}
