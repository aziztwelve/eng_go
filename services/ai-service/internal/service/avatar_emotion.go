package service

import "strings"

// emotionPrefix buffers only the start of an opted-in answer. A valid model
// tag becomes metadata, never message text. Missing/malformed tags pass through;
// a complete tag with an unknown emotion is discarded.
type emotionPrefix struct {
	pending string
	decided bool
}

func (p *emotionPrefix) feed(chunk string, final bool) (emotion, text string) {
	if p.decided {
		return "", chunk
	}
	p.pending += chunk
	const prefix = "[[emotion:"
	if strings.HasPrefix(prefix, p.pending) && !final {
		return "", ""
	}
	if strings.HasPrefix(p.pending, prefix) {
		end := strings.Index(p.pending, "]]")
		if end < 0 && len(p.pending) <= 40 && !final {
			return "", ""
		}
		if end >= 0 {
			candidate := p.pending[len(prefix):end]
			p.decided = true
			text = strings.TrimPrefix(p.pending[end+2:], " ")
			p.pending = ""
			if candidate == "neutral" || candidate == "happy" || candidate == "thinking" {
				return candidate, text
			}
			return "", text
		}
	}
	p.decided = true
	text, p.pending = p.pending, ""
	return "", text
}
