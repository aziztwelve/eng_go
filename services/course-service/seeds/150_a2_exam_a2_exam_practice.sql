-- Track: A2_EXAM_A2_EXAM_PRACTICE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('7dc01880-db28-5724-8257-41a4657279c0', 'A2_EXAM_A2_EXAM_PRACTICE', 'Экзаменационная практика A2', 'Развивайте экзаменационные навыки уровня A2 по теме «Экзаменационная практика A2».', '{"en":"A2 Exam Practice","ru":"Экзаменационная практика A2"}'::jsonb, '{"en":"Develop A2 exam skills for a2 exam practice.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Экзаменационная практика A2»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0ba14300-f204-550e-93b9-dcd5ba626791', NULL, 'Разбор пробника', 'Разобрать результаты пробного экзамена, используя past simple и present perfect.', '{"en":"Analysing the Mock Exam","ru":"Разбор пробника"}'::jsonb, '{"en":"Analyse mock exam results using past simple and present perfect.","ru":"Разобрать результаты пробного экзамена, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adf859f3-227d-5829-97cd-c044cb5edfb2', '0ba14300-f204-550e-93b9-dcd5ba626791', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"exam paper","right":"экзаменационный вариант"},{"id":"P2","left":"to score","right":"набрать (баллы)"},{"id":"P3","left":"to review mistakes","right":"разобрать ошибки"},{"id":"P4","left":"section","right":"раздел (экзамена)"},{"id":"P5","left":"to improve","right":"улучшить результат"},{"id":"P6","left":"time management","right":"тайм-менеджмент"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('323210be-4e8f-535b-b980-17da57e2c3ca', '0ba14300-f204-550e-93b9-dcd5ba626791', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have reviewed all my mistakes from the mock exam.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have reviewed all my mistakes from the mock exam."},{"id":"Q_B","is_correct":false,"text":"I have reviewed them last week."},{"id":"Q_C","is_correct":false,"text":"I review my mistakes already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc3949ea-9988-5029-9962-63cb1db8f23b', '0ba14300-f204-550e-93b9-dcd5ba626791', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I scored 65 points in the mock exam, but I failed the listening section.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я набрал 65 баллов в пробнике, но раздел на аудирование провалил.","target_language":"en","word_bank":["listening","exam,","but","the","mock","65","score","points","scored","section.","I","the","in","failed","did","tomorrow","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('558207db-469d-5581-a82d-5b4d27b8bd9f', '0ba14300-f204-550e-93b9-dcd5ba626791', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"section","instruction":"Выберите подходящее слово.","options":["section","sections","sectional"],"sentence_template":"She spent forty minutes on the reading ___ last time.","translation_hint":"В прошлый раз она потратила сорок минут на раздел чтения."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7c34516-d6c5-5ab6-804b-5bbb403d1e05', '0ba14300-f204-550e-93b9-dcd5ba626791', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","practised","the","writing","task","twice","this","week."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["this","twice","was","did","We","the","have","week.","writing","task","practised"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3828aeae-24ff-5456-b709-942ad21546a5', '0ba14300-f204-550e-93b9-dcd5ba626791', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The mock showed one clear problem: my time management — I have spent half the exam on the first paper.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('206a5151-efb9-5850-aaa0-25a09dca0b2d', '0ba14300-f204-550e-93b9-dcd5ba626791', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The mock showed one clear problem: my time management — I have spent half the exam on the first paper.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Пробник показал одну явную проблему: тайм-менеджмент — я потратил половину экзамена на первый вариант."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac8a5db9-300e-5f77-b0ee-741a51a8b993', '0ba14300-f204-550e-93b9-dcd5ba626791', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The mock results are out. How did you do?","translation":"Результаты пробника вышли. Как ты справился?","type":"dialogue"},{"character":"Voice 2","text":"Better than expected — 72! But I have not seen the listening part yet.","translation":"Лучше ожидаемого — 72! Но раздел аудирования я ещё не видел.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Which section has caused the most problems?"},{"is_correct":false,"text":"Which section caused them tomorrow yesterday?"},{"is_correct":false,"text":"Is 72 listening to your problems?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"Getting the Results"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b3eed4c-0c76-5cc1-8258-f5b952b58a7d', '0ba14300-f204-550e-93b9-dcd5ba626791', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“mock exam” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A full practice exam before the real one"},{"id":"D_B","is_correct":false,"text":"A short quiz at the end of a lesson"},{"id":"D_C","is_correct":false,"text":"The final exam itself"}],"word":"mock exam"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('675bd95f-3f60-5ee2-8ef8-4494d9b2466f', '0ba14300-f204-550e-93b9-dcd5ba626791', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have scored 80 out of 100 in the last mock.","explanation":"The missing word is “scored”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"scored","id":"LW_A","is_correct":true},{"audio_text":"score","id":"LW_B","is_correct":false},{"audio_text":"scoring","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ 80 out of 100 in the last mock."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e990cb14-6fd6-536f-b317-883bc23df0e8', '0ba14300-f204-550e-93b9-dcd5ba626791', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"review","explanation":"The complete sentence is “Let''s review your mistakes together.”.","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Let''s ___ your mistakes together."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb427b9d-5253-541e-a0b0-31b60c3d1c5b', '0ba14300-f204-550e-93b9-dcd5ba626791', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"exam paper","id":"V1","text":"exam paper"},{"audio_text":"to score","id":"V2","text":"to score"},{"audio_text":"to review mistakes","id":"V3","text":"to review mistakes"},{"audio_text":"section","id":"V4","text":"section"},{"audio_text":"to improve","id":"V5","text":"to improve"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15d04cab-c1cc-50a3-856a-d0c9704bb20d', '0ba14300-f204-550e-93b9-dcd5ba626791', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How was your mock?"}],"explanation":"“Revealing — I have learned that I always lose points on prepositions.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Revealing — I have learned that I always lose points on prepositions."},{"id":"C_B","is_correct":false,"text":"I learned it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The mock is friending me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7dc01880-db28-5724-8257-41a4657279c0', '0ba14300-f204-550e-93b9-dcd5ba626791', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('61cddcbf-9394-5f94-b008-883f096b377c', NULL, 'Стратегия на настоящий экзамен', 'Сравнить стратегии сдачи и спланировать подготовку.', '{"en":"Strategy for the Real Exam","ru":"Стратегия на настоящий экзамен"}'::jsonb, '{"en":"Compare exam strategies and plan your preparation.","ru":"Сравнить стратегии сдачи и спланировать подготовку."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4147f87-cdaf-5397-9f54-d2c20f6d9f87', '61cddcbf-9394-5f94-b008-883f096b377c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to skip a question","right":"пропустить вопрос"},{"id":"P2","left":"more efficient","right":"эффективнее"},{"id":"P3","left":"easy questions first","right":"лёгкие вопросы первыми"},{"id":"P4","left":"to allocate","right":"распределить (время)"},{"id":"P5","left":"guess","right":"догадка / угадать"},{"id":"P6","left":"answer sheet","right":"бланк ответов"},{"id":"P7","left":"checklist","right":"чек-лист"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('575be729-f4b5-5f6b-91b0-01d9b0f19a93', '61cddcbf-9394-5f94-b008-883f096b377c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Doing easy questions first is more efficient than a strict order.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Doing easy questions first is more efficient than a strict order."},{"id":"Q_B","is_correct":false,"text":"Easy first is efficienсter than order."},{"id":"Q_C","is_correct":false,"text":"Easy questions are most efficient than order."}],"question":"Which sentence compares two strategies correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06034d6c-76e5-5e95-b43d-3c50c31b7ea8', '61cddcbf-9394-5f94-b008-883f096b377c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"In the exam I am going to answer the easy questions first.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На экзамене я собираюсь сначала отвечать на лёгкие вопросы.","target_language":"en","word_bank":["answered","yesterday","first.","am","the","answer","going","to","did","easy","exam","In","I","the","questions"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7d3357e-5226-59b8-a7cd-66faaff5edd3', '61cddcbf-9394-5f94-b008-883f096b377c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"smarter","instruction":"Выберите подходящее слово.","options":["smarter","smartest","more smart"],"sentence_template":"Leaving a hard question for later is ___ than guessing at once.","translation_hint":"Оставить сложный вопрос на потом умнее, чем сразу угадывать."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4b416b6-eb9b-59e7-ba93-68dc65690208', '61cddcbf-9394-5f94-b008-883f096b377c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","fill","the","answer","sheet","at","the","end."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["fill","going","answer","sheet","to","at","end.","am","the","was","I","the","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0acd8867-b60b-53cd-928c-419658d556b2', '61cddcbf-9394-5f94-b008-883f096b377c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you allocate fixed minutes to each section, you will never run out of time on the last page.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b13d33e-3cf0-5a5d-a32f-82a76153a50f', '61cddcbf-9394-5f94-b008-883f096b377c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you allocate fixed minutes to each section, you will never run out of time on the last page.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если распределить фиксированные минуты на каждый раздел, времени на последней странице не закончится."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7858dd31-5877-5a85-b193-504506d97706', '61cddcbf-9394-5f94-b008-883f096b377c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"What is your tactic for the multiple-choice part?","translation":"Какая у тебя тактика для тестовой части?","type":"dialogue"},{"character":"Voice 2","text":"Two passes: easy ones first, then the hard ones with the time left.","translation":"Два прохода: сначала лёгкие, потом сложные с оставшимся временем.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am going to try exactly that in the next mock."},{"is_correct":false,"text":"I tried it yesterday tomorrow already."},{"is_correct":false,"text":"The tactic is multipassing my choices."}],"text":"What does Voice 1 decide?","type":"choice"}],"title":"Exam Tactics"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0183e897-c010-5b6b-bfe6-5be0a7a4e0fd', '61cddcbf-9394-5f94-b008-883f096b377c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“answer sheet” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The form where you write your final answers"},{"id":"D_B","is_correct":false,"text":"The question paper you read from"},{"id":"D_C","is_correct":false,"text":"A certificate you get after the exam"}],"word":"answer sheet"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33994b79-cdd6-5215-bfc9-be4d2ec7161b', '61cddcbf-9394-5f94-b008-883f096b377c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to allocate ten minutes for checking.","explanation":"The missing word is “allocate”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"allocate","id":"LW_A","is_correct":true},{"audio_text":"allocated","id":"LW_B","is_correct":false},{"audio_text":"allocating","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ ten minutes for checking."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('415aa43e-3597-5c32-87f7-1cd5fb8934cb', '61cddcbf-9394-5f94-b008-883f096b377c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “A planned guess is better than a panic guess.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A planned guess is ___ than a panic guess."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46ca54e0-29c7-5996-b84b-c7b213647328', '61cddcbf-9394-5f94-b008-883f096b377c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to skip a question","id":"V1","text":"to skip a question"},{"audio_text":"more efficient","id":"V2","text":"more efficient"},{"audio_text":"easy questions first","id":"V3","text":"easy questions first"},{"audio_text":"to allocate","id":"V4","text":"to allocate"},{"audio_text":"guess","id":"V5","text":"guess"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53452dbc-979a-54c3-a40b-0390e0ccbb12', '61cddcbf-9394-5f94-b008-883f096b377c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Should I answer every question?"}],"explanation":"“No penalty means yes — if you mark every answer, you will gain a few free points.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No penalty means yes — if you mark every answer, you will gain a few free points."},{"id":"C_B","is_correct":false,"text":"I answered them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The questions are penaltying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7dc01880-db28-5724-8257-41a4657279c0', '61cddcbf-9394-5f94-b008-883f096b377c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('22e53ffc-98ff-50eb-83dd-1ebd1de38d81', NULL, 'Если завалишь раздел', 'Обсудить пересдачи и страховку, используя should и первое условное.', '{"en":"If You Fail a Section","ru":"Если завалишь раздел"}'::jsonb, '{"en":"Discuss retakes and safety nets using should and the first conditional.","ru":"Обсудить пересдачи и страховку, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61cf84ed-c70f-52b2-8a1f-f0dc43f9997e', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to retake","right":"пересдать"},{"id":"P2","left":"to pass","right":"сдать"},{"id":"P3","left":"required score","right":"проходной балл"},{"id":"P4","left":"to book","right":"забронировать (дату)"},{"id":"P5","left":"in case","right":"на случай"},{"id":"P6","left":"back-up date","right":"запасная дата"},{"id":"P7","left":"nervous","right":"нервный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32c619de-98f4-539f-b28a-ea63b359fbee', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should book a back-up date in case you need a retake.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should book a back-up date in case you need a retake."},{"id":"Q_B","is_correct":false,"text":"You should to book it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must booking dates last exam."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69c91148-2d46-57a7-abe1-7e8b237e2f5c', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you reach the required score first time, you will not need a retake.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если наберёшь проходной балл с первого раза, пересдача не понадобится.","target_language":"en","word_bank":["time,","will","score","yesterday","a","reach","need","you","you","the","retake.","If","reached","first","did","not","required"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b69b4da-0042-5c80-8480-e96f4168c2e4', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"will be","instruction":"Выберите подходящее слово.","options":["will be","be","is"],"sentence_template":"If you feel too nervous, your score ___ lower.","translation_hint":"Если слишком нервничать, балл будет ниже."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a652a95e-ec57-5e54-9cee-f2baea687307', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","register","for","the","earliest","available","date."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["register","You","the","should","mustn''t","went","available","for","date.","earliest"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a4bd409-359b-5466-8d5e-8387c310f620', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you prepare a back-up plan for a retake, you will walk into the exam calmer — strange but true.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ed62ae7-20a9-5e6c-b28f-d436e1ae4fb8', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you prepare a back-up plan for a retake, you will walk into the exam calmer — strange but true.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если подготовить запасной план на пересдачу, войдёшь на экзамен спокойнее — странно, но факт."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ef25672-b7cc-5803-922c-c3e0d43e8878', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The listening was a disaster. I think I have failed the whole exam.","translation":"Аудирование было катастрофой. Кажется, я завалил весь экзамен.","type":"dialogue"},{"character":"Voice 2","text":"Wait for the results — sections are scored separately.","translation":"Дождись результатов — разделы оцениваются отдельно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"If you fail only one part, you can retake just that part."},{"is_correct":false,"text":"You retaked it yesterday tomorrow."},{"is_correct":false,"text":"The disaster is listening your exam."}],"text":"What does Voice 2 advise?","type":"choice"}],"title":"After a Bad Section"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b4ef0f0-819a-5a32-bf87-60f57630b0a2', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to retake” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To take an exam again after failing"},{"id":"D_B","is_correct":false,"text":"To check your answers before submitting"},{"id":"D_C","is_correct":false,"text":"To leave the exam room early"}],"word":"to retake"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f828d07d-893c-5cdf-8cf5-5e7565614033', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If I fail, I will book a new date in May.","explanation":"The missing word is “fail”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"fail","id":"LW_A","is_correct":true},{"audio_text":"will fail","id":"LW_B","is_correct":false},{"audio_text":"failed","id":"LW_C","is_correct":false}],"sentence_template":"If I ___ , I will book a new date in May."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e99822f-4b79-5e59-a928-3b457629f5c9', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"required","explanation":"The complete sentence is “The required score is 60 points.”.","hint_prefix":"req","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ score is 60 points."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cf3b4dc-0481-5036-ac1d-a78c18ae0710', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to retake","id":"V1","text":"to retake"},{"audio_text":"to pass","id":"V2","text":"to pass"},{"audio_text":"required score","id":"V3","text":"required score"},{"audio_text":"to book","id":"V4","text":"to book"},{"audio_text":"in case","id":"V5","text":"in case"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c68fc47-0799-517c-bbc6-c228f911cbe0', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"What if I do not pass this time?"}],"explanation":"“Then you retake in June — if you keep practising, the second attempt is usually easier.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Then you retake in June — if you keep practising, the second attempt is usually easier."},{"id":"C_B","is_correct":false,"text":"I passed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The exam is passing time."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7dc01880-db28-5724-8257-41a4657279c0', '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efdaaeda-831d-50bc-aaa5-b7a303df6fb6', 'en', 'exam paper', 'экзаменационный вариант', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e336f75-47eb-5cb7-be34-5e02cbd44c87', 'en', 'to score', 'набрать (баллы)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('778d9f92-75ee-5f90-bfa7-98730acda428', 'en', 'to review mistakes', 'разобрать ошибки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ee555eb-0a04-5a08-85fe-684d5a6c7006', 'en', 'section', 'раздел (экзамена)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31b9e1a1-e703-5fbc-b7bf-9e4edd1eaa3c', 'en', 'to improve', 'улучшить результат', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cb99147-e5c3-5dd4-b325-fbb5f297473a', 'en', 'time management', 'тайм-менеджмент', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('051f896b-9708-52e0-acbe-55294155df33', 'en', 'to skip a question', 'пропустить вопрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3f8cbaca-8ddb-5711-92be-1a21f4b7b6bf', 'en', 'more efficient', 'эффективнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b498a1b-645c-5818-b7c6-197dc23ce143', 'en', 'easy questions first', 'лёгкие вопросы первыми', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('721b337c-0b8f-5f11-b9ae-4978063bccb8', 'en', 'to allocate', 'распределить (время)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6078d90a-b384-5c94-bd9a-5b1c378cf942', 'en', 'guess', 'догадка / угадать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bfbb8e1-91b2-54d1-8227-83405b6d0149', 'en', 'answer sheet', 'бланк ответов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea7f6dc0-87e9-5895-9e59-06c90a11ec34', 'en', 'checklist', 'чек-лист', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('306b7b52-aa62-53b7-91f2-dc927044b506', 'en', 'to retake', 'пересдать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67acb286-7335-5521-b6cc-6797b87bce30', 'en', 'to pass', 'сдать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cad0aa7-5784-5c8a-86ce-3364cead74c1', 'en', 'required score', 'проходной балл', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4169b2fb-d187-56fc-82c4-f87dcc0c2913', 'en', 'to book', 'забронировать (дату)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('048c812f-0fc6-5b32-a36f-469c071d3805', 'en', 'in case', 'на случай', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3df2c048-79c2-5aaa-840f-02d91e4ab800', 'en', 'back-up date', 'запасная дата', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('db219484-51e9-5f99-9de8-db68534d5605', 'en', 'nervous', 'нервный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '0ba14300-f204-550e-93b9-dcd5ba626791', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'exam paper' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '0ba14300-f204-550e-93b9-dcd5ba626791', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to score' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '0ba14300-f204-550e-93b9-dcd5ba626791', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to review mistakes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '0ba14300-f204-550e-93b9-dcd5ba626791', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'section' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '0ba14300-f204-550e-93b9-dcd5ba626791', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to improve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '0ba14300-f204-550e-93b9-dcd5ba626791', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'time management' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '0ba14300-f204-550e-93b9-dcd5ba626791', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '61cddcbf-9394-5f94-b008-883f096b377c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to skip a question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '61cddcbf-9394-5f94-b008-883f096b377c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more efficient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '61cddcbf-9394-5f94-b008-883f096b377c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'easy questions first' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '61cddcbf-9394-5f94-b008-883f096b377c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to allocate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '61cddcbf-9394-5f94-b008-883f096b377c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'guess' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '61cddcbf-9394-5f94-b008-883f096b377c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'answer sheet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '61cddcbf-9394-5f94-b008-883f096b377c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'checklist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to retake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'required score' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in case' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'back-up date' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7dc01880-db28-5724-8257-41a4657279c0', id, '22e53ffc-98ff-50eb-83dd-1ebd1de38d81', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'nervous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
