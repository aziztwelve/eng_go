package config

// Config содержит всю конфигурацию приложения
type Config struct {
	Logger   LoggerConfig
	UserGRPC UserGRPCConfig
	Postgres PostgresConfig
}

// LoggerConfig определяет интерфейс для конфигурации логгера
type LoggerConfig interface {
	Level() string
	AsJson() bool
}

// UserGRPCConfig определяет интерфейс для конфигурации gRPC сервера
type UserGRPCConfig interface {
	Host() string
	Port() string
	Address() string
}

// PostgresConfig определяет интерфейс для конфигурации PostgreSQL
type PostgresConfig interface {
	Host() string
	Port() string
	Database() string
	Schema() string
	User() string
	Password() string
}
