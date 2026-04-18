package client

import (
	"context"

	"google.golang.org/grpc"

	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
)

type VideoClient interface {
	GetVideoURL(ctx context.Context, req *videov1.GetVideoURLRequest) (*videov1.GetVideoURLResponse, error)
	GetVideoMetadata(ctx context.Context, req *videov1.GetVideoMetadataRequest) (*videov1.GetVideoMetadataResponse, error)
	Close() error
}

type videoClient struct {
	conn   *grpc.ClientConn
	client videov1.VideoServiceClient
}

func NewVideoClient(address string) (VideoClient, error) {
	conn, err := grpc.Dial(address, grpc.WithInsecure())
	if err != nil {
		return nil, err
	}

	return &videoClient{
		conn:   conn,
		client: videov1.NewVideoServiceClient(conn),
	}, nil
}

func (c *videoClient) GetVideoURL(ctx context.Context, req *videov1.GetVideoURLRequest) (*videov1.GetVideoURLResponse, error) {
	return c.client.GetVideoURL(ctx, req)
}

func (c *videoClient) GetVideoMetadata(ctx context.Context, req *videov1.GetVideoMetadataRequest) (*videov1.GetVideoMetadataResponse, error) {
	return c.client.GetVideoMetadata(ctx, req)
}

func (c *videoClient) Close() error {
	return c.conn.Close()
}
