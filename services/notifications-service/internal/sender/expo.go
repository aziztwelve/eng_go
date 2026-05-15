package sender

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"net/http"
	"strings"
	"time"

	"go.uber.org/zap"

	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/platform/pkg/logger"
)

// ExpoPushSender — Expo HTTP push API.
//
// Endpoint: POST https://exp.host/--/api/v2/push/send
// Tokens: ExponentPushToken[xxx] (или старый формат ExpoPushToken[xxx]).
//
// Per-ticket ошибки `DeviceNotRegistered` помечаем для revoke.
type ExpoPushSender struct {
	apiURL     string
	httpClient *http.Client
}

// NewExpoPushSender — конструктор. apiURL пуст → дефолтный prod.
func NewExpoPushSender(apiURL string) *ExpoPushSender {
	if apiURL == "" {
		apiURL = "https://exp.host/--/api/v2/push/send"
	}
	return &ExpoPushSender{
		apiURL:     apiURL,
		httpClient: &http.Client{Timeout: 10 * time.Second},
	}
}

func (s *ExpoPushSender) Platform() model.Platform { return model.PlatformExpo }

// expoMessage — payload одного push'а в batch-запросе.
type expoMessage struct {
	To       string          `json:"to"`
	Title    string          `json:"title"`
	Body     string          `json:"body,omitempty"`
	Sound    string          `json:"sound,omitempty"`
	Data     json.RawMessage `json:"data,omitempty"`
	Priority string          `json:"priority,omitempty"`
}

// expoTicket — ответ Expo для одного push'а.
//
// Успех: { "status":"ok", "id":"<receipt-id>" }
// Ошибка: { "status":"error", "message":"...", "details": { "error":"DeviceNotRegistered" } }
type expoTicket struct {
	Status  string `json:"status"`
	ID      string `json:"id,omitempty"`
	Message string `json:"message,omitempty"`
	Details struct {
		Error string `json:"error,omitempty"`
	} `json:"details,omitempty"`
}

type expoResponse struct {
	Data   []expoTicket `json:"data"`
	Errors []struct {
		Message string `json:"message"`
	} `json:"errors,omitempty"`
}

func (s *ExpoPushSender) Send(ctx context.Context, dev *model.DeviceToken, msg Message) Outcome {
	if !isExpoToken(dev.Token) {
		return Outcome{DeviceID: dev.ID, OK: false, Error: "expo: invalid token format", ShouldRevoke: true}
	}

	payload := []expoMessage{{
		To:       dev.Token,
		Title:    msg.Title,
		Body:     msg.Body,
		Sound:    "default",
		Data:     msg.Data,
		Priority: "default",
	}}
	body, err := json.Marshal(payload)
	if err != nil {
		return Outcome{DeviceID: dev.ID, OK: false, Error: fmt.Sprintf("marshal: %v", err)}
	}

	req, err := http.NewRequestWithContext(ctx, http.MethodPost, s.apiURL, bytes.NewReader(body))
	if err != nil {
		return Outcome{DeviceID: dev.ID, OK: false, Error: fmt.Sprintf("req: %v", err)}
	}
	req.Header.Set("Content-Type", "application/json")
	req.Header.Set("Accept", "application/json")
	req.Header.Set("Accept-Encoding", "gzip, deflate")

	resp, err := s.httpClient.Do(req)
	if err != nil {
		return Outcome{DeviceID: dev.ID, OK: false, Error: fmt.Sprintf("send: %v", err)}
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		logger.Warn(ctx, "expo push http error", zap.String("device_id", dev.ID), zap.Int("status", resp.StatusCode))
		return Outcome{DeviceID: dev.ID, OK: false, Error: fmt.Sprintf("expo http %d", resp.StatusCode)}
	}

	var er expoResponse
	if err := json.NewDecoder(resp.Body).Decode(&er); err != nil {
		return Outcome{DeviceID: dev.ID, OK: false, Error: fmt.Sprintf("decode: %v", err)}
	}
	if len(er.Errors) > 0 {
		// Глобальные ошибки запроса (auth, rate limit, etc.) — не revoke.
		return Outcome{DeviceID: dev.ID, OK: false, Error: er.Errors[0].Message}
	}
	if len(er.Data) == 0 {
		return Outcome{DeviceID: dev.ID, OK: false, Error: "expo: empty tickets"}
	}
	t := er.Data[0]
	if t.Status == "ok" {
		return Outcome{DeviceID: dev.ID, OK: true}
	}
	shouldRevoke := t.Details.Error == "DeviceNotRegistered"
	logger.Warn(ctx, "expo push ticket error",
		zap.String("device_id", dev.ID),
		zap.String("ticket_error", t.Details.Error),
		zap.String("message", t.Message),
		zap.Bool("revoke", shouldRevoke),
	)
	return Outcome{
		DeviceID:     dev.ID,
		OK:           false,
		ShouldRevoke: shouldRevoke,
		Error:        t.Message,
	}
}

func isExpoToken(t string) bool {
	return strings.HasPrefix(t, "ExponentPushToken[") || strings.HasPrefix(t, "ExpoPushToken[")
}
