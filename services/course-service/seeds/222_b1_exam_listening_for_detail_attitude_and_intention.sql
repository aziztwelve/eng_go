-- Track: B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', 'B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION', 'Аудирование: детали, отношение и намерение', 'Развивайте экзаменационные навыки уровня B1 по теме «Аудирование: детали, отношение и намерение».', '{"en":"Listening for Detail, Attitude and Intention","ru":"Аудирование: детали, отношение и намерение"}'::jsonb, '{"en":"Develop B1 exam skills for listening for detail, attitude and intention.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Аудирование: детали, отношение и намерение»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4ba5c456-8c03-52bf-9e3a-23a7818b2092', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Main Ideas and Detail","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1346738-4a15-5656-847e-7f1e3de6d154', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E01","left":"tone","right":"тон"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E02","left":"intention","right":"намерение"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E03","left":"hesitation","right":"колебание"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E04","left":"emphasis","right":"выделение"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E05","left":"detail","right":"деталь"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E06","left":"imply","right":"подразумевать"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E07","left":"attitude","right":"отношение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56043338-6e8b-5a6f-ab35-b8ad9da0f405', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E08","is_correct":true,"text":"Her tone is polite, but the emphasis on the deadline shows that she expects immediate action."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9d15008-ce27-55a6-9ac9-484017d6e01e', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Her tone is polite, but the emphasis on the deadline shows that she expects immediate action.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Её тон вежливый, но выделение срока показывает, что она ожидает немедленных действий.","target_language":"en","word_bank":["Her","tone","is","polite,","but","the","emphasis","on","the","deadline","shows","that","she","expects","immediate","action."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56697f6a-ef04-5659-ae10-7e9d1c0fa16e', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"tone","instruction":"Выберите подходящее слово.","options":["tone","emphasis","imply"],"sentence_template":"Her ___ is polite, but the emphasis on the deadline shows that she expects immediate action."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44202bf0-189c-53b9-945d-f9dfad0523b8', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Her","tone","is","polite,","but","the","emphasis","on","the","deadline","shows","that","she","expects","immediate","action."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["action.","immediate","expects","she","that","shows","deadline","the","on","emphasis","the","but","polite,","is","tone","Her"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b11883f6-bb92-5f51-8ff3-e5d11a995b29', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Her tone is polite, but the emphasis on the deadline shows that she expects immediate action. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55512563-0eb8-5211-8db4-54ca029faf37', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Her tone is polite, but the emphasis on the deadline shows that she expects immediate action. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Её тон вежливый, но выделение срока показывает, что она ожидает немедленных действий. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fff03a07-ddb1-58b3-883c-7b14519540e5', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Her tone is polite, but the emphasis on the deadline shows that she expects immediate action.","translation":"Её тон вежливый, но выделение срока показывает, что она ожидает немедленных действий.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Main Ideas and Detail"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77bb5f5f-9f49-5bdf-ada0-b2c942eb86b6', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“tone” means the emotional quality of a voice.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E11","is_correct":true,"text":"the emotional quality of a voice"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E12","is_correct":false,"text":"what a speaker plans or wants to do"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E13","is_correct":false,"text":"a pause showing uncertainty"}],"word":"tone"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f0ad2af-ee19-5613-9aab-552d30fe8b21', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Her tone is polite, but the emphasis on the deadline shows that she expects immediate action.","explanation":"The missing exam expression is “tone”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tone","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E14","is_correct":true},{"audio_text":"hesitation","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E15","is_correct":false},{"audio_text":"detail","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E16","is_correct":false}],"sentence_template":"Her ___ is polite, but the emphasis on the deadline shows that she expects immediate action."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('534e168f-abf1-5728-a80c-985128de9534', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"tone","explanation":"The sentence requires “tone” to produce the correct B1 meaning.","hint_prefix":"ton","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Her ___ is polite, but the emphasis on the deadline shows that she expects immediate action."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5648e896-fd2b-5f1f-9e76-c4bde5948324', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"tone","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E17","text":"tone"},{"audio_text":"intention","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E18","text":"intention"},{"audio_text":"hesitation","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E19","text":"hesitation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9586bea-3874-5953-8282-5b0addd36ece', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Main Ideas and Detail”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E20","is_correct":true,"text":"Her tone is polite, but the emphasis on the deadline shows that she expects immediate action."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Speaker Attitude","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93d05fff-3c58-5df0-9d01-fe5d795b1812', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E01","left":"tone","right":"тон"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E02","left":"intention","right":"намерение"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E03","left":"hesitation","right":"колебание"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E04","left":"emphasis","right":"выделение"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E05","left":"detail","right":"деталь"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E06","left":"imply","right":"подразумевать"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E07","left":"attitude","right":"отношение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76c63d5c-b34b-50ec-b678-8c24dc628103', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E08","is_correct":true,"text":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ad8b816-ccbe-5127-bfbb-34dabc2d7ce2', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Короткое колебание показывает, что говорящий не уверен, хотя он не признаёт этого прямо.","target_language":"en","word_bank":["A","brief","hesitation","suggests","that","the","speaker","is","uncertain,","although","he","does","not","admit","this","directly."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4605d24-2d05-52b2-a7e5-91a6e36a51d1', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"intention","instruction":"Выберите подходящее слово.","options":["intention","detail","attitude"],"sentence_template":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('484d509a-27d8-50a9-a394-455a95cf7477', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","brief","hesitation","suggests","that","the","speaker","is","uncertain,","although","he","does","not","admit","this","directly."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["directly.","this","admit","not","does","he","although","uncertain,","is","speaker","the","that","suggests","hesitation","brief","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79a315ab-66fb-50f2-9086-e4806c42a6af', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('116717d6-6126-5fc2-9172-64b40f0abfb4', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Короткое колебание показывает, что говорящий не уверен, хотя он не признаёт этого прямо. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21b8ce08-34ce-5e9c-83a4-ca7c771aa092', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly.","translation":"Короткое колебание показывает, что говорящий не уверен, хотя он не признаёт этого прямо.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Speaker Attitude"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('926ed828-f295-5806-a5cc-2c285263c596', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“intention” means what a speaker plans or wants to do.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E11","is_correct":true,"text":"what a speaker plans or wants to do"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E12","is_correct":false,"text":"a pause showing uncertainty"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E13","is_correct":false,"text":"special stress showing importance"}],"word":"intention"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7590fcf2-c86b-5800-9639-a3b3910e5627', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly.","explanation":"The missing exam expression is “intention”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"intention","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E14","is_correct":true},{"audio_text":"emphasis","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E15","is_correct":false},{"audio_text":"imply","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E16","is_correct":false}],"sentence_template":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a2c5353-7f31-576f-aa32-fb3e655a33ae', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"intention","explanation":"The sentence requires “intention” to produce the correct B1 meaning.","hint_prefix":"int","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0c20ac3-3242-588a-95f1-9a75b881afad', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"tone","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E17","text":"tone"},{"audio_text":"intention","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E18","text":"intention"},{"audio_text":"hesitation","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E19","text":"hesitation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03ee10ef-54b9-53e9-acce-1365b7a55d44', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Speaker Attitude”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E20","is_correct":true,"text":"A brief hesitation suggests that the speaker is uncertain, although he does not admit this directly."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c3359472-4eff-5036-b5cc-71a952dcba32', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Purpose and Intention","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9062292b-6425-544f-a2b6-07b5a03ca603', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E01","left":"tone","right":"тон"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E02","left":"intention","right":"намерение"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E03","left":"hesitation","right":"колебание"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E04","left":"emphasis","right":"выделение"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E05","left":"detail","right":"деталь"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E06","left":"imply","right":"подразумевать"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E07","left":"attitude","right":"отношение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d92e617c-27d1-5f47-a484-489f89863aae', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E08","is_correct":true,"text":"The final detail reveals his intention to reject the offer unless the conditions improve."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af076978-4482-5749-83c9-7a5535be3f92', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The final detail reveals his intention to reject the offer unless the conditions improve.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Последняя деталь раскрывает его намерение отклонить предложение, если условия не улучшатся.","target_language":"en","word_bank":["The","final","detail","reveals","his","intention","to","reject","the","offer","unless","the","conditions","improve."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ecd2f9a-4b35-553f-9101-01064a9bd2bd', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hesitation","instruction":"Выберите подходящее слово.","options":["hesitation","imply","tone"],"sentence_template":"The final detail reveals his intention to reject the offer unless the conditions improve."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b679df0-0c1c-5836-a9f7-60014549744d', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","final","detail","reveals","his","intention","to","reject","the","offer","unless","the","conditions","improve."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["improve.","conditions","the","unless","offer","the","reject","to","intention","his","reveals","detail","final","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5aea29b-b0f7-564b-a2a2-749fc41b2cdf', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The final detail reveals his intention to reject the offer unless the conditions improve. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd5f77d5-e037-5720-b092-6b3976936d09', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The final detail reveals his intention to reject the offer unless the conditions improve. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Последняя деталь раскрывает его намерение отклонить предложение, если условия не улучшатся. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('402fd4e5-e8de-5363-844e-d9082b00409a', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"The final detail reveals his intention to reject the offer unless the conditions improve.","translation":"Последняя деталь раскрывает его намерение отклонить предложение, если условия не улучшатся.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Purpose and Intention"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2f606b3-7317-56dc-92e1-8f9a105368e1', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hesitation” means a pause showing uncertainty.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E11","is_correct":true,"text":"a pause showing uncertainty"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E12","is_correct":false,"text":"special stress showing importance"},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E13","is_correct":false,"text":"a specific piece of information"}],"word":"hesitation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72d6ad47-dff3-5000-b01f-33517448f4f3', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The final detail reveals his intention to reject the offer unless the conditions improve.","explanation":"The missing exam expression is “hesitation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hesitation","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E14","is_correct":true},{"audio_text":"detail","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E15","is_correct":false},{"audio_text":"attitude","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E16","is_correct":false}],"sentence_template":"The final detail reveals his intention to reject the offer unless the conditions improve."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1baff612-019d-50e9-9a8c-86c1de62d9e2', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hesitation","explanation":"The sentence requires “hesitation” to produce the correct B1 meaning.","hint_prefix":"hes","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The final detail reveals his intention to reject the offer unless the conditions improve."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12c10be5-afe6-568a-9433-e4893fddf588', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"tone","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E17","text":"tone"},{"audio_text":"intention","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E18","text":"intention"},{"audio_text":"hesitation","id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E19","text":"hesitation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b953c5b4-44af-5879-8940-e86a853f4462', 'c3359472-4eff-5036-b5cc-71a952dcba32', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Purpose and Intention”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E20","is_correct":true,"text":"The final detail reveals his intention to reject the offer unless the conditions improve."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_LISTENING_FOR_DETAIL_ATTITUDE_AND_INTENTION_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', 'c3359472-4eff-5036-b5cc-71a952dcba32', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('041bb7b0-8bab-52e3-933f-9d8790b555df', 'en', 'tone', 'тон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fd87506-e081-5f42-aa31-cc8e9c5cf55d', 'en', 'intention', 'намерение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad20d1c2-1c45-598d-969c-ba8a7d703e99', 'en', 'hesitation', 'колебание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be721b50-7616-5206-a488-6176d8801474', 'en', 'emphasis', 'выделение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('041bb7b0-8bab-52e3-933f-9d8790b555df', 'en', 'tone', 'тон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fd87506-e081-5f42-aa31-cc8e9c5cf55d', 'en', 'intention', 'намерение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad20d1c2-1c45-598d-969c-ba8a7d703e99', 'en', 'hesitation', 'колебание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be721b50-7616-5206-a488-6176d8801474', 'en', 'emphasis', 'выделение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('041bb7b0-8bab-52e3-933f-9d8790b555df', 'en', 'tone', 'тон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fd87506-e081-5f42-aa31-cc8e9c5cf55d', 'en', 'intention', 'намерение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad20d1c2-1c45-598d-969c-ba8a7d703e99', 'en', 'hesitation', 'колебание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be721b50-7616-5206-a488-6176d8801474', 'en', 'emphasis', 'выделение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'tone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'intention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'emphasis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '4ba5c456-8c03-52bf-9e3a-23a7818b2092', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'tone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'intention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'emphasis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, '2c8d2c43-7b0b-582e-945b-eaf1c91ed0cb', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, 'c3359472-4eff-5036-b5cc-71a952dcba32', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'tone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, 'c3359472-4eff-5036-b5cc-71a952dcba32', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'intention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, 'c3359472-4eff-5036-b5cc-71a952dcba32', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, 'c3359472-4eff-5036-b5cc-71a952dcba32', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'emphasis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, 'c3359472-4eff-5036-b5cc-71a952dcba32', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, 'c3359472-4eff-5036-b5cc-71a952dcba32', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a56a68a3-b8f2-5be7-a6e6-35c1b2079c2b', id, 'c3359472-4eff-5036-b5cc-71a952dcba32', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
