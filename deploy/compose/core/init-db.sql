-- Создание схем для каждого сервиса
CREATE SCHEMA IF NOT EXISTS auth;
CREATE SCHEMA IF NOT EXISTS users;
CREATE SCHEMA IF NOT EXISTS courses;
CREATE SCHEMA IF NOT EXISTS videos;

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
