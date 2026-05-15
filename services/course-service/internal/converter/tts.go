package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/course-service/internal/model"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ToTTSCacheEntryProto — model → proto.
func ToTTSCacheEntryProto(t *model.TTSCacheEntry) *coursev1.TTSCacheEntry {
	if t == nil {
		return nil
	}
	return &coursev1.TTSCacheEntry{
		Id:         t.ID,
		Text:       t.Text,
		Language:   t.Language,
		Voice:      t.Voice,
		AudioUrl:   t.AudioURL,
		DurationMs: t.DurationMs,
		CreatedAt:  timestamppb.New(t.CreatedAt),
	}
}
