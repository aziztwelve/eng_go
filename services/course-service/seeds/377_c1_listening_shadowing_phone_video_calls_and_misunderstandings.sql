-- Track: C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ba2a6053-c831-57ac-9b0b-b3873b40e17b', 'C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS', 'Телефонные и видеозвонки и недопонимание', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Телефонные и видеозвонки и недопонимание» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Phone and Video Calls and Misunderstandings","ru":"Телефонные и видеозвонки и недопонимание"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for phone and video calls and misunderstandings and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Телефонные и видеозвонки и недопонимание» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('78d81cf1-70ae-5454-a2b6-e05e577a5a87', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Following a Fast Phone Call","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46fbd3af-bbac-5d2a-8003-bfc1a86ce405', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D01","left":"you broke up","right":"связь прервалась"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D02","left":"talk past each other","right":"не понимать друг друга"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D03","left":"let me rephrase that","right":"позвольте переформулировать"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D04","left":"if I understood correctly","right":"если я правильно понял"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D05","left":"get wires crossed","right":"неправильно понять друг друга"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D06","left":"circle back","right":"вернуться к вопросу"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D07","left":"send a quick recap","right":"отправить краткое резюме"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5501d0a-551f-5a0e-8ccd-202121431579', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D08","is_correct":true,"text":"You broke up just after mentioning the date, so could you repeat the part that affects the deadline?"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa5a2e8b-9fb9-5730-9e64-ef4384be65be', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"You broke up just after mentioning the date, so could you repeat the part that affects the deadline?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Связь прервалась сразу после упоминания даты, поэтому можете повторить часть, касающуюся срока?","target_language":"en","word_bank":["You","broke","up","just","after","mentioning","the","date",",","so","could","you","repeat","the","part","that","affects","the","deadline","?"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff83c199-cbc7-5358-a62a-99cb86cce41d', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"you broke up","instruction":"Выберите подходящее слово.","options":["you broke up","if I understood correctly","circle back"],"sentence_template":"___ just after mentioning the date, so could you repeat the part that affects the deadline?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae7e5f55-fac6-5ccd-a28d-51d628648c48', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","broke","up","just","after","mentioning","the","date",",","so","could","you","repeat","the","part","that","affects","the","deadline","?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["?","deadline","the","affects","that","part","the","repeat","you","could","so",",","date","the","mentioning","after","just","up","broke","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a109895-d5f3-591f-b27c-7ee454d2c848', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"You broke up just after mentioning the date, so could you repeat the part that affects the deadline? Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85e4ed80-1aab-5cee-8e87-2e6fa280ab4b', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"You broke up just after mentioning the date, so could you repeat the part that affects the deadline? Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Связь прервалась сразу после упоминания даты, поэтому можете повторить часть, касающуюся срока? Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd2cb09c-d5b9-519d-be3b-5d0be92cfafa', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"You broke up just after mentioning the date, so could you repeat the part that affects the deadline?","translation":"Связь прервалась сразу после упоминания даты, поэтому можете повторить часть, касающуюся срока?","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Following a Fast Phone Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2ca90cd-a0de-5e69-af2e-428df9d3e672', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“you broke up” means parts of your speech were lost electronically.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D11","is_correct":true,"text":"parts of your speech were lost electronically"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D12","is_correct":false,"text":"discuss without addressing what the other means"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D13","is_correct":false,"text":"a phrase used to express an idea more clearly"}],"word":"you broke up"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5afe15ef-213d-5552-8b3b-697d2c9874f6', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"You broke up just after mentioning the date, so could you repeat the part that affects the deadline?","explanation":"The missing everyday expression is “you broke up”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"you broke up","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D14","is_correct":true},{"audio_text":"let me rephrase that","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D15","is_correct":false},{"audio_text":"get wires crossed","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D16","is_correct":false}],"sentence_template":"___ just after mentioning the date, so could you repeat the part that affects the deadline?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4789ff25-bdf5-5c05-8120-a3749788a9d0', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"you broke up","explanation":"The recording uses “you broke up” naturally in context.","hint_prefix":"you ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ just after mentioning the date, so could you repeat the part that affects the deadline?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e100dc43-4c00-5146-b157-94c63435cf09', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"you broke up","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D17","text":"you broke up"},{"audio_text":"talk past each other","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D18","text":"talk past each other"},{"audio_text":"let me rephrase that","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D19","text":"let me rephrase that"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c81f5a4-5ce9-58f9-88aa-bfaa52c24065', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Following a Fast Phone Call”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D20","is_correct":true,"text":"You broke up just after mentioning the date, so could you repeat the part that affects the deadline?"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ba2a6053-c831-57ac-9b0b-b3873b40e17b', '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f743dabe-a250-5037-903d-3de825fda729', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Fixing a Misunderstanding","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95769451-0316-550b-9c70-add3017171ed', 'f743dabe-a250-5037-903d-3de825fda729', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D01","left":"you broke up","right":"связь прервалась"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D02","left":"talk past each other","right":"не понимать друг друга"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D03","left":"let me rephrase that","right":"позвольте переформулировать"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D04","left":"if I understood correctly","right":"если я правильно понял"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D05","left":"get wires crossed","right":"неправильно понять друг друга"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D06","left":"circle back","right":"вернуться к вопросу"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D07","left":"send a quick recap","right":"отправить краткое резюме"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51470e06-5188-5f0e-9b58-b27bfeb54cb9', 'f743dabe-a250-5037-903d-3de825fda729', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D08","is_correct":true,"text":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86529541-7492-53e7-b298-b7649194f69c', 'f743dabe-a250-5037-903d-3de825fda729', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Кажется, мы не понимаем друг друга; позвольте переформулировать, а затем проверить, правильно ли я понял вашу проблему.","target_language":"en","word_bank":["I","think","we","are","talking","past","each","other",";","let","me","rephrase","that","and","then","check","whether","I","understood","your","concern","correctly","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b38c9a25-e8a9-5568-9a4f-a74a759558c0', 'f743dabe-a250-5037-903d-3de825fda729', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"talk past each other","instruction":"Выберите подходящее слово.","options":["talk past each other","get wires crossed","send a quick recap"],"sentence_template":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f41a97b-cdf3-5fdd-b8af-b7e674cad0e1', 'f743dabe-a250-5037-903d-3de825fda729', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","think","we","are","talking","past","each","other",";","let","me","rephrase","that","and","then","check","whether","I","understood","your","concern","correctly","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","correctly","concern","your","understood","I","whether","check","then","and","that","rephrase","me","let",";","other","each","past","talking","are","we","think","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48489dd3-c5c9-5c6c-b0eb-eaa7f1c8b919', 'f743dabe-a250-5037-903d-3de825fda729', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15478e34-c835-5b74-b7f9-acc88decb279', 'f743dabe-a250-5037-903d-3de825fda729', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Кажется, мы не понимаем друг друга; позвольте переформулировать, а затем проверить, правильно ли я понял вашу проблему. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb216f54-1344-5e20-8b3a-b232714b76e6', 'f743dabe-a250-5037-903d-3de825fda729', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly.","translation":"Кажется, мы не понимаем друг друга; позвольте переформулировать, а затем проверить, правильно ли я понял вашу проблему.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Fixing a Misunderstanding"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efe7cfcb-ba0c-5b34-af10-d4ba117ad0d4', 'f743dabe-a250-5037-903d-3de825fda729', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“talk past each other” means discuss without addressing what the other means.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D11","is_correct":true,"text":"discuss without addressing what the other means"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D12","is_correct":false,"text":"a phrase used to express an idea more clearly"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D13","is_correct":false,"text":"a phrase checking interpretation"}],"word":"talk past each other"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a4ea032-67e7-52d3-a3c7-e8d66889adb2', 'f743dabe-a250-5037-903d-3de825fda729', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly.","explanation":"The missing everyday expression is “talk past each other”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"talk past each other","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D14","is_correct":true},{"audio_text":"if I understood correctly","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D15","is_correct":false},{"audio_text":"circle back","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D16","is_correct":false}],"sentence_template":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e4c2df0-5e5a-5270-9a19-0d5818fce19b', 'f743dabe-a250-5037-903d-3de825fda729', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"talk past each other","explanation":"The recording uses “talk past each other” naturally in context.","hint_prefix":"talk","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ebf39bc-32df-5896-982b-ed9c04d9974d', 'f743dabe-a250-5037-903d-3de825fda729', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"you broke up","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D17","text":"you broke up"},{"audio_text":"talk past each other","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D18","text":"talk past each other"},{"audio_text":"let me rephrase that","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D19","text":"let me rephrase that"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('693131ae-b8f8-51a9-8acb-24220906a07b', 'f743dabe-a250-5037-903d-3de825fda729', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Fixing a Misunderstanding”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D20","is_correct":true,"text":"I think we are talking past each other; let me rephrase that and then check whether I understood your concern correctly."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ba2a6053-c831-57ac-9b0b-b3873b40e17b', 'f743dabe-a250-5037-903d-3de825fda729', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3f943fe9-6ffc-5333-b24e-c8b973a00be8', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Confirming What Happens Next","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6072e681-0301-55c6-bc3f-8aede330da5f', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D01","left":"you broke up","right":"связь прервалась"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D02","left":"talk past each other","right":"не понимать друг друга"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D03","left":"let me rephrase that","right":"позвольте переформулировать"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D04","left":"if I understood correctly","right":"если я правильно понял"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D05","left":"get wires crossed","right":"неправильно понять друг друга"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D06","left":"circle back","right":"вернуться к вопросу"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D07","left":"send a quick recap","right":"отправить краткое резюме"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5660af3-66f9-5be7-8ca0-bd93a46cebac', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D08","is_correct":true,"text":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdffab13-34b9-5ee6-a58f-a7844e5c465d', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы неправильно поняли друг друга, но договорились вернуться к вопросу завтра после того, как я отправлю краткое резюме обновлённого плана.","target_language":"en","word_bank":["We","had","got","our","wires","crossed",",","but","we","agreed","to","circle","back","tomorrow","after","I","send","a","quick","recap","of","the","revised","plan","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b44fa4f-f994-54fc-bcfd-a32fd96a4431', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"let me rephrase that","instruction":"Выберите подходящее слово.","options":["let me rephrase that","circle back","you broke up"],"sentence_template":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4748a40f-33c0-5a06-9f1e-bc3c04be04c1', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","had","got","our","wires","crossed",",","but","we","agreed","to","circle","back","tomorrow","after","I","send","a","quick","recap","of","the","revised","plan","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","plan","revised","the","of","recap","quick","a","send","I","after","tomorrow","back","circle","to","agreed","we","but",",","crossed","wires","our","got","had","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41805075-3fe6-58d7-894d-fff828a4dffc', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e6c2392-b984-5984-a857-92bcbae5ed40', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Мы неправильно поняли друг друга, но договорились вернуться к вопросу завтра после того, как я отправлю краткое резюме обновлённого плана. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d30076ee-34f0-5d4d-a25b-c11166bf53cf', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan.","translation":"Мы неправильно поняли друг друга, но договорились вернуться к вопросу завтра после того, как я отправлю краткое резюме обновлённого плана.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Confirming What Happens Next"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79b4e6b2-20b5-5c8b-8193-f2c26a820fa0', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“let me rephrase that” means a phrase used to express an idea more clearly.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D11","is_correct":true,"text":"a phrase used to express an idea more clearly"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D12","is_correct":false,"text":"a phrase checking interpretation"},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D13","is_correct":false,"text":"become confused about arrangements or messages"}],"word":"let me rephrase that"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be86df13-3b1f-5191-bf62-0153d2758d53', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan.","explanation":"The missing everyday expression is “let me rephrase that”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"let me rephrase that","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D14","is_correct":true},{"audio_text":"get wires crossed","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D15","is_correct":false},{"audio_text":"send a quick recap","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D16","is_correct":false}],"sentence_template":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86842f42-deed-5619-b97f-ac2d38f5359e', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"let me rephrase that","explanation":"The recording uses “let me rephrase that” naturally in context.","hint_prefix":"let ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22fab243-2ae9-5036-a1c8-cf9223d89326', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"you broke up","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D17","text":"you broke up"},{"audio_text":"talk past each other","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D18","text":"talk past each other"},{"audio_text":"let me rephrase that","id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D19","text":"let me rephrase that"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('911f2c71-d7bc-53ef-8a9f-bcbd8cb9325a', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Confirming What Happens Next”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D20","is_correct":true,"text":"We had got our wires crossed, but we agreed to circle back tomorrow after I send a quick recap of the revised plan."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_PHONE_VIDEO_CALLS_AND_MISUNDERSTANDINGS_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ba2a6053-c831-57ac-9b0b-b3873b40e17b', '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af7aac41-d3e5-59f3-a5b8-39c1153ff5cd', 'en', 'you broke up', 'связь прервалась', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cdabbb96-a163-512e-8378-dcb595e0d9c2', 'en', 'talk past each other', 'не понимать друг друга', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a4347eb-d8fb-57c4-9c91-1276f3e95403', 'en', 'let me rephrase that', 'позвольте переформулировать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f32775ba-0be5-5be0-8e99-86ab69ec4aea', 'en', 'if I understood correctly', 'если я правильно понял', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a5261a1-e3fe-5207-a5e2-d8401341b5be', 'en', 'get wires crossed', 'неправильно понять друг друга', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3e51b8b-8916-51f5-b0df-f3a29b41a496', 'en', 'circle back', 'вернуться к вопросу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0491e09-3b84-5453-a863-fcf0c9eb3820', 'en', 'send a quick recap', 'отправить краткое резюме', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af7aac41-d3e5-59f3-a5b8-39c1153ff5cd', 'en', 'you broke up', 'связь прервалась', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cdabbb96-a163-512e-8378-dcb595e0d9c2', 'en', 'talk past each other', 'не понимать друг друга', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a4347eb-d8fb-57c4-9c91-1276f3e95403', 'en', 'let me rephrase that', 'позвольте переформулировать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f32775ba-0be5-5be0-8e99-86ab69ec4aea', 'en', 'if I understood correctly', 'если я правильно понял', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a5261a1-e3fe-5207-a5e2-d8401341b5be', 'en', 'get wires crossed', 'неправильно понять друг друга', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3e51b8b-8916-51f5-b0df-f3a29b41a496', 'en', 'circle back', 'вернуться к вопросу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0491e09-3b84-5453-a863-fcf0c9eb3820', 'en', 'send a quick recap', 'отправить краткое резюме', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af7aac41-d3e5-59f3-a5b8-39c1153ff5cd', 'en', 'you broke up', 'связь прервалась', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cdabbb96-a163-512e-8378-dcb595e0d9c2', 'en', 'talk past each other', 'не понимать друг друга', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a4347eb-d8fb-57c4-9c91-1276f3e95403', 'en', 'let me rephrase that', 'позвольте переформулировать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f32775ba-0be5-5be0-8e99-86ab69ec4aea', 'en', 'if I understood correctly', 'если я правильно понял', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a5261a1-e3fe-5207-a5e2-d8401341b5be', 'en', 'get wires crossed', 'неправильно понять друг друга', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3e51b8b-8916-51f5-b0df-f3a29b41a496', 'en', 'circle back', 'вернуться к вопросу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0491e09-3b84-5453-a863-fcf0c9eb3820', 'en', 'send a quick recap', 'отправить краткое резюме', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'you broke up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'talk past each other' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'let me rephrase that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'if I understood correctly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'get wires crossed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'circle back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '78d81cf1-70ae-5454-a2b6-e05e577a5a87', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'send a quick recap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, 'f743dabe-a250-5037-903d-3de825fda729', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'you broke up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, 'f743dabe-a250-5037-903d-3de825fda729', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'talk past each other' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, 'f743dabe-a250-5037-903d-3de825fda729', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'let me rephrase that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, 'f743dabe-a250-5037-903d-3de825fda729', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'if I understood correctly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, 'f743dabe-a250-5037-903d-3de825fda729', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'get wires crossed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, 'f743dabe-a250-5037-903d-3de825fda729', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'circle back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, 'f743dabe-a250-5037-903d-3de825fda729', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'send a quick recap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'you broke up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'talk past each other' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'let me rephrase that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'if I understood correctly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'get wires crossed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'circle back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ba2a6053-c831-57ac-9b0b-b3873b40e17b', id, '3f943fe9-6ffc-5333-b24e-c8b973a00be8', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'send a quick recap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
