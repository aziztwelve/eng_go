# 🚀 Quick Start Guide

## Prerequisites

- Go 1.24+
- Docker & Docker Compose
- Task (task runner)

## 1. Clone & Setup

```bash
git clone https://github.com/aziztwelve/eng_go.git
cd eng_go
```

## 2. Generate Environment Files

```bash
task env:generate
```

## 3. Start Infrastructure

```bash
# Start PostgreSQL
task up-core

# Start MinIO (for video storage)
task up-video

# Or start everything at once
task up-all
```

## 4. Run Database Migrations

```bash
task migrate-up-all
```

## 5. Seed Test Data

```bash
# Seed users, courses, and videos
cd services/auth-service && PGPASSWORD=change_me_in_production psql -h localhost -U admin -d elearning -f seeds/001_users.sql
cd ../user-service && PGPASSWORD=change_me_in_production psql -h localhost -U admin -d elearning -f seeds/001_profiles.sql
cd ../course-service && for f in seeds/*.sql; do PGPASSWORD=change_me_in_production psql -h localhost -U admin -d elearning -f "$f"; done
cd ../video-service && PGPASSWORD=change_me_in_production psql -h localhost -U admin -d elearning -f seeds/001_videos.sql
cd ../..
```

## 6. Start Services

```bash
# Start all services in background
task run-all-bg

# Or start individually
task run-auth
task run-user
task run-course
task run-video
task run-gateway
```

## 7. Verify Services

```bash
# Check health
curl http://localhost:8080/health

# Check all ports
ss -tlnp | grep -E ':(50051|50052|50053|50054|8080)'
```

## 8. Test API

```bash
# Register user
curl -X POST http://localhost:8080/api/v1/auth/register \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123","full_name":"Test User"}'

# Get video URL
curl http://localhost:8080/api/v1/videos/10000001-0000-0000-0000-000000000001/url
```

## Services & Ports

- **Auth Service**: `localhost:50051` (gRPC)
- **User Service**: `localhost:50052` (gRPC)
- **Course Service**: `localhost:50053` (gRPC)
- **Video Service**: `localhost:50054` (gRPC)
- **API Gateway**: `localhost:8080` (HTTP)
- **PostgreSQL**: `localhost:5432`
- **MinIO**: `localhost:9000` (API), `localhost:9001` (Console)

## Stop Services

```bash
# Stop all services
task stop-all

# Stop infrastructure
task down-all
```

## Useful Commands

```bash
# View logs
tail -f logs/*.log

# Git operations
task git:status
task git:save MSG='your commit message'

# Format code
task format

# Run linter
task lint
```

## Test Credentials

**Admin:**
- Email: `admin@test.com`
- Password: `password123`

**Instructor:**
- Email: `instructor1@test.com`
- Password: `password123`

**Student:**
- Email: `student1@test.com`
- Password: `password123`

## Troubleshooting

**Services won't start:**
```bash
# Check if ports are free
ss -tlnp | grep -E ':(50051|50052|50053|50054|8080)'

# Kill old processes
pkill -f 'go run cmd/main.go'
```

**Database connection failed:**
```bash
# Restart PostgreSQL
task down-core
task up-core
```

**MinIO not accessible:**
```bash
# Restart MinIO
task down-video
task up-video
```
