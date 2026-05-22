package service

import (
	"context"

	"go.uber.org/zap"

	"github.com/elearning/ai-service/internal/providers"
	"github.com/elearning/platform/pkg/logger"
)

// redactPII — вспомогательная обёртка вокруг providers.RedactPII.
//
// Гарантии:
//   - Если pii.Enabled == false — возвращает (text, nil) без изменений.
//   - Если в тексте найдена PII — логирует типы (без значений!) и
//     возвращает clean-версию.
//
// Caller обязан использовать clean-версию И для отправки в provider, И
// для сохранения в БД (`ai_messages.content` / `ai_explanations.incorrect_answer`
// / `ai_writing_assessments.user_text`). Это даёт privacy-by-default.
func (s *Service) redactPII(ctx context.Context, text, where string) string {
	if !s.pii.Enabled || text == "" {
		return text
	}
	clean, found := providers.RedactPII(text, s.pii)
	if len(found) > 0 {
		// Логируем только типы — никаких значений в логи.
		types := make([]string, 0, len(found))
		for _, t := range found {
			types = append(types, string(t))
		}
		logger.Info(ctx, "🔒 PII redacted",
			zap.String("where", where),
			zap.Strings("types", types),
		)
	}
	return clean
}
