-- Seed данные для записей студентов на курсы (enrollments)
-- Студенты записываются на различные курсы

INSERT INTO enrollments (id, user_id, course_id, status, enrolled_at, access_until)
VALUES 
    -- Alice Johnson (student1) - изучает испанский
    ('e0000001-0001-0001-0001-000000000001', '33333333-3333-3333-3333-333333333331', 'c0000002-0002-0002-0002-000000000001', 'active', NOW() - INTERVAL '15 days', NOW() + INTERVAL '6 months'),
    
    -- Bob Williams (student2) - изучает немецкий для работы
    ('e0000001-0001-0001-0001-000000000002', '33333333-3333-3333-3333-333333333332', 'c0000003-0003-0003-0003-000000000001', 'active', NOW() - INTERVAL '12 days', NOW() + INTERVAL '6 months'),
    
    -- Charlie Brown (student3) - изучает английский (начальный уровень) - завершен
    ('e0000001-0001-0001-0001-000000000003', '33333333-3333-3333-3333-333333333333', 'c0000001-0001-0001-0001-000000000001', 'active', NOW() - INTERVAL '20 days', NOW() + INTERVAL '6 months'),
    
    -- Diana Prince (student4) - изучает испанский и бизнес английский
    ('e0000001-0001-0001-0001-000000000004', '33333333-3333-3333-3333-333333333334', 'c0000002-0002-0002-0002-000000000001', 'active', NOW() - INTERVAL '10 days', NOW() + INTERVAL '6 months'),
    ('e0000001-0001-0001-0001-000000000005', '33333333-3333-3333-3333-333333333334', 'c0000001-0001-0001-0001-000000000002', 'active', NOW() - INTERVAL '8 days', NOW() + INTERVAL '6 months'),
    
    -- Eva Martinez (student5) - изучает английский и немецкий
    ('e0000001-0001-0001-0001-000000000006', '33333333-3333-3333-3333-333333333335', 'c0000001-0001-0001-0001-000000000001', 'active', NOW() - INTERVAL '18 days', NOW() + INTERVAL '6 months'),
    ('e0000001-0001-0001-0001-000000000007', '33333333-3333-3333-3333-333333333335', 'c0000003-0003-0003-0003-000000000001', 'active', NOW() - INTERVAL '7 days', NOW() + INTERVAL '6 months'),
    
    -- Alice также записалась на продвинутый испанский
    ('e0000001-0001-0001-0001-000000000008', '33333333-3333-3333-3333-333333333331', 'c0000002-0002-0002-0002-000000000002', 'active', NOW() - INTERVAL '5 days', NOW() + INTERVAL '6 months'),
    
    -- Bob также изучает продвинутый немецкий
    ('e0000001-0001-0001-0001-000000000009', '33333333-3333-3333-3333-333333333332', 'c0000003-0003-0003-0003-000000000002', 'active', NOW() - INTERVAL '3 days', NOW() + INTERVAL '6 months')
ON CONFLICT (user_id, course_id) DO NOTHING;

-- Информация о созданных записях
DO $$
BEGIN
    RAISE NOTICE 'Создано записей на курсы: 9';
    RAISE NOTICE '';
    RAISE NOTICE 'Распределение по студентам:';
    RAISE NOTICE '  - Alice Johnson: 2 курса (Spanish)';
    RAISE NOTICE '  - Bob Williams: 2 курса (German)';
    RAISE NOTICE '  - Charlie Brown: 1 курс (English) - завершен';
    RAISE NOTICE '  - Diana Prince: 2 курса (Spanish + Business English)';
    RAISE NOTICE '  - Eva Martinez: 2 курса (English + German)';
END $$;
