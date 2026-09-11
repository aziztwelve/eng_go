-- Track: B1_STUDY_ACADEMIC_INSTRUCTIONS_AND_ASSIGNMENTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('193e7e4d-6a81-514a-b397-e66720c9863e', 'B1_STUDY_ACADEMIC_INSTRUCTIONS_AND_ASSIGNMENTS', 'Учебные инструкции и задания', 'Развивайте учебные навыки уровня B1 по теме «Учебные инструкции и задания».', '{"en":"Academic Instructions and Assignments","ru":"Учебные инструкции и задания"}'::jsonb, '{"en":"Develop B1 study skills for academic instructions and assignments.","ru":"Развивайте учебные навыки уровня B1 по теме «Учебные инструкции и задания»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('822422a4-3bd1-5aae-a48e-407b13857e3c', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Understanding Requirements","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65f018e2-a4a4-59d6-9ad3-0d40bab54966', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STUI_2","left":"help","right":"помощь"},{"id":"A2STUI_3","left":"problem","right":"задача"},{"id":"A2STUI_4","left":"answer","right":"ответ"},{"id":"A2STUI_5","left":"example","right":"пример"},{"id":"A2STUI_6","left":"Can you help me?","right":"Вы можете мне помочь?"},{"id":"A2STUI_7","left":"I don''t understand","right":"Я не понимаю"},{"id":"A2STUI_8","left":"Please show me","right":"Покажите мне, пожалуйста"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9466f03d-fef6-5706-aa70-a4e3716c25c8', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Can you help me?” is a polite request for help.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STUI_10","is_correct":true,"text":"Can you help me?"},{"id":"A2STUI_11","is_correct":false,"text":"Where is the park?"},{"id":"A2STUI_12","is_correct":false,"text":"Do you like tea?"}],"question":"Which question politely asks for help?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('043fb584-1cfa-54d7-97f4-8563c3d5e8bd', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Can you help me?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вы можете мне помочь?","target_language":"en","word_bank":["me?","help","you","Can"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('201bb1dc-539d-5be5-ad62-d47d43e42f2e', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"understand","instruction":"Выберите подходящее слово.","options":["understand","invite","drink"],"sentence_template":"I don''t ___ this problem."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb33f497-23b7-5bbc-8523-afce1e78021c', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Please","show","me","an","example."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["show","Please","example.","an","me"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da0bab04-7405-5a90-846f-58ed8b9b147e', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Excuse me. Can you help me?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64273423-279a-578b-b2cd-74d76c047a38', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I don''t understand this question. Please help me. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я не понимаю этот вопрос. Пожалуйста, помогите мне. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7410372f-8858-5e46-8ae9-e890f87e2b86', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"Excuse me. Can you help me with this problem?","translation":"Извините. Вы можете помочь мне с этой задачей?","type":"dialogue"},{"character":"Teacher","text":"Yes. Look at this example.","translation":"Да. Посмотрите на этот пример.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"Would you like some juice?"}],"text":"What should Nina say?","type":"choice"}],"title":"A Mathematics Problem"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91f1dc08-c640-5bfa-ac58-554b81b52879', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"An example shows how to do or understand something.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STUI_20","is_correct":true,"text":"Something that shows how to do or understand something"},{"id":"A2STUI_21","is_correct":false,"text":"A question in a test"},{"id":"A2STUI_22","is_correct":false,"text":"A person in your class"}],"word":"example"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f18e6db1-03f5-535b-a439-812d59c2078a', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Can you help me?","explanation":"The missing word is “help.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"help","id":"A2STUI_24","is_correct":true},{"audio_text":"page","id":"A2STUI_25","is_correct":false},{"audio_text":"lunch","id":"A2STUI_26","is_correct":false}],"sentence_template":"Can you ___ me?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b6e8fd6-d8d5-54d4-b547-989825ee172b', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"example","explanation":"The complete request is “Please show me an example.”","hint_prefix":"ex","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please show me an ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4995fbb0-575f-5576-a686-651c61a9ffa0', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Can you help me?","id":"A2STUI_29","text":"Can you help me?"},{"audio_text":"Please show me","id":"A2STUI_30","text":"Please show me"},{"audio_text":"I understand now","id":"A2STUI_31","text":"I understand now"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a666b871-4291-5215-bf1a-d304b58f9b12', '822422a4-3bd1-5aae-a48e-407b13857e3c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Do you need help?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STUI_33","is_correct":true,"text":"Yes, please. I do not understand this problem."},{"id":"A2STUI_34","is_correct":false,"text":"Yes, I meet at three."},{"id":"A2STUI_35","is_correct":false,"text":"Yes, my neighborhood is quiet."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('193e7e4d-6a81-514a-b397-e66720c9863e', '822422a4-3bd1-5aae-a48e-407b13857e3c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d9ca0d5a-be7c-50f6-ae43-d5d64219dc57', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Clarifying an Assignment","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('768893c3-2850-5494-8ef3-0d46a893c5fa', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STUI_37","left":"meaning","right":"значение"},{"id":"A2STUI_38","left":"spell","right":"произносить по буквам"},{"id":"A2STUI_39","left":"word","right":"слово"},{"id":"A2STUI_40","left":"question","right":"вопрос"},{"id":"A2STUI_41","left":"What does this mean?","right":"Что это значит?"},{"id":"A2STUI_42","left":"How do you spell it?","right":"Как это пишется по буквам?"},{"id":"A2STUI_43","left":"Which exercise?","right":"Какое упражнение?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f982665-276d-5042-9df3-def678f5994e', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“How do you spell it?” asks for the letters in a word.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STUI_45","is_correct":true,"text":"How do you spell it?"},{"id":"A2STUI_46","is_correct":false,"text":"What page is it?"},{"id":"A2STUI_47","is_correct":false,"text":"Who is your teacher?"}],"question":"Which question asks for the letters in a word?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47949094-6f3f-595f-8597-56b36451f1ca', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"What does this word mean?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Что означает это слово?","target_language":"en","word_bank":["mean?","word","this","does","What"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3a385b1-379e-5773-b857-f37ad58238cb', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"spell","instruction":"Выберите подходящее слово.","options":["spell","finish","invite"],"sentence_template":"How do you ___ it?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d6b0493-d0ec-56f4-a21a-fae3e74573a7', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Which","exercise","do","we","do?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["do?","exercise","Which","we","do"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3da68cc7-db12-5a65-af5a-71591326d9a1', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"What does this word mean?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c69a43fe-e348-5ded-8255-c5d05014592c', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"How do you spell “dictionary,” please? I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Как пишется по буквам слово «dictionary»? Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd4b7a29-9e27-5b33-b8f4-0cc838d756f4', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Leo","text":"What does “quiet” mean?","translation":"Что означает слово «quiet»?","type":"dialogue"},{"character":"Teacher","text":"It means “not noisy.”","translation":"Оно означает «не шумный».","type":"dialogue"},{"options":[{"is_correct":true,"text":"How do you spell it?"},{"is_correct":false,"text":"When is your party?"}],"text":"What can Leo ask next?","type":"choice"}],"title":"A New Word"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edd3b47b-04ff-5279-9969-1338f977c500', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Meaning is what a word or sentence expresses.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STUI_55","is_correct":true,"text":"What a word or sentence expresses"},{"id":"A2STUI_56","is_correct":false,"text":"The letters used to write a word"},{"id":"A2STUI_57","is_correct":false,"text":"A task with questions"}],"word":"meaning"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e11fedf9-d6f5-5563-9b71-d2618be03cc9', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"How do you spell it?","explanation":"The missing word is “spell.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"spell","id":"A2STUI_59","is_correct":true},{"audio_text":"classroom","id":"A2STUI_60","is_correct":false},{"audio_text":"water","id":"A2STUI_61","is_correct":false}],"sentence_template":"How do you ___ it?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc1020bd-354c-5b84-9dbe-a454d7eecec8', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"mean","explanation":"The complete question is “What does this word mean?”","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"What does this word ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f86a434-35e7-5afd-ab73-ff1d1bca0cf2', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"What does this mean?","id":"A2STUI_64","text":"What does this mean?"},{"audio_text":"How do you spell it?","id":"A2STUI_65","text":"How do you spell it?"},{"audio_text":"Which exercise?","id":"A2STUI_66","text":"Which exercise?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98cfbd52-3795-5b09-91e4-c3be4323fc76', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mira","text":"Do you understand the new word?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STUI_68","is_correct":true,"text":"No. What does it mean?"},{"id":"A2STUI_69","is_correct":false,"text":"No. The library is upstairs."},{"id":"A2STUI_70","is_correct":false,"text":"No. I like science."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('193e7e4d-6a81-514a-b397-e66720c9863e', 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cdef68d0-a43b-5728-b78e-aa467242d22a', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Following Several Steps","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4685b8bd-224d-5167-ac72-9eafb466f01e', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STUI_72","left":"homework","right":"домашняя работа"},{"id":"A2STUI_73","left":"difficult","right":"трудный"},{"id":"A2STUI_74","left":"easy","right":"лёгкий"},{"id":"A2STUI_75","left":"study together","right":"учиться вместе"},{"id":"A2STUI_76","left":"check my answers","right":"проверить мои ответы"},{"id":"A2STUI_77","left":"I can help you","right":"Я могу тебе помочь"},{"id":"A2STUI_78","left":"Thank you for your help","right":"Спасибо за помощь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19db62b6-a469-56eb-80eb-3db824afcafd', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“I can help you” offers assistance.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STUI_80","is_correct":true,"text":"I can help you."},{"id":"A2STUI_81","is_correct":false,"text":"I need a pencil."},{"id":"A2STUI_82","is_correct":false,"text":"The test is tomorrow."}],"question":"Which phrase offers help?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c008a2a7-510c-5a4f-87de-88b8ff260196', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Let us study together.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Давай заниматься вместе.","target_language":"en","word_bank":["together.","study","us","Let"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe10cabb-9673-5aa7-a8e7-85f266d5b6db', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"answers","instruction":"Выберите подходящее слово.","options":["answers","windows","tickets"],"sentence_template":"Can you check my ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1a30151-7eab-5098-9eb3-aa5452ee5a29', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["This","homework","is","difficult."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","homework","This","difficult."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26f09f6b-681e-5c33-b900-da1fa53c982d', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Can you help me with my homework?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0796b8ad-ff0d-5253-88e9-7ebe2f59720d', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This exercise is difficult. Let us study together. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Это упражнение трудное. Давай заниматься вместе. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68f2240e-5fc8-5c99-ad55-e917638b0c5a', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sam","text":"This homework is difficult.","translation":"Эта домашняя работа трудная.","type":"dialogue"},{"character":"Aida","text":"I can help you after school.","translation":"Я могу помочь тебе после школы.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you for your help."},{"is_correct":false,"text":"Turn left at the bank."}],"text":"What should Sam say?","type":"choice"}],"title":"After School"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2c7a91e-0175-5d3b-a3bf-065a6287bb26', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Difficult means not easy to do or understand.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STUI_90","is_correct":true,"text":"Not easy to do or understand"},{"id":"A2STUI_91","is_correct":false,"text":"Simple to do or understand"},{"id":"A2STUI_92","is_correct":false,"text":"Finished and correct"}],"word":"difficult"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1570aa6-a0af-5268-8b05-19bd88de567b', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Let us study together.","explanation":"The missing word is “together.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"together","id":"A2STUI_94","is_correct":true},{"audio_text":"breakfast","id":"A2STUI_95","is_correct":false},{"audio_text":"upstairs","id":"A2STUI_96","is_correct":false}],"sentence_template":"Let us study ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0db7a675-4b6f-52b9-a942-d2933101cbaf', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"answers","explanation":"The complete question is “Can you check my answers?”","hint_prefix":"an","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Can you check my ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfb4c48e-c989-576d-8079-29552dfc414e', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"difficult homework","id":"A2STUI_99","text":"difficult homework"},{"audio_text":"study together","id":"A2STUI_100","text":"study together"},{"audio_text":"I can help you","id":"A2STUI_101","text":"I can help you"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('921c04bf-fc93-5000-adeb-59020a7e3ef9', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Ben","text":"Do you need help with your homework?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STUI_103","is_correct":true,"text":"Yes, please. This exercise is difficult."},{"id":"A2STUI_104","is_correct":false,"text":"Yes, the gym is downstairs."},{"id":"A2STUI_105","is_correct":false,"text":"Yes, I like vegetables."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('193e7e4d-6a81-514a-b397-e66720c9863e', 'cdef68d0-a43b-5728-b78e-aa467242d22a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('637f141d-e774-573b-a26c-0cb43559f146', 'en', 'help', 'помощь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b71811e-225c-53e1-aefa-6bfaba3e8819', 'en', 'problem', 'задача', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5055639a-2206-5c75-8bb8-807c6f2aaef6', 'en', 'answer', 'ответ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d98a7d9c-98de-50fb-8bd2-ed40c53a9f42', 'en', 'example', 'пример', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c912c497-ca0e-5b03-9644-f0ab9015efde', 'en', 'Can you help me?', 'Вы можете мне помочь?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03e1675c-213f-5671-b4aa-8e2524a953e5', 'en', 'I don''t understand', 'Я не понимаю', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d545b83-1066-508d-b808-89e1eb0e0009', 'en', 'Please show me', 'Покажите мне, пожалуйста', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04a7e45f-c071-5e53-bfd7-ea1b8bd52bb2', 'en', 'meaning', 'значение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('23655212-4ff5-56e7-a796-94a85f0c8945', 'en', 'spell', 'произносить по буквам', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('399157ad-bdd6-5500-b8a2-abc5122d2195', 'en', 'word', 'слово', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9432c21-0eda-5a57-ba61-f04226b77803', 'en', 'question', 'вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b10cd95-e174-58ea-b365-42f4b2b391e7', 'en', 'What does this mean?', 'Что это значит?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('db2e5794-a6e5-5e77-b38e-26701f64e08c', 'en', 'How do you spell it?', 'Как это пишется по буквам?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8935e2d3-7e5c-51d5-bf2e-bdc7ba613000', 'en', 'Which exercise?', 'Какое упражнение?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1872420b-744d-5319-8350-63a75ee2e165', 'en', 'homework', 'домашняя работа', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('907d61ad-8f55-5b6d-b220-8cc687f71bed', 'en', 'difficult', 'трудный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f82c663-74a6-5586-93b2-c958a4438728', 'en', 'easy', 'лёгкий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d53fbb3-98bb-532f-b140-da2558acd84a', 'en', 'study together', 'учиться вместе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0134a2d0-86df-555b-9f1b-7eb729cb4856', 'en', 'check my answers', 'проверить мои ответы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c953824e-7a3b-5603-8b90-e2d3d85a32b4', 'en', 'I can help you', 'Я могу тебе помочь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478f76a2-6167-524c-9a7c-5b7ccc203e3d', 'en', 'Thank you for your help', 'Спасибо за помощь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, '822422a4-3bd1-5aae-a48e-407b13857e3c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'help' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, '822422a4-3bd1-5aae-a48e-407b13857e3c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'problem' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, '822422a4-3bd1-5aae-a48e-407b13857e3c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, '822422a4-3bd1-5aae-a48e-407b13857e3c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, '822422a4-3bd1-5aae-a48e-407b13857e3c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can you help me?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, '822422a4-3bd1-5aae-a48e-407b13857e3c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'I don''t understand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, '822422a4-3bd1-5aae-a48e-407b13857e3c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please show me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'spell' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'What does this mean?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'How do you spell it?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'd9ca0d5a-be7c-50f6-ae43-d5d64219dc57', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Which exercise?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'cdef68d0-a43b-5728-b78e-aa467242d22a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'homework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'cdef68d0-a43b-5728-b78e-aa467242d22a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'difficult' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'cdef68d0-a43b-5728-b78e-aa467242d22a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'easy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'cdef68d0-a43b-5728-b78e-aa467242d22a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'study together' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'cdef68d0-a43b-5728-b78e-aa467242d22a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'check my answers' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'cdef68d0-a43b-5728-b78e-aa467242d22a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'I can help you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '193e7e4d-6a81-514a-b397-e66720c9863e', id, 'cdef68d0-a43b-5728-b78e-aa467242d22a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you for your help' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
