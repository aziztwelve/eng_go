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

func TestLegacyOAuthNeverAcceptsUnverifiedCredentials(t *testing.T) {
	for _, provider := range []string{"google", "apple", "guest_fake"} {
		repo, svc := newOAuthSvc()
		_, _, err := svc.ClaimGuestWithOAuth(context.Background(), "guest", provider, "forged-token", "victim@example.com", "Victim")
		if !errors.Is(err, model.ErrInvalidCredentials) {
			t.Fatalf("provider %s: %v", provider, err)
		}
		if repo.lastSub != "" {
			t.Fatal("unverified identity reached repository")
		}
	}
}
