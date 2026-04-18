package v1

import (
	"bytes"
	"context"
	"io"

	"github.com/pkg/errors"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/video-service/internal/converter"
	"github.com/elearning/video-service/internal/service"
	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
)

type api struct {
	videov1.UnimplementedVideoServiceServer
	videoService *service.VideoService
}

// NewVideoAPI создает новый gRPC API
func NewVideoAPI(videoService *service.VideoService) videov1.VideoServiceServer {
	return &api{
		videoService: videoService,
	}
}

// GetVideoURL получает signed URL для видео
func (a *api) GetVideoURL(ctx context.Context, req *videov1.GetVideoURLRequest) (*videov1.GetVideoURLResponse, error) {
	if req.VideoId == "" {
		return nil, status.Error(codes.InvalidArgument, "video_id is required")
	}

	signedURL, expiresIn, err := a.videoService.GetVideoURL(ctx, req.VideoId, req.UserId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get video URL: %v", err)
	}

	return &videov1.GetVideoURLResponse{
		SignedUrl:         signedURL,
		ExpiresInSeconds: int32(expiresIn),
	}, nil
}

// UploadVideo загружает видео (streaming)
func (a *api) UploadVideo(stream videov1.VideoService_UploadVideoServer) error {
	// Получить метаданные из первого сообщения
	req, err := stream.Recv()
	if err != nil {
		return status.Errorf(codes.Internal, "failed to receive metadata: %v", err)
	}

	metadata := req.GetMetadata()
	if metadata == nil {
		return status.Error(codes.InvalidArgument, "first message must contain metadata")
	}

	// Валидация метаданных
	if metadata.Title == "" {
		return status.Error(codes.InvalidArgument, "title is required")
	}
	if metadata.ContentType == "" {
		return status.Error(codes.InvalidArgument, "content_type is required")
	}
	if metadata.SizeBytes <= 0 {
		return status.Error(codes.InvalidArgument, "size_bytes must be positive")
	}

	// Собрать данные видео в буфер
	var videoData bytes.Buffer
	for {
		req, err := stream.Recv()
		if err == io.EOF {
			break
		}
		if err != nil {
			return status.Errorf(codes.Internal, "failed to receive chunk: %v", err)
		}

		chunk := req.GetChunk()
		if chunk == nil {
			continue
		}

		_, err = videoData.Write(chunk)
		if err != nil {
			return status.Errorf(codes.Internal, "failed to write chunk: %v", err)
		}
	}

	// Проверить размер
	if int64(videoData.Len()) != metadata.SizeBytes {
		return status.Errorf(codes.InvalidArgument, "received size (%d) does not match metadata size (%d)", videoData.Len(), metadata.SizeBytes)
	}

	// Загрузить видео
	modelMetadata := converter.ToVideoMetadataModel(metadata)
	videoID, err := a.videoService.UploadVideo(stream.Context(), modelMetadata, &videoData)
	if err != nil {
		return status.Errorf(codes.Internal, "failed to upload video: %v", err)
	}

	// Отправить ответ
	return stream.SendAndClose(&videov1.UploadVideoResponse{
		VideoId: videoID,
		Message: "Video uploaded successfully",
	})
}

// GetVideoMetadata получает метаданные видео
func (a *api) GetVideoMetadata(ctx context.Context, req *videov1.GetVideoMetadataRequest) (*videov1.GetVideoMetadataResponse, error) {
	if req.VideoId == "" {
		return nil, status.Error(codes.InvalidArgument, "video_id is required")
	}

	video, err := a.videoService.GetVideoMetadata(ctx, req.VideoId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "video not found: %v", err)
	}

	return &videov1.GetVideoMetadataResponse{
		Video: converter.ToVideoProto(video),
	}, nil
}

// ListVideos получает список видео
func (a *api) ListVideos(ctx context.Context, req *videov1.ListVideosRequest) (*videov1.ListVideosResponse, error) {
	page := int(req.Page)
	pageSize := int(req.PageSize)

	if page < 1 {
		page = 1
	}
	if pageSize < 1 {
		pageSize = 20
	}

	videos, total, err := a.videoService.ListVideos(ctx, page, pageSize, req.Status)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to list videos: %v", err)
	}

	protoVideos := make([]*videov1.Video, 0, len(videos))
	for _, video := range videos {
		protoVideos = append(protoVideos, converter.ToVideoProto(video))
	}

	return &videov1.ListVideosResponse{
		Videos: protoVideos,
		Total:  int32(total),
	}, nil
}

// DeleteVideo удаляет видео
func (a *api) DeleteVideo(ctx context.Context, req *videov1.DeleteVideoRequest) (*videov1.DeleteVideoResponse, error) {
	if req.VideoId == "" {
		return nil, status.Error(codes.InvalidArgument, "video_id is required")
	}

	err := a.videoService.DeleteVideo(ctx, req.VideoId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to delete video: %v", err)
	}

	return &videov1.DeleteVideoResponse{
		Success: true,
		Message: "Video deleted successfully",
	}, nil
}
