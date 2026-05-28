package auth

import (
	"context"
	"errors"

	"github.com/jackc/pgx/v5"

	"github.com/elearning/auth-service/internal/model"
	repoConverter "github.com/elearning/auth-service/internal/repository/converter"
	repoModel "github.com/elearning/auth-service/internal/repository/model"
)

const userColumns = `id, email, username, password_hash, role, created_at, is_guest, guest_device_id, oauth_provider, oauth_sub`

func scanUser(row pgx.Row) (repoModel.User, error) {
	var u repoModel.User
	err := row.Scan(
		&u.ID,
		&u.Email,
		&u.Username,
		&u.PasswordHash,
		&u.Role,
		&u.CreatedAt,
		&u.IsGuest,
		&u.GuestDeviceID,
		&u.OAuthProvider,
		&u.OAuthSub,
	)
	return u, err
}

func (r *repository) Create(ctx context.Context, user model.User) error {
	repoUser := repoConverter.ToRepoUser(user)

	query := `
		INSERT INTO public.users (id, email, username, password_hash, role, created_at, is_guest, guest_device_id)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
	`

	_, err := r.pool.Exec(
		ctx,
		query,
		repoUser.ID,
		repoUser.Email,
		repoUser.Username,
		repoUser.PasswordHash,
		repoUser.Role,
		repoUser.CreatedAt,
		repoUser.IsGuest,
		repoUser.GuestDeviceID,
	)

	return err
}

func (r *repository) GetByEmail(ctx context.Context, email string) (model.User, error) {
	query := `SELECT ` + userColumns + ` FROM public.users WHERE email = $1`

	repoUser, err := scanUser(r.pool.QueryRow(ctx, query, email))
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	return repoConverter.ToDomainUser(repoUser), nil
}

func (r *repository) GetByID(ctx context.Context, id string) (model.User, error) {
	query := `SELECT ` + userColumns + ` FROM public.users WHERE id = $1`

	repoUser, err := scanUser(r.pool.QueryRow(ctx, query, id))
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	return repoConverter.ToDomainUser(repoUser), nil
}

// GetByGuestDeviceID — поиск гостя по device_id (idempotent bootstrap).
func (r *repository) GetByGuestDeviceID(ctx context.Context, deviceID string) (model.User, error) {
	query := `
		SELECT ` + userColumns + `
		FROM public.users
		WHERE is_guest = TRUE AND guest_device_id = $1
	`

	repoUser, err := scanUser(r.pool.QueryRow(ctx, query, deviceID))
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	return repoConverter.ToDomainUser(repoUser), nil
}

// ClaimGuest атомарно конвертирует гостя в registered user.
// Возвращает ErrUserAlreadyExists если email занят, ErrUserNotFound если
// гость не найден или уже не is_guest.
func (r *repository) ClaimGuest(ctx context.Context, userID, email, username, passwordHash string) (model.User, error) {
	tx, err := r.pool.Begin(ctx)
	if err != nil {
		return model.User{}, err
	}
	defer func() { _ = tx.Rollback(ctx) }()

	// 1. email uniqueness check (на не-self users).
	var taken bool
	err = tx.QueryRow(ctx, `
		SELECT EXISTS(SELECT 1 FROM public.users WHERE email = $1 AND id != $2)
	`, email, userID).Scan(&taken)
	if err != nil {
		return model.User{}, err
	}
	if taken {
		return model.User{}, model.ErrUserAlreadyExists
	}

	// 2. UPDATE с условием is_guest=true (защита от двойного claim).
	query := `
		UPDATE public.users
		SET email = $2,
		    username = $3,
		    password_hash = $4,
		    is_guest = FALSE,
		    guest_device_id = NULL
		WHERE id = $1 AND is_guest = TRUE
		RETURNING ` + userColumns

	repoUser, err := scanUser(tx.QueryRow(ctx, query, userID, email, username, passwordHash))
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	if err := tx.Commit(ctx); err != nil {
		return model.User{}, err
	}

	return repoConverter.ToDomainUser(repoUser), nil
}

// ClaimGuestWithOAuth атомарно конвертирует гостя в registered user через
// OAuth-credentials (Google / Apple / guest_fake stub).
// Возвращает ErrUserAlreadyExists если email/(provider,sub) заняты,
// ErrUserNotFound если гость не найден или уже не is_guest.
func (r *repository) ClaimGuestWithOAuth(
	ctx context.Context,
	userID, email, username, provider, sub string,
) (model.User, error) {
	tx, err := r.pool.Begin(ctx)
	if err != nil {
		return model.User{}, err
	}
	defer func() { _ = tx.Rollback(ctx) }()

	// 1. email uniqueness check (на не-self users).
	var taken bool
	if err := tx.QueryRow(ctx, `
		SELECT EXISTS(SELECT 1 FROM public.users WHERE email = $1 AND id != $2)
	`, email, userID).Scan(&taken); err != nil {
		return model.User{}, err
	}
	if taken {
		return model.User{}, model.ErrUserAlreadyExists
	}

	// 2. (provider, sub) uniqueness check.
	if err := tx.QueryRow(ctx, `
		SELECT EXISTS(
			SELECT 1 FROM public.users
			WHERE oauth_provider = $1 AND oauth_sub = $2 AND id != $3
		)
	`, provider, sub, userID).Scan(&taken); err != nil {
		return model.User{}, err
	}
	if taken {
		return model.User{}, model.ErrUserAlreadyExists
	}

	// 3. UPDATE с условием is_guest=true (защита от двойного claim).
	// password_hash остаётся NULL — auth через OAuth.
	query := `
		UPDATE public.users
		SET email = $2,
		    username = $3,
		    oauth_provider = $4,
		    oauth_sub = $5,
		    is_guest = FALSE,
		    guest_device_id = NULL
		WHERE id = $1 AND is_guest = TRUE
		RETURNING ` + userColumns

	repoUser, err := scanUser(tx.QueryRow(ctx, query, userID, email, username, provider, sub))
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	if err := tx.Commit(ctx); err != nil {
		return model.User{}, err
	}

	return repoConverter.ToDomainUser(repoUser), nil
}

// CleanupExpiredGuests удаляет всех гостей старше cutoff.
func (r *repository) CleanupExpiredGuests(ctx context.Context, cutoffDays int32) (int32, error) {
	if cutoffDays <= 0 {
		cutoffDays = 90
	}
	query := `
		DELETE FROM public.users
		WHERE is_guest = TRUE
		  AND created_at < NOW() - ($1 || ' days')::INTERVAL
	`
	tag, err := r.pool.Exec(ctx, query, cutoffDays)
	if err != nil {
		return 0, err
	}
	return int32(tag.RowsAffected()), nil
}
