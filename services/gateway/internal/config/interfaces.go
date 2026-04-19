package config

// Config содержит все конфигурации приложения
type Config struct {
	Logger   LoggerConfig
	HTTP     HTTPConfig
	Services ServicesConfig
}

// LoggerConfig содержит настройки логгера
type LoggerConfig interface {
	Level() string
	AsJson() bool
}

// HTTPConfig содержит настройки HTTP сервера
type HTTPConfig interface {
	Address() string
}

// ServicesConfig содержит адреса gRPC сервисов
type ServicesConfig interface {
	AuthServiceAddr() string
	UserServiceAddr() string
	CourseServiceAddr() string
	VideoServiceAddr() string
	QuizServiceAddr() string
}
