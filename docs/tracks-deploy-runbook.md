# Tracks deploy runbook

Дата последнего проверенного прогона: 2026-07-06.

Цель: синхронизировать локальный backend-код с сервером через Git, пересобрать
`gateway` и `course-service`, применить миграцию `courses.user_tracks` и
проверить, что мобильное приложение получает треки.

## Что чинит этот деплой

- `GET /api/v1/tracks` должен быть публичным и отвечать без `Authorization`.
- `GET /api/v1/me/tracks` должен работать с guest JWT.
- Если персонального плана еще нет, backend лениво создает строки в
  `courses.user_tracks`.

## Локально

```bash
cd /home/aziz/Documents/startup/eng/microservices-course/elearning

gofmt -w \
  services/gateway/internal/app/app.go \
  services/gateway/internal/handler/track.go \
  services/gateway/internal/client/course.go \
  services/course-service/internal/api/course/v1/track.go \
  services/course-service/internal/converter/track.go \
  services/course-service/internal/model/track.go \
  services/course-service/internal/repository/postgres/track.go \
  services/course-service/internal/repository/track.go \
  services/course-service/internal/service/track.go

(cd services/gateway && \
  GOCACHE=/home/aziz/Documents/startup/eng/.gocache \
  GOMODCACHE=/home/aziz/Documents/startup/eng/.gomodcache \
  /usr/local/go/bin/go build -o /tmp/gateway-new ./cmd)

(cd services/course-service && \
  GOCACHE=/home/aziz/Documents/startup/eng/.gocache \
  GOMODCACHE=/home/aziz/Documents/startup/eng/.gomodcache \
  /usr/local/go/bin/go build -o /tmp/course-service-new ./cmd)

git diff --stat
git add \
  services/gateway/internal/app/app.go \
  services/gateway/internal/handler/track.go \
  services/gateway/internal/client/course.go \
  services/course-service/internal/api/course/v1/track.go \
  services/course-service/internal/converter/track.go \
  services/course-service/internal/model/track.go \
  services/course-service/internal/repository/postgres/track.go \
  services/course-service/internal/repository/track.go \
  services/course-service/internal/service/track.go \
  services/course-service/migrations/000017_create_user_tracks.up.sql \
  services/course-service/migrations/000017_create_user_tracks.down.sql \
  shared/proto/course/v1/course.proto \
  shared/pkg/proto/course/v1/course.pb.go \
  shared/pkg/proto/course/v1/course_grpc.pb.go \
  docs/tracks-deploy-runbook.md

git diff --cached --stat
git commit -m "feat(tracks): add user track plan endpoints"
git push origin dev
```

## Сервер

```bash
ssh -F /dev/null root@167.233.103.233
cd /var/www/html/elearning

git fetch origin dev
git pull --ff-only origin dev

(cd services/gateway && \
  GOCACHE=/var/www/html/elearning/.gocache \
  GOMODCACHE=/var/www/html/elearning/.gomodcache \
  /usr/local/go/bin/go build -o /tmp/gateway-new ./cmd)

(cd services/course-service && \
  GOCACHE=/var/www/html/elearning/.gocache \
  GOMODCACHE=/var/www/html/elearning/.gomodcache \
  /usr/local/go/bin/go build -o /tmp/course-service-new ./cmd)

cp -a bin/gateway bin/gateway.bak.$(date +%Y%m%d%H%M%S)
cp -a bin/course-service bin/course-service.bak.$(date +%Y%m%d%H%M%S)
install -m 755 /tmp/gateway-new bin/gateway
install -m 755 /tmp/course-service-new bin/course-service

set -a
. deploy/env/course.env
set +a
PGPASSWORD="$POSTGRES_PASSWORD" psql \
  -h "$POSTGRES_HOST" -p "$POSTGRES_PORT" \
  -U "$POSTGRES_USER" -d "$POSTGRES_DB" \
  -v ON_ERROR_STOP=1 \
  -f services/course-service/migrations/000017_create_user_tracks.up.sql

OLD_COURSE=$(pgrep -f "^/var/www/html/elearning/bin/course-service" || true)
[ -n "$OLD_COURSE" ] && kill $OLD_COURSE || true
sleep 2
[ -n "$OLD_COURSE" ] && for p in $OLD_COURSE; do kill -0 "$p" 2>/dev/null && kill -9 "$p" || true; done

cd /var/www/html/elearning/services/course-service
set -a
. /var/www/html/elearning/deploy/env/course.env
set +a
setsid /var/www/html/elearning/bin/course-service \
  > /var/www/html/elearning/logs/course.log 2>&1 < /dev/null &

OLD_GATEWAY=$(pgrep -f "^/var/www/html/elearning/bin/gateway" || true)
[ -n "$OLD_GATEWAY" ] && kill $OLD_GATEWAY || true
sleep 2
[ -n "$OLD_GATEWAY" ] && for p in $OLD_GATEWAY; do kill -0 "$p" 2>/dev/null && kill -9 "$p" || true; done

cd /var/www/html/elearning/services/gateway
set -a
. /var/www/html/elearning/deploy/env/gateway.env
set +a
setsid /var/www/html/elearning/bin/gateway \
  > /var/www/html/elearning/logs/gateway.log 2>&1 < /dev/null &
```

## Проверка

```bash
curl -sS -o /tmp/tracks.out -w 'tracks_no_auth %{http_code}\n' \
  'https://api.lingoiq.online/api/v1/tracks?limit=1'

TOKEN=$(
  curl -sS -X POST https://api.lingoiq.online/api/v1/auth/guest \
    -H 'Content-Type: application/json' \
    -d '{"device_id":"tracks-runbook-check"}' \
  | node -e 'let s="";process.stdin.on("data",d=>s+=d);process.stdin.on("end",()=>process.stdout.write(JSON.parse(s).access_token||""))'
)

curl -sS -o /tmp/me-tracks.out -w 'me_tracks_auth %{http_code}\n' \
  https://api.lingoiq.online/api/v1/me/tracks \
  -H "Authorization: Bearer $TOKEN"
```

Ожидаемый результат:

```text
tracks_no_auth 200
me_tracks_auth 200
```

Для проверки установленного Android-приложения:

```bash
adb logcat -c
adb shell am force-stop com.aziztwelve.engmob
adb shell monkey -p com.aziztwelve.engmob -c android.intent.category.LAUNCHER 1
sleep 6
ssh -F /dev/null root@167.233.103.233 \
  'tail -n 80 /var/www/html/elearning/logs/gateway.log | grep -E "/api/v1/me/tracks|/api/v1/tracks" || true'
```

В логах должны быть `status: 200` для `okhttp/4.9.2`.
