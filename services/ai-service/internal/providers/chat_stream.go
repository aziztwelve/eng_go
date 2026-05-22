package providers

import (
	"context"
	"strings"
	"time"
	"unicode/utf8"
)

// ChatStreamChunk — единица потока для server-streaming chat.
//
// Контракт:
//   - Промежуточные chunk'и: `Delta != ""`, `Done == false`, `Err == nil`.
//   - Финальный chunk: `Done == true`, в нём могут быть валидные
//     `TokensUsed` / `CostUSD`. После финального больше ничего не приходит.
//   - Если случилась ошибка в середине — отдельный chunk с `Err != nil`,
//     после него канал ОБЯЗАТЕЛЬНО закрывается без Done.
type ChatStreamChunk struct {
	Delta      string
	Done       bool
	TokensUsed int32
	CostUSD    float64
	Err        error
}

// StreamingProvider — опциональный интерфейс провайдера: умеет нативный
// chat-streaming. Если provider реализует — service использует его;
// иначе fallback к `EmulateStream` поверх обычного `Chat()`.
type StreamingProvider interface {
	ChatStream(ctx context.Context, messages []PromptMessage, opts ChatOptions) (<-chan ChatStreamChunk, error)
}

// EmulateStream — превращает уже готовый `ChatResponse` в поток chunk'ов
// с типографической разбивкой (по словам / пунктуации). Используется
// как fallback для провайдеров без native SSE (mock, anthropic-MVP).
//
// Параметры:
//   - delay — пауза между chunk'ами для типрайтер-эффекта. Ноль ⇒ без задержки.
//   - chunkSize — желаемый размер chunk'а в символах (приблизительный).
//     Поток режется по границам слов так, чтобы chunk был ~`chunkSize`.
//
// Канал закрывается после последнего chunk'а (Done=true).
// Эмиттер прерывается, если ctx отменён — в канал отправляется error chunk.
func EmulateStream(
	ctx context.Context,
	resp *ChatResponse,
	delay time.Duration,
	chunkSize int,
) <-chan ChatStreamChunk {
	out := make(chan ChatStreamChunk, 16)
	go func() {
		defer close(out)
		if resp == nil {
			out <- ChatStreamChunk{Done: true}
			return
		}
		if chunkSize < 1 {
			chunkSize = 6
		}
		for _, piece := range chunkByWords(resp.Content, chunkSize) {
			select {
			case <-ctx.Done():
				out <- ChatStreamChunk{Err: ctx.Err()}
				return
			default:
			}
			out <- ChatStreamChunk{Delta: piece}
			if delay > 0 {
				select {
				case <-ctx.Done():
					out <- ChatStreamChunk{Err: ctx.Err()}
					return
				case <-time.After(delay):
				}
			}
		}
		out <- ChatStreamChunk{
			Done:       true,
			TokensUsed: resp.TokensUsed,
			CostUSD:    resp.CostUSD,
		}
	}()
	return out
}

// chunkByWords режет текст на куски по ~chunkSize символов, не разрывая
// слова. Сохраняет пробелы и переносы строк (idempotent относительно конкатенации).
func chunkByWords(s string, chunkSize int) []string {
	if s == "" {
		return nil
	}
	var (
		out []string
		cur strings.Builder
	)
	tokens := splitKeepDelims(s)
	for _, tok := range tokens {
		// Если текущий буфер уже накопил >= chunkSize и токен — пробельный/
		// перенос, делаем cut здесь, чтобы chunk заканчивался разделителем
		// (а не посреди слова).
		if utf8.RuneCountInString(cur.String()) >= chunkSize && isWhitespace(tok) {
			cur.WriteString(tok)
			out = append(out, cur.String())
			cur.Reset()
			continue
		}
		cur.WriteString(tok)
	}
	if cur.Len() > 0 {
		out = append(out, cur.String())
	}
	return out
}

// splitKeepDelims разбивает строку на токены: либо «слово» (без пробелов),
// либо «пробельный run» (пробелы / переносы / табы). Сохраняет порядок.
func splitKeepDelims(s string) []string {
	var (
		tokens   []string
		buf      strings.Builder
		inSpaces bool
	)
	flush := func() {
		if buf.Len() > 0 {
			tokens = append(tokens, buf.String())
			buf.Reset()
		}
	}
	for _, r := range s {
		isSp := r == ' ' || r == '\t' || r == '\n' || r == '\r'
		if isSp != inSpaces && buf.Len() > 0 {
			flush()
		}
		inSpaces = isSp
		buf.WriteRune(r)
	}
	flush()
	return tokens
}

func isWhitespace(s string) bool {
	for _, r := range s {
		switch r {
		case ' ', '\t', '\n', '\r':
			continue
		default:
			return false
		}
	}
	return true
}
