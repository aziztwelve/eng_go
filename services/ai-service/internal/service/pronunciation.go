package service

import (
	"context"
	"fmt"
	"strings"
	"unicode"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/providers"
)

// CheckPronunciationInput — параметры check.
type CheckPronunciationInput struct {
	UserID     string
	StepID     string
	TargetText string
	Audio      []byte
	AudioMime  string
	Language   string
}

// CheckPronunciation — STT через provider.Transcribe + word-level
// alignment (Levenshtein-on-words). На MVP без MinIO upload —
// audio_url остаётся пустым.
//
// Quota: voice_minutes увеличивается на оценку длины аудио (≈ 16 KB/sec).
func (s *Service) CheckPronunciation(ctx context.Context, in CheckPronunciationInput) (*model.PronunciationAttempt, error) {
	if in.UserID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.TargetText) == "" {
		return nil, fmt.Errorf("%w: target_text required", ErrInvalidArgument)
	}
	if len(in.Audio) == 0 {
		return nil, fmt.Errorf("%w: audio required", ErrInvalidArgument)
	}

	// Эвристическая длительность: 16 KB ≈ 1 сек.
	estMinutes := float64(len(in.Audio)) / (16 * 1024 * 60)
	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindVoice, estMinutes); err != nil {
		return nil, err
	}

	stt, err := s.provider.Transcribe(ctx, in.Audio, providers.TranscribeOptions{
		Language:  in.Language,
		AudioMime: in.AudioMime,
	})
	if err != nil {
		return nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
	}

	score, wordScores, feedback := scorePronunciation(in.TargetText, stt.Text)

	var stepID *string
	if in.StepID != "" {
		s := in.StepID
		stepID = &s
	}

	attempt := &model.PronunciationAttempt{
		UserID:          in.UserID,
		StepID:          stepID,
		TargetText:      in.TargetText,
		AudioMime:       in.AudioMime,
		TranscribedText: stt.Text,
		Language:        in.Language,
		AccuracyScore:   score,
		WordScores:      wordScores,
		Feedback:        feedback,
		CostUSD:         stt.CostUSD,
	}
	if err := s.pronunciation.Create(ctx, attempt); err != nil {
		return nil, fmt.Errorf("save attempt: %w", err)
	}

	_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindVoice, estMinutes)
	return attempt, nil
}

// =====================================================================
// Phonetic similarity (mock — Levenshtein on words)
// =====================================================================

// scorePronunciation — простой word-level alignment.
//
// Алгоритм MVP:
//   1. Нормализуем target и transcribed (lowercase + strip пунктуации).
//   2. Сплитим на слова.
//   3. Для каждого target-слова находим best match в transcribed
//      по Levenshtein-distance / max(len). 1.0 = exact match.
//   4. Average — accuracy_score.
//
// Реальный pronunciation check (phonetic alignment) — Phase 5.X-real.
func scorePronunciation(target, transcribed string) (float64, []model.WordScore, string) {
	tWords := normalizeWords(target)
	rWords := normalizeWords(transcribed)
	if len(tWords) == 0 {
		return 0, nil, "Target text is empty."
	}

	scores := make([]model.WordScore, 0, len(tWords))
	totalScore := 0.0
	for _, w := range tWords {
		best := bestMatchScore(w, rWords)
		var fb string
		switch {
		case best >= 0.95:
			fb = "perfect"
		case best >= 0.7:
			fb = "good"
		case best >= 0.4:
			fb = "needs practice"
		default:
			fb = "missing or unclear"
		}
		scores = append(scores, model.WordScore{Word: w, Score: best, Feedback: fb})
		totalScore += best
	}
	avg := totalScore / float64(len(tWords))

	feedback := overallFeedback(avg)
	return avg, scores, feedback
}

func overallFeedback(score float64) string {
	switch {
	case score >= 0.9:
		return "Excellent pronunciation!"
	case score >= 0.7:
		return "Good — most words are clear, keep practicing weak ones."
	case score >= 0.4:
		return "Some words need work. Try slowing down."
	default:
		return "Hard to make out. Re-record more clearly."
	}
}

func normalizeWords(s string) []string {
	var b strings.Builder
	for _, r := range s {
		if unicode.IsLetter(r) || unicode.IsDigit(r) || unicode.IsSpace(r) {
			b.WriteRune(unicode.ToLower(r))
		} else {
			b.WriteRune(' ')
		}
	}
	return strings.Fields(b.String())
}

// bestMatchScore — берёт max(1 - lev/max_len) среди all candidates.
func bestMatchScore(target string, candidates []string) float64 {
	best := 0.0
	for _, c := range candidates {
		score := 1.0 - float64(levenshtein(target, c))/float64(maxLen(target, c))
		if score > best {
			best = score
		}
	}
	if best < 0 {
		best = 0
	}
	return best
}

func levenshtein(a, b string) int {
	ar := []rune(a)
	br := []rune(b)
	la, lb := len(ar), len(br)
	if la == 0 {
		return lb
	}
	if lb == 0 {
		return la
	}
	prev := make([]int, lb+1)
	cur := make([]int, lb+1)
	for j := 0; j <= lb; j++ {
		prev[j] = j
	}
	for i := 1; i <= la; i++ {
		cur[0] = i
		for j := 1; j <= lb; j++ {
			cost := 1
			if ar[i-1] == br[j-1] {
				cost = 0
			}
			cur[j] = min3(prev[j]+1, cur[j-1]+1, prev[j-1]+cost)
		}
		prev, cur = cur, prev
	}
	return prev[lb]
}

func maxLen(a, b string) int {
	la := len([]rune(a))
	lb := len([]rune(b))
	if la > lb {
		return la
	}
	if lb == 0 {
		return 1
	}
	return lb
}

func min3(a, b, c int) int {
	m := a
	if b < m {
		m = b
	}
	if c < m {
		m = c
	}
	return m
}
