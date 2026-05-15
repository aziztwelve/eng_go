package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/course-service/internal/converter"
	"github.com/elearning/course-service/internal/service"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// SynthesizeTTS — на phase-2 stub: ожидает audio_url в запросе и
// записывает его в кэш под (text, language, voice).
func (a *api) SynthesizeTTS(ctx context.Context, req *coursev1.SynthesizeTTSRequest) (*coursev1.SynthesizeTTSResponse, error) {
	entry, created, err := a.ttsService.Synthesize(ctx, service.SynthesizeRequest{
		Text:       req.Text,
		Language:   req.Language,
		Voice:      req.Voice,
		AudioURL:   req.AudioUrl,
		DurationMs: req.DurationMs,
	})
	switch {
	case errors.Is(err, service.ErrTTSProviderNotConfigured):
		return nil, status.Error(codes.InvalidArgument,
			"audio_url is required (phase-2 stub: TTS provider not configured)")
	case err != nil:
		return nil, status.Errorf(codes.InvalidArgument, "tts synthesize failed: %v", err)
	}
	return &coursev1.SynthesizeTTSResponse{
		Entry:   converter.ToTTSCacheEntryProto(entry),
		Created: created,
	}, nil
}

// GetTTSByText — читает запись из кэша.
func (a *api) GetTTSByText(ctx context.Context, req *coursev1.GetTTSByTextRequest) (*coursev1.GetTTSByTextResponse, error) {
	entry, err := a.ttsService.GetByText(ctx, req.Text, req.Language, req.Voice)
	switch {
	case errors.Is(err, service.ErrTTSNotCached):
		return nil, status.Error(codes.NotFound, "tts cache miss")
	case err != nil:
		return nil, status.Errorf(codes.InvalidArgument, "tts lookup failed: %v", err)
	}
	return &coursev1.GetTTSByTextResponse{Entry: converter.ToTTSCacheEntryProto(entry)}, nil
}
