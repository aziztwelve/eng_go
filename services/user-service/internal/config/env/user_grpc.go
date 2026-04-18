package env

import (
	"fmt"
	"os"
)

type userGRPCConfig struct {
	host string
	port string
}

// NewUserGRPCConfig создает новую конфигурацию gRPC сервера
func NewUserGRPCConfig() (*userGRPCConfig, error) {
	host := os.Getenv("GRPC_HOST")
	if host == "" {
		host = "0.0.0.0"
	}

	port := os.Getenv("GRPC_PORT")
	if port == "" {
		port = "50052"
	}

	return &userGRPCConfig{
		host: host,
		port: port,
	}, nil
}

func (c *userGRPCConfig) Host() string {
	return c.host
}

func (c *userGRPCConfig) Port() string {
	return c.port
}

func (c *userGRPCConfig) Address() string {
	return fmt.Sprintf("%s:%s", c.host, c.port)
}
