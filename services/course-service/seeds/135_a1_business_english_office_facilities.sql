-- Track: A1_BUSINESS_ENGLISH_OFFICE_FACILITIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d994e49c-6bdb-5ef6-a32a-20a91dc107df', 'A1_BUSINESS_ENGLISH_OFFICE_FACILITIES', 'Офисные помещения', 'Научитесь называть офисные помещения, оборудование и удобства.', '{"en":"Office Facilities","ru":"Офисные помещения"}'::jsonb, '{"en":"Learn to name office rooms, equipment, and facilities.","ru":"Научитесь называть офисные помещения, оборудование и удобства."}'::jsonb, 'en', 'A1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cbcf6d2d-63ce-52bb-b001-78a53b6f4208', NULL, 'Офисные помещения', 'Научиться использовать простые деловые фразы по теме «Офисные помещения».', '{"en":"Office Rooms","ru":"Офисные помещения"}'::jsonb, '{"en":"Learn to use simple business phrases for office rooms.","ru":"Научиться использовать простые деловые фразы по теме «Офисные помещения»."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45af45e3-3d4c-5280-afb8-59440e630663', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEOF_L1_MP_P1","left":"reception","right":"приёмная"},{"id":"BEOF_L1_MP_P2","left":"meeting room","right":"переговорная"},{"id":"BEOF_L1_MP_P3","left":"kitchen","right":"кухня"},{"id":"BEOF_L1_MP_P4","left":"office","right":"офис"},{"id":"BEOF_L1_MP_P5","left":"toilet","right":"туалет"},{"id":"BEOF_L1_MP_P6","left":"stairs","right":"лестница"},{"id":"BEOF_L1_MP_P7","left":"lift","right":"лифт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42ee0d39-9d44-5c70-8dc2-5c7d88c452d0', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “reception.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEOF_L1_Q_A","is_correct":true,"text":"reception"},{"id":"BEOF_L1_Q_B","is_correct":false,"text":"meeting room"},{"id":"BEOF_L1_Q_C","is_correct":false,"text":"kitchen"}],"question":"Which phrase is connected with “reception”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0720c5c3-f00d-50f7-a329-a3487ec865bf', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The meeting room is upstairs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Переговорная находится наверху.","target_language":"en","word_bank":["upstairs.","is","room","meeting","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80d31c99-77d1-5467-9662-893bb1596eb0', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"floor","instruction":"Выберите подходящее слово.","options":["floor","order","customer"],"sentence_template":"Reception is on the first ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('721e005a-519b-5c8f-8288-fc191648b953', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Reception","is","on","the","first","floor."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["floor.","first","the","on","is","Reception"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acba228c-1e00-50f4-a51a-87b4379c23b6', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The kitchen is next to the meeting room.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee769235-9953-53c3-85c8-6f112c6ef152', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The meeting room is upstairs.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Переговорная находится наверху."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46c26964-5482-5aad-854f-ef8c24e3bdfa', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Visitor","text":"Where is the meeting room?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"It is on the second floor.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"It is on the second floor."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Office Rooms"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3339add1-b9ac-51f0-9d53-a49c2ffa8b8d', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reception” means the area where visitors first arrive.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEOF_L1_D_A","is_correct":true,"text":"The area where visitors first arrive"},{"id":"BEOF_L1_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEOF_L1_D_C","is_correct":false,"text":"A type of food"}],"word":"reception"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('154ea08f-ae4c-50b8-90c0-b6d2e9bd179b', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Reception is on the first floor.","explanation":"The missing word is “floor.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"floor","id":"BEOF_L1_LW_A","is_correct":true},{"audio_text":"order","id":"BEOF_L1_LW_B","is_correct":false},{"audio_text":"customer","id":"BEOF_L1_LW_C","is_correct":false}],"sentence_template":"Reception is on the first ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('321dd923-5c09-509a-80fb-424a2cfbb798', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"floor","explanation":"The complete sentence is “Reception is on the first floor.”","hint_prefix":"fl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Reception is on the first ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21e43b93-2be9-589e-8f75-bac725136391', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reception","id":"BEOF_L1_VM_P1","text":"reception"},{"audio_text":"meeting room","id":"BEOF_L1_VM_P2","text":"meeting room"},{"audio_text":"kitchen","id":"BEOF_L1_VM_P3","text":"kitchen"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddf0aff2-a824-5e00-bf13-a04f31d46504', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Visitor","text":"Where is the meeting room?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEOF_L1_C_A","is_correct":true,"text":"It is on the second floor."},{"id":"BEOF_L1_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEOF_L1_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d994e49c-6bdb-5ef6-a32a-20a91dc107df', 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('637f85d3-03da-5e76-b8bc-00422ff376da', NULL, 'Офисное оборудование', 'Научиться использовать простые деловые фразы по теме «Офисное оборудование».', '{"en":"Office Equipment","ru":"Офисное оборудование"}'::jsonb, '{"en":"Learn to use simple business phrases for office equipment.","ru":"Научиться использовать простые деловые фразы по теме «Офисное оборудование»."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f48233e7-66da-51bb-886c-200b32258706', '637f85d3-03da-5e76-b8bc-00422ff376da', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEOF_L2_MP_P1","left":"printer","right":"принтер"},{"id":"BEOF_L2_MP_P2","left":"copier","right":"копировальный аппарат"},{"id":"BEOF_L2_MP_P3","left":"scanner","right":"сканер"},{"id":"BEOF_L2_MP_P4","left":"projector","right":"проектор"},{"id":"BEOF_L2_MP_P5","left":"screen","right":"экран"},{"id":"BEOF_L2_MP_P6","left":"computer","right":"компьютер"},{"id":"BEOF_L2_MP_P7","left":"telephone","right":"телефон"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8d5ab13-332e-52cd-a772-37943c3cb262', '637f85d3-03da-5e76-b8bc-00422ff376da', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “printer.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEOF_L2_Q_A","is_correct":true,"text":"printer"},{"id":"BEOF_L2_Q_B","is_correct":false,"text":"copier"},{"id":"BEOF_L2_Q_C","is_correct":false,"text":"scanner"}],"question":"Which phrase is connected with “printer”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aef201a9-5861-508a-98a6-6b30331af814', '637f85d3-03da-5e76-b8bc-00422ff376da', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The printer is next to the scanner.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Принтер находится рядом со сканером.","target_language":"en","word_bank":["scanner.","the","to","next","is","printer","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('322fe45a-2d51-5c41-9f1c-f1c4c566974b', '637f85d3-03da-5e76-b8bc-00422ff376da', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"room","instruction":"Выберите подходящее слово.","options":["room","price","Tuesday"],"sentence_template":"The projector is in the meeting ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b1eb496-4345-5bad-b25e-15f4dae04960', '637f85d3-03da-5e76-b8bc-00422ff376da', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","projector","is","in","the","meeting","room."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["room.","meeting","the","in","is","projector","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('830f8764-9053-5ce4-986c-2eff23cf8646', '637f85d3-03da-5e76-b8bc-00422ff376da', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please turn on the projector before the meeting.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6439dda1-1d1c-5d75-adff-a09f46439e5e', '637f85d3-03da-5e76-b8bc-00422ff376da', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The printer is next to the scanner.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Принтер находится рядом со сканером."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('726e2b1f-7cec-55bc-b775-b2ce37a2e50f', '637f85d3-03da-5e76-b8bc-00422ff376da', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Colleague","text":"Where can I print this document?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"The printer is near reception.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"The printer is near reception."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Office Equipment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c07fc36-7efb-5fb4-8ea2-e7a059ff1533', '637f85d3-03da-5e76-b8bc-00422ff376da', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“projector” means a machine that shows an image on a screen.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEOF_L2_D_A","is_correct":true,"text":"A machine that shows an image on a screen"},{"id":"BEOF_L2_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEOF_L2_D_C","is_correct":false,"text":"A type of food"}],"word":"projector"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8816cd5b-8724-55d6-a43d-967701fa3de2', '637f85d3-03da-5e76-b8bc-00422ff376da', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The projector is in the meeting room.","explanation":"The missing word is “room.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"room","id":"BEOF_L2_LW_A","is_correct":true},{"audio_text":"price","id":"BEOF_L2_LW_B","is_correct":false},{"audio_text":"Tuesday","id":"BEOF_L2_LW_C","is_correct":false}],"sentence_template":"The projector is in the meeting ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b7eb576-da4f-51ed-a034-9184ae89c54c', '637f85d3-03da-5e76-b8bc-00422ff376da', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"room","explanation":"The complete sentence is “The projector is in the meeting room.”","hint_prefix":"ro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The projector is in the meeting ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8417ec49-3b0a-5cd0-a6a2-4271c3020585', '637f85d3-03da-5e76-b8bc-00422ff376da', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"printer","id":"BEOF_L2_VM_P1","text":"printer"},{"audio_text":"copier","id":"BEOF_L2_VM_P2","text":"copier"},{"audio_text":"scanner","id":"BEOF_L2_VM_P3","text":"scanner"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7640dfe6-cbeb-52a9-bb8f-b7e478827a7c', '637f85d3-03da-5e76-b8bc-00422ff376da', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Where can I print this document?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEOF_L2_C_A","is_correct":true,"text":"The printer is near reception."},{"id":"BEOF_L2_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEOF_L2_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d994e49c-6bdb-5ef6-a32a-20a91dc107df', '637f85d3-03da-5e76-b8bc-00422ff376da', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7b701369-1ca3-5187-9c7c-c45fe57edbad', NULL, 'Использование помещений', 'Научиться использовать простые деловые фразы по теме «Использование помещений».', '{"en":"Using Facilities","ru":"Использование помещений"}'::jsonb, '{"en":"Learn to use simple business phrases for using facilities.","ru":"Научиться использовать простые деловые фразы по теме «Использование помещений»."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ee065d5-7ecc-57ba-a614-3f96a6647175', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEOF_L3_MP_P1","left":"available","right":"свободный"},{"id":"BEOF_L3_MP_P2","left":"book a room","right":"забронировать комнату"},{"id":"BEOF_L3_MP_P3","left":"use the lift","right":"пользоваться лифтом"},{"id":"BEOF_L3_MP_P4","left":"free Wi-Fi","right":"бесплатный вай-фай"},{"id":"BEOF_L3_MP_P5","left":"coffee machine","right":"кофемашина"},{"id":"BEOF_L3_MP_P6","left":"parking","right":"парковка"},{"id":"BEOF_L3_MP_P7","left":"entrance","right":"вход"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57e1f079-b1b1-5024-8ad0-29dc861159e9', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “available.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEOF_L3_Q_A","is_correct":true,"text":"available"},{"id":"BEOF_L3_Q_B","is_correct":false,"text":"book a room"},{"id":"BEOF_L3_Q_C","is_correct":false,"text":"use the lift"}],"question":"Which phrase is connected with “available”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('608eb95f-0595-59cc-8771-a651bbabfa4f', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I want to book a meeting room.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я хочу забронировать переговорную.","target_language":"en","word_bank":["room.","meeting","a","book","to","want","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ee31cc9-e6fa-5b64-b346-8c4b81288861', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"available","instruction":"Выберите подходящее слово.","options":["available","expensive","delayed"],"sentence_template":"Is the room ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e4feb24-b2c6-5e00-9c3b-7f97ea30dbb3', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Is","the","room","available?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["available?","room","the","Is"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('247316ee-e305-5f62-841b-e934e46cfc52', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The meeting room is available at three o’clock.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25c72095-7397-5956-894a-e808a5d08943', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I want to book a meeting room.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я хочу забронировать переговорную."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d366949c-7d4f-5093-ad94-e762a2f4e803', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Assistant","text":"Can I use the meeting room?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Yes. It is available now.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. It is available now."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Using Facilities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f674ab8-ec52-5de2-bc02-1717dbbac83f', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“available” means free and ready to use.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEOF_L3_D_A","is_correct":true,"text":"Free and ready to use"},{"id":"BEOF_L3_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEOF_L3_D_C","is_correct":false,"text":"A type of food"}],"word":"available"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f2bd060-71ae-5255-bb93-66f53c8c3200', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Is the room available?","explanation":"The missing word is “available.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"available","id":"BEOF_L3_LW_A","is_correct":true},{"audio_text":"expensive","id":"BEOF_L3_LW_B","is_correct":false},{"audio_text":"delayed","id":"BEOF_L3_LW_C","is_correct":false}],"sentence_template":"Is the room ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97502b7c-96d7-5a25-bb3e-41f5739e49dd', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"available","explanation":"The complete sentence is “Is the room available?”","hint_prefix":"av","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Is the room ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51245319-6d85-59cc-8f7e-692058ce6bff', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"available","id":"BEOF_L3_VM_P1","text":"available"},{"audio_text":"book a room","id":"BEOF_L3_VM_P2","text":"book a room"},{"audio_text":"use the lift","id":"BEOF_L3_VM_P3","text":"use the lift"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ca805a2-1436-5b46-8127-a48acbe2667e', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Assistant","text":"Can I use the meeting room?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEOF_L3_C_A","is_correct":true,"text":"Yes. It is available now."},{"id":"BEOF_L3_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEOF_L3_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d994e49c-6bdb-5ef6-a32a-20a91dc107df', '7b701369-1ca3-5187-9c7c-c45fe57edbad', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc239625-9be5-54cd-a1c3-15c3a99f6539', 'en', 'reception', 'приёмная', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21fbdd26-a158-5eeb-87b5-336bbd6d9c4c', 'en', 'meeting room', 'переговорная', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4506b10c-36bb-53d9-8ed7-232525d4a333', 'en', 'kitchen', 'кухня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e7121b2-a408-5c04-b26e-bea2a5591670', 'en', 'office', 'офис', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f9597c1-12b9-548d-bcfb-6cf3806a74d2', 'en', 'toilet', 'туалет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b15503b-4c25-5e00-a6b5-fc9e5c584583', 'en', 'stairs', 'лестница', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e7da246c-5ccb-5980-b8f0-d16d4d5bd478', 'en', 'lift', 'лифт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5080c35a-750b-5643-8e4f-7587c7d44a00', 'en', 'printer', 'принтер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd65af4f-2e2e-50f6-944d-aba56fb1bf12', 'en', 'copier', 'копировальный аппарат', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('395241bd-9643-5ecf-afd2-a1b1f4f35cae', 'en', 'scanner', 'сканер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8404a753-3a1a-5566-9d1e-e8514cfde1bc', 'en', 'projector', 'проектор', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('63d7addf-9c17-52b5-b3c3-c3a331124224', 'en', 'screen', 'экран', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a6033b6f-908a-5f82-b82a-e887dd07af6b', 'en', 'computer', 'компьютер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f488aa8-901e-5911-8e51-5d01c34c85f7', 'en', 'telephone', 'телефон', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c21e899b-7be3-524a-88f1-c45d91a41d8c', 'en', 'available', 'свободный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7a20d46-12c7-5cfc-88c1-0a21207a0d81', 'en', 'book a room', 'забронировать комнату', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67cff122-ba61-53d7-81dd-6300e492153c', 'en', 'use the lift', 'пользоваться лифтом', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bff84b70-1df2-5a5c-bae0-776f95f765c7', 'en', 'free Wi-Fi', 'бесплатный вай-фай', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef89bc42-a2b6-5e01-9603-1b11236ca7c9', 'en', 'coffee machine', 'кофемашина', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fa1a071-3c2f-5d4f-9ef4-0f0450a1821e', 'en', 'parking', 'парковка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37a0056a-cb82-570d-9725-10f4dcc0f160', 'en', 'entrance', 'вход', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'reception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'meeting room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'kitchen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'toilet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'stairs' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, 'cbcf6d2d-63ce-52bb-b001-78a53b6f4208', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'lift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '637f85d3-03da-5e76-b8bc-00422ff376da', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'printer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '637f85d3-03da-5e76-b8bc-00422ff376da', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'copier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '637f85d3-03da-5e76-b8bc-00422ff376da', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'scanner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '637f85d3-03da-5e76-b8bc-00422ff376da', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'projector' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '637f85d3-03da-5e76-b8bc-00422ff376da', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'screen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '637f85d3-03da-5e76-b8bc-00422ff376da', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'computer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '637f85d3-03da-5e76-b8bc-00422ff376da', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'telephone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '7b701369-1ca3-5187-9c7c-c45fe57edbad', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'available' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '7b701369-1ca3-5187-9c7c-c45fe57edbad', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'book a room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '7b701369-1ca3-5187-9c7c-c45fe57edbad', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'use the lift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '7b701369-1ca3-5187-9c7c-c45fe57edbad', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'free Wi-Fi' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '7b701369-1ca3-5187-9c7c-c45fe57edbad', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'coffee machine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '7b701369-1ca3-5187-9c7c-c45fe57edbad', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'parking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd994e49c-6bdb-5ef6-a32a-20a91dc107df', id, '7b701369-1ca3-5187-9c7c-c45fe57edbad', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'entrance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
