package converter

import (
	"github.com/elearning/video-service/internal/model"
	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
	"google.golang.org/protobuf/types/known/timestamppb"
)

// ToVideoProto конвертирует model.Video в proto Video
func ToVideoProto(video *model.Video) *videov1.Video {
	if video == nil {
		return nil
	}

	protoVideo := &videov1.Video{
		Id:          video.ID,
		Title:       video.Title,
		Description: video.Description,
		StorageKey:  video.StorageKey,
		BucketName:  video.BucketName,
		ContentType: video.ContentType,
		SizeBytes:   video.SizeBytes,
		Status:      string(video.Status),
		CreatedAt:   timestamppb.New(video.CreatedAt),
		UpdatedAt:   timestamppb.New(video.UpdatedAt),
	}

	if video.DurationSeconds != nil {
		protoVideo.DurationSeconds = *video.DurationSeconds
	}

	if video.Resolution != nil {
		protoVideo.Resolution = *video.Resolution
	}

	if video.ThumbnailURL != nil {
		protoVideo.ThumbnailUrl = *video.ThumbnailURL
	}

	if video.UploadedBy != nil {
		protoVideo.UploadedBy = *video.UploadedBy
	}

	return protoVideo
}

// ToVideoMetadataModel конвертирует proto VideoMetadata в model.VideoMetadata
func ToVideoMetadataModel(proto *videov1.VideoMetadata) *model.VideoMetadata {
	if proto == nil {
		return nil
	}

	metadata := &model.VideoMetadata{
		Title:       proto.Title,
		Description: proto.Description,
		ContentType: proto.ContentType,
		SizeBytes:   proto.SizeBytes,
	}

	if proto.DurationSeconds > 0 {
		metadata.DurationSeconds = &proto.DurationSeconds
	}

	if proto.Resolution != "" {
		metadata.Resolution = &proto.Resolution
	}

	if proto.UploadedBy != "" {
		metadata.UploadedBy = &proto.UploadedBy
	}

	return metadata
}
