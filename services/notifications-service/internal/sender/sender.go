// Package sender — реальная доставка push-сообщений.
//
// На MVP здесь — только интерфейс + log-only реализация. Реальные
// адаптеры (web push через VAPID и Expo HTTP API) — в следующей сессии.
// Сервис проектируется так, чтобы их можно было подключить через
// Dispatcher.Register без изменений в service layer.
package sender

import (
	"context"
	"encoding/json"
	"errors"

	"go.uber.org/zap"

	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/platform/pkg/logger"
)

// Outcome — результат отправки на одно устройство.
type Outcome struct {
	DeviceID string
	OK       bool
	// Если !OK и ShouldRevoke = true, caller обязан мягко отозвать
	// устройство (404/410 от push-провайдера).
	ShouldRevoke bool
	Error        string
}

// Message — то что мы шлём.
type Message struct {
	Title string
	Body  string
	Data  json.RawMessage
}

// Sender — один транспорт (web / expo / ...).
type Sender interface {
	// Platform — какие device.Platform этот sender обрабатывает.
	Platform() model.Platform
	// Send — попытка доставки на одно устройство.
	Send(ctx context.Context, dev *model.DeviceToken, msg Message) Outcome
}

// Dispatcher — выбирает Sender по Platform и собирает Outcome'ы.
type Dispatcher struct {
	senders map[model.Platform]Sender
}

// NewDispatcher — пустой диспетчер.
func NewDispatcher() *Dispatcher {
	return &Dispatcher{senders: make(map[model.Platform]Sender)}
}

// Register — добавить sender. Повторная регистрация перезаписывает.
func (d *Dispatcher) Register(s Sender) { d.senders[s.Platform()] = s }

// Has — есть ли активный sender для платформы.
func (d *Dispatcher) Has(p model.Platform) bool {
	_, ok := d.senders[p]
	return ok
}

// SendAll — последовательно шлёт msg на все devices. Возвращает срез
// Outcome'ов в том же порядке. Контекст отмены прокидывается, но
// внутренних таймаутов sender реализует сам.
func (d *Dispatcher) SendAll(ctx context.Context, devices []*model.DeviceToken, msg Message) []Outcome {
	out := make([]Outcome, 0, len(devices))
	for _, dev := range devices {
		s, ok := d.senders[dev.Platform]
		if !ok {
			out = append(out, Outcome{DeviceID: dev.ID, OK: false, Error: "no sender for platform " + string(dev.Platform)})
			continue
		}
		out = append(out, s.Send(ctx, dev, msg))
	}
	return out
}

// === Log-only sender ===

// LogSender — sender, который ничего не шлёт, только пишет в лог.
// Используется в dev/dry-run и пока реальные адаптеры не подключены.
type LogSender struct {
	platform model.Platform
}

// NewLogSender — конструктор. Один LogSender на платформу.
func NewLogSender(p model.Platform) *LogSender { return &LogSender{platform: p} }

func (s *LogSender) Platform() model.Platform { return s.platform }

func (s *LogSender) Send(ctx context.Context, dev *model.DeviceToken, msg Message) Outcome {
	logger.Info(ctx, "🔔 push (log-only)",
		zap.String("platform", string(dev.Platform)),
		zap.String("device_id", dev.ID),
		zap.String("user_id", dev.UserID),
		zap.String("title", msg.Title),
		zap.String("body", msg.Body),
	)
	return Outcome{DeviceID: dev.ID, OK: true}
}

// ErrNoSender — конкретное устройство не обслуживается.
var ErrNoSender = errors.New("no sender for platform")
