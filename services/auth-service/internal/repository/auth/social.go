package auth

import (
	"context"
	"errors"
	"strings"

	"github.com/elearning/auth-service/internal/model"
	repoConverter "github.com/elearning/auth-service/internal/repository/converter"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
)

func (r *repository) CreateSocialChallenge(ctx context.Context, id, provider, hash string) error {
	_, err := r.pool.Exec(ctx, `WITH cleanup AS (DELETE FROM public.social_auth_challenges WHERE expires_at < now())
 INSERT INTO public.social_auth_challenges VALUES ($1,$2,$3,now()+interval '5 minutes')`, id, provider, hash)
	return err
}
func (r *repository) SocialChallengeHash(ctx context.Context, id, provider string) (string, error) {
	var hash string
	err := r.pool.QueryRow(ctx, `SELECT nonce_hash FROM public.social_auth_challenges WHERE id=$1 AND provider=$2 AND expires_at>now()`, id, provider).Scan(&hash)
	if errors.Is(err, pgx.ErrNoRows) {
		return "", model.ErrInvalidCredentials
	}
	return hash, err
}
func (r *repository) ConsumeSocialChallenge(ctx context.Context, id, provider string) (bool, error) {
	tag, err := r.pool.Exec(ctx, `DELETE FROM public.social_auth_challenges WHERE id=$1 AND provider=$2 AND expires_at>now()`, id, provider)
	return tag.RowsAffected() == 1, err
}
func (r *repository) FindOrCreateSocialUser(ctx context.Context, provider, sub, email, name string) (model.User, bool, error) {
	lookup := func() (model.User, error) {
		u, err := scanUser(r.pool.QueryRow(ctx, `SELECT `+userColumns+` FROM public.users WHERE oauth_provider=$1 AND oauth_sub=$2 AND is_guest=false`, provider, sub))
		if err != nil {
			return model.User{}, err
		}
		return repoConverter.ToDomainUser(u), nil
	}
	if u, err := lookup(); err == nil {
		return u, false, nil
	} else if !errors.Is(err, pgx.ErrNoRows) {
		return model.User{}, false, err
	}
	// Never merge accounts by matching email. A password account remains separate;
	// the learner must authenticate it before any future explicit linking flow.
	email = strings.ToLower(strings.TrimSpace(email))
	if email == "" {
		return model.User{}, false, model.ErrInvalidCredentials
	}
	id := uuid.NewString()
	if name == "" {
		name = "learner_" + strings.ReplaceAll(id, "-", "")[:10]
	}
	u, err := scanUser(r.pool.QueryRow(ctx, `INSERT INTO public.users
 (id,email,username,password_hash,role,is_guest,oauth_provider,oauth_sub)
 VALUES ($1,$2,$3,NULL,'student',false,$4,$5) RETURNING `+userColumns, id, email, name, provider, sub))
	if err == nil {
		return repoConverter.ToDomainUser(u), true, nil
	}
	var pgerr *pgconn.PgError
	if errors.As(err, &pgerr) && pgerr.Code == "23505" {
		// Concurrent first logins converge on the identity created by the winner.
		if existing, e := lookup(); e == nil {
			return existing, false, nil
		}
		return model.User{}, false, model.ErrUserAlreadyExists
	}
	return model.User{}, false, err
}
