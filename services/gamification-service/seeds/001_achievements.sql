-- Seed: 30+ predefined achievements.
-- Каждая запись содержит criteria JSONB, которая описывает условие
-- выдачи. achievement_service ориентируется на поле "type":
--   steps_completed  — суммарно завершено N шагов
--   lessons_completed — N уроков (course | track | standalone)
--   courses_completed — N курсов
--   perfect_quizzes   — N квизов на 100%
--   streak            — текущий streak >= N дней
--   total_xp          — total_xp >= N
--   languages         — изучает N+ языков
--   time_of_day       — урок в определённый интервал (hour_from..hour_to local)
--   date              — урок в конкретный календарный день (mm-dd)
--   birthday          — урок в день рождения пользователя

SET search_path TO gamification;

INSERT INTO achievements (code, title, description, category, tier, xp_reward, gems_reward, criteria) VALUES
-- ===== Learning =====
('first_step',        'First Step',         'Complete your very first step',                       'learning', 1,  10,  0,  '{"type":"steps_completed","value":1}'),
('eager_learner',     'Eager Learner',      'Complete 10 steps',                                   'learning', 1,  50,  0,  '{"type":"steps_completed","value":10}'),
('step_machine',      'Step Machine',       'Complete 100 steps',                                  'learning', 2,  200, 20, '{"type":"steps_completed","value":100}'),
('lesson_starter',    'Lesson Starter',     'Complete your first lesson',                          'learning', 1,  20,  0,  '{"type":"lessons_completed","value":1}'),
('lesson_pro',        'Lesson Pro',         'Complete 25 lessons',                                 'learning', 2,  100, 10, '{"type":"lessons_completed","value":25}'),
('course_crusher',    'Course Crusher',     'Complete 1 course',                                   'learning', 2,  200, 50, '{"type":"courses_completed","value":1}'),
('course_marathoner', 'Course Marathoner',  'Complete 5 courses',                                  'learning', 3,  500, 200,'{"type":"courses_completed","value":5}'),
('perfectionist',     'Perfectionist',      'Pass 10 quizzes with 100% score',                     'learning', 3,  300, 30, '{"type":"perfect_quizzes","value":10}'),
('polyglot',          'Polyglot',           'Study 2+ languages simultaneously',                   'learning', 2,  150, 30, '{"type":"languages","value":2}'),

-- ===== Streak =====
('sparked',           'Sparked',            '3-day streak',                                        'streak',   1,  30,  0,  '{"type":"streak","value":3}'),
('on_fire',           'On Fire',            '7-day streak',                                        'streak',   2,  100, 50, '{"type":"streak","value":7}'),
('dedicated',         'Dedicated',          '14-day streak',                                       'streak',   2,  200, 75, '{"type":"streak","value":14}'),
('month_master',      'Month Master',       '30-day streak',                                       'streak',   3,  500, 200,'{"type":"streak","value":30}'),
('half_year',         'Half Year Hero',     '180-day streak',                                      'streak',   3, 1500, 500,'{"type":"streak","value":180}'),
('century_club',      'Century Club',       '100-day streak',                                      'streak',   3, 1000, 1000,'{"type":"streak","value":100}'),
('dragon',            'Dragon',             '365-day streak — Legendary',                          'streak',   3, 5000, 5000,'{"type":"streak","value":365}'),

-- ===== XP =====
('first_hundred',     'First Hundred',      'Earn 100 total XP',                                   'xp',       1,  10,  5,  '{"type":"total_xp","value":100}'),
('first_thousand',    'First Thousand',     'Earn 1,000 total XP',                                 'xp',       2,  50,  20, '{"type":"total_xp","value":1000}'),
('ten_thousand',      'Ten Thousand',       'Earn 10,000 total XP',                                'xp',       3,  300, 150,'{"type":"total_xp","value":10000}'),
('master',            'Master',             'Earn 100,000 total XP',                               'xp',       3, 1000, 500,'{"type":"total_xp","value":100000}'),

-- ===== Special =====
('early_bird',        'Early Bird',         'Complete a lesson before 8:00',                       'special',  1,  25,  10, '{"type":"time_of_day","hour_from":0,"hour_to":8}'),
('night_owl',         'Night Owl',          'Complete a lesson after 22:00',                       'special',  1,  25,  10, '{"type":"time_of_day","hour_from":22,"hour_to":24}'),
('lunch_break',       'Lunch Break',        'Complete a lesson between 12:00 and 14:00',           'special',  1,  20,  10, '{"type":"time_of_day","hour_from":12,"hour_to":14}'),
('new_year',          'New Year',           'Complete a lesson on January 1st',                    'special',  2,  100, 50, '{"type":"date","mm_dd":"01-01"}'),
('valentine',         'Valentine',          'Complete a lesson on February 14th',                  'special',  2,  100, 50, '{"type":"date","mm_dd":"02-14"}'),
('birthday',          'Birthday',           'Complete a lesson on your birthday',                  'special',  2,  150, 75, '{"type":"birthday"}'),

-- ===== Hidden / fun =====
('weekend_warrior',   'Weekend Warrior',    'Complete lessons on Saturday and Sunday',             'special',  1,  40,  10, '{"type":"weekend_pair","value":1}'),
('comeback_kid',      'Comeback Kid',       'Return after a 7+ day break',                         'special',  2,  60,  20, '{"type":"comeback","value":7}'),
('first_quiz',        'First Quiz',         'Complete your first quiz',                            'learning', 1,  15,  0,  '{"type":"quiz_completed","value":1}'),
('quiz_master',       'Quiz Master',        'Complete 50 quizzes',                                 'learning', 3,  300, 100,'{"type":"quiz_completed","value":50}'),
('daily_goal_1',      'Goal Getter',        'Hit your daily goal for the first time',             'streak',   1,  20,  5,  '{"type":"daily_goal_completed","value":1}'),
('daily_goal_30',     'Goal Crusher',       'Hit your daily goal 30 times',                       'streak',   3,  300, 100,'{"type":"daily_goal_completed","value":30}')
ON CONFLICT (code) DO NOTHING;
