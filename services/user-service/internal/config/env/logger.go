package env

import "os"

type loggerConfig struct {
	level  string
	asJson bool
}

// NewLoggerConfig создает новую конфигурацию логгера
func NewLoggerConfig() (*loggerConfig, error) {
	level := os.Getenv("LOGGER_LEVEL")
	if level == "" {
		level = "info"
	}

	asJson := os.Getenv("LOGGER_AS_JSON") == "true"

	return &loggerConfig{
		level:  level,
		asJson: asJson,
	}, nil
}

func (c *loggerConfig) Level() string {
	return c.level
}

func (c *loggerConfig) AsJson() bool {
	return c.asJson
}
