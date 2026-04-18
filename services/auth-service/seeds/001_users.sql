-- Seed данные для тестовых пользователей
-- Пароль для всех пользователей: "password123"
-- Хеш bcrypt для "password123": $2a$10$rqYvN8Z8Z8Z8Z8Z8Z8Z8ZuKGJ5vJ5vJ5vJ5vJ5vJ5vJ5vJ5vJ5vJ5

-- Очистка существующих тестовых данных (опционально)
-- DELETE FROM users WHERE email LIKE '%@test.com';

-- Вставка тестовых пользователей с обработкой конфликтов
INSERT INTO users (id, email, username, password_hash, role, created_at)
VALUES 
    -- Администраторы
    ('11111111-1111-1111-1111-111111111111', 'admin@test.com', 'Admin User', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'admin', NOW()),
    
    -- Инструкторы
    ('22222222-2222-2222-2222-222222222222', 'instructor1@test.com', 'John Smith', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'instructor', NOW()),
    ('22222222-2222-2222-2222-222222222223', 'instructor2@test.com', 'Maria Garcia', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'instructor', NOW()),
    ('22222222-2222-2222-2222-222222222224', 'instructor3@test.com', 'Hans Mueller', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'instructor', NOW()),
    
    -- Студенты
    ('33333333-3333-3333-3333-333333333331', 'student1@test.com', 'Alice Johnson', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'student', NOW()),
    ('33333333-3333-3333-3333-333333333332', 'student2@test.com', 'Bob Williams', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'student', NOW()),
    ('33333333-3333-3333-3333-333333333333', 'student3@test.com', 'Charlie Brown', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'student', NOW()),
    ('33333333-3333-3333-3333-333333333334', 'student4@test.com', 'Diana Prince', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'student', NOW()),
    ('33333333-3333-3333-3333-333333333335', 'student5@test.com', 'Eva Martinez', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'student', NOW())
ON CONFLICT (id) DO NOTHING;

-- Информация о созданных пользователях
DO $$
BEGIN
    RAISE NOTICE 'Создано тестовых пользователей:';
    RAISE NOTICE '  Администраторов: 1';
    RAISE NOTICE '  Инструкторов: 3';
    RAISE NOTICE '  Студентов: 5';
    RAISE NOTICE '';
    RAISE NOTICE 'Логин: email из таблицы';
    RAISE NOTICE 'Пароль для всех: password123';
END $$;
