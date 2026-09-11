-- Track: A2_WORK_BREAKS_AND_TEAM_SMALL_TALK. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('23aa27a1-9e90-51df-a1b3-9238f123e52e', 'A2_WORK_BREAKS_AND_TEAM_SMALL_TALK', 'Перерывы и общение с коллегами', 'Развивайте практический английский уровня A2 для работы по теме «Перерывы и общение с коллегами».', '{"en":"Breaks and Team Small Talk","ru":"Перерывы и общение с коллегами"}'::jsonb, '{"en":"Develop practical A2 workplace English for breaks and team small talk.","ru":"Развивайте практический английский уровня A2 для работы по теме «Перерывы и общение с коллегами»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f395fe62-b65f-5021-be71-f24b2865e256', NULL, 'Новости с прошлой недели', 'Обсудить в перерыве прошедшие события, используя past simple и present perfect.', '{"en":"News From Last Week","ru":"Новости с прошлой недели"}'::jsonb, '{"en":"Discuss recent events during a break using past simple and present perfect.","ru":"Обсудить в перерыве прошедшие события, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05a7c0af-cac0-574c-b88b-52cc0e46ab77', 'f395fe62-b65f-5021-be71-f24b2865e256', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to catch up","right":"обменяться новостями"},{"id":"P2","left":"team lunch","right":"обед с командой"},{"id":"P3","left":"already","right":"уже"},{"id":"P4","left":"yet","right":"ещё"},{"id":"P5","left":"to join","right":"присоединиться"},{"id":"P6","left":"stressful","right":"напряжённый"},{"id":"P7","left":"weekend","right":"выходные"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9307fc18-3dfa-5443-841b-6f2a7b5e18dd', 'f395fe62-b65f-5021-be71-f24b2865e256', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have already told the team about the change.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have already told the team about the change."},{"id":"Q_B","is_correct":false,"text":"I told the team about the change yesterday."},{"id":"Q_C","is_correct":false,"text":"I will tell the team about the change."}],"question":"Which sentence is in the present perfect?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9637e7d8-6e3d-5eab-a8a1-7d30d3e8ec6c', 'f395fe62-b65f-5021-be71-f24b2865e256', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We have already discussed the new schedule, but we have not told the manager yet.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы уже обсудили новый график, но ещё не сказали об этом менеджеру.","target_language":"en","word_bank":["will","new","discussed","not","schedule,","yesterday","did","We","yet.","manager","have","but","already","have","we","told","the","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe3fd3b9-ee23-55ef-8184-a3c2a1e2c1d6', 'f395fe62-b65f-5021-be71-f24b2865e256', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"last","instruction":"Выберите подходящее слово.","options":["last","next","since"],"sentence_template":"We had a team lunch ___ Friday.","translation_hint":"Мы обедали всей командой в прошлую пятницу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('798798c5-c6a5-508d-a686-30ab59dd79f8', 'f395fe62-b65f-5021-be71-f24b2865e256', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","joined","our","team","two","months","ago."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["will","She","team","ago.","months","joined","never","two","our"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1021add4-1fe4-539e-a094-9bc3fe8ea959', 'f395fe62-b65f-5021-be71-f24b2865e256', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Have you finished the report yet? We discussed it last week.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19fbcc29-fd3d-513c-a675-e2b65eb8d1b5', 'f395fe62-b65f-5021-be71-f24b2865e256', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Have you finished the report yet? We discussed it last week.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Ты уже закончил отчёт? Мы обсуждали его на прошлой неделе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ec82e0c-b993-52c9-9255-092a59814287', 'f395fe62-b65f-5021-be71-f24b2865e256', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Maya","text":"Did you have a good weekend?","translation":"Как прошли твои выходные?","type":"dialogue"},{"character":"Ben","text":"Yes, I visited my parents. Have you seen the new coffee machine yet?","translation":"Да, я навестил родителей. Ты уже видел новую кофемашину?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Not yet, but I have already made tea."},{"is_correct":false,"text":"Yes, I see it tomorrow."},{"is_correct":false,"text":"The coffee machine is on holiday."}],"text":"What does Maya answer?","type":"choice"}],"title":"Monday Morning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6dcbf8a-3c3b-58a3-bb6a-e1e7ec51daef', 'f395fe62-b65f-5021-be71-f24b2865e256', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“stressful” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Making you feel worried and tired"},{"id":"D_B","is_correct":false,"text":"Making you feel happy and relaxed"},{"id":"D_C","is_correct":false,"text":"Very cheap to buy"}],"word":"stressful"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a23acac-d98a-5004-b4ab-97d4d0ccb890', 'f395fe62-b65f-5021-be71-f24b2865e256', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have just joined the new project team.","explanation":"The missing word is “just”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"just","id":"LW_A","is_correct":true},{"audio_text":"yet","id":"LW_B","is_correct":false},{"audio_text":"last week","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ joined the new project team."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e414ee0e-fbf7-5053-ac0c-7e200e0f60ac', 'f395fe62-b65f-5021-be71-f24b2865e256', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"since","explanation":"The complete sentence is “She has worked here since 2021.”.","hint_prefix":"si","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has worked here ___ 2021."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('573643a6-c9a2-5c07-994d-41286737dff6', 'f395fe62-b65f-5021-be71-f24b2865e256', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to catch up","id":"V1","text":"to catch up"},{"audio_text":"team lunch","id":"V2","text":"team lunch"},{"audio_text":"already","id":"V3","text":"already"},{"audio_text":"yet","id":"V4","text":"yet"},{"audio_text":"to join","id":"V5","text":"to join"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da4484f0-ab53-5718-ae75-74566d2cfe53', 'f395fe62-b65f-5021-be71-f24b2865e256', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Have you had lunch yet?"}],"explanation":"“Not yet, I have just finished a call.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Not yet, I have just finished a call."},{"id":"C_B","is_correct":false,"text":"Yes, I eat lunch yesterday."},{"id":"C_C","is_correct":false,"text":"Lunch is a meeting room."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('23aa27a1-9e90-51df-a1b3-9238f123e52e', 'f395fe62-b65f-5021-be71-f24b2865e256', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cec45bb3-c7e6-5337-b8cf-293ff548723a', NULL, 'Планы на пятницу', 'Рассказать о планах и сравнить варианты, используя going to и сравнительные степени.', '{"en":"Friday Plans","ru":"Планы на пятницу"}'::jsonb, '{"en":"Talk about plans and compare options using going to and comparatives.","ru":"Рассказать о планах и сравнить варианты, используя going to и сравнительные степени."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6fa4b3b-8e0c-5616-b318-21f7cdbffe5e', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to be going to","right":"собираться (что-то сделать)"},{"id":"P2","left":"day off","right":"выходной день"},{"id":"P3","left":"to invite","right":"пригласить"},{"id":"P4","left":"birthday","right":"день рождения"},{"id":"P5","left":"cake","right":"торт"},{"id":"P6","left":"to order","right":"заказать"},{"id":"P7","left":"than","right":"чем"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a6f977a-46fa-546c-92ce-1b4bb744c5a5', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are going to order pizza for the team lunch.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are going to order pizza for the team lunch."},{"id":"Q_B","is_correct":false,"text":"We ordered pizza for the team lunch."},{"id":"Q_C","is_correct":false,"text":"We have ordered pizza for the team lunch."}],"question":"Which sentence talks about a future plan?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64ee27a0-2622-5cd1-a2d8-14c1f2a44f1e', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to have a bigger lunch than last time because it is Ana''s birthday.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся устроить обед побольше, чем в прошлый раз, потому что у Аны день рождения.","target_language":"en","word_bank":["because","time","lunch","is","a","to","bigger","will","birthday.","it","than","going","are","had","We","Ana''s","have","last","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('385a500c-65d4-5fe2-97db-4f18ae212459', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"less","instruction":"Выберите подходящее слово.","options":["less","most","the"],"sentence_template":"This Monday is ___ stressful than last Monday.","translation_hint":"Этот понедельник менее напряжённый, чем прошлый."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed61ae36-8a4d-5faf-b638-11755da5ab49', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","invite","the","whole","team","to","my","birthday","party."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["birthday","was","party.","going","to","am","I","whole","my","team","invite","to","the","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e7370d0-a379-5c53-9519-654aeb6be0bb', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Are you going to join us for coffee? This cafe is quieter than the one downstairs.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf6d65b1-8af4-5be9-bf7c-b9c065cf235c', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Are you going to join us for coffee? This cafe is quieter than the one downstairs.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Ты пойдёшь с нами за кофе? Это кафе тише, чем то, что на первом этаже."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a257f753-24bc-540b-9bbb-b87f5dab3eec', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Ben","text":"Are you going to join the team lunch on Friday?","translation":"Ты присоединишься к обеду команды в пятницу?","type":"dialogue"},{"character":"Maya","text":"Yes, I am. Is it going to be at the Italian place again?","translation":"Да. Он снова будет в том итальянском месте?","type":"dialogue"},{"options":[{"is_correct":true,"text":"No, we are going to try the new cafe this time."},{"is_correct":false,"text":"Yes, it is going to yesterday."},{"is_correct":false,"text":"The lunch is eating a pizza."}],"text":"What does Ben say?","type":"choice"}],"title":"Friday Plans"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c615c3b-2916-59aa-9836-7f5c7b28a4b1', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to invite” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To ask someone to come to an event"},{"id":"D_B","is_correct":false,"text":"To tell someone to leave a place"},{"id":"D_C","is_correct":false,"text":"To pay for someone''s meal"}],"word":"to invite"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a83d3839-a05c-5a4d-9f99-44c256ad872e', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to order a cake for Friday.","explanation":"The missing word is “going”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"going","id":"LW_A","is_correct":true},{"audio_text":"went","id":"LW_B","is_correct":false},{"audio_text":"gone","id":"LW_C","is_correct":false}],"sentence_template":"We are ___ to order a cake for Friday."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f24091e2-4655-5516-979b-0bcad21bde42', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “Friday is better than Monday for meetings.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Friday is ___ than Monday for meetings."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('364b594a-a527-5956-8fd4-2fae8ffc4670', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to be going to","id":"V1","text":"to be going to"},{"audio_text":"day off","id":"V2","text":"day off"},{"audio_text":"to invite","id":"V3","text":"to invite"},{"audio_text":"birthday","id":"V4","text":"birthday"},{"audio_text":"cake","id":"V5","text":"cake"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e0fc168-aab2-5489-b50f-fdb476d43081', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Do you want to join our coffee break?"}],"explanation":"“I can''t now, but I am going to join you in ten minutes.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I can''t now, but I am going to join you in ten minutes."},{"id":"C_B","is_correct":false,"text":"I will joined you yesterday."},{"id":"C_C","is_correct":false,"text":"Coffee is drinking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('23aa27a1-9e90-51df-a1b3-9238f123e52e', 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6482ceb3-c196-5492-9249-c788f72e64ab', NULL, 'Хороший совет', 'Дать совет коллеге, используя should, must и первое условное наклонение.', '{"en":"Good Advice","ru":"Хороший совет"}'::jsonb, '{"en":"Give a colleague advice using should, must and the first conditional.","ru":"Дать совет коллеге, используя should, must и первое условное наклонение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96a2181b-ffbc-5c96-85e9-ecd7cb2c67a0', '6482ceb3-c196-5492-9249-c788f72e64ab', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"should","right":"следует"},{"id":"P2","left":"must","right":"должен (обязан)"},{"id":"P3","left":"to relax","right":"расслабиться"},{"id":"P4","left":"break","right":"перерыв"},{"id":"P5","left":"to suggest","right":"предложить"},{"id":"P6","left":"fresh air","right":"свежий воздух"},{"id":"P7","left":"to feel tired","right":"чувствовать усталость"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08f03dd2-8d25-501a-b1ef-32f227d448b3', '6482ceb3-c196-5492-9249-c788f72e64ab', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should take a short break every hour.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should take a short break every hour."},{"id":"Q_B","is_correct":false,"text":"You must take a break yesterday."},{"id":"Q_C","is_correct":false,"text":"You are taking a break every hour."}],"question":"Which sentence gives advice about breaks?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a0b137c-8063-5768-92af-4c8e2bbf0e33', '6482ceb3-c196-5492-9249-c788f72e64ab', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you work without breaks, you will feel tired by lunchtime.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты будешь работать без перерывов, ты устанешь к обеду.","target_language":"en","word_bank":["you","by","worked","will","work","tired","you","feel","yesterday","lunchtime.","without","did","breaks,","If"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b69f021-1de4-5fbc-a943-b89d44e2c5b6', '6482ceb3-c196-5492-9249-c788f72e64ab', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"must","instruction":"Выберите подходящее слово.","options":["must","might","would"],"sentence_template":"You ___ turn off your phone during the meeting — it is the rule.","translation_hint":"Ты обязан выключить телефон на встрече — это правило."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adbae758-50f7-5724-8291-630a2d5dbe43', '6482ceb3-c196-5492-9249-c788f72e64ab', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","should","go","for","a","walk","in","the","park","during","the","lunch","break."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["park","the","mustn''t","a","lunch","walk","should","the","break.","for","We","went","during","in","go"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad0d5d73-5c39-5a93-b412-9f317a02f3b2', '6482ceb3-c196-5492-9249-c788f72e64ab', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the weather is nice, we should have our coffee break outside.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8791e860-e5c3-5334-b5c1-2bb549bca2a5', '6482ceb3-c196-5492-9249-c788f72e64ab', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the weather is nice, we should have our coffee break outside.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если погода будет хорошей, нам стоит выпить кофе на улице."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d636cf4a-7adc-526d-8ef6-06ca040e1d8f', '6482ceb3-c196-5492-9249-c788f72e64ab', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Maya","text":"You look tired today. Have you taken a break?","translation":"Ты выглядишь уставшим. Ты сегодня делал перерыв?","type":"dialogue"},{"character":"Ben","text":"No, I have been at my desk since nine.","translation":"Нет, я за столом с девяти.","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should take a short walk and get some fresh air."},{"is_correct":false,"text":"You must work faster and finish everything."},{"is_correct":false,"text":"You should to sleep in the office."}],"text":"What should Maya suggest?","type":"choice"}],"title":"A Good Idea"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('368b9d97-8654-5f1e-8f8b-9e88f30f3067', '6482ceb3-c196-5492-9249-c788f72e64ab', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to suggest” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To offer an idea for other people to think about"},{"id":"D_B","is_correct":false,"text":"To say no to an idea politely"},{"id":"D_C","is_correct":false,"text":"To finish work earlier than usual"}],"word":"to suggest"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e360a96-97bc-527e-9d14-cf8d4da6abed', '6482ceb3-c196-5492-9249-c788f72e64ab', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you take a break, you will feel better.","explanation":"The missing word is “take”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"take","id":"LW_A","is_correct":true},{"audio_text":"will take","id":"LW_B","is_correct":false},{"audio_text":"took","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ a break, you will feel better."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a76731c-b398-5c07-8f3b-662da75b6df0', '6482ceb3-c196-5492-9249-c788f72e64ab', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"must","explanation":"The complete sentence is “You must not use your phone in the meeting room.”.","hint_prefix":"mu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You ___ not use your phone in the meeting room."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c651b2c-d3e3-5102-a070-177e3d65a035', '6482ceb3-c196-5492-9249-c788f72e64ab', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"should","id":"V1","text":"should"},{"audio_text":"must","id":"V2","text":"must"},{"audio_text":"to relax","id":"V3","text":"to relax"},{"audio_text":"break","id":"V4","text":"break"},{"audio_text":"to suggest","id":"V5","text":"to suggest"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b819d8ba-4212-5a23-affc-689a92e5542c', '6482ceb3-c196-5492-9249-c788f72e64ab', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"I always feel tired in the afternoon."}],"explanation":"“You should take a short walk after lunch.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should take a short walk after lunch."},{"id":"C_B","is_correct":false,"text":"You must to drink coffee all day."},{"id":"C_C","is_correct":false,"text":"You should worked less yesterday."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('23aa27a1-9e90-51df-a1b3-9238f123e52e', '6482ceb3-c196-5492-9249-c788f72e64ab', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5db29a89-eceb-5af9-994e-4177f994574b', 'en', 'to catch up', 'обменяться новостями', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d55972a-8eda-5f61-9316-66808e18ead1', 'en', 'team lunch', 'обед с командой', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5851e2ff-5b38-5a83-9910-bce95b245ef4', 'en', 'already', 'уже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('160fc6e0-3607-5e9c-a7e3-1d0ddf0a6cdd', 'en', 'yet', 'ещё', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4006ba2-e37b-5b4a-b42c-e2b9eb3c72cb', 'en', 'to join', 'присоединиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2cdeb87a-d007-5ef4-a361-9aede4cb8751', 'en', 'stressful', 'напряжённый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81085528-5336-52d0-8ab3-182d92d44216', 'en', 'weekend', 'выходные', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ac9820e-614b-535a-877f-013a6449379e', 'en', 'to be going to', 'собираться (что-то сделать)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c96c087-665f-578a-a165-922c64109393', 'en', 'day off', 'выходной день', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c61c0ee-1818-52f7-8359-e9ca2e68044d', 'en', 'to invite', 'пригласить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b15a4b3-452b-5eb1-b1f7-6dfbd01d0399', 'en', 'birthday', 'день рождения', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('34a8e994-fbf0-514e-9a15-56d93569ae5c', 'en', 'cake', 'торт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14d904c6-b321-5be8-bd49-f652e01921dd', 'en', 'to order', 'заказать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3217421f-8044-50f0-89fa-81eab33100b3', 'en', 'than', 'чем', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f733c12f-19c7-5550-8f1e-0b6cdbc88da4', 'en', 'should', 'следует', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6e6e78d-041e-5201-a294-caf36cbeaa19', 'en', 'must', 'должен (обязан)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f63f1bca-7d3b-508e-a201-fd404c6253c7', 'en', 'to relax', 'расслабиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('adc96f02-9d93-5d99-95c8-01f56d515942', 'en', 'break', 'перерыв', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('911695fa-13dc-550c-a7cc-0442a13d157a', 'en', 'to suggest', 'предложить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('17438d30-fd22-506b-9f58-1d8bd8b10e95', 'en', 'fresh air', 'свежий воздух', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('098e69ee-b968-52af-bdbd-c3a79054dc0c', 'en', 'to feel tired', 'чувствовать усталость', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'f395fe62-b65f-5021-be71-f24b2865e256', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to catch up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'f395fe62-b65f-5021-be71-f24b2865e256', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'team lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'f395fe62-b65f-5021-be71-f24b2865e256', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'already' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'f395fe62-b65f-5021-be71-f24b2865e256', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'yet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'f395fe62-b65f-5021-be71-f24b2865e256', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to join' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'f395fe62-b65f-5021-be71-f24b2865e256', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'stressful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'f395fe62-b65f-5021-be71-f24b2865e256', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'weekend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be going to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'day off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to invite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'birthday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'cake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, 'cec45bb3-c7e6-5337-b8cf-293ff548723a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'than' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, '6482ceb3-c196-5492-9249-c788f72e64ab', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'should' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, '6482ceb3-c196-5492-9249-c788f72e64ab', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'must' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, '6482ceb3-c196-5492-9249-c788f72e64ab', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to relax' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, '6482ceb3-c196-5492-9249-c788f72e64ab', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, '6482ceb3-c196-5492-9249-c788f72e64ab', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to suggest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, '6482ceb3-c196-5492-9249-c788f72e64ab', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fresh air' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23aa27a1-9e90-51df-a1b3-9238f123e52e', id, '6482ceb3-c196-5492-9249-c788f72e64ab', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to feel tired' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
