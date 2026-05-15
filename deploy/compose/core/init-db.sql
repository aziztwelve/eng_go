-- Создание схем для каждого сервиса
CREATE SCHEMA IF NOT EXISTS auth;
CREATE SCHEMA IF NOT EXISTS users;
CREATE SCHEMA IF NOT EXISTS courses;
CREATE SCHEMA IF NOT EXISTS videos;
CREATE SCHEMA IF NOT EXISTS gamification;

-- Создание пользователей для каждого сервиса
DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'auth_user') THEN
    CREATE USER auth_user WITH PASSWORD 'auth_pass';
  END IF;
  
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'user_user') THEN
    CREATE USER user_user WITH PASSWORD 'user_pass';
  END IF;
  
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'course_user') THEN
    CREATE USER course_user WITH PASSWORD 'course_pass';
  END IF;
  
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'video_user') THEN
    CREATE USER video_user WITH PASSWORD 'video_pass';
  END IF;

  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'gamification_user') THEN
    CREATE USER gamification_user WITH PASSWORD 'gamification_pass';
  END IF;
END
$$;

-- Выдача прав доступа для auth_user
GRANT ALL PRIVILEGES ON SCHEMA auth TO auth_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA auth TO auth_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA auth TO auth_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA auth GRANT ALL ON TABLES TO auth_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA auth GRANT ALL ON SEQUENCES TO auth_user;

-- Выдача прав доступа для user_user
GRANT ALL PRIVILEGES ON SCHEMA users TO user_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA users TO user_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA users TO user_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA users GRANT ALL ON TABLES TO user_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA users GRANT ALL ON SEQUENCES TO user_user;

-- Выдача прав доступа для course_user
GRANT ALL PRIVILEGES ON SCHEMA courses TO course_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA courses TO course_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA courses TO course_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA courses GRANT ALL ON TABLES TO course_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA courses GRANT ALL ON SEQUENCES TO course_user;

-- Выдача прав доступа для video_user
GRANT ALL PRIVILEGES ON SCHEMA videos TO video_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA videos TO video_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA videos TO video_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA videos GRANT ALL ON TABLES TO video_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA videos GRANT ALL ON SEQUENCES TO video_user;

-- Выдача прав доступа для gamification_user
GRANT ALL PRIVILEGES ON SCHEMA gamification TO gamification_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA gamification TO gamification_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA gamification TO gamification_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA gamification GRANT ALL ON TABLES TO gamification_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA gamification GRANT ALL ON SEQUENCES TO gamification_user;

-- === Phase 2: step-validation-service ===
CREATE SCHEMA IF NOT EXISTS step_validation;

DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'step_validation_user') THEN
    CREATE USER step_validation_user WITH PASSWORD 'step_validation_pass';
  END IF;
END
$$;

GRANT ALL PRIVILEGES ON SCHEMA step_validation TO step_validation_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA step_validation TO step_validation_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA step_validation TO step_validation_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA step_validation GRANT ALL ON TABLES TO step_validation_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA step_validation GRANT ALL ON SEQUENCES TO step_validation_user;

-- === Phase 3: srs-service (Spaced Repetition) ===
CREATE SCHEMA IF NOT EXISTS srs;

DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'srs_user') THEN
    CREATE USER srs_user WITH PASSWORD 'srs_pass';
  END IF;
END
$$;

GRANT ALL PRIVILEGES ON SCHEMA srs TO srs_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA srs TO srs_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA srs TO srs_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA srs GRANT ALL ON TABLES TO srs_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA srs GRANT ALL ON SEQUENCES TO srs_user;

-- === Phase 4: social-service (Leagues, Cohorts, Leaderboards) ===
CREATE SCHEMA IF NOT EXISTS social;

DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'social_user') THEN
    CREATE USER social_user WITH PASSWORD 'social_pass';
  END IF;
END
$$;

GRANT ALL PRIVILEGES ON SCHEMA social TO social_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA social TO social_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA social TO social_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA social GRANT ALL ON TABLES TO social_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA social GRANT ALL ON SEQUENCES TO social_user;

-- === Phase 3: notifications-service (Push notifications) ===
CREATE SCHEMA IF NOT EXISTS notifications;

DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'notifications_user') THEN
    CREATE USER notifications_user WITH PASSWORD 'notifications_pass';
  END IF;
END
$$;

GRANT ALL PRIVILEGES ON SCHEMA notifications TO notifications_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA notifications TO notifications_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA notifications TO notifications_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA notifications GRANT ALL ON TABLES TO notifications_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA notifications GRANT ALL ON SEQUENCES TO notifications_user;

-- === Phase 5: ai-service (AI Integration) ===
CREATE SCHEMA IF NOT EXISTS ai;

DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'ai_user') THEN
    CREATE USER ai_user WITH PASSWORD 'ai_pass';
  END IF;
END
$$;

GRANT ALL PRIVILEGES ON SCHEMA ai TO ai_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA ai TO ai_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA ai TO ai_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA ai GRANT ALL ON TABLES TO ai_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA ai GRANT ALL ON SEQUENCES TO ai_user;
