-- Track: A2_STUDY_CLASSROOM_DISCUSSIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', 'A2_STUDY_CLASSROOM_DISCUSSIONS', 'Обсуждения в классе', 'Развивайте учебные навыки уровня A2 по теме «Обсуждения в классе».', '{"en":"Classroom Discussions","ru":"Обсуждения в классе"}'::jsonb, '{"en":"Develop A2 study skills for classroom discussions.","ru":"Развивайте учебные навыки уровня A2 по теме «Обсуждения в классе»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('15f61cdb-a8c0-54b6-a78a-2318a0e61b21', NULL, 'Что мы обсудили', 'Рассказать о дискуссии на занятии, используя past simple и present perfect.', '{"en":"What We Discussed","ru":"Что мы обсудили"}'::jsonb, '{"en":"Talk about a class discussion using past simple and present perfect.","ru":"Рассказать о дискуссии на занятии, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa166436-c6c4-59cb-a32a-09b26eba60ba', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to express an opinion","right":"выразить мнение"},{"id":"P2","left":"to agree with","right":"согласиться с"},{"id":"P3","left":"point of view","right":"точка зрения"},{"id":"P4","left":"to interrupt","right":"перебить"},{"id":"P5","left":"argument","right":"аргумент"},{"id":"P6","left":"to take part in","right":"принять участие в"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6d27be1-3d9f-5d03-afbc-2badfd530e6b', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have discussed three topics so far today.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have discussed three topics so far today."},{"id":"Q_B","is_correct":false,"text":"We have discussed three topics yesterday."},{"id":"Q_C","is_correct":false,"text":"We discuss three topics already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce894003-f869-5314-a8cf-4101c8a7dd8f', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I expressed my point of view and then agreed with my classmate''s argument.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я выразил свою точку зрения, а потом согласился с аргументом однокурсницы.","target_language":"en","word_bank":["argument.","classmate''s","expressed","point","view","my","did","tomorrow","my","of","with","express","then","I","agreed","and"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('100e0860-e96a-5792-a341-b674ab112188', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"disagreed","instruction":"Выберите подходящее слово.","options":["disagreed","has disagree","disagreeing"],"sentence_template":"Yesterday she ___ with the professor for the first time.","translation_hint":"Вчера она впервые не согласилась с профессором."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05f53a4a-2b8c-54ff-85c4-1305c79a81a0', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Two","students","have","already","taken","part","in","the","debate."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["taken","Two","part","have","was","already","debate.","in","did","the","students"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edce503e-f118-5b62-92b2-74bb59430c36', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We have had a lively discussion today: everyone expressed an opinion, and nobody interrupted anyone.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f5c3e1c-0119-5313-b646-e002222b3d33', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We have had a lively discussion today: everyone expressed an opinion, and nobody interrupted anyone.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"У нас сегодня прошла оживлённая дискуссия: каждый выразил мнение, и никто никого не перебивал."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82fe6ed0-837d-5e82-b681-2944356b1c68', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Did you take part in the discussion about remote learning?","translation":"Ты участвовал в дискуссии про дистанционное обучение?","type":"dialogue"},{"character":"Voice 2","text":"Yes! It was the best seminar we have had so far.","translation":"Да! Это лучший семинар, что у нас был.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Whose argument did you find the strongest?"},{"is_correct":false,"text":"Whose argument have you found tomorrow?"},{"is_correct":false,"text":"Is the seminar discussing you?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"After the Seminar"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e289ee93-ce87-56f4-9124-fd4aa63ead27', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“point of view” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A person''s own opinion about something"},{"id":"D_B","is_correct":false,"text":"A fact that everyone knows is true"},{"id":"D_C","is_correct":false,"text":"A question the teacher asks the class"}],"word":"point of view"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('720123a7-70fd-5115-a58a-0e13987294d1', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have expressed my opinion twice today.","explanation":"The missing word is “expressed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"expressed","id":"LW_A","is_correct":true},{"audio_text":"express","id":"LW_B","is_correct":false},{"audio_text":"expressing","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ my opinion twice today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50256316-2c02-553d-bc5b-bb2b1e406897', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"with","explanation":"The complete sentence is “She agreed with his argument.”.","hint_prefix":"wi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She agreed ___ his argument."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5187aea-fc86-5bd9-8bd3-2788f314fb89', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to express an opinion","id":"V1","text":"to express an opinion"},{"audio_text":"to agree with","id":"V2","text":"to agree with"},{"audio_text":"point of view","id":"V3","text":"point of view"},{"audio_text":"to interrupt","id":"V4","text":"to interrupt"},{"audio_text":"argument","id":"V5","text":"argument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34adef4b-90d1-5551-b1dd-821a14f09673', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Classmate","text":"The discussion moved so fast!"}],"explanation":"“I know — I have written down three ideas I want to reuse in my essay.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I know — I have written down three ideas I want to reuse in my essay."},{"id":"C_B","is_correct":false,"text":"I write them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The discussion is essaying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('29964f64-0149-5a7b-b9e3-be5bad757277', NULL, 'Дискуссия на следующей неделе', 'Подготовиться к дискуссии и сравнить форматы занятий.', '{"en":"Next Week''s Discussion","ru":"Дискуссия на следующей неделе"}'::jsonb, '{"en":"Prepare for a discussion and compare class formats.","ru":"Подготовиться к дискуссии и сравнить форматы занятий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('864c61cc-1a39-55c5-9cab-2786e58732f3', '29964f64-0149-5a7b-b9e3-be5bad757277', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"debate","right":"дебаты"},{"id":"P2","left":"more engaging","right":"захватывающий (более)"},{"id":"P3","left":"to prepare arguments","right":"подготовить аргументы"},{"id":"P4","left":"to lead a discussion","right":"вести дискуссию"},{"id":"P5","left":"to split into groups","right":"разделиться на группы"},{"id":"P6","left":"online forum","right":"онлайн-форум"},{"id":"P7","left":"in advance","right":"заранее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f61e4ea8-9d1a-56b4-89d3-1c8f80ac1199', '29964f64-0149-5a7b-b9e3-be5bad757277', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Small-group debates are more engaging than lectures.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Small-group debates are more engaging than lectures."},{"id":"Q_B","is_correct":false,"text":"Debates are engager than lectures."},{"id":"Q_C","is_correct":false,"text":"Debates are most engaging than lectures."}],"question":"Which sentence compares two class formats correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a5be334-58c8-5b61-bae1-2ffc4d11cf6e', '29964f64-0149-5a7b-b9e3-be5bad757277', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Next week we are going to have a debate about social media.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На следующей неделе мы собираемся провести дебаты о социальных сетях.","target_language":"en","word_bank":["had","debate","media.","did","we","week","Next","yesterday","are","a","social","have","about","going","to"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b005f649-936c-5857-9346-8dac4643de12', '29964f64-0149-5a7b-b9e3-be5bad757277', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"in","instruction":"Выберите подходящее слово.","options":["in","at","on"],"sentence_template":"Reading the text ___ advance makes the discussion easier.","translation_hint":"Прочитать текст заранее делает дискуссию легче."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6fdcc87-a059-595d-8279-920377452471', '29964f64-0149-5a7b-b9e3-be5bad757277', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","split","into","two","groups."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["We","going","are","did","split","to","two","groups.","was","into"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07d2d859-66bd-5cf4-a568-0db746178ce0', '29964f64-0149-5a7b-b9e3-be5bad757277', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you prepare two arguments in advance, you will feel much calmer during the debate.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d711fe84-5f54-5a42-80dd-7c6d943b519e', '29964f64-0149-5a7b-b9e3-be5bad757277', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you prepare two arguments in advance, you will feel much calmer during the debate.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если заранее подготовить два аргумента, на дебатах будет гораздо спокойнее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('118cd491-c97c-5d3e-a5a9-277c2de05dbe', '29964f64-0149-5a7b-b9e3-be5bad757277', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The debate is on Thursday. How are you preparing?","translation":"Дебаты в четверг. Как ты готовишься?","type":"dialogue"},{"character":"Voice 2","text":"I have collected three arguments and will practise with a friend tonight.","translation":"Я собрал три аргумента и сегодня вечером потренируюсь с другом.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Our group is meeting on Wednesday — join us for practice."},{"is_correct":false,"text":"Our group met yesterday tomorrow."},{"is_correct":false,"text":"The debate is preparing your friend."}],"text":"What does Voice 1 offer?","type":"choice"}],"title":"Preparing for a Debate"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2982f874-e022-54d1-b489-39fff7ca93d2', '29964f64-0149-5a7b-b9e3-be5bad757277', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“debate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A formal discussion where two sides argue different opinions"},{"id":"D_B","is_correct":false,"text":"A quiet talk between two friends"},{"id":"D_C","is_correct":false,"text":"A test with multiple-choice questions"}],"word":"debate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50035730-08c0-5270-a077-b330a9e3ca74', '29964f64-0149-5a7b-b9e3-be5bad757277', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to split into four groups.","explanation":"The missing word is “split”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"split","id":"LW_A","is_correct":true},{"audio_text":"splitted","id":"LW_B","is_correct":false},{"audio_text":"splitting","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ into four groups."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a63bad7d-0a21-5294-b2a4-0773446d8792', '29964f64-0149-5a7b-b9e3-be5bad757277', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Discussions are more engaging than lectures.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Discussions are ___ engaging than lectures."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1c35e34-d699-5bb4-9294-82b25ee23f75', '29964f64-0149-5a7b-b9e3-be5bad757277', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"debate","id":"V1","text":"debate"},{"audio_text":"more engaging","id":"V2","text":"more engaging"},{"audio_text":"to prepare arguments","id":"V3","text":"to prepare arguments"},{"audio_text":"to lead a discussion","id":"V4","text":"to lead a discussion"},{"audio_text":"to split into groups","id":"V5","text":"to split into groups"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4aed5134-5124-5592-9bb8-2db3574fa9eb', '29964f64-0149-5a7b-b9e3-be5bad757277', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Classmate","text":"Who will lead the next discussion?"}],"explanation":"“Maria — and if she needs help, I am going to be the timekeeper.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Maria — and if she needs help, I am going to be the timekeeper."},{"id":"C_B","is_correct":false,"text":"I led it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The discussion is leading Maria."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', '29964f64-0149-5a7b-b9e3-be5bad757277', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e452356a-ab1f-565f-b473-6ebd7841e527', NULL, 'Правила хорошей дискуссии', 'Объяснить правила дискуссий, используя should и первое условное.', '{"en":"Rules of a Good Discussion","ru":"Правила хорошей дискуссии"}'::jsonb, '{"en":"Explain discussion rules using should and the first conditional.","ru":"Объяснить правила дискуссий, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a927c0c8-cf37-587c-8773-f38451a774dc', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to listen actively","right":"активно слушать"},{"id":"P2","left":"to take turns","right":"говорить по очереди"},{"id":"P3","left":"respectful","right":"уважительный"},{"id":"P4","left":"to support","right":"поддержать (аргументом)"},{"id":"P5","left":"evidence","right":"доказательство / довод"},{"id":"P6","left":"to raise a hand","right":"поднять руку"},{"id":"P7","left":"to disagree politely","right":"вежливо не согласиться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e20235b-cee9-5fe3-8f2a-a43a9c2964f4', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should wait for your turn before speaking.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should wait for your turn before speaking."},{"id":"Q_B","is_correct":false,"text":"You should to wait your turn yesterday."},{"id":"Q_C","is_correct":false,"text":"You must waiting turn last class."}],"question":"Which sentence is a discussion rule?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04855e6c-aa3f-555e-8add-ec971af64cf0', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you support your opinion with an example, your argument will be more convincing.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты поддержишь мнение примером, аргумент станет убедительнее.","target_language":"en","word_bank":["more","with","your","will","an","be","example,","yesterday","did","you","support","opinion","your","argument","If","supported","convincing."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f406d32b-7f95-58d6-90b0-2e1e4d1cc2e1', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"make","instruction":"Выберите подходящее слово.","options":["make","will make","made"],"sentence_template":"If you ___ a claim, bring evidence.","translation_hint":"Если высказываешь утверждение, приводи доводы."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e589fbdd-4408-52ce-ada7-d40ecd659aa7', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","raise","your","hand","in","a","big","class."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["big","hand","went","class.","raise","You","should","in","mustn''t","a","your"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b53db497-1b9a-52a6-80d8-578792871a60', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If everyone takes turns and listens actively, even a shy student will join the discussion.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34de72bb-608f-5fab-8f91-10af5c31a450', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If everyone takes turns and listens actively, even a shy student will join the discussion.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если все говорят по очереди и активно слушают, даже стеснительный студент включится в дискуссию."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca72fa7e-d2aa-561d-9dfa-73763447c3a0', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I was interrupted three times during my argument.","translation":"Меня перебивали трижды за время выступления.","type":"dialogue"},{"character":"Voice 2","text":"That is not fair. What should the group do about it?","translation":"Это нечестно. Что группе с этим делать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should take turns — one speaker at a time."},{"is_correct":false,"text":"We must taking turns yesterday."},{"is_correct":false,"text":"The interruption is speaking me three times."}],"text":"What is the rule they need?","type":"choice"}],"title":"The Interrupted Speaker"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbf2c5b5-f8ca-5388-a345-644bc22a7ba0', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“evidence” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Facts or examples that support an opinion"},{"id":"D_B","is_correct":false,"text":"A strong feeling about the topic"},{"id":"D_C","is_correct":false,"text":"A question you cannot answer"}],"word":"evidence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92c40dc3-c782-5216-bcba-d587cc50dff3', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you make your point, slow down.","explanation":"The missing word is “make”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"make","id":"LW_A","is_correct":true},{"audio_text":"will make","id":"LW_B","is_correct":false},{"audio_text":"made","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ your point, slow down."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16b93a36-104e-56b8-b53b-960b151e42f4', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"freely","explanation":"The complete sentence is “Disagree freely , but do it politely.”.","hint_prefix":"fr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Disagree ___ , but do it politely."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('772419ed-9930-52b5-b23c-edb2606628b4', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to listen actively","id":"V1","text":"to listen actively"},{"audio_text":"to take turns","id":"V2","text":"to take turns"},{"audio_text":"respectful","id":"V3","text":"respectful"},{"audio_text":"to support","id":"V4","text":"to support"},{"audio_text":"evidence","id":"V5","text":"evidence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82371180-2595-543d-8ff3-575bd377590c', 'e452356a-ab1f-565f-b473-6ebd7841e527', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Classmate","text":"I never know when to speak."}],"explanation":"“Raise your hand — if the leader sees you, she will give you the floor right away.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Raise your hand — if the leader sees you, she will give you the floor right away."},{"id":"C_B","is_correct":false,"text":"I raised it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The floor is handing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', 'e452356a-ab1f-565f-b473-6ebd7841e527', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cea463c8-8cee-56c3-b95c-91245a9f8971', 'en', 'to express an opinion', 'выразить мнение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9017d66-cba8-5a8c-a528-caacea3d065c', 'en', 'to agree with', 'согласиться с', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('104b55be-aa77-5254-bc1a-c1e0891df44b', 'en', 'point of view', 'точка зрения', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d44c848b-bb75-5377-a64e-04207b525667', 'en', 'to interrupt', 'перебить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7593f6ed-840f-5df5-8ae8-2ff222274441', 'en', 'argument', 'аргумент', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('298eec7f-f2f1-5ea1-a864-e87afc399ef0', 'en', 'to take part in', 'принять участие в', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9ebdf3f-7f16-500c-9b24-a6b492089eab', 'en', 'debate', 'дебаты', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c15e8979-0de5-54f0-917b-0a7699425fd1', 'en', 'more engaging', 'захватывающий (более)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b43d2ccc-a2db-5863-a816-933e09d46bc2', 'en', 'to prepare arguments', 'подготовить аргументы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8dfd030-6ddb-55cc-9d8d-44216c028a4f', 'en', 'to lead a discussion', 'вести дискуссию', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2911f582-bbac-5a06-a865-0ba5313ac133', 'en', 'to split into groups', 'разделиться на группы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d1e9ebe3-9d5b-59ec-b374-0aa7b13cc461', 'en', 'online forum', 'онлайн-форум', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48465a51-bb8d-5af5-beb9-23e75da4553e', 'en', 'in advance', 'заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f75576a0-8a90-5350-8c9f-5b08be3f0b09', 'en', 'to listen actively', 'активно слушать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e775355-aa04-54e7-b5ed-dc47095416db', 'en', 'to take turns', 'говорить по очереди', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9696574b-9333-5089-840d-6b540fc75052', 'en', 'respectful', 'уважительный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75cc274e-52d9-5863-a7c0-37fe5e114b36', 'en', 'to support', 'поддержать (аргументом)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство / довод', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dd64157-b9e3-5324-ba93-0862221ae5af', 'en', 'to raise a hand', 'поднять руку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58966235-4f95-5217-9474-3c143c250763', 'en', 'to disagree politely', 'вежливо не согласиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to express an opinion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to agree with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'point of view' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to interrupt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take part in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '15f61cdb-a8c0-54b6-a78a-2318a0e61b21', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '29964f64-0149-5a7b-b9e3-be5bad757277', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'debate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '29964f64-0149-5a7b-b9e3-be5bad757277', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more engaging' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '29964f64-0149-5a7b-b9e3-be5bad757277', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prepare arguments' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '29964f64-0149-5a7b-b9e3-be5bad757277', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to lead a discussion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '29964f64-0149-5a7b-b9e3-be5bad757277', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to split into groups' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '29964f64-0149-5a7b-b9e3-be5bad757277', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'online forum' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, '29964f64-0149-5a7b-b9e3-be5bad757277', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, 'e452356a-ab1f-565f-b473-6ebd7841e527', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to listen actively' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, 'e452356a-ab1f-565f-b473-6ebd7841e527', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take turns' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, 'e452356a-ab1f-565f-b473-6ebd7841e527', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'respectful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, 'e452356a-ab1f-565f-b473-6ebd7841e527', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to support' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, 'e452356a-ab1f-565f-b473-6ebd7841e527', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, 'e452356a-ab1f-565f-b473-6ebd7841e527', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to raise a hand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3b99f4f-97e4-5889-91b6-cfdb0c3907ea', id, 'e452356a-ab1f-565f-b473-6ebd7841e527', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to disagree politely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
