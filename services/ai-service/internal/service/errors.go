// Package service — бизнес-логика ai-service.
package service

import "errors"

// Sentinel-ошибки. Маппятся в gRPC коды в api-слое.
var (
	// ErrInvalidArgument — входные параметры не прошли валидацию.
	ErrInvalidArgument = errors.New("invalid argument")
	// ErrNotFound — ресурс не найден.
	ErrNotFound = errors.New("not found")
	// ErrForbidden — попытка обратиться к чужой Conversation/etc.
	ErrForbidden = errors.New("forbidden")
	// ErrQuotaExceeded — суточный лимит свободного плана исчерпан.
	ErrQuotaExceeded = errors.New("quota exceeded")
	// ErrProviderFailed — backend AI-провайдер недоступен / вернул ошибку.
	ErrProviderFailed = errors.New("provider failed")
	// ErrScenarioNotFound — указанный roleplay-сценарий не существует.
	ErrScenarioNotFound = errors.New("scenario not found")
)
