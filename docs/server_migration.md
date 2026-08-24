# Миграция на новый сервер (167.233.103.233)

Дата: 2026-07-21

---

## Топология

### Старый сервер (до переключения DNS)

| Что | Адрес |
|---|---|
| Сервер | `root@178.104.217.201` |
| API | `https://api.lingoiq.online/api/v1` |
| Веб | `https://lingoiq.online`, `app.lingoiq.online` |
| Мобилка | `https://api.lingoiq.online/api/v1` |

### Новый сервер

| Что | Адрес |
|---|---|
| Сервер | `root@167.233.103.233` (Hetzner, Ubuntu 26.04, 8GB RAM, 75GB) |
| API | `https://api.lingoiq.online/api/v1` |
| Веб | `https://lingoiq.online`, `https://app.lingoiq.online` |
| Мобилка | `https://api.lingoiq.online/api/v1` |

DNS-записи `api.lingoiq.online`, `lingoiq.online` и `app.lingoiq.online`
переключены с `178.104.217.201` на `167.233.103.233` 21 июля 2026 года.

---

## Что перенесено и коммиты

| Проект | Путь на сервере | Коммит |
|---|---|---|
| elearning (бэкенд) | `/var/www/html/elearning` | `7999ad6f` |
| eng_next2 (веб) | `/var/www/html/eng_next2` | `b665cac` |
| eng_mob (мобилка) | `/var/www/html/eng_mob` | `497010e` |

---

## Инфраструктура на новом сервере

### Docker-контейнеры

| Контейнер | Image | Порт |
|---|---|---|
| `elearning-postgres` | postgres:16-alpine | 5435 |
| `elearning-redis` | redis:7-alpine | 6379 |
| `elearning-redpanda` | redpanda:v24.2.4 | 19092 |
| `elearning-minio` | minio/minio:latest | 9000 / 9001 |
| `lingoiq-caddy` | caddy:2-alpine | 80 / 443 |

Docker Compose файлы:
- Инфраструктура (postgres, redis, redpanda): `/var/www/html/elearning/deploy/compose/core/`
- MinIO: `/var/www/html/elearning/deploy/compose/video/`
- Caddy: `/opt/caddy/`

### Go-сервисы (процессы на хосте)

Запускаются скриптом `/var/www/html/elearning/start-bins.sh`.
Бинари в `/var/www/html/elearning/bin/`, логи в `/var/www/html/elearning/logs/`.

| Сервис | gRPC порт |
|---|---|
| auth-service | 50051 |
| user-service | 50052 |
| course-service | 50053 |
| video-service | 50054 |
| quiz-service | 50055 |
| gamification-service | 50058 |
| step-validation-service | 50059 |
| srs-service | 50070 |
| social-service | 50071 |
| notifications-service | 50072 |
| ai-service | 50073 |
| gateway (HTTP) | 8080 |

### Next.js (pm2)

```
pm2 list → eng_next  (port 3001)
```

---

## Caddy — конфиг `/opt/caddy/Caddyfile`

```
api.lingoiq.online          → host.docker.internal:8080  (Go gateway; API Android-приложения)
lingoiq.online              → host.docker.internal:3001  (Next.js)
app.lingoiq.online          → host.docker.internal:3001  (Next.js; веб-приложение, не Android)

# Сохранённые технические алиасы
api2.lingoiq.online         → host.docker.internal:8080
web.lingoiq.online          → host.docker.internal:3001
app2.lingoiq.online         → host.docker.internal:3001
```

TLS автоматически через Let's Encrypt.

---

## Автозапуск при перезагрузке сервера

`pm2` зарегистрирован в systemd (`pm2-root.service`).

`crontab -l` на сервере:
```
@reboot sleep 15 && cd /var/www/html/elearning/deploy/compose/core && docker compose up -d
@reboot sleep 15 && cd /var/www/html/elearning/deploy/compose/video && docker compose up -d minio
@reboot sleep 20 && cd /opt/caddy && docker compose up -d
@reboot sleep 30 && cd /var/www/html/elearning && bash start-bins.sh
```

---

## Как задеплоить изменения на новый сервер

### Бэкенд (Go)

```bash
ssh root@167.233.103.233
cd /var/www/html/elearning

# Обновить код
git pull origin <branch>

# Пересобрать (Go 1.25 в PATH)
export PATH=$PATH:/usr/local/go/bin
export GOMODCACHE=/var/www/html/elearning/.gomodcache

# Все сервисы
for svc in auth user course video quiz gamification step-validation srs social notifications ai; do
  go build -o bin/${svc}-service ./services/${svc}-service/cmd/... &
done
go build -o bin/course-service ./services/course-service/cmd/main.go
go build -o bin/gateway ./services/gateway/cmd/...
wait

# Перезапустить
pkill -9 -f "elearning/bi[n]/"
sleep 2
bash start-bins.sh
```

### Веб (Next.js)

```bash
ssh root@167.233.103.233
cd /var/www/html/eng_next2
git pull origin <branch>
npm install --legacy-peer-deps
npm run build
pm2 restart eng_next
```

### Только один сервис

```bash
ROOT=/var/www/html/elearning
pkill -9 -f "elearning/bi[n]/ai-service"
sleep 1
( cd "$ROOT/services/ai-service"
  set -a; . "$ROOT/deploy/env/ai.env"; set +a
  setsid "$ROOT/bin/ai-service" > "$ROOT/logs/ai.log" 2>&1 < /dev/null & )
```

---

## Проверка работоспособности

```bash
# Health
curl https://api.lingoiq.online/health            # → {"status":"ok"}

# Публичные эндпоинты
curl https://api.lingoiq.online/api/v1/courses    # → список курсов (9)
curl https://api.lingoiq.online/api/v1/tracks     # → список треков (20)

# Auth flow
curl -s -X POST https://api.lingoiq.online/api/v1/auth/register \
  -H "Content-Type: application/json" \
  -d '{"email":"test@test.com","password":"Test1234!","username":"testuser"}'
# → {"access_token":"...","refresh_token":"..."}

# Веб
curl -o /dev/null -w "%{http_code}" https://lingoiq.online       # → 200
curl -o /dev/null -w "%{http_code}" https://app.lingoiq.online   # → 200

# Логи сервисов
ssh root@167.233.103.233 'tail -5 /var/www/html/elearning/logs/gateway.log'
```

---

## .env файлы

Все `.env` скопированы со старого сервера (`rsync`) и находятся в:
- `/var/www/html/elearning/deploy/env/*.env` — Go сервисы
- `/var/www/html/elearning/deploy/compose/core/.env` — postgres/redis/redpanda
- `/var/www/html/elearning/deploy/compose/video/.env` — minio
- `/var/www/html/eng_next2/.env.production` — `NEXT_PUBLIC_API_URL=https://api.lingoiq.online/api/v1`

---

## Как происходил перенос (кратко)

1. Установлены Docker, Node.js 22, pm2, Go 1.25 на новый сервер
2. Код перенесён через `rsync` напрямую между серверами (SSH ключ добавлен временно)
3. PostgreSQL: `pg_dumpall | psql` — стриминг дампа без промежуточного файла
4. MinIO: `rsync` Docker volume `/var/lib/docker/volumes/video_minio_data/_data/`
5. Docker инфраструктура поднята через существующие compose-файлы
6. Go сервисы собраны заново на новом сервере (`go build`)
7. Next.js: `favicon.ico` конвертирован в RGBA (Turbopack требует), затем `npm run build`
8. Caddy настроен в `/opt/caddy/` с новыми доменами
