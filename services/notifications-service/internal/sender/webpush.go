package sender

import (
	"context"
	"encoding/json"
	"fmt"
	"net/http"
	"time"

	webpush "github.com/SherClockHolmes/webpush-go"
	"go.uber.org/zap"

	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/platform/pkg/logger"
)

// WebPushSender — RFC 8030 Web Push (VAPID) через webpush-go.
//
// Тело — JSON `{title, body, data}`. Service Worker на клиенте сам
// решает как отрендерить (showNotification + click handler).
type WebPushSender struct {
	publicKey  string
	privateKey string
	subject    string // "mailto:..." или https URL
	ttl        int    // секунды; default 86400
	httpClient *http.Client
}

// NewWebPushSender — конструктор. Если оба ключа пусты — возвращает nil
// (caller должен это проверить и не регистрировать sender).
func NewWebPushSender(publicKey, privateKey, subject string) *WebPushSender {
	if publicKey == "" || privateKey == "" {
		return nil
	}
	if subject == "" {
		subject = "mailto:admin@example.com"
	}
	return &WebPushSender{
		publicKey:  publicKey,
		privateKey: privateKey,
		subject:    subject,
		ttl:        86400,
		httpClient: &http.Client{Timeout: 10 * time.Second},
	}
}

func (s *WebPushSender) Platform() model.Platform { return model.PlatformWeb }

func (s *WebPushSender) Send(ctx context.Context, dev *model.DeviceToken, msg Message) Outcome {
	if dev.Endpoint == "" || dev.P256DH == "" || dev.Auth == "" {
		return Outcome{DeviceID: dev.ID, OK: false, Error: "web push: missing endpoint/p256dh/auth", ShouldRevoke: true}
	}
	subscription := &webpush.Subscription{
		Endpoint: dev.Endpoint,
		Keys: webpush.Keys{
			P256dh: dev.P256DH,
			Auth:   dev.Auth,
		},
	}

	payload, err := json.Marshal(map[string]any{
		"title": msg.Title,
		"body":  msg.Body,
		"data":  rawOrEmpty(msg.Data),
	})
	if err != nil {
		return Outcome{DeviceID: dev.ID, OK: false, Error: fmt.Sprintf("marshal: %v", err)}
	}

	resp, err := webpush.SendNotificationWithContext(ctx, payload, subscription, &webpush.Options{
		HTTPClient:      s.httpClient,
		Subscriber:      s.subject,
		VAPIDPublicKey:  s.publicKey,
		VAPIDPrivateKey: s.privateKey,
		TTL:             s.ttl,
		Urgency:         webpush.UrgencyNormal,
	})
	if err != nil {
		return Outcome{DeviceID: dev.ID, OK: false, Error: fmt.Sprintf("send: %v", err)}
	}
	defer resp.Body.Close()

	// 201 Created — стандарт. 200/202 тоже валидны у некоторых push-серверов.
	if resp.StatusCode >= 200 && resp.StatusCode < 300 {
		return Outcome{DeviceID: dev.ID, OK: true}
	}
	// 404 Not Found / 410 Gone — токен мёртв, мягко отзываем.
	shouldRevoke := resp.StatusCode == http.StatusNotFound || resp.StatusCode == http.StatusGone
	logger.Warn(ctx, "web push delivery failed",
		zap.String("device_id", dev.ID),
		zap.Int("status", resp.StatusCode),
		zap.Bool("revoke", shouldRevoke),
	)
	return Outcome{
		DeviceID:     dev.ID,
		OK:           false,
		ShouldRevoke: shouldRevoke,
		Error:        fmt.Sprintf("web push http %d", resp.StatusCode),
	}
}

func rawOrEmpty(raw json.RawMessage) any {
	if len(raw) == 0 {
		return map[string]any{}
	}
	var v any
	if err := json.Unmarshal(raw, &v); err != nil {
		return map[string]any{}
	}
	return v
}
