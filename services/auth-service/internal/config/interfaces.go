package config

// Config содержит все конфигурации приложения
type Config struct {
	Logger   LoggerConfig
	AuthGRPC AuthGRPCConfig
	Postgres PostgresConfig
	JWT      JWTConfig
}

// LoggerConfig содержит настройки логгера
type LoggerConfig interface {
	Level() string
	AsJson() bool
}

// AuthGRPCConfig содержит настройки gRPC сервера
type AuthGRPCConfig interface {
	Address() string
}

// PostgresConfig содержит настройки PostgreSQL
type PostgresConfig interface {
	Host() string
	Port() string
	Database() string
	Schema() string
	User() string
	Password() string
}

// JWTConfig содержит настройки JWT
type JWTConfig interface {
	Secret() string
	AccessTTL() string
	RefreshTTL() string
}
