package postgres

import (
	"errors"
	"strconv"
	"time"

	"github.com/jackc/pgx/v5/pgconn"
)

const pgUniqueViolation = "23505"

func isUniqueViolation(err error) bool {
	var pgErr *pgconn.PgError
	if errors.As(err, &pgErr) {
		return pgErr.Code == pgUniqueViolation
	}
	return false
}

// nullTime — *time.Time → driver-value (interface{}) для NULLable колонок.
func nullTime(t *time.Time) any {
	if t == nil {
		return nil
	}
	return *t
}

func itoa(i int) string { return strconv.Itoa(i) }
