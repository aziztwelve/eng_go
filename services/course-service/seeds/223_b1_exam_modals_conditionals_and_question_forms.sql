-- Track: B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('aa4e155c-216f-5915-9798-9f901f4cfe80', 'B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS', 'Модальные глаголы, условные предложения и вопросы', 'Развивайте экзаменационные навыки уровня B1 по теме «Модальные глаголы, условные предложения и вопросы».', '{"en":"Modals, Conditionals and Question Forms","ru":"Модальные глаголы, условные предложения и вопросы"}'::jsonb, '{"en":"Develop B1 exam skills for modals, conditionals and question forms.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Модальные глаголы, условные предложения и вопросы»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f191e49e-f13c-585c-bc79-9864492d7588', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Modal Meaning","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ff03b2c-e952-5bb9-8032-094c0e884756', 'f191e49e-f13c-585c-bc79-9864492d7588', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E01","left":"might","right":"возможно"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E02","left":"must","right":"должен"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E03","left":"should","right":"следует"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E04","left":"unless","right":"если не"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E05","left":"provided that","right":"при условии что"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E06","left":"would","right":"бы"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E07","left":"indirect question","right":"косвенный вопрос"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e5ce456-2b79-5f7f-9aa0-651322dd217e', 'f191e49e-f13c-585c-bc79-9864492d7588', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E08","is_correct":true,"text":"The train might be delayed unless the weather improves before the evening."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6851af43-3a58-56b2-a4a6-062c4ccb7e51', 'f191e49e-f13c-585c-bc79-9864492d7588', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The train might be delayed unless the weather improves before the evening.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Поезд, возможно, задержится, если погода не улучшится до вечера.","target_language":"en","word_bank":["The","train","might","be","delayed","unless","the","weather","improves","before","the","evening."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b53eab6-3dc9-5042-bdbb-6b0ab5459bf7', 'f191e49e-f13c-585c-bc79-9864492d7588', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"might","instruction":"Выберите подходящее слово.","options":["might","unless","would"],"sentence_template":"The train ___ be delayed unless the weather improves before the evening."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b185cd9-597b-56d3-abba-c8df38152f3f', 'f191e49e-f13c-585c-bc79-9864492d7588', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","train","might","be","delayed","unless","the","weather","improves","before","the","evening."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["evening.","the","before","improves","weather","the","unless","delayed","be","might","train","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df01b2ce-bf29-5505-8d68-ac86c6b1a645', 'f191e49e-f13c-585c-bc79-9864492d7588', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The train might be delayed unless the weather improves before the evening. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d59d1bb-f440-5a35-a6e5-49610fbf1220', 'f191e49e-f13c-585c-bc79-9864492d7588', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The train might be delayed unless the weather improves before the evening. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Поезд, возможно, задержится, если погода не улучшится до вечера. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8b70cd7-f492-5100-a220-7dfdcec674e3', 'f191e49e-f13c-585c-bc79-9864492d7588', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"The train might be delayed unless the weather improves before the evening.","translation":"Поезд, возможно, задержится, если погода не улучшится до вечера.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Modal Meaning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('083f5108-70cf-5807-83c9-0606de3eeffc', 'f191e49e-f13c-585c-bc79-9864492d7588', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“might” means expresses possibility.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E11","is_correct":true,"text":"expresses possibility"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E12","is_correct":false,"text":"expresses strong obligation or deduction"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E13","is_correct":false,"text":"expresses advice"}],"word":"might"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88c0bd03-c28b-5f88-b6b6-ea2bf0d0e9b5', 'f191e49e-f13c-585c-bc79-9864492d7588', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The train might be delayed unless the weather improves before the evening.","explanation":"The missing exam expression is “might”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"might","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E14","is_correct":true},{"audio_text":"should","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E15","is_correct":false},{"audio_text":"provided that","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E16","is_correct":false}],"sentence_template":"The train ___ be delayed unless the weather improves before the evening."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d569b52b-e0dd-5fc8-9ae6-4f91d5a3a848', 'f191e49e-f13c-585c-bc79-9864492d7588', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"might","explanation":"The sentence requires “might” to produce the correct B1 meaning.","hint_prefix":"mig","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The train ___ be delayed unless the weather improves before the evening."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efad2afa-8ba3-5897-ac12-a2f8a8eb2685', 'f191e49e-f13c-585c-bc79-9864492d7588', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"might","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E17","text":"might"},{"audio_text":"must","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E18","text":"must"},{"audio_text":"should","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E19","text":"should"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64e476f2-c93a-5d88-ad11-4cf8026d6762', 'f191e49e-f13c-585c-bc79-9864492d7588', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Modal Meaning”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E20","is_correct":true,"text":"The train might be delayed unless the weather improves before the evening."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('aa4e155c-216f-5915-9798-9f901f4cfe80', 'f191e49e-f13c-585c-bc79-9864492d7588', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('43a072d3-3e41-5836-8bb1-cebb1e8e918b', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"First and Second Conditionals","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f975af4d-31c6-529f-9741-06bb1252a26a', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E01","left":"might","right":"возможно"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E02","left":"must","right":"должен"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E03","left":"should","right":"следует"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E04","left":"unless","right":"если не"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E05","left":"provided that","right":"при условии что"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E06","left":"would","right":"бы"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E07","left":"indirect question","right":"косвенный вопрос"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1050dd12-193f-515e-afd3-bb5e708ec6ef', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E08","is_correct":true,"text":"You should back up the file, provided that you have access to the secure drive."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21346d65-1fa6-515f-b07d-74f079fe290c', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"You should back up the file, provided that you have access to the secure drive.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вам следует создать резервную копию файла при условии, что у вас есть доступ к защищённому диску.","target_language":"en","word_bank":["You","should","back","up","the","file,","provided","that","you","have","access","to","the","secure","drive."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('290989aa-5a50-536c-b5ab-e6bde2b7edae', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"must","instruction":"Выберите подходящее слово.","options":["must","provided that","indirect question"],"sentence_template":"You should back up the file, provided that you have access to the secure drive."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8143171-e745-5165-beab-bdbc6622791a', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","back","up","the","file,","provided","that","you","have","access","to","the","secure","drive."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["drive.","secure","the","to","access","have","you","that","provided","file,","the","up","back","should","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cacccb7-d8f7-5cc8-bf0b-fe17d75c0a25', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"You should back up the file, provided that you have access to the secure drive. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('574a0ffe-b80f-507a-ac3d-18ef67ee345c', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"You should back up the file, provided that you have access to the secure drive. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Вам следует создать резервную копию файла при условии, что у вас есть доступ к защищённому диску. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('157b889e-8401-5edb-90bb-0c3ffee52a03', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"You should back up the file, provided that you have access to the secure drive.","translation":"Вам следует создать резервную копию файла при условии, что у вас есть доступ к защищённому диску.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"First and Second Conditionals"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eec778e7-ba81-5004-9eb5-0495e59ce9d0', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“must” means expresses strong obligation or deduction.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E11","is_correct":true,"text":"expresses strong obligation or deduction"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E12","is_correct":false,"text":"expresses advice"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E13","is_correct":false,"text":"introduces a negative condition"}],"word":"must"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2e3afe7-eed4-5fdb-ae89-9fb0b5de3104', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"You should back up the file, provided that you have access to the secure drive.","explanation":"The missing exam expression is “must”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"must","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E14","is_correct":true},{"audio_text":"unless","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E15","is_correct":false},{"audio_text":"would","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E16","is_correct":false}],"sentence_template":"You should back up the file, provided that you have access to the secure drive."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d961cec-ac64-570e-8f98-0526e1b6e040', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"must","explanation":"The sentence requires “must” to produce the correct B1 meaning.","hint_prefix":"mus","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should back up the file, provided that you have access to the secure drive."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d15e0c5-74c7-51cf-abde-5683009935d9', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"might","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E17","text":"might"},{"audio_text":"must","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E18","text":"must"},{"audio_text":"should","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E19","text":"should"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f410f9e-e845-5d7a-86e5-6d0c6303214f', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “First and Second Conditionals”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E20","is_correct":true,"text":"You should back up the file, provided that you have access to the secure drive."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('aa4e155c-216f-5915-9798-9f901f4cfe80', '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('537fae87-2937-5512-a4d0-d65ec8d140e8', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Indirect and Detailed Questions","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ee18de2-d30d-59ee-a98a-0bcbcef31b9b', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E01","left":"might","right":"возможно"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E02","left":"must","right":"должен"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E03","left":"should","right":"следует"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E04","left":"unless","right":"если не"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E05","left":"provided that","right":"при условии что"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E06","left":"would","right":"бы"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E07","left":"indirect question","right":"косвенный вопрос"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d639991d-1383-5882-bb4b-33621be6a0bc', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E08","is_correct":true,"text":"Could you tell me what you would do if the original plan became impossible?"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9229c44c-82a8-596d-95f4-d4482a9cc954', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you tell me what you would do if the original plan became impossible?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Не могли бы вы сказать, что бы вы сделали, если бы первоначальный план стал невозможным?","target_language":"en","word_bank":["Could","you","tell","me","what","you","would","do","if","the","original","plan","became","impossible?"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('332a00a5-4d42-5ff6-b22b-d0e228343f79', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"should","instruction":"Выберите подходящее слово.","options":["should","would","might"],"sentence_template":"Could you tell me what you would do if the original plan became impossible?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc4f68d3-5bbe-5c95-8a10-3773a41f6116', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Could","you","tell","me","what","you","would","do","if","the","original","plan","became","impossible?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["impossible?","became","plan","original","the","if","do","would","you","what","me","tell","you","Could"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc167267-f6b9-591b-b650-77cc122a2ed8', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Could you tell me what you would do if the original plan became impossible? A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71647971-ed49-563c-846e-3fd897d64801', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Could you tell me what you would do if the original plan became impossible? A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Не могли бы вы сказать, что бы вы сделали, если бы первоначальный план стал невозможным? Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5579cc3f-6a9d-5b5d-9f11-b565509ddc45', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Could you tell me what you would do if the original plan became impossible?","translation":"Не могли бы вы сказать, что бы вы сделали, если бы первоначальный план стал невозможным?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Indirect and Detailed Questions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f1b4bc3-de04-5603-a5cc-03c87f861ecf', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“should” means expresses advice.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E11","is_correct":true,"text":"expresses advice"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E12","is_correct":false,"text":"introduces a negative condition"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E13","is_correct":false,"text":"introduces a necessary condition"}],"word":"should"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6eb49375-4b48-5ef5-af03-2515d7628da8', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you tell me what you would do if the original plan became impossible?","explanation":"The missing exam expression is “should”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"should","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E14","is_correct":true},{"audio_text":"provided that","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E15","is_correct":false},{"audio_text":"indirect question","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E16","is_correct":false}],"sentence_template":"Could you tell me what you would do if the original plan became impossible?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89bd4c6e-c3aa-5882-af36-ac8cac352ae2', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"should","explanation":"The sentence requires “should” to produce the correct B1 meaning.","hint_prefix":"sho","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Could you tell me what you would do if the original plan became impossible?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b63b699-ea51-55eb-9817-ee6002860140', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"might","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E17","text":"might"},{"audio_text":"must","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E18","text":"must"},{"audio_text":"should","id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E19","text":"should"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11034bb3-26cc-52cc-b0a7-78b0250c107c', '537fae87-2937-5512-a4d0-d65ec8d140e8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Indirect and Detailed Questions”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E20","is_correct":true,"text":"Could you tell me what you would do if the original plan became impossible?"},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_MODALS_CONDITIONALS_AND_QUESTION_FORMS_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('aa4e155c-216f-5915-9798-9f901f4cfe80', '537fae87-2937-5512-a4d0-d65ec8d140e8', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad24d887-06be-57cc-8896-60222df049b4', 'en', 'might', 'возможно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6e6e78d-041e-5201-a294-caf36cbeaa19', 'en', 'must', 'должен', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f733c12f-19c7-5550-8f1e-0b6cdbc88da4', 'en', 'should', 'следует', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5b5d3f2-099e-5964-9361-197dd4a556a1', 'en', 'unless', 'если не', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29d01d8f-3a82-5923-83c2-238f90fc4bb5', 'en', 'provided that', 'при условии что', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b874ba88-f3f2-561f-b62a-815b104b1a0a', 'en', 'would', 'бы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88fd7f29-f363-5160-97fa-85ab71da2882', 'en', 'indirect question', 'косвенный вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad24d887-06be-57cc-8896-60222df049b4', 'en', 'might', 'возможно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6e6e78d-041e-5201-a294-caf36cbeaa19', 'en', 'must', 'должен', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f733c12f-19c7-5550-8f1e-0b6cdbc88da4', 'en', 'should', 'следует', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5b5d3f2-099e-5964-9361-197dd4a556a1', 'en', 'unless', 'если не', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29d01d8f-3a82-5923-83c2-238f90fc4bb5', 'en', 'provided that', 'при условии что', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b874ba88-f3f2-561f-b62a-815b104b1a0a', 'en', 'would', 'бы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88fd7f29-f363-5160-97fa-85ab71da2882', 'en', 'indirect question', 'косвенный вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad24d887-06be-57cc-8896-60222df049b4', 'en', 'might', 'возможно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6e6e78d-041e-5201-a294-caf36cbeaa19', 'en', 'must', 'должен', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f733c12f-19c7-5550-8f1e-0b6cdbc88da4', 'en', 'should', 'следует', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5b5d3f2-099e-5964-9361-197dd4a556a1', 'en', 'unless', 'если не', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29d01d8f-3a82-5923-83c2-238f90fc4bb5', 'en', 'provided that', 'при условии что', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b874ba88-f3f2-561f-b62a-815b104b1a0a', 'en', 'would', 'бы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88fd7f29-f363-5160-97fa-85ab71da2882', 'en', 'indirect question', 'косвенный вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, 'f191e49e-f13c-585c-bc79-9864492d7588', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'might' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, 'f191e49e-f13c-585c-bc79-9864492d7588', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'must' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, 'f191e49e-f13c-585c-bc79-9864492d7588', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'should' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, 'f191e49e-f13c-585c-bc79-9864492d7588', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'unless' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, 'f191e49e-f13c-585c-bc79-9864492d7588', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'provided that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, 'f191e49e-f13c-585c-bc79-9864492d7588', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'would' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, 'f191e49e-f13c-585c-bc79-9864492d7588', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'indirect question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'might' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'must' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'should' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'unless' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'provided that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'would' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '43a072d3-3e41-5836-8bb1-cebb1e8e918b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'indirect question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '537fae87-2937-5512-a4d0-d65ec8d140e8', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'might' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '537fae87-2937-5512-a4d0-d65ec8d140e8', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'must' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '537fae87-2937-5512-a4d0-d65ec8d140e8', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'should' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '537fae87-2937-5512-a4d0-d65ec8d140e8', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'unless' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '537fae87-2937-5512-a4d0-d65ec8d140e8', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'provided that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '537fae87-2937-5512-a4d0-d65ec8d140e8', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'would' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'aa4e155c-216f-5915-9798-9f901f4cfe80', id, '537fae87-2937-5512-a4d0-d65ec8d140e8', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'indirect question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
