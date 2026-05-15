package service

import (
	"github.com/elearning/ai-service/internal/scenarios"
)

// ListScenarios — каталог roleplay-сценариев. Если language/level
// заданы — фильтр.
func (s *Service) ListScenarios(language, level string) []scenarios.Scenario {
	if language == "" && level == "" {
		return scenarios.ListAll()
	}
	return scenarios.FilterByLanguageLevel(language, level)
}
