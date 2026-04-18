package auth

import (
	"github.com/jackc/pgx/v5/pgxpool"

	def "github.com/elearning/auth-service/internal/repository"
)

var _ def.AuthRepository = (*repository)(nil)

type repository struct {
	pool *pgxpool.Pool
}

// NewRepository создает новый экземпляр репозитория
func NewRepository(pool *pgxpool.Pool) *repository {
	return &repository{
		pool: pool,
	}
}
