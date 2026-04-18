package client

import (
	"context"

	"google.golang.org/grpc"

	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
)

type VideoClient interface {
	GetVideoURL(ctx context.Context, req *videov1.GetVideoURLRequest) (*videov1.GetVideoURLResponse, error)
	GetVideoMetadata(ctx context.Context, req *videov1.GetVideoMetadataRequest) (*videov1.GetVideoMetadataResponse, error)
	UploadVideo(ctx context.Context) (videov1.VideoService_UploadVideoClient, error)
	ListVideos(ctx context.Context, req *videov1.ListVideosRequest) (*videov1.ListVideosResponse, error)
	DeleteVideo(ctx context.Context, req *videov1.DeleteVideoRequest) (*videov1.DeleteVideoResponse, error)
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

func (c *videoClient) UploadVideo(ctx context.Context) (videov1.VideoService_UploadVideoClient, error) {
	return c.client.UploadVideo(ctx)
}

func (c *videoClient) ListVideos(ctx context.Context, req *videov1.ListVideosRequest) (*videov1.ListVideosResponse, error) {
	return c.client.ListVideos(ctx, req)
}

func (c *videoClient) DeleteVideo(ctx context.Context, req *videov1.DeleteVideoRequest) (*videov1.DeleteVideoResponse, error) {
	return c.client.DeleteVideo(ctx, req)
}

func (c *videoClient) Close() error {
	return c.conn.Close()
}
