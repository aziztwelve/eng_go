-- Track: A2_WORK_SCHEDULES_SHIFTS_AND_DEADLINES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8429d3e8-176d-5128-9742-866e93beb5a1', 'A2_WORK_SCHEDULES_SHIFTS_AND_DEADLINES', 'Расписания, смены и сроки', 'Развивайте практический английский уровня A2 для работы по теме «Расписания, смены и сроки».', '{"en":"Schedules, Shifts and Deadlines","ru":"Расписания, смены и сроки"}'::jsonb, '{"en":"Develop practical A2 workplace English for schedules, shifts and deadlines.","ru":"Развивайте практический английский уровня A2 для работы по теме «Расписания, смены и сроки»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ea8ea19c-339b-56df-9a20-5980bd8d8e10', NULL, 'Что изменилось на этой неделе', 'Сообщить об изменениях в графике, используя past simple и present perfect.', '{"en":"What Changed This Week","ru":"Что изменилось на этой неделе"}'::jsonb, '{"en":"Report schedule changes using past simple and present perfect.","ru":"Сообщить об изменениях в графике, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7e7de37-457d-5e87-86fc-fcad2474bc65', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"shift","right":"смена"},{"id":"P2","left":"deadline","right":"срок"},{"id":"P3","left":"to move","right":"перенести"},{"id":"P4","left":"to extend","right":"продлить"},{"id":"P5","left":"night shift","right":"ночная смена"},{"id":"P6","left":"to swap","right":"обменяться (сменами)"},{"id":"P7","left":"schedule","right":"график"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ad3e0d6-e5de-5866-b004-3c097b72699a', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The deadline has moved to the end of the month.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The deadline has moved to the end of the month."},{"id":"Q_B","is_correct":false,"text":"The deadline has moved yesterday."},{"id":"Q_C","is_correct":false,"text":"The deadline move already to Friday."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1e83c76-8501-594f-8f59-4d1109179554', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We have moved the deadline to Friday, and the client has already confirmed the new date.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы перенесли дедлайн на пятницу, и клиент уже подтвердил новую дату.","target_language":"en","word_bank":["the","yesterday","We","client","the","date.","moved","new","confirmed","has","to","have","Friday,","already","and","the","move","did","deadline"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2a83165-4ecd-5d02-b08c-cab7c71ee43a', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"night","instruction":"Выберите подходящее слово.","options":["night","nights","nightly"],"sentence_template":"Last month she worked the ___ shift every week.","translation_hint":"В прошлом месяце она каждую неделю работала в ночную смену."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c88bba75-4699-5bdb-adc8-caf42724c3b6', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","has","swapped","shifts","with","a","colleague","from","the","morning","team."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","has","morning","with","a","He","swapped","the","from","colleague","team.","shifts","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab051a28-4231-5a41-a8be-808cf5a3bc98', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The deadline has changed again, so we have more time than we planned last week.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddd46830-fbc1-5336-bb55-bab485b35ec4', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The deadline has changed again, so we have more time than we planned last week.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Срок снова изменился, поэтому у нас больше времени, чем мы планировали на прошлой неделе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f040d2d7-a4fa-5227-9902-b7835f41c805', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"Why is everyone working late today?","translation":"Почему сегодня все работают допоздна?","type":"dialogue"},{"character":"Anna","text":"The client moved the deadline, and we have only three days left now.","translation":"Клиент перенёс срок, и у нас осталось всего три дня.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Has the manager approved the new plan?"},{"is_correct":false,"text":"Did the manager has approved it yesterday?"},{"is_correct":false,"text":"Is the deadline working late too?"}],"text":"What does Tom ask?","type":"choice"}],"title":"The Moved Deadline"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f83b7d7b-1bf7-57f9-86f6-42b39028678c', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“deadline” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The time or date by which something must be finished"},{"id":"D_B","is_correct":false,"text":"The day when a project starts"},{"id":"D_C","is_correct":false,"text":"A meeting about next year''s plan"}],"word":"deadline"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('621734e1-3b42-5e0b-9c65-44753cf6224b', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have extended the deadline by two days.","explanation":"The missing word is “extended”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"extended","id":"LW_A","is_correct":true},{"audio_text":"extend","id":"LW_B","is_correct":false},{"audio_text":"extending","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ the deadline by two days."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d568693-599c-59f8-8634-35d9155d8bec', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"shift","explanation":"The complete sentence is “She has worked the night shift since June.”.","hint_prefix":"sh","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has worked the night ___ since June."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a0922f2-6298-5156-8915-32870a3b6a6f', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"shift","id":"V1","text":"shift"},{"audio_text":"deadline","id":"V2","text":"deadline"},{"audio_text":"to move","id":"V3","text":"to move"},{"audio_text":"to extend","id":"V4","text":"to extend"},{"audio_text":"night shift","id":"V5","text":"night shift"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a6a5b44-5b22-551f-bafd-d3953aa7a10f', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Are you working the morning shift tomorrow?"}],"explanation":"“I was, but I have swapped it for the evening shift.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I was, but I have swapped it for the evening shift."},{"id":"C_B","is_correct":false,"text":"Yes, I work it yesterday."},{"id":"C_C","is_correct":false,"text":"The shift is swapping me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8429d3e8-176d-5128-9742-866e93beb5a1', 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5170950b-a634-5d87-96b2-f5050141e804', NULL, 'График на следующий месяц', 'Обсудить будущие смены и сравнить варианты времени.', '{"en":"Next Month''s Schedule","ru":"График на следующий месяц"}'::jsonb, '{"en":"Discuss future shifts and compare time options.","ru":"Обсудить будущие смены и сравнить варианты времени."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54781042-4665-53a0-840c-8d09ca6d8a8a', '5170950b-a634-5d87-96b2-f5050141e804', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"rota","right":"график смен"},{"id":"P2","left":"early shift","right":"ранняя смена"},{"id":"P3","left":"later","right":"позже"},{"id":"P4","left":"to cover","right":"подменить / закрыть (смену)"},{"id":"P5","left":"overtime","right":"сверхурочные"},{"id":"P6","left":"flexible hours","right":"гибкий график"},{"id":"P7","left":"to prefer","right":"предпочитать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8cd9149-3fd7-5fba-af8a-66a69c001df0', '5170950b-a634-5d87-96b2-f5050141e804', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I am going to cover Anna''s shift on Saturday.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I am going to cover Anna''s shift on Saturday."},{"id":"Q_B","is_correct":false,"text":"I covered Anna''s shift last Saturday."},{"id":"Q_C","is_correct":false,"text":"I have cover Anna''s shift yesterday."}],"question":"Which sentence talks about the future?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78000260-659f-504e-8045-77a09fd5be93', '5170950b-a634-5d87-96b2-f5050141e804', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The early shift starts earlier, but I am free all evening.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Ранняя смена начинается раньше, но зато я свободен весь вечер.","target_language":"en","word_bank":["but","starts","evening.","early","shift","did","I","free","starts","all","The","yesterday","am","earlier,"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf7440dd-026c-5d90-9079-376656e605dd', '5170950b-a634-5d87-96b2-f5050141e804', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"Flexible hours are ___ convenient for parents than fixed shifts.","translation_hint":"Гибкий график удобнее для родителей, чем фиксированные смены."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be5810c3-62d0-5220-a791-97911d098f65', '5170950b-a634-5d87-96b2-f5050141e804', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","publish","the","new","rota","at","the","end","of","the","week."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","end","the","the","week.","are","at","new","publish","going","did","to","We","rota","the","of"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('620f7ee5-b93f-5a24-b997-0add616632a1', '5170950b-a634-5d87-96b2-f5050141e804', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you prefer later starts, you should tell the manager before the rota is final.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df8e29d6-cc8f-5f71-8c86-44822d9f3b1d', '5170950b-a634-5d87-96b2-f5050141e804', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you prefer later starts, you should tell the manager before the rota is final.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ты предпочитаешь начинать позже, стоит сказать менеджеру до того, как график станет окончательным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e789392-1bd6-57aa-a79d-462c5ceaf3cd', '5170950b-a634-5d87-96b2-f5050141e804', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"The new rota starts next month. Do you have any preferences?","translation":"Новый график начинается со следующего месяца. Есть предпочтения?","type":"dialogue"},{"character":"Tom","text":"Yes. Could I work the early shift on Mondays?","translation":"Да. Можно мне раннюю смену по понедельникам?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That is fine — Mondays are quieter in the morning."},{"is_correct":false,"text":"Yes, you worked it last month already."},{"is_correct":false,"text":"The early shift is preferring you."}],"text":"What does the manager answer?","type":"choice"}],"title":"Choosing Shifts"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb155662-977d-56c5-bcbb-c9bb0e7b314d', '5170950b-a634-5d87-96b2-f5050141e804', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“overtime” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Extra working hours beyond your normal schedule"},{"id":"D_B","is_correct":false,"text":"A short break during the working day"},{"id":"D_C","is_correct":false,"text":"A day off that you take every week"}],"word":"overtime"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc969f58-5679-5094-9f81-e6d7438fb10a', '5170950b-a634-5d87-96b2-f5050141e804', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The meeting is going to start later than usual.","explanation":"The missing word is “later”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"later","id":"LW_A","is_correct":true},{"audio_text":"late","id":"LW_B","is_correct":false},{"audio_text":"latest","id":"LW_C","is_correct":false}],"sentence_template":"The meeting is going to start ___ than usual."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65e73cb1-6ad1-5e5d-88d1-cf891fbeb8bf', '5170950b-a634-5d87-96b2-f5050141e804', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cover","explanation":"The complete sentence is “I am going to cover the Saturday shift for a colleague.”.","hint_prefix":"co","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am going to ___ the Saturday shift for a colleague."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8515f226-f76f-5c3a-a43b-f199cc9d431f', '5170950b-a634-5d87-96b2-f5050141e804', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"rota","id":"V1","text":"rota"},{"audio_text":"early shift","id":"V2","text":"early shift"},{"audio_text":"later","id":"V3","text":"later"},{"audio_text":"to cover","id":"V4","text":"to cover"},{"audio_text":"overtime","id":"V5","text":"overtime"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40256a01-9c1b-5337-8abf-6ad8fef977ad', '5170950b-a634-5d87-96b2-f5050141e804', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Can you work on Sunday?"}],"explanation":"“I''d rather not, but if you find nobody else, I will do it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I''d rather not, but if you find nobody else, I will do it."},{"id":"C_B","is_correct":false,"text":"Yes, I will worked it last Sunday."},{"id":"C_C","is_correct":false,"text":"Sunday is working me this week."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8429d3e8-176d-5128-9742-866e93beb5a1', '5170950b-a634-5d87-96b2-f5050141e804', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('26434da9-f884-5a49-b230-092fd76b0ff4', NULL, 'Если не успеем к сроку', 'Обсудить последствия и обязательства с must и первым условным.', '{"en":"If We Miss the Deadline","ru":"Если не успеем к сроку"}'::jsonb, '{"en":"Discuss consequences and obligations with must and the first conditional.","ru":"Обсудить последствия и обязательства с must и первым условным."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9db34f3f-588b-5f4b-9d8c-d4f15913e9f7', '26434da9-f884-5a49-b230-092fd76b0ff4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"on time","right":"вовремя"},{"id":"P2","left":"to delay","right":"задержать"},{"id":"P3","left":"to prioritise","right":"расставить приоритеты"},{"id":"P4","left":"consequence","right":"последствие"},{"id":"P5","left":"to rush","right":"спешить (делать наспех)"},{"id":"P6","left":"carefully","right":"внимательно"},{"id":"P7","left":"as agreed","right":"как договорились"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('522b5bd7-bc69-5693-bed5-fcdd4c3b66e6', '26434da9-f884-5a49-b230-092fd76b0ff4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We must finish the order as agreed.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We must finish the order as agreed."},{"id":"Q_B","is_correct":false,"text":"We must to finish the order yesterday."},{"id":"Q_C","is_correct":false,"text":"We finishing the order must now."}],"question":"Which sentence expresses a strong obligation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81ce7042-e177-595a-8f30-879804151684', '26434da9-f884-5a49-b230-092fd76b0ff4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If we do not prioritise today, we will not meet the deadline.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если мы не расставим приоритеты сегодня, мы не успеем к сроку.","target_language":"en","word_bank":["will","prioritised","the","not","prioritise","yesterday","do","did","today,","not","meet","we","we","If","deadline."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2646c7bf-4f5a-5b01-a506-fdbecf91b540', '26434da9-f884-5a49-b230-092fd76b0ff4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"delay","instruction":"Выберите подходящее слово.","options":["delay","will delay","delayed"],"sentence_template":"If we ___ the delivery, the client will complain.","translation_hint":"Если мы задержим доставку, клиент будет недоволен."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc753f4a-0d23-5658-b15e-41fda7a2c933', '26434da9-f884-5a49-b230-092fd76b0ff4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","must","send","the","confirmation","as","agreed","in","the","contract."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","contract.","the","as","went","in","confirmation","We","must","agreed","send","may"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c51d634e-91ff-5fb5-8a4a-1415b72ff266', '26434da9-f884-5a49-b230-092fd76b0ff4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we rush the work, we will make more mistakes, so we should plan the time carefully.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53a7c136-1b6d-57db-aba4-be5d6ea82bd3', '26434da9-f884-5a49-b230-092fd76b0ff4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we rush the work, we will make more mistakes, so we should plan the time carefully.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если мы будем делать работу наспех, мы допустим больше ошибок, поэтому стоит внимательно спланировать время."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b0f6bc5-32e9-5f4e-bb54-6f82dfa1dcf1', '26434da9-f884-5a49-b230-092fd76b0ff4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"We have too many tasks and only one week.","translation":"У нас слишком много задач и всего одна неделя.","type":"dialogue"},{"character":"Tom","text":"What happens if we do not finish everything on time?","translation":"Что будет, если мы не закончим всё вовремя?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If we miss the deadline, the client will choose another supplier."},{"is_correct":false,"text":"If we will miss the deadline, the client chose another supplier."},{"is_correct":false,"text":"The deadline is finishing us instead."}],"text":"How does Anna explain the consequence?","type":"choice"}],"title":"The Risky Week"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62fbfe7d-7da0-5649-bca8-7cc2fcad81f5', '26434da9-f884-5a49-b230-092fd76b0ff4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to prioritise” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To decide which tasks are the most important and do them first"},{"id":"D_B","is_correct":false,"text":"To do all tasks at the same time"},{"id":"D_C","is_correct":false,"text":"To stop working when you feel tired"}],"word":"to prioritise"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97abb5de-94f9-5961-888f-8387604de4ca', '26434da9-f884-5a49-b230-092fd76b0ff4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If we prioritise the tasks, we will finish faster.","explanation":"The missing word is “prioritise”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"prioritise","id":"LW_A","is_correct":true},{"audio_text":"will prioritise","id":"LW_B","is_correct":false},{"audio_text":"prioritised","id":"LW_C","is_correct":false}],"sentence_template":"If we ___ the tasks, we will finish faster."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10cfcb58-c9ff-506d-abc9-849a6acda877', '26434da9-f884-5a49-b230-092fd76b0ff4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"by","explanation":"The complete sentence is “We must finish the report by Friday.”.","hint_prefix":"by","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We must finish the report ___ Friday."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66604c66-963f-5b45-a54f-bc60eec1d65a', '26434da9-f884-5a49-b230-092fd76b0ff4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"on time","id":"V1","text":"on time"},{"audio_text":"to delay","id":"V2","text":"to delay"},{"audio_text":"to prioritise","id":"V3","text":"to prioritise"},{"audio_text":"consequence","id":"V4","text":"consequence"},{"audio_text":"to rush","id":"V5","text":"to rush"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e099fdf-68d6-5132-afd2-76ba88b6de7d', '26434da9-f884-5a49-b230-092fd76b0ff4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The deadline is on Friday. Are we ready?"}],"explanation":"“Almost. If we prioritise the main sections, we will make it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Almost. If we prioritise the main sections, we will make it."},{"id":"C_B","is_correct":false,"text":"Yes, we are ready yesterday."},{"id":"C_C","is_correct":false,"text":"Friday is finishing the report for us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8429d3e8-176d-5128-9742-866e93beb5a1', '26434da9-f884-5a49-b230-092fd76b0ff4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fa1f2678-1d1a-53ed-8038-86e68b36d4ac', 'en', 'shift', 'смена', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f982a8a6-f256-5e05-a04c-ce5cf05a78e2', 'en', 'to move', 'перенести', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('da286d16-6ed3-5ca8-bf1c-98125482834b', 'en', 'to extend', 'продлить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e786de7-d419-5a89-8c23-ac0e510ea90b', 'en', 'night shift', 'ночная смена', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97a379de-c761-579f-9c93-8867451d0ebe', 'en', 'to swap', 'обменяться (сменами)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d002d42c-cc36-5eb2-992f-c808826121c6', 'en', 'schedule', 'график', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c2217a7-f037-5cb0-adee-c2d0acab8132', 'en', 'rota', 'график смен', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f99e6d53-9bb0-5e15-a8e2-0cd1b889146b', 'en', 'early shift', 'ранняя смена', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2031a517-3fd2-5477-ad5d-426925135c6c', 'en', 'later', 'позже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b50090b2-7318-53b4-b6d9-7361e2b7554f', 'en', 'to cover', 'подменить / закрыть (смену)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5fd6ca0b-14a6-5c26-8970-308ade14540d', 'en', 'overtime', 'сверхурочные', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8aa058dd-7748-58e5-9577-c68d0c4272ab', 'en', 'flexible hours', 'гибкий график', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('671c5c94-d122-5d5a-9de9-2707e757f7f5', 'en', 'to prefer', 'предпочитать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1293301d-6838-5a78-a080-af9858ce3dfd', 'en', 'on time', 'вовремя', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c4ff707-a00c-5d73-a8ac-88d89dc037e6', 'en', 'to delay', 'задержать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59ebe165-b87b-5b8e-adef-435ae752a117', 'en', 'to prioritise', 'расставить приоритеты', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b94d8e51-d825-5ec3-a762-b21b360cd359', 'en', 'consequence', 'последствие', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22b8a905-d970-5934-883d-277b2b445d16', 'en', 'to rush', 'спешить (делать наспех)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('99f682c0-9bab-5599-a9d4-04f2062d533c', 'en', 'carefully', 'внимательно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('50c4d547-77d8-5818-82bc-f67090adc24e', 'en', 'as agreed', 'как договорились', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to move' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to extend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'night shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to swap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, 'ea8ea19c-339b-56df-9a20-5980bd8d8e10', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '5170950b-a634-5d87-96b2-f5050141e804', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'rota' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '5170950b-a634-5d87-96b2-f5050141e804', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'early shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '5170950b-a634-5d87-96b2-f5050141e804', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'later' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '5170950b-a634-5d87-96b2-f5050141e804', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cover' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '5170950b-a634-5d87-96b2-f5050141e804', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'overtime' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '5170950b-a634-5d87-96b2-f5050141e804', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible hours' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '5170950b-a634-5d87-96b2-f5050141e804', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prefer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '26434da9-f884-5a49-b230-092fd76b0ff4', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'on time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '26434da9-f884-5a49-b230-092fd76b0ff4', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '26434da9-f884-5a49-b230-092fd76b0ff4', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prioritise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '26434da9-f884-5a49-b230-092fd76b0ff4', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '26434da9-f884-5a49-b230-092fd76b0ff4', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to rush' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '26434da9-f884-5a49-b230-092fd76b0ff4', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'carefully' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8429d3e8-176d-5128-9742-866e93beb5a1', id, '26434da9-f884-5a49-b230-092fd76b0ff4', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'as agreed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
