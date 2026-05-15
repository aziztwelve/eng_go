# Notifications Service — SDD

> **Phase 3 / Push notifications.** Сервис «тупого отправителя»: хранит
> device-токены, prefs, журнал отправок и физически шлёт push'и.
> Бизнес-логику «когда отправлять» решают доменные сервисы (gamification,
> srs) через свои крон-планировщики или хуки.

**Статус (2026-05-15):**
- ✅ Backend skeleton — proto, миграции, repo, service, gRPC API,
  unit-тесты dedup/prefs/quiet hours, env-templates, Taskfile.
- 🟡 Push delivery — пока log-only sender. Реальные адаптеры (VAPID
  Web Push + Expo HTTP) — в следующей итерации.
- 🟡 Gateway routes, доменные хуки и frontend — следующая сессия.

## Координаты

| Что | Значение |
|---|---|
| gRPC порт | `:50062` |
| Schema | `notifications` |
| User | `notifications_user` / `notifications_pass` |
| go.work | `./services/notifications-service` |

## Каналы (категории)

| Channel | Триггер (бэкенд) | Источник | Окно дедупа |
|---|---|---|---|
| `practice_reminder` | due-карточек > 0 и last_active > N часов | srs-service cron | 24ч (день UTC) |
| `streak_risk` | вечер по TZ юзера, streak ещё не сохранён | gamification-service cron | 24ч |
| `daily_goal` | до конца дня по TZ < N часов, daily_goal не выполнен | gamification-service cron | 24ч |
| `achievement` | разблокирована ачивка | gamification.checkAndUnlockAchievements | per-achievement (key = `achievement:<id>`) |

## Платформы доставки

| Platform | Канал | Состояние |
|---|---|---|
| `web` | Web Push (VAPID, RFC 8030) | scaffold ✅ / sender 🟡 |
| `expo` | Expo Push HTTP API | scaffold ✅ / sender 🟡 |
| `ios` / `android` | raw APNs/FCM | reserved (через Expo пока) |

## Схема БД

### `device_tokens`
- `(user_id, platform, token)` UNIQUE — идемпотентная регистрация.
- `endpoint` / `p256dh` / `auth` — для Web Push (CHECK: для `web`
  обязательны).
- `revoked_at` — мягкий отзыв (после logout или 404/410 от провайдера).

### `user_preferences`
- PK = `user_id` (1:1 с auth.users).
- 4 BOOL флага per-channel + `quiet_hours_start/end` (0..23, окно может
  через полночь) + `timezone` (IANA).
- Лениво создаётся при первом UpdatePreferences. До этого — defaults
  отдаются в памяти (см. `model.DefaultPreferences`).

### `notification_log`
- Двойное назначение: дедуп + in-app inbox.
- `(user_id, channel, dedup_key)` UNIQUE — основной guard.
- `status ∈ {queued, sent, failed, skipped}`.
- `skipped_reason ∈ {pref, quiet_hours, dedup, no_devices}`.

## Pipeline `SendNotification`

```
1. validate (user_id, channel, title)
2. prefs = svc.GetPreferences(user)        ← defaults если в БД нет
3. if !ignore_prefs && !prefs.enabled(ch)  → record SKIPPED:pref, return
4. if !ignore_quiet && inQuietHours(prefs) → record SKIPPED:quiet, return
5. dedupKey = req.dedup_key or `<channel>:YYYY-MM-DD`
   if log.FindDedup(user, channel, key, since=now-window) exists
                                            → SKIPPED:dedup (idempotent)
6. devices = devices.ListActive(user)
   if empty                                 → record SKIPPED:no_devices
7. log.Create(status=queued)                ← unique violation = race → dedup
8. dispatcher.SendAll(devices, msg)
9. if outcome.ShouldRevoke → devices.RevokeByID
10. log.UpdateStatus(sent | failed, devices_succeeded)
```

`ignore_quiet_hours=true` — для срочных пушей перед сменой суток
(streak-risk в 23:55).
`ignore_prefs=true` — зарезервировано под системные/админские пуши,
на MVP не используется.

## gRPC RPCs

```
RegisterDevice    (user_id, platform, token, endpoint?, p256dh?, auth?, ua?, locale?) → DeviceToken, created
UnregisterDevice  (user_id, device_id | platform+token) → unregistered count
ListDevices       (user_id, include_revoked?) → [DeviceToken]
GetPreferences    (user_id) → UserPreferences, defaults_used
UpdatePreferences (UserPreferences) → UserPreferences
SendNotification  (user_id, channel, title, body, data?, dedup_key?, dedup_window_sec?, scheduled_at?, ignore_quiet_hours?, ignore_prefs?) → NotificationLog, skipped flags
ListNotifications (user_id, read=-1|0|1, limit, offset) → [NotificationLog], total, unread
MarkRead          (user_id, notification_id?) → marked count
```

## Будущие итерации

### Sender adapters (next session)
- `WebPushSender` — `github.com/SherClockHolmes/webpush-go` или ручной
  RFC 8030 + VAPID. Помечать `ShouldRevoke=true` при HTTP 404/410.
- `ExpoPushSender` — `POST https://exp.host/--/api/v2/push/send`,
  парсить per-ticket ошибки `DeviceNotRegistered` → revoke.

### Cross-service (next session)
- gamification: `internal/client/notifications/{client,grpc,noop}.go`,
  cron-planировщики `streak_risk_reminder` и `daily_goal_reminder`,
  hook `achievement` в `unlockAchievement`.
- srs: тот же паттерн client + `practice_reminder` cron (использует
  существующий `cron.Scheduler`).

### Gateway (next session)
```
POST   /api/v1/notifications/devices         { platform, token, endpoint?, p256dh?, auth?, ua?, locale? }
DELETE /api/v1/notifications/devices/:id
GET    /api/v1/notifications/preferences
PUT    /api/v1/notifications/preferences
GET    /api/v1/notifications?read=&limit=&offset=
POST   /api/v1/notifications/:id/read
POST   /api/v1/notifications/read-all
```

### Web (next session)
- `public/sw.js` — Service Worker с `push` / `notificationclick`.
- `lib/web-push.ts` — subscribe/unsubscribe + конверт `PushSubscription`
  → endpoint/p256dh/auth.
- `hooks/use-notifications.ts` — devices CRUD + prefs CRUD + invalidation.
- `app/profile/notifications/page.tsx` — UI настроек по каналам + quiet
  hours.
- Auto-subscribe banner на `/practice` после первой сессии.
