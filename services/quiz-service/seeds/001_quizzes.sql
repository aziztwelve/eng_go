-- Seed data for quiz-service
-- Примеры квизов для тестирования

-- Quiz 1: English Grammar Basics (Multiple Choice)
INSERT INTO quizzes (id, lesson_id, title, description, time_limit_minutes, max_attempts, passing_score_percentage, shuffle_questions, show_correct_answers, is_required)
VALUES 
('11111111-1111-1111-1111-111111111111', '00000000-0000-0000-0000-000000000001', 'English Grammar Basics', 'Test your knowledge of basic English grammar', 15, 3, 70.00, true, true, true);

-- Questions for Quiz 1
INSERT INTO quiz_questions (id, quiz_id, question_type, question_text, explanation, points, order_index)
VALUES
('a1111111-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', 'multiple_choice', 'What is the correct form of the verb "to be" in present tense for "I"?', 'The correct form is "am". Example: I am a student.', 1, 1),
('a1111111-1111-1111-1111-111111111112', '11111111-1111-1111-1111-111111111111', 'multiple_choice', 'Which article should be used before "apple"?', 'We use "an" before words starting with a vowel sound.', 1, 2),
('a1111111-1111-1111-1111-111111111113', '11111111-1111-1111-1111-111111111111', 'true_false', 'The sentence "She go to school" is grammatically correct.', 'Incorrect. It should be "She goes to school" (third person singular adds -s/-es).', 1, 3);

-- Answers for Question 1
INSERT INTO quiz_answers (id, question_id, answer_text, is_correct, order_index)
VALUES
('b1111111-1111-1111-1111-111111111111', 'a1111111-1111-1111-1111-111111111111', 'am', true, 1),
('b1111111-1111-1111-1111-111111111112', 'a1111111-1111-1111-1111-111111111111', 'is', false, 2),
('b1111111-1111-1111-1111-111111111113', 'a1111111-1111-1111-1111-111111111111', 'are', false, 3),
('b1111111-1111-1111-1111-111111111114', 'a1111111-1111-1111-1111-111111111111', 'be', false, 4);

-- Answers for Question 2
INSERT INTO quiz_answers (id, question_id, answer_text, is_correct, order_index)
VALUES
('b1111111-1111-1111-1111-111111111121', 'a1111111-1111-1111-1111-111111111112', 'a', false, 1),
('b1111111-1111-1111-1111-111111111122', 'a1111111-1111-1111-1111-111111111112', 'an', true, 2),
('b1111111-1111-1111-1111-111111111123', 'a1111111-1111-1111-1111-111111111112', 'the', false, 3);

-- Answers for Question 3 (True/False)
INSERT INTO quiz_answers (id, question_id, answer_text, is_correct, order_index)
VALUES
('b1111111-1111-1111-1111-111111111131', 'a1111111-1111-1111-1111-111111111113', 'True', false, 1),
('b1111111-1111-1111-1111-111111111132', 'a1111111-1111-1111-1111-111111111113', 'False', true, 2);

-- Quiz 2: Vocabulary Test (Multiple Select)
INSERT INTO quizzes (id, lesson_id, title, description, time_limit_minutes, max_attempts, passing_score_percentage, shuffle_questions, show_correct_answers, is_required)
VALUES 
('22222222-2222-2222-2222-222222222222', '00000000-0000-0000-0000-000000000002', 'Vocabulary Test', 'Select all correct answers', 10, 2, 80.00, true, true, false);

-- Questions for Quiz 2
INSERT INTO quiz_questions (id, quiz_id, question_type, question_text, explanation, points, order_index)
VALUES
('a2222222-2222-2222-2222-222222222221', '22222222-2222-2222-2222-222222222222', 'multiple_select', 'Which of the following are fruits? (Select all that apply)', 'Apple, banana, and orange are fruits. Carrot is a vegetable.', 2, 1),
('a2222222-2222-2222-2222-222222222222', '22222222-2222-2222-2222-222222222222', 'multiple_select', 'Which words are verbs? (Select all that apply)', 'Run, jump, and swim are action verbs. Happy is an adjective.', 2, 2);

-- Answers for Question 1 (Multiple Select)
INSERT INTO quiz_answers (id, question_id, answer_text, is_correct, order_index)
VALUES
('b2222222-2222-2222-2222-222222222211', 'a2222222-2222-2222-2222-222222222221', 'Apple', true, 1),
('b2222222-2222-2222-2222-222222222212', 'a2222222-2222-2222-2222-222222222221', 'Banana', true, 2),
('b2222222-2222-2222-2222-222222222213', 'a2222222-2222-2222-2222-222222222221', 'Carrot', false, 3),
('b2222222-2222-2222-2222-222222222214', 'a2222222-2222-2222-2222-222222222221', 'Orange', true, 4);

-- Answers for Question 2 (Multiple Select)
INSERT INTO quiz_answers (id, question_id, answer_text, is_correct, order_index)
VALUES
('b2222222-2222-2222-2222-222222222221', 'a2222222-2222-2222-2222-222222222222', 'Run', true, 1),
('b2222222-2222-2222-2222-222222222222', 'a2222222-2222-2222-2222-222222222222', 'Jump', true, 2),
('b2222222-2222-2222-2222-222222222223', 'a2222222-2222-2222-2222-222222222222', 'Happy', false, 3),
('b2222222-2222-2222-2222-222222222224', 'a2222222-2222-2222-2222-222222222222', 'Swim', true, 4);

-- Quiz 3: Quick Check (No time limit)
INSERT INTO quizzes (id, lesson_id, title, description, time_limit_minutes, max_attempts, passing_score_percentage, shuffle_questions, show_correct_answers, is_required)
VALUES 
('33333333-3333-3333-3333-333333333333', '00000000-0000-0000-0000-000000000003', 'Quick Check', 'A quick quiz to check your understanding', NULL, 5, 60.00, false, true, false);

-- Questions for Quiz 3
INSERT INTO quiz_questions (id, quiz_id, question_type, question_text, explanation, points, order_index)
VALUES
('a3333333-3333-3333-3333-333333333331', '33333333-3333-3333-3333-333333333333', 'text_input', 'What is the capital of France?', 'The capital of France is Paris.', 1, 1),
('a3333333-3333-3333-3333-333333333332', '33333333-3333-3333-3333-333333333333', 'multiple_choice', 'How many days are in a week?', 'There are 7 days in a week.', 1, 2);

-- Answers for Question 2 (text_input has no predefined answers)
INSERT INTO quiz_answers (id, question_id, answer_text, is_correct, order_index)
VALUES
('b3333333-3333-3333-3333-333333333321', 'a3333333-3333-3333-3333-333333333332', '5', false, 1),
('b3333333-3333-3333-3333-333333333322', 'a3333333-3333-3333-3333-333333333332', '6', false, 2),
('b3333333-3333-3333-3333-333333333323', 'a3333333-3333-3333-3333-333333333332', '7', true, 3),
('b3333333-3333-3333-3333-333333333324', 'a3333333-3333-3333-3333-333333333332', '8', false, 4);
