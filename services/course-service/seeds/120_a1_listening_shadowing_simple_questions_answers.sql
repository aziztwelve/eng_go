-- Track: A1_LISTENING_SHADOWING_SIMPLE_QUESTIONS_ANSWERS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', 'A1_LISTENING_SHADOWING_SIMPLE_QUESTIONS_ANSWERS', 'Простые вопросы и ответы', 'Научитесь понимать на слух и повторять простые вопросы и короткие ответы.', 'en', 'A1', '', ARRAY['listening_shadowing']::text[], true, 120, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('82043d67-f23a-5905-a500-212418652a2b', NULL, 'Слушаем вопросы с вопросительными словами', 'Научиться различать на слух и повторять простые вопросы со словами what, where, who и how.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('491975f6-128e-54e8-84e8-d140ef9d9143', '82043d67-f23a-5905-a500-212418652a2b', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSQA_L1_MP_P1","left":"What?","right":"Что?"},{"id":"LSQA_L1_MP_P2","left":"Where?","right":"Где?"},{"id":"LSQA_L1_MP_P3","left":"Who?","right":"Кто?"},{"id":"LSQA_L1_MP_P4","left":"How?","right":"Как?"},{"id":"LSQA_L1_MP_P5","left":"What is your name?","right":"Как вас зовут?"},{"id":"LSQA_L1_MP_P6","left":"Where are you from?","right":"Откуда вы?"},{"id":"LSQA_L1_MP_P7","left":"How are you?","right":"Как дела?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0c2f5dcd-b498-50f2-a2f1-725604994f04', '82043d67-f23a-5905-a500-212418652a2b', 'quiz', 'Проверьте себя', '{"explanation":"“What is your name?” asks a person to say their name.","instruction":"Выберите правильный ответ.","options":[{"id":"LSQA_L1_Q_A","is_correct":true,"text":"What is your name?"},{"id":"LSQA_L1_Q_B","is_correct":false,"text":"Where are you from?"},{"id":"LSQA_L1_Q_C","is_correct":false,"text":"How are you?"}],"question":"Which question asks for a name?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('76e13ac0-06d7-570f-b215-82d229cdb729', '82043d67-f23a-5905-a500-212418652a2b', 'translate', 'Переведите', '{"correct_translation":"Where are you from?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Откуда вы?","target_language":"en","word_bank":["from?","you","are","Where"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('60effb2e-881e-571f-9624-f00384399c43', '82043d67-f23a-5905-a500-212418652a2b', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"What","instruction":"Выберите подходящее слово.","options":["What","Where","Who"],"sentence_template":"___ is your name?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8574defe-a1c5-5cd8-96e8-062a65a68b6c', '82043d67-f23a-5905-a500-212418652a2b', 'tap_words', 'Соберите фразу', '{"correct_words":["How","are","you?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["you?","are","How"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('054e16e6-fcc1-5d63-ad7a-ed45c28b97ea', '82043d67-f23a-5905-a500-212418652a2b', 'listening', 'Послушайте', '{"audio_text":"What is your name?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8ba275ba-ec26-571e-8206-72c433be2761', '82043d67-f23a-5905-a500-212418652a2b', 'listening_shadowing', 'Повторите', '{"audio_text":"What is your name? My name is Emma.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Как вас зовут? Меня зовут Эмма."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('326398e7-90c3-5536-9d76-dc280937e654', '82043d67-f23a-5905-a500-212418652a2b', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"What is your name?","translation":"Как тебя зовут?","type":"dialogue"},{"character":"Student","text":"My name is Leo.","translation":"Меня зовут Лео.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Where are you from?"},{"is_correct":false,"text":"Good night, name?"}],"text":"What should the teacher ask next?","type":"choice"}],"title":"A New Student"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5864c2ce-661b-52d5-9e64-55ac447aca80', '82043d67-f23a-5905-a500-212418652a2b', 'choose_definition', 'Определение', '{"explanation":"“Where” asks about a place.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSQA_L1_D_A","is_correct":true,"text":"A question word used to ask about a place"},{"id":"LSQA_L1_D_B","is_correct":false,"text":"A question word used to ask about a person"},{"id":"LSQA_L1_D_C","is_correct":false,"text":"A greeting used in the morning"}],"word":"where"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('736b320e-e37c-5851-a4f7-310f3b8e09df', '82043d67-f23a-5905-a500-212418652a2b', 'listen_choose_word', 'Слово', '{"audio_text":"Where are you from?","explanation":"The missing question word is “Where.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Where","id":"LSQA_L1_LW_A","is_correct":true},{"audio_text":"What","id":"LSQA_L1_LW_B","is_correct":false},{"audio_text":"How","id":"LSQA_L1_LW_C","is_correct":false}],"sentence_template":"___ are you from?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5ca06c89-5e41-52c8-912d-fa6cd9764863', '82043d67-f23a-5905-a500-212418652a2b', 'missing_word', 'Впишите', '{"correct_answer":"How","explanation":"The complete question is “How are you?”","hint_prefix":"H","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ are you?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fff8e8c9-0df5-5b4c-96e7-96a5d0283159', '82043d67-f23a-5905-a500-212418652a2b', 'match_pairs_voice', 'Звук', '{"explanation":"Match each question or answer you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"What?","id":"LSQA_L1_VM_P1","text":"What?"},{"audio_text":"Where?","id":"LSQA_L1_VM_P2","text":"Where?"},{"audio_text":"How?","id":"LSQA_L1_VM_P3","text":"How?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8d432b4e-48ea-5240-9a2d-350f672f4985', '82043d67-f23a-5905-a500-212418652a2b', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Nora","text":"What is your name?"}],"explanation":"“My name is Alex” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"LSQA_L1_C_A","is_correct":true,"text":"My name is Alex."},{"id":"LSQA_L1_C_B","is_correct":false,"text":"I am from fine."},{"id":"LSQA_L1_C_C","is_correct":false,"text":"Good night is Alex."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', '82043d67-f23a-5905-a500-212418652a2b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('406a6cb2-4c28-5d92-aaca-676275418d9d', NULL, 'Слушаем вопросы да или нет', 'Научиться узнавать и повторять простые вопросы и короткие ответы yes или no.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d5e35606-72ee-53cd-923a-e2152cc86c1f', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSQA_L2_MP_P1","left":"Are you ready?","right":"Вы готовы?"},{"id":"LSQA_L2_MP_P2","left":"Yes, I am","right":"Да, готов"},{"id":"LSQA_L2_MP_P3","left":"No, I am not","right":"Нет, не готов"},{"id":"LSQA_L2_MP_P4","left":"Can you swim?","right":"Вы умеете плавать?"},{"id":"LSQA_L2_MP_P5","left":"Yes, I can","right":"Да, умею"},{"id":"LSQA_L2_MP_P6","left":"No, I cannot","right":"Нет, не умею"},{"id":"LSQA_L2_MP_P7","left":"Do you like music?","right":"Вам нравится музыка?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('09048a4a-833f-5755-b365-ae572fb4e985', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'quiz', 'Проверьте себя', '{"explanation":"“Yes, I am” is the correct short answer to a question beginning with “Are you...?”","instruction":"Выберите правильный ответ.","options":[{"id":"LSQA_L2_Q_A","is_correct":true,"text":"Yes, I am."},{"id":"LSQA_L2_Q_B","is_correct":false,"text":"Yes, I can."},{"id":"LSQA_L2_Q_C","is_correct":false,"text":"Yes, I do music."}],"question":"What is the correct short answer to “Are you ready?”"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8a0c6a3c-4f6f-588f-8a1d-c8f66ff7b7a5', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'translate', 'Переведите', '{"correct_translation":"Yes, I can.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Да, я умею.","target_language":"en","word_bank":["can.","I","Yes,"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c39307ed-3bae-5c39-8e4a-ffed5720a88d', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"Are","instruction":"Выберите подходящее слово.","options":["Are","Can","What"],"sentence_template":"___ you ready?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('23311661-54af-5089-84d1-01df8f164765', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'tap_words', 'Соберите фразу', '{"correct_words":["No,","I","cannot."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["cannot.","I","No,"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ca9874cd-22e2-51bb-abc5-61d2d7383836', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'listening', 'Послушайте', '{"audio_text":"Can you swim? Yes, I can.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('acb59db6-74c0-53c2-8947-3f8fb28ff4fe', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'listening_shadowing', 'Повторите', '{"audio_text":"Do you like music? Yes, I do.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Вам нравится музыка? Да."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e7aef009-4a1b-5e04-9c4c-389b96d0c2fb', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Are you ready, Ben?","translation":"Ты готов, Бен?","type":"dialogue"},{"character":"Ben","text":"Yes, I am.","translation":"Да, готов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Do you have your book?"},{"is_correct":false,"text":"Where ready music?"}],"text":"What should the teacher ask next?","type":"choice"}],"title":"Ready for Class"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d46dd65d-ab36-55ea-9885-7ca7fd16ee44', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'choose_definition', 'Определение', '{"explanation":"“Ready” means prepared to do something.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSQA_L2_D_A","is_correct":true,"text":"Prepared to do something"},{"id":"LSQA_L2_D_B","is_correct":false,"text":"Unable to do something"},{"id":"LSQA_L2_D_C","is_correct":false,"text":"A question about a place"}],"word":"ready"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ea3763b5-993d-5219-bc9f-c94469a4d158', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'listen_choose_word', 'Слово', '{"audio_text":"Can you swim?","explanation":"The missing word is “Can.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Can","id":"LSQA_L2_LW_A","is_correct":true},{"audio_text":"Where","id":"LSQA_L2_LW_B","is_correct":false},{"audio_text":"Name","id":"LSQA_L2_LW_C","is_correct":false}],"sentence_template":"___ you swim?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f168c8a9-dec9-5b9b-917f-14c64ba8dfe3', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'missing_word', 'Впишите', '{"correct_answer":"can","explanation":"The complete answer is “Yes, I can.”","hint_prefix":"ca","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Yes, I ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('168c9183-9a7d-50db-9cac-0d3e6d61f5cb', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'match_pairs_voice', 'Звук', '{"explanation":"Match each question or answer you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Are you ready?","id":"LSQA_L2_VM_P1","text":"Are you ready?"},{"audio_text":"Yes, I am","id":"LSQA_L2_VM_P2","text":"Yes, I am"},{"audio_text":"No, I am not","id":"LSQA_L2_VM_P3","text":"No, I am not"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f51f6330-cb68-5118-839f-938bceab203d', '406a6cb2-4c28-5d92-aaca-676275418d9d', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Max","text":"Do you like English?"}],"explanation":"“Yes, I do” is the correct positive short answer.","instruction":"Ответьте.","options":[{"id":"LSQA_L2_C_A","is_correct":true,"text":"Yes, I do."},{"id":"LSQA_L2_C_B","is_correct":false,"text":"Yes, I am English."},{"id":"LSQA_L2_C_C","is_correct":false,"text":"My name is do."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', '406a6cb2-4c28-5d92-aaca-676275418d9d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('763d9353-a89f-5b7a-a7a7-a5a6407936dc', NULL, 'Слушаем короткие вопросы и ответы', 'Научиться понимать и повторять короткие повседневные диалоги с вопросами и ответами.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('68c99466-e5b5-525f-8634-178b2b66975b', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSQA_L3_MP_P1","left":"What is this?","right":"Что это?"},{"id":"LSQA_L3_MP_P2","left":"It is a book","right":"Это книга"},{"id":"LSQA_L3_MP_P3","left":"Where is my pen?","right":"Где моя ручка?"},{"id":"LSQA_L3_MP_P4","left":"It is on the desk","right":"Она на парте"},{"id":"LSQA_L3_MP_P5","left":"Who is she?","right":"Кто она?"},{"id":"LSQA_L3_MP_P6","left":"She is my teacher","right":"Она моя учительница"},{"id":"LSQA_L3_MP_P7","left":"Do you understand?","right":"Вы понимаете?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c963b4c3-3366-5443-876c-5a6f94f2e0b0', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'quiz', 'Проверьте себя', '{"explanation":"“It is a book” names the object in the question.","instruction":"Выберите правильный ответ.","options":[{"id":"LSQA_L3_Q_A","is_correct":true,"text":"It is a book."},{"id":"LSQA_L3_Q_B","is_correct":false,"text":"It is on Monday."},{"id":"LSQA_L3_Q_C","is_correct":false,"text":"She is fine."}],"question":"What answer matches “What is this?”"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('05a8a664-4a2b-57de-8426-2c84c6805e69', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'translate', 'Переведите', '{"correct_translation":"Where is my pen?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Где моя ручка?","target_language":"en","word_bank":["pen?","my","is","Where"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('10b8b1e5-e7dd-54fc-ab1f-7baaf547f045', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"she","instruction":"Выберите подходящее слово.","options":["she","desk","book"],"sentence_template":"Who is ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2d503918-ebff-5b4a-b8e8-2c257aa560be', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'tap_words', 'Соберите фразу', '{"correct_words":["It","is","on","the","desk."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["desk.","the","on","is","It"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3986329a-15c8-5768-afb5-ddea357282d5', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'listening', 'Послушайте', '{"audio_text":"Where is my pen? It is on the desk.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6d2ca34e-be42-594b-a889-ee3716eb009d', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'listening_shadowing', 'Повторите', '{"audio_text":"Who is she? She is my teacher.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Кто она? Она моя учительница."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5d640a09-4a1a-5f92-bafc-0a85c8018d02', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mia","text":"Where is my book?","translation":"Где моя книга?","type":"dialogue"},{"character":"Sam","text":"It is on the chair.","translation":"Она на стуле.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you!"},{"is_correct":false,"text":"Who is the book ready?"}],"text":"What should Mia say?","type":"choice"}],"title":"Looking for a Book"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f051289c-9255-5583-9213-d11f85d3679d', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'choose_definition', 'Определение', '{"explanation":"“Understand” means to know the meaning of something.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSQA_L3_D_A","is_correct":true,"text":"To know the meaning of something"},{"id":"LSQA_L3_D_B","is_correct":false,"text":"To ask where something is"},{"id":"LSQA_L3_D_C","is_correct":false,"text":"To put an object on a desk"}],"word":"understand"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dfcb5a02-49e0-5662-8be1-0d176fb9fd0e', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'listen_choose_word', 'Слово', '{"audio_text":"It is on the desk.","explanation":"The missing word is “desk.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"desk","id":"LSQA_L3_LW_A","is_correct":true},{"audio_text":"who","id":"LSQA_L3_LW_B","is_correct":false},{"audio_text":"ready","id":"LSQA_L3_LW_C","is_correct":false}],"sentence_template":"It is on the ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7b994903-c391-5918-8e28-e68a206c7265', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'missing_word', 'Впишите', '{"correct_answer":"teacher","explanation":"The complete answer is “She is my teacher.”","hint_prefix":"te","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('33871f9c-2962-5991-b582-369374dc0c2e', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'match_pairs_voice', 'Звук', '{"explanation":"Match each question or answer you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"What is this?","id":"LSQA_L3_VM_P1","text":"What is this?"},{"audio_text":"Where is my pen?","id":"LSQA_L3_VM_P2","text":"Where is my pen?"},{"audio_text":"Who is she?","id":"LSQA_L3_VM_P3","text":"Who is she?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('28ccf4b2-ef42-5cfd-bb41-ab88c3249537', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Do you understand?"}],"explanation":"“Yes, I do” is a natural short answer to the question.","instruction":"Ответьте.","options":[{"id":"LSQA_L3_C_A","is_correct":true,"text":"Yes, I do."},{"id":"LSQA_L3_C_B","is_correct":false,"text":"Yes, I am a desk."},{"id":"LSQA_L3_C_C","is_correct":false,"text":"My name is understand."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76b836fb-f4cd-5d85-9d7b-a615a4296dea', 'en', 'What?', 'Что?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8bbfaa56-5828-5a93-92bb-8d32521aaf20', 'en', 'Where?', 'Где?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6c60842-c8ce-56c1-acf6-7f87faa89a8a', 'en', 'Who?', 'Кто?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c94d15a-f7d7-5b87-9b83-5b769517fd2a', 'en', 'How?', 'Как?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6da48424-02f0-5c09-afab-17005f5ceb5f', 'en', 'What is your name?', 'Как вас зовут?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('322d95de-8006-5d9e-bb2f-4fed296ecbaa', 'en', 'Where are you from?', 'Откуда вы?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61154476-f1cb-5cd0-a624-108da1188823', 'en', 'How are you?', 'Как дела?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e1d62be-cf4b-5313-9c08-df51d7add0d1', 'en', 'Are you ready?', 'Вы готовы?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec10c38e-f144-55a9-b632-7d7e0ff89a98', 'en', 'Yes, I am', 'Да, готов', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5aca5f9d-ea83-5e60-93e8-365e1b6cca29', 'en', 'No, I am not', 'Нет, не готов', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('007140ff-0b1b-5091-9832-66f1dd364763', 'en', 'Can you swim?', 'Вы умеете плавать?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d03ab2ea-4168-5ed2-95ed-ca22069d041a', 'en', 'Yes, I can', 'Да, умею', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8561275-6350-5c8c-ba76-d0bf74e2e4f4', 'en', 'No, I cannot', 'Нет, не умею', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5bad30e8-8e1e-56a3-9b15-ec198274172e', 'en', 'Do you like music?', 'Вам нравится музыка?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cc37913c-9bf8-5175-8f17-da3a80658de0', 'en', 'What is this?', 'Что это?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a96f888d-b235-5217-9c8d-2ca485d505f4', 'en', 'It is a book', 'Это книга', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fe0a04b-15dc-5153-98eb-104aceadfa4c', 'en', 'Where is my pen?', 'Где моя ручка?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c655a02d-1338-5b9b-875e-e5af247b9277', 'en', 'It is on the desk', 'Она на парте', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b85e0c2f-033b-5cb5-a16a-f0b775646d51', 'en', 'Who is she?', 'Кто она?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67f95534-3039-553f-b120-4692a55fafae', 'en', 'She is my teacher', 'Она моя учительница', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('479bc09d-adde-5497-be2a-137c9894c868', 'en', 'Do you understand?', 'Вы понимаете?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '82043d67-f23a-5905-a500-212418652a2b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'What?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '82043d67-f23a-5905-a500-212418652a2b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'Where?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '82043d67-f23a-5905-a500-212418652a2b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'Who?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '82043d67-f23a-5905-a500-212418652a2b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'How?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '82043d67-f23a-5905-a500-212418652a2b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is your name?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '82043d67-f23a-5905-a500-212418652a2b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'Where are you from?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '82043d67-f23a-5905-a500-212418652a2b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'How are you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '406a6cb2-4c28-5d92-aaca-676275418d9d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Are you ready?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '406a6cb2-4c28-5d92-aaca-676275418d9d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, I am' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '406a6cb2-4c28-5d92-aaca-676275418d9d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'No, I am not' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '406a6cb2-4c28-5d92-aaca-676275418d9d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can you swim?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '406a6cb2-4c28-5d92-aaca-676275418d9d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, I can' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '406a6cb2-4c28-5d92-aaca-676275418d9d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'No, I cannot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '406a6cb2-4c28-5d92-aaca-676275418d9d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Do you like music?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is this?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'It is a book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Where is my pen?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'It is on the desk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Who is she?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'She is my teacher' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6df6dfe5-0574-5651-98a5-d8bfd7ad0ce7', id, '763d9353-a89f-5b7a-a7a7-a5a6407936dc', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Do you understand?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
