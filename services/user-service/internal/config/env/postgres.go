package env

import (
	"fmt"
	"os"
)

type postgresConfig struct {
	host     string
	port     string
	database string
	schema   string
	user     string
	password string
}

// NewPostgresConfig создает новую конфигурацию PostgreSQL
func NewPostgresConfig() (*postgresConfig, error) {
	host := os.Getenv("POSTGRES_HOST")
	if host == "" {
		return nil, fmt.Errorf("POSTGRES_HOST is required")
	}

	port := os.Getenv("POSTGRES_PORT")
	if port == "" {
		port = "5432"
	}

	database := os.Getenv("POSTGRES_DB")
	if database == "" {
		return nil, fmt.Errorf("POSTGRES_DB is required")
	}

	schema := os.Getenv("POSTGRES_SCHEMA")
	if schema == "" {
		schema = "users"
	}

	user := os.Getenv("POSTGRES_USER")
	if user == "" {
		return nil, fmt.Errorf("POSTGRES_USER is required")
	}

	password := os.Getenv("POSTGRES_PASSWORD")
	if password == "" {
		return nil, fmt.Errorf("POSTGRES_PASSWORD is required")
	}

	return &postgresConfig{
		host:     host,
		port:     port,
		database: database,
		schema:   schema,
		user:     user,
		password: password,
	}, nil
}

func (c *postgresConfig) Host() string {
	return c.host
}

func (c *postgresConfig) Port() string {
	return c.port
}

func (c *postgresConfig) Database() string {
	return c.database
}

func (c *postgresConfig) Schema() string {
	return c.schema
}

func (c *postgresConfig) User() string {
	return c.user
}

func (c *postgresConfig) Password() string {
	return c.password
}
