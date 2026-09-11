-- Track: B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('70cc203f-3efc-594d-8d5f-f0aa55010c00', 'B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS', 'Интервью и подробные ответы', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Интервью и подробные ответы».', '{"en":"Interviews and Detailed Answers","ru":"Интервью и подробные ответы"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for interviews and detailed answers.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Интервью и подробные ответы»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f2d07e98-c60a-545f-8655-726cb1e838d1', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Interview Questions","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bcdfbf3-f4a4-532e-96af-cd0f23c430e5', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N01","left":"follow-up question","right":"уточняющий вопрос"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N02","left":"relevant detail","right":"уместная деталь"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N03","left":"achievement","right":"достижение"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N04","left":"challenge","right":"трудность"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N05","left":"explain","right":"объяснять"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N06","left":"example","right":"пример"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N07","left":"experience","right":"опыт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a02ca770-1bdf-58aa-a497-69c21ea3636a', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N08","is_correct":true,"text":"When the interviewer asked a follow-up question, I explained the challenge and gave a relevant example."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('923612e1-77fa-5861-ac43-a8c10ec71bee', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When the interviewer asked a follow-up question, I explained the challenge and gave a relevant example.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда интервьюер задал уточняющий вопрос, я объяснил трудность и привёл уместный пример.","target_language":"en","word_bank":["When","the","interviewer","asked","a","follow-up","question,","I","explained","the","challenge","and","gave","a","relevant","example."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a11d938c-5afa-5c5b-962e-25882e6201d3', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"follow-up question","instruction":"Выберите подходящее слово.","options":["follow-up question","challenge","example"],"sentence_template":"When the interviewer asked a ___, I explained the challenge and gave a relevant example."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbdd0517-2260-53f4-b6ae-e57695d32593', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","the","interviewer","asked","a","follow-up","question,","I","explained","the","challenge","and","gave","a","relevant","example."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["example.","relevant","a","gave","and","challenge","the","explained","I","question,","follow-up","a","asked","interviewer","the","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('354191f7-8cf5-588d-bdc1-7fe17767a4aa', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When the interviewer asked a follow-up question, I explained the challenge and gave a relevant example. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa4adec4-962d-5b5c-8e03-18b7b17206b8', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When the interviewer asked a follow-up question, I explained the challenge and gave a relevant example. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Когда интервьюер задал уточняющий вопрос, я объяснил трудность и привёл уместный пример. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7471a2f1-e0fb-52a6-8a1d-737c63e29973', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"When the interviewer asked a follow-up question, I explained the challenge and gave a relevant example.","translation":"Когда интервьюер задал уточняющий вопрос, я объяснил трудность и привёл уместный пример.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Interview Questions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c16f13f4-e86d-5fbb-a936-59fcc3ab54e0', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“follow-up question” means a question requesting more detail.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N11","is_correct":true,"text":"a question requesting more detail"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N12","is_correct":false,"text":"information directly connected to the subject"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N13","is_correct":false,"text":"something successfully completed"}],"word":"follow-up question"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f35cd65-819d-5881-866b-593a15f6ada6', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When the interviewer asked a follow-up question, I explained the challenge and gave a relevant example.","explanation":"The missing expression is “follow-up question”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"follow-up question","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N14","is_correct":true},{"audio_text":"achievement","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N15","is_correct":false},{"audio_text":"explain","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N16","is_correct":false}],"sentence_template":"When the interviewer asked a ___, I explained the challenge and gave a relevant example."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9acda2f2-ec8d-5918-8311-ea6dc5e291c5', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"follow-up question","explanation":"The recording uses “follow-up question” in this position.","hint_prefix":"fol","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When the interviewer asked a ___, I explained the challenge and gave a relevant example."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21bf1c74-d189-5499-a96a-649153ca6257', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"follow-up question","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N17","text":"follow-up question"},{"audio_text":"relevant detail","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N18","text":"relevant detail"},{"audio_text":"achievement","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N19","text":"achievement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16a1b612-f0ff-579a-af4b-1f5f7a15dae0', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N20","is_correct":true,"text":"When the interviewer asked a follow-up question, I explained the challenge and gave a relevant example."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('70cc203f-3efc-594d-8d5f-f0aa55010c00', 'f2d07e98-c60a-545f-8655-726cb1e838d1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('881f9ed4-330b-5043-ad33-4a9c4ce14039', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Reasons and Examples","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f4d0a6c-710c-5df4-82b3-83f370269b98', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N01","left":"follow-up question","right":"уточняющий вопрос"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N02","left":"relevant detail","right":"уместная деталь"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N03","left":"achievement","right":"достижение"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N04","left":"challenge","right":"трудность"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N05","left":"explain","right":"объяснять"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N06","left":"example","right":"пример"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N07","left":"experience","right":"опыт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7deea377-23b3-51bd-95f3-0b5b4500983f', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N08","is_correct":true,"text":"She described her achievement clearly, but she also admitted what she had learned from the experience."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75e91cad-6a18-549a-a0fa-1e66f2057499', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"She described her achievement clearly, but she also admitted what she had learned from the experience.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Она ясно описала своё достижение, но также признала, чему научилась благодаря этому опыту.","target_language":"en","word_bank":["She","described","her","achievement","clearly,","but","she","also","admitted","what","she","had","learned","from","the","experience."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('768573a4-f32a-5e71-a15b-fcf440760ab5', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"relevant detail","instruction":"Выберите подходящее слово.","options":["relevant detail","explain","experience"],"sentence_template":"She described her achievement clearly, but she also admitted what she had learned from the experience."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b50d319-89c7-5773-8bb4-c14939a3a400', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","described","her","achievement","clearly,","but","she","also","admitted","what","she","had","learned","from","the","experience."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["experience.","the","from","learned","had","she","what","admitted","also","she","but","clearly,","achievement","her","described","She"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7810874c-ab03-5d8b-8193-93881f77fddd', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"She described her achievement clearly, but she also admitted what she had learned from the experience. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfd11b61-b647-5f9c-854f-346b3d2576c1', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"She described her achievement clearly, but she also admitted what she had learned from the experience. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Она ясно описала своё достижение, но также признала, чему научилась благодаря этому опыту. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c0f58bd-6a95-5a1f-b08f-48282555db5c', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"She described her achievement clearly, but she also admitted what she had learned from the experience.","translation":"Она ясно описала своё достижение, но также признала, чему научилась благодаря этому опыту.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Reasons and Examples"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abb9f6f2-97fe-58bb-a126-54637a91ec81', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“relevant detail” means information directly connected to the subject.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N11","is_correct":true,"text":"information directly connected to the subject"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N12","is_correct":false,"text":"something successfully completed"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N13","is_correct":false,"text":"a demanding problem"}],"word":"relevant detail"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aed4b84a-4cbf-5ce6-a3a4-6428b2c4942f', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She described her achievement clearly, but she also admitted what she had learned from the experience.","explanation":"The missing expression is “relevant detail”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"relevant detail","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N14","is_correct":true},{"audio_text":"challenge","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N15","is_correct":false},{"audio_text":"example","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N16","is_correct":false}],"sentence_template":"She described her achievement clearly, but she also admitted what she had learned from the experience."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be599ec2-192f-5472-abe7-9b8eaaad615b', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"relevant detail","explanation":"The recording uses “relevant detail” in this position.","hint_prefix":"rel","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She described her achievement clearly, but she also admitted what she had learned from the experience."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd4dc6f6-7293-5248-92c8-c9e313701bed', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"follow-up question","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N17","text":"follow-up question"},{"audio_text":"relevant detail","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N18","text":"relevant detail"},{"audio_text":"achievement","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N19","text":"achievement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b99c47b4-5d60-54ef-a1c9-69d69fd7110e', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N20","is_correct":true,"text":"She described her achievement clearly, but she also admitted what she had learned from the experience."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('70cc203f-3efc-594d-8d5f-f0aa55010c00', '881f9ed4-330b-5043-ad33-4a9c4ce14039', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dc87b841-2819-59ad-b970-23b167192f83', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Follow-up Information","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de655730-e63f-51a9-a271-e9e7c5c7abe5', 'dc87b841-2819-59ad-b970-23b167192f83', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N01","left":"follow-up question","right":"уточняющий вопрос"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N02","left":"relevant detail","right":"уместная деталь"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N03","left":"achievement","right":"достижение"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N04","left":"challenge","right":"трудность"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N05","left":"explain","right":"объяснять"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N06","left":"example","right":"пример"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N07","left":"experience","right":"опыт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b76981d-756f-53f4-a2cf-2b9e22ad567e', 'dc87b841-2819-59ad-b970-23b167192f83', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N08","is_correct":true,"text":"A detailed answer should address the question directly before adding background information."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89bf3144-b2ed-55e4-829c-5a632180b01c', 'dc87b841-2819-59ad-b970-23b167192f83', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A detailed answer should address the question directly before adding background information.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Подробный ответ должен прямо отвечать на вопрос, прежде чем добавлять справочную информацию.","target_language":"en","word_bank":["A","detailed","answer","should","address","the","question","directly","before","adding","background","information."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00214cd3-af40-580d-b863-52fa393b2ce5', 'dc87b841-2819-59ad-b970-23b167192f83', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"achievement","instruction":"Выберите подходящее слово.","options":["achievement","example","follow-up question"],"sentence_template":"A detailed answer should address the question directly before adding background information."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0ea3388-3b8f-58db-bd5e-6038d399606f', 'dc87b841-2819-59ad-b970-23b167192f83', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","detailed","answer","should","address","the","question","directly","before","adding","background","information."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["information.","background","adding","before","directly","question","the","address","should","answer","detailed","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86fd2b96-982c-5201-b76d-3e1875f1a4f0', 'dc87b841-2819-59ad-b970-23b167192f83', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A detailed answer should address the question directly before adding background information. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b19014a2-6b93-5351-a070-fdc644583698', 'dc87b841-2819-59ad-b970-23b167192f83', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A detailed answer should address the question directly before adding background information. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Подробный ответ должен прямо отвечать на вопрос, прежде чем добавлять справочную информацию. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dd423b7-d3bd-5940-8d5f-760465614c37', 'dc87b841-2819-59ad-b970-23b167192f83', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"A detailed answer should address the question directly before adding background information.","translation":"Подробный ответ должен прямо отвечать на вопрос, прежде чем добавлять справочную информацию.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Follow-up Information"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fee0b856-cf60-5a61-95ad-551ef476b79b', 'dc87b841-2819-59ad-b970-23b167192f83', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“achievement” means something successfully completed.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N11","is_correct":true,"text":"something successfully completed"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N12","is_correct":false,"text":"a demanding problem"},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N13","is_correct":false,"text":"make an idea clear"}],"word":"achievement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d20ffc9-772c-520d-946d-de14a2624849', 'dc87b841-2819-59ad-b970-23b167192f83', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A detailed answer should address the question directly before adding background information.","explanation":"The missing expression is “achievement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"achievement","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N14","is_correct":true},{"audio_text":"explain","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N15","is_correct":false},{"audio_text":"experience","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N16","is_correct":false}],"sentence_template":"A detailed answer should address the question directly before adding background information."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2512e859-9747-5d66-a2f9-daabd12d9433', 'dc87b841-2819-59ad-b970-23b167192f83', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"achievement","explanation":"The recording uses “achievement” in this position.","hint_prefix":"ach","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A detailed answer should address the question directly before adding background information."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f709666b-a447-5b81-a74e-4abf14cd544d', 'dc87b841-2819-59ad-b970-23b167192f83', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"follow-up question","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N17","text":"follow-up question"},{"audio_text":"relevant detail","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N18","text":"relevant detail"},{"audio_text":"achievement","id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N19","text":"achievement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d57d7c00-b5e7-56d3-a5a9-157b58ae0bce', 'dc87b841-2819-59ad-b970-23b167192f83', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N20","is_correct":true,"text":"A detailed answer should address the question directly before adding background information."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_INTERVIEWS_AND_DETAILED_ANSWERS_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('70cc203f-3efc-594d-8d5f-f0aa55010c00', 'dc87b841-2819-59ad-b970-23b167192f83', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb2326ca-19d9-50a7-864e-8f142ae95e58', 'en', 'follow-up question', 'уточняющий вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae2bdefd-748a-5740-a174-07f945a47a9f', 'en', 'relevant detail', 'уместная деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fa7ddbe7-1527-54a4-b8e4-4bf99a6d88fd', 'en', 'achievement', 'достижение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fe5e804-e837-5988-b84a-fcd73db6ee65', 'en', 'challenge', 'трудность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3949988b-5b9f-58b0-80e1-9d9ae3ddb273', 'en', 'explain', 'объяснять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d98a7d9c-98de-50fb-8bd2-ed40c53a9f42', 'en', 'example', 'пример', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('749bb679-f32e-527b-92db-97f10a850cb8', 'en', 'experience', 'опыт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb2326ca-19d9-50a7-864e-8f142ae95e58', 'en', 'follow-up question', 'уточняющий вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae2bdefd-748a-5740-a174-07f945a47a9f', 'en', 'relevant detail', 'уместная деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fa7ddbe7-1527-54a4-b8e4-4bf99a6d88fd', 'en', 'achievement', 'достижение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fe5e804-e837-5988-b84a-fcd73db6ee65', 'en', 'challenge', 'трудность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3949988b-5b9f-58b0-80e1-9d9ae3ddb273', 'en', 'explain', 'объяснять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d98a7d9c-98de-50fb-8bd2-ed40c53a9f42', 'en', 'example', 'пример', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('749bb679-f32e-527b-92db-97f10a850cb8', 'en', 'experience', 'опыт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb2326ca-19d9-50a7-864e-8f142ae95e58', 'en', 'follow-up question', 'уточняющий вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae2bdefd-748a-5740-a174-07f945a47a9f', 'en', 'relevant detail', 'уместная деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fa7ddbe7-1527-54a4-b8e4-4bf99a6d88fd', 'en', 'achievement', 'достижение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fe5e804-e837-5988-b84a-fcd73db6ee65', 'en', 'challenge', 'трудность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3949988b-5b9f-58b0-80e1-9d9ae3ddb273', 'en', 'explain', 'объяснять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d98a7d9c-98de-50fb-8bd2-ed40c53a9f42', 'en', 'example', 'пример', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('749bb679-f32e-527b-92db-97f10a850cb8', 'en', 'experience', 'опыт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'f2d07e98-c60a-545f-8655-726cb1e838d1', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'f2d07e98-c60a-545f-8655-726cb1e838d1', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'relevant detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'f2d07e98-c60a-545f-8655-726cb1e838d1', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'achievement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'f2d07e98-c60a-545f-8655-726cb1e838d1', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'f2d07e98-c60a-545f-8655-726cb1e838d1', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'explain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'f2d07e98-c60a-545f-8655-726cb1e838d1', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'f2d07e98-c60a-545f-8655-726cb1e838d1', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'experience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, '881f9ed4-330b-5043-ad33-4a9c4ce14039', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, '881f9ed4-330b-5043-ad33-4a9c4ce14039', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'relevant detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, '881f9ed4-330b-5043-ad33-4a9c4ce14039', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'achievement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, '881f9ed4-330b-5043-ad33-4a9c4ce14039', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, '881f9ed4-330b-5043-ad33-4a9c4ce14039', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'explain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, '881f9ed4-330b-5043-ad33-4a9c4ce14039', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, '881f9ed4-330b-5043-ad33-4a9c4ce14039', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'experience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'dc87b841-2819-59ad-b970-23b167192f83', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'dc87b841-2819-59ad-b970-23b167192f83', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'relevant detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'dc87b841-2819-59ad-b970-23b167192f83', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'achievement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'dc87b841-2819-59ad-b970-23b167192f83', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'dc87b841-2819-59ad-b970-23b167192f83', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'explain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'dc87b841-2819-59ad-b970-23b167192f83', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '70cc203f-3efc-594d-8d5f-f0aa55010c00', id, 'dc87b841-2819-59ad-b970-23b167192f83', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'experience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
