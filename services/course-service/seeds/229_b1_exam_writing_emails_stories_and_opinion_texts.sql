-- Track: B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('474c86a2-9643-5f16-a1fd-af0e56450be8', 'B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS', 'Написание писем, рассказов и текстов-мнений', 'Развивайте экзаменационные навыки уровня B1 по теме «Написание писем, рассказов и текстов-мнений».', '{"en":"Writing Emails, Stories and Opinion Texts","ru":"Написание писем, рассказов и текстов-мнений"}'::jsonb, '{"en":"Develop B1 exam skills for writing emails, stories and opinion texts.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Написание писем, рассказов и текстов-мнений»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f1cf804b-1b1c-5258-ac00-b5edf98d65e9', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Informal Emails","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e03c7b7a-eaec-5633-9379-02be55f20a6b', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E01","left":"register","right":"стиль речи"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E02","left":"paragraph","right":"абзац"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E03","left":"linking expression","right":"связующее выражение"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E04","left":"narrative","right":"повествование"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E05","left":"opinion","right":"мнение"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E06","left":"supporting reason","right":"подтверждающая причина"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E07","left":"edit","right":"редактировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2078183-5bae-5df9-ac13-ca2dad12b5bc', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E08","is_correct":true,"text":"An informal email can use a friendly register, but its purpose should still be clear in the opening paragraph."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5996e266-7b8b-5f37-8b1b-a5f4bd7f403b', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An informal email can use a friendly register, but its purpose should still be clear in the opening paragraph.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В неформальном письме можно использовать дружеский стиль, но его цель всё равно должна быть ясна в первом абзаце.","target_language":"en","word_bank":["An","informal","email","can","use","a","friendly","register,","but","its","purpose","should","still","be","clear","in","the","opening","paragraph."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82d7574b-2594-5f68-8db0-4bcd3de8361a', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"register","instruction":"Выберите подходящее слово.","options":["register","narrative","supporting reason"],"sentence_template":"An informal email can use a friendly ___, but its purpose should still be clear in the opening paragraph."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89a55235-44cc-5c5c-b2b2-502e0da07236', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","informal","email","can","use","a","friendly","register,","but","its","purpose","should","still","be","clear","in","the","opening","paragraph."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["paragraph.","opening","the","in","clear","be","still","should","purpose","its","but","register,","friendly","a","use","can","email","informal","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55344149-197e-5f39-8979-3b91b9b41f5e', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An informal email can use a friendly register, but its purpose should still be clear in the opening paragraph. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecb3875f-beed-5bd5-8ddd-1240ca5dae85', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An informal email can use a friendly register, but its purpose should still be clear in the opening paragraph. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"В неформальном письме можно использовать дружеский стиль, но его цель всё равно должна быть ясна в первом абзаце. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77dffe75-23cd-5883-85f5-ecaf3ae6bb56', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"An informal email can use a friendly register, but its purpose should still be clear in the opening paragraph.","translation":"В неформальном письме можно использовать дружеский стиль, но его цель всё равно должна быть ясна в первом абзаце.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Informal Emails"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('116a378d-e968-58fd-8b43-3137bc4b1a7f', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“register” means the level of formality in language.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E11","is_correct":true,"text":"the level of formality in language"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E12","is_correct":false,"text":"a group of related sentences"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E13","is_correct":false,"text":"words connecting ideas"}],"word":"register"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74cdb16b-2a50-5355-b181-e89715f19b36', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An informal email can use a friendly register, but its purpose should still be clear in the opening paragraph.","explanation":"The missing exam expression is “register”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"register","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E14","is_correct":true},{"audio_text":"linking expression","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E15","is_correct":false},{"audio_text":"opinion","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E16","is_correct":false}],"sentence_template":"An informal email can use a friendly ___, but its purpose should still be clear in the opening paragraph."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ddd221b-5cfb-58b2-a20d-7479f0599b55', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"register","explanation":"The sentence requires “register” to produce the correct B1 meaning.","hint_prefix":"reg","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An informal email can use a friendly ___, but its purpose should still be clear in the opening paragraph."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f1339ce-1eb9-5946-aecd-d52b6a4fed95', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"register","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E17","text":"register"},{"audio_text":"paragraph","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E18","text":"paragraph"},{"audio_text":"linking expression","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E19","text":"linking expression"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12ecb756-af82-5f86-909f-de9b3a5b7b72', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Informal Emails”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E20","is_correct":true,"text":"An informal email can use a friendly register, but its purpose should still be clear in the opening paragraph."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('474c86a2-9643-5f16-a1fd-af0e56450be8', 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1b4d113a-5576-5139-a233-aa1068971eed', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Narrative Writing","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d25c477b-81dc-5271-ab84-fb1e5d37564a', '1b4d113a-5576-5139-a233-aa1068971eed', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E01","left":"register","right":"стиль речи"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E02","left":"paragraph","right":"абзац"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E03","left":"linking expression","right":"связующее выражение"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E04","left":"narrative","right":"повествование"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E05","left":"opinion","right":"мнение"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E06","left":"supporting reason","right":"подтверждающая причина"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E07","left":"edit","right":"редактировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dffa1a5a-bc59-531c-8584-7f0fb819523b', '1b4d113a-5576-5139-a233-aa1068971eed', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E08","is_correct":true,"text":"A successful narrative uses linking expressions to show when events happened and how they were connected."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8add38a2-23ba-53c7-aeb3-f867244f083c', '1b4d113a-5576-5139-a233-aa1068971eed', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A successful narrative uses linking expressions to show when events happened and how they were connected.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Успешное повествование использует связующие выражения, чтобы показать, когда произошли события и как они были связаны.","target_language":"en","word_bank":["A","successful","narrative","uses","linking","expressions","to","show","when","events","happened","and","how","they","were","connected."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca24cfb6-afe6-5a1d-8426-3c4cb3906abb', '1b4d113a-5576-5139-a233-aa1068971eed', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"paragraph","instruction":"Выберите подходящее слово.","options":["paragraph","opinion","edit"],"sentence_template":"A successful narrative uses linking expressions to show when events happened and how they were connected."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b53ae52e-ffb2-5a3b-98fe-b0d80023e54b', '1b4d113a-5576-5139-a233-aa1068971eed', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","successful","narrative","uses","linking","expressions","to","show","when","events","happened","and","how","they","were","connected."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["connected.","were","they","how","and","happened","events","when","show","to","expressions","linking","uses","narrative","successful","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fd0d973-85b5-5c51-a241-3446d69e8b8f', '1b4d113a-5576-5139-a233-aa1068971eed', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A successful narrative uses linking expressions to show when events happened and how they were connected. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3a1d0f9-3bc9-531c-9201-fc36f7ff71bf', '1b4d113a-5576-5139-a233-aa1068971eed', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A successful narrative uses linking expressions to show when events happened and how they were connected. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Успешное повествование использует связующие выражения, чтобы показать, когда произошли события и как они были связаны. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6255f70-c733-5a8f-a012-d57fd0a485e9', '1b4d113a-5576-5139-a233-aa1068971eed', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"A successful narrative uses linking expressions to show when events happened and how they were connected.","translation":"Успешное повествование использует связующие выражения, чтобы показать, когда произошли события и как они были связаны.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Narrative Writing"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4c41e2b-075f-597e-addc-f92549dffbd5', '1b4d113a-5576-5139-a233-aa1068971eed', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“paragraph” means a group of related sentences.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E11","is_correct":true,"text":"a group of related sentences"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E12","is_correct":false,"text":"words connecting ideas"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E13","is_correct":false,"text":"a story or account of events"}],"word":"paragraph"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3495c0f5-1713-5d64-8e24-5edf9fc3dd64', '1b4d113a-5576-5139-a233-aa1068971eed', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A successful narrative uses linking expressions to show when events happened and how they were connected.","explanation":"The missing exam expression is “paragraph”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"paragraph","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E14","is_correct":true},{"audio_text":"narrative","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E15","is_correct":false},{"audio_text":"supporting reason","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E16","is_correct":false}],"sentence_template":"A successful narrative uses linking expressions to show when events happened and how they were connected."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('234c3276-7bc9-5328-96af-4f0d5e9fe0cd', '1b4d113a-5576-5139-a233-aa1068971eed', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"paragraph","explanation":"The sentence requires “paragraph” to produce the correct B1 meaning.","hint_prefix":"par","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A successful narrative uses linking expressions to show when events happened and how they were connected."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c5b54ac-43e0-581e-b60b-2f4dc952ba9b', '1b4d113a-5576-5139-a233-aa1068971eed', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"register","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E17","text":"register"},{"audio_text":"paragraph","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E18","text":"paragraph"},{"audio_text":"linking expression","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E19","text":"linking expression"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd618f19-91db-5701-bed6-b424e4ef57a9', '1b4d113a-5576-5139-a233-aa1068971eed', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Narrative Writing”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E20","is_correct":true,"text":"A successful narrative uses linking expressions to show when events happened and how they were connected."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('474c86a2-9643-5f16-a1fd-af0e56450be8', '1b4d113a-5576-5139-a233-aa1068971eed', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f105f20f-4efc-56c8-8706-139bbbaa5e87', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Opinion Paragraphs","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('149a8b83-cbfa-53c3-b2b9-c720cff8ce28', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E01","left":"register","right":"стиль речи"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E02","left":"paragraph","right":"абзац"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E03","left":"linking expression","right":"связующее выражение"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E04","left":"narrative","right":"повествование"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E05","left":"opinion","right":"мнение"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E06","left":"supporting reason","right":"подтверждающая причина"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E07","left":"edit","right":"редактировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3e3957a-31c1-501c-8cec-11bb3c48f848', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E08","is_correct":true,"text":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3b343ef-daf9-5bcc-b513-0e5c53498fa8', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Текст-мнение должен выражать ясную позицию, приводить подтверждающую причину и быть отредактированным для точности.","target_language":"en","word_bank":["An","opinion","text","should","present","a","clear","position,","provide","a","supporting","reason","and","be","edited","for","accuracy."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8de54ef3-6b0a-5495-8e45-4dbe89393a7a', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"linking expression","instruction":"Выберите подходящее слово.","options":["linking expression","supporting reason","register"],"sentence_template":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f84c13e-bc42-533a-9350-c8c2f055b5c6', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","opinion","text","should","present","a","clear","position,","provide","a","supporting","reason","and","be","edited","for","accuracy."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["accuracy.","for","edited","be","and","reason","supporting","a","provide","position,","clear","a","present","should","text","opinion","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8fca2a32-e5e8-5a83-b214-bb1643836bce', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b665769b-772f-5f7a-88f4-9af31f194f13', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Текст-мнение должен выражать ясную позицию, приводить подтверждающую причину и быть отредактированным для точности. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1ff3ed3-530a-5120-a643-153d1d324b92', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy.","translation":"Текст-мнение должен выражать ясную позицию, приводить подтверждающую причину и быть отредактированным для точности.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Opinion Paragraphs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08474dcd-7a5b-5c3d-bdb0-9d406d344ab7', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“linking expression” means words connecting ideas.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E11","is_correct":true,"text":"words connecting ideas"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E12","is_correct":false,"text":"a story or account of events"},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E13","is_correct":false,"text":"a personal judgement"}],"word":"linking expression"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06759308-90a8-598b-8855-080bfe2ca2e5', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy.","explanation":"The missing exam expression is “linking expression”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"linking expression","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E14","is_correct":true},{"audio_text":"opinion","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E15","is_correct":false},{"audio_text":"edit","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E16","is_correct":false}],"sentence_template":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bffcbc6-ccee-57ed-a868-42bf14c2ae80', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"linking expression","explanation":"The sentence requires “linking expression” to produce the correct B1 meaning.","hint_prefix":"lin","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('127e4590-e27b-5a46-bf2b-563c1a910f08', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"register","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E17","text":"register"},{"audio_text":"paragraph","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E18","text":"paragraph"},{"audio_text":"linking expression","id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E19","text":"linking expression"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d8b357a-9de0-5b04-9e6f-2aed5cd1eb69', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Opinion Paragraphs”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E20","is_correct":true,"text":"An opinion text should present a clear position, provide a supporting reason and be edited for accuracy."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_WRITING_EMAILS_STORIES_AND_OPINION_TEXTS_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('474c86a2-9643-5f16-a1fd-af0e56450be8', 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aef55d4b-a36a-55d4-b4bd-1edc76c7a8bf', 'en', 'register', 'стиль речи', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75837a20-41dc-5c53-a24a-476573f53a7f', 'en', 'paragraph', 'абзац', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78000a97-9635-5d81-ab6c-12ff9f611cf7', 'en', 'linking expression', 'связующее выражение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e548548a-1ccc-5724-a8fa-71c07ec32e3b', 'en', 'narrative', 'повествование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57eaa66e-e454-5c85-a7a7-9cfb1484374a', 'en', 'opinion', 'мнение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00d92dc8-912e-58e8-8d67-64cf949f0af2', 'en', 'supporting reason', 'подтверждающая причина', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a883961-d3ca-5e34-ac23-b5379f6d7789', 'en', 'edit', 'редактировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aef55d4b-a36a-55d4-b4bd-1edc76c7a8bf', 'en', 'register', 'стиль речи', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75837a20-41dc-5c53-a24a-476573f53a7f', 'en', 'paragraph', 'абзац', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78000a97-9635-5d81-ab6c-12ff9f611cf7', 'en', 'linking expression', 'связующее выражение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e548548a-1ccc-5724-a8fa-71c07ec32e3b', 'en', 'narrative', 'повествование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57eaa66e-e454-5c85-a7a7-9cfb1484374a', 'en', 'opinion', 'мнение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00d92dc8-912e-58e8-8d67-64cf949f0af2', 'en', 'supporting reason', 'подтверждающая причина', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a883961-d3ca-5e34-ac23-b5379f6d7789', 'en', 'edit', 'редактировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aef55d4b-a36a-55d4-b4bd-1edc76c7a8bf', 'en', 'register', 'стиль речи', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75837a20-41dc-5c53-a24a-476573f53a7f', 'en', 'paragraph', 'абзац', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78000a97-9635-5d81-ab6c-12ff9f611cf7', 'en', 'linking expression', 'связующее выражение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e548548a-1ccc-5724-a8fa-71c07ec32e3b', 'en', 'narrative', 'повествование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57eaa66e-e454-5c85-a7a7-9cfb1484374a', 'en', 'opinion', 'мнение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00d92dc8-912e-58e8-8d67-64cf949f0af2', 'en', 'supporting reason', 'подтверждающая причина', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a883961-d3ca-5e34-ac23-b5379f6d7789', 'en', 'edit', 'редактировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking expression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'opinion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting reason' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f1cf804b-1b1c-5258-ac00-b5edf98d65e9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'edit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, '1b4d113a-5576-5139-a233-aa1068971eed', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, '1b4d113a-5576-5139-a233-aa1068971eed', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, '1b4d113a-5576-5139-a233-aa1068971eed', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking expression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, '1b4d113a-5576-5139-a233-aa1068971eed', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, '1b4d113a-5576-5139-a233-aa1068971eed', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'opinion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, '1b4d113a-5576-5139-a233-aa1068971eed', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting reason' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, '1b4d113a-5576-5139-a233-aa1068971eed', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'edit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking expression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'opinion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting reason' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '474c86a2-9643-5f16-a1fd-af0e56450be8', id, 'f105f20f-4efc-56c8-8706-139bbbaa5e87', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'edit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
