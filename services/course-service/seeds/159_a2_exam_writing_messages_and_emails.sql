-- Track: A2_EXAM_WRITING_MESSAGES_AND_EMAILS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('07f49bd1-9d43-514d-a0c4-d5a884c17c30', 'A2_EXAM_WRITING_MESSAGES_AND_EMAILS', 'Написание сообщений и писем', 'Развивайте экзаменационные навыки уровня A2 по теме «Написание сообщений и писем».', '{"en":"Writing Messages and Emails","ru":"Написание сообщений и писем"}'::jsonb, '{"en":"Develop A2 exam skills for writing messages and emails.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Написание сообщений и писем»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2f5f34ab-868d-5daa-ab74-b859c06c0d63', NULL, 'Письмо, которое я написал', 'Написать письмо по образцу, используя past simple и present perfect.', '{"en":"The Email I Wrote","ru":"Письмо, которое я написал"}'::jsonb, '{"en":"Write a model email using past simple and present perfect.","ru":"Написать письмо по образцу, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83673cfe-d7fb-5545-87e4-901b900f02c3', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"salutation","right":"обращение"},{"id":"P2","left":"reason for writing","right":"причина письма"},{"id":"P3","left":"to attach","right":"приложить"},{"id":"P4","left":"sign-off","right":"заключительная формула"},{"id":"P5","left":"word count","right":"количество слов"},{"id":"P6","left":"formal register","right":"официальный стиль"},{"id":"P7","left":"to proofread","right":"вычитать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('faf268ee-c357-594e-bb90-2e27fe023d1a', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have attached the form to this email.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have attached the form to this email."},{"id":"Q_B","is_correct":false,"text":"I have attached it yesterday."},{"id":"Q_C","is_correct":false,"text":"I attach the form already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08498cd8-73a1-5e35-a25c-0bc1e2b49949', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I wrote the email, attached the form and proofread the text twice.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я написал письмо, приложил форму и вычитал текст дважды.","target_language":"en","word_bank":["I","tomorrow","the","text","email,","did","the","wrote","write","form","proofread","the","attached","and","twice."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f808f7b-9b04-58f6-8174-36b491078d34', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"formal","instruction":"Выберите подходящее слово.","options":["formal","formally","formals"],"sentence_template":"The task asked for a ___ register, so I wrote ''Dear Mr Brown''.","translation_hint":"В задании требовался официальный стиль, поэтому я написал ''Dear Mr Brown''."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1892f67c-2f18-5940-8cb8-4bf5fab56bb0', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","checked","the","word","count","twice."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["checked","word","count","She","did","was","twice.","the","has"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03e39809-2778-5165-9d1c-dffe99da003e', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The task usually gives three points — if you cover all of them, the structure of the email writes itself.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d320698-62a7-507e-bada-1e934f727fa8', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The task usually gives three points — if you cover all of them, the structure of the email writes itself.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Задание обычно даёт три пункта — если покрыть все, структура письма напишется сама."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa7f3a04-7861-526e-bc6f-c391d5577b41', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The task says: explain the problem, suggest a date, ask about equipment.","translation":"В задании: объяснить проблему, предложить дату, спросить про оборудование.","type":"dialogue"},{"character":"Voice 2","text":"Three paragraphs, one point each. Have you covered all three?","translation":"Три абзаца, по пункту на каждый. Ты покрыл все три?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Two... I have missed the question about equipment. Fixing it now."},{"is_correct":false,"text":"All three — I covered them tomorrow yesterday."},{"is_correct":false,"text":"The paragraphs are tasking my points."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"The Task Check"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61fdd36a-9484-5a8a-8373-8df1b350012d', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“sign-off” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The closing phrase like ''Kind regards''"},{"id":"D_B","is_correct":false,"text":"The first line with the recipient''s name"},{"id":"D_C","is_correct":false,"text":"The subject line of the email"}],"word":"sign-off"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('632b2ca3-c921-5041-a26b-6de945622de9', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have attached the documents to the reply.","explanation":"The missing word is “attached”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"attached","id":"LW_A","is_correct":true},{"audio_text":"attach","id":"LW_B","is_correct":false},{"audio_text":"attaching","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the documents to the reply."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d057ee25-a725-555f-bbe0-fd60eaf2feaa', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reason","explanation":"The complete sentence is “State your reason for writing in line one.”.","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"State your ___ for writing in line one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('075075fa-e270-5c6e-8a48-6b042224ff47', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"salutation","id":"V1","text":"salutation"},{"audio_text":"reason for writing","id":"V2","text":"reason for writing"},{"audio_text":"to attach","id":"V3","text":"to attach"},{"audio_text":"sign-off","id":"V4","text":"sign-off"},{"audio_text":"word count","id":"V5","text":"word count"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcb3dd84-9495-52fc-98ac-950086e6271c', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"''Hi Sir'' — is that a good salutation?"}],"explanation":"“No — either ''Dear Sir'' or ''Hi Mr Brown''; a mix is too informal for the exam.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No — either ''Dear Sir'' or ''Hi Mr Brown''; a mix is too informal for the exam."},{"id":"C_B","is_correct":false,"text":"I mixed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The sir is salutating me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('07f49bd1-9d43-514d-a0c4-d5a884c17c30', '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d832d0d8-613a-59dd-9f91-4a2fd39abcfa', NULL, 'Пишем письмо на следующей неделе', 'Сравнить письма и спланировать письменную практику.', '{"en":"Writing Next Week''s Email","ru":"Пишем письмо на следующей неделе"}'::jsonb, '{"en":"Compare emails and plan writing practice.","ru":"Сравнить письма и спланировать письменную практику."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac5368e6-4f98-5c4b-8aa8-f54e7c74a2b9', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"informal email","right":"неофициальное письмо"},{"id":"P2","left":"formal email","right":"официальное письмо"},{"id":"P3","left":"shorter","right":"короче"},{"id":"P4","left":"contractions","right":"сокращения (don''t, I''m)"},{"id":"P5","left":"to organise into paragraphs","right":"разбить на абзацы"},{"id":"P6","left":"flow","right":"связность (текста)"},{"id":"P7","left":"to keep to the limit","right":"уложиться в лимит"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf919f0c-1954-587c-8219-e3d542d01e82', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “An informal email is shorter than a formal one.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"An informal email is shorter than a formal one."},{"id":"Q_B","is_correct":false,"text":"Informal emails is shorterest than formal."},{"id":"Q_C","is_correct":false,"text":"An informal email is most short than formal."}],"question":"Which sentence compares two email styles correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7dd59eba-a211-519f-9f5a-252ecfce2897', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Next week I am going to write one email a day.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На следующей неделе я собираюсь писать по одному письму в день.","target_language":"en","word_bank":["did","week","day.","I","email","yesterday","am","a","one","to","Next","wrote","write","going"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd76010d-8bcd-5f5f-8ad9-9c0531bab552', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"informal","instruction":"Выберите подходящее слово.","options":["informal","informals","informally"],"sentence_template":"Contractions like ''I''m'' suit ___ emails.","translation_hint":"Сокращения вроде ''I''m'' уместны в неофициальных письмах."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ad76cf2-d57e-5016-ab86-42ee58fea7e4', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","organise","answers","into","clear","paragraphs."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["are","We","did","clear","was","going","organise","to","into","answers","paragraphs."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67329f83-e3ca-5d45-9524-98e8635b3b2f', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you organise the email into short paragraphs, the examiner will see your structure in five seconds.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('470448a4-bb6e-5753-a5a6-13ed73d7a27e', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you organise the email into short paragraphs, the examiner will see your structure in five seconds.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если разбить письмо на короткие абзацы, экзаменатор увидит структуру за пять секунд."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5492881d-9dc7-5251-9977-a2cdc7fdbf30', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The task says ''write to your friend about the trip''.","translation":"В задании: ''напиши другу о поездке''.","type":"dialogue"},{"character":"Voice 2","text":"Then informal — contractions, short sentences, a friendly sign-off.","translation":"Значит неофициальное — сокращения, короткие предложения, дружеское завершение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"''Hi Sam, great news — I''ve booked the tickets!''"},{"is_correct":false,"text":"''Dear Sir, I am writing to inform you about my trip.''"},{"is_correct":false,"text":"''To whom it may concern, my friend Sam...''"}],"text":"What does Voice 1 write?","type":"choice"}],"title":"Formal or Informal?"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('470f1b6e-2ee7-5e5c-8fde-a6a6caa08fbc', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“contractions” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Short forms like ''don''t'' or ''I''m''"},{"id":"D_B","is_correct":false,"text":"Long full forms like ''do not''"},{"id":"D_C","is_correct":false,"text":"Formal titles before names"}],"word":"contractions"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52d970fd-93f1-5702-9391-9c9b9b79b75a', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to divide the letter into three paragraphs.","explanation":"The missing word is “divide”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"divide","id":"LW_A","is_correct":true},{"audio_text":"divided","id":"LW_B","is_correct":false},{"audio_text":"dividing","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ the letter into three paragraphs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('905f53f4-7cb1-5f27-b4e1-ae7bbef6b730', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"easier","explanation":"The complete sentence is “A good flow makes the text easier to read.”.","hint_prefix":"ea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A good flow makes the text ___ to read."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6970bbbb-e209-5ae3-9e54-7594ea520984', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"informal email","id":"V1","text":"informal email"},{"audio_text":"formal email","id":"V2","text":"formal email"},{"audio_text":"shorter","id":"V3","text":"shorter"},{"audio_text":"contractions","id":"V4","text":"contractions"},{"audio_text":"to organise into paragraphs","id":"V5","text":"to organise into paragraphs"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bf844f1-4193-5a73-b578-ff8bb61faacb', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I always write more words than needed."}],"explanation":"“Cut the weakest sentence — if you keep to the limit, you will not lose points for length.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Cut the weakest sentence — if you keep to the limit, you will not lose points for length."},{"id":"C_B","is_correct":false,"text":"I cut it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The words are limiting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('07f49bd1-9d43-514d-a0c4-d5a884c17c30', 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('784de1be-7193-5861-a9b8-1b294be5b600', NULL, 'Если письмо выходит за лимит', 'Редактировать письмо, используя should и первое условное.', '{"en":"If the Email Exceeds the Limit","ru":"Если письмо выходит за лимит"}'::jsonb, '{"en":"Edit an email using should and the first conditional.","ru":"Редактировать письмо, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99ad35d6-6cec-52ff-8521-622f1334e608', '784de1be-7193-5861-a9b8-1b294be5b600', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"word limit","right":"лимит слов"},{"id":"P2","left":"to cut out","right":"вырезать"},{"id":"P3","left":"redundant","right":"избыточный"},{"id":"P4","left":"to prioritise","right":"расставить приоритеты"},{"id":"P5","left":"checking stage","right":"этап проверки"},{"id":"P6","left":"spelling","right":"орфография"},{"id":"P7","left":"punctuation","right":"пунктуация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c9ceeec-3697-5600-9469-a74da5c33f45', '784de1be-7193-5861-a9b8-1b294be5b600', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should leave two minutes for a final check.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should leave two minutes for a final check."},{"id":"Q_B","is_correct":false,"text":"You should to leave it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must leaving minutes last email."}],"question":"Which sentence gives correct writing advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e142785-5cf0-5316-af82-3d5ab64396f5', '784de1be-7193-5861-a9b8-1b294be5b600', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you do not leave time for checking, your spelling will suffer.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если не оставить время на проверку, орфография пострадает.","target_language":"en","word_bank":["suffer.","time","If","leave","yesterday","left","not","will","for","do","spelling","your","you","did","checking,"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2822e7e-8147-5f9c-ab53-8c0e05fab412', '784de1be-7193-5861-a9b8-1b294be5b600', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cut out","instruction":"Выберите подходящее слово.","options":["cut out","will cut out","cutted out"],"sentence_template":"If the text is too long, ___ the redundant sentences.","translation_hint":"Если текст слишком длинный, вырежь избыточные предложения."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcdf5af1-2126-5e9d-a739-15fe8873baf5', '784de1be-7193-5861-a9b8-1b294be5b600', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","punctuation","before","submitting."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["mustn''t","check","You","before","went","punctuation","submitting.","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c486ca9-db03-535e-aae9-8c2154550f89', '784de1be-7193-5861-a9b8-1b294be5b600', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you spend the last two minutes on spelling and punctuation, your email will look a grade higher.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee5e84c2-76b9-55fc-8154-d135eeda5d55', '784de1be-7193-5861-a9b8-1b294be5b600', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you spend the last two minutes on spelling and punctuation, your email will look a grade higher.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если потратить последние две минуты на орфографию и пунктуацию, письмо будет выглядеть на балл выше."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61e4f926-33fe-5c59-8f4d-f28a94228c34', '784de1be-7193-5861-a9b8-1b294be5b600', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"My draft has 160 words, and the limit is 120.","translation":"В черновике 160 слов, а лимит 120.","type":"dialogue"},{"character":"Voice 2","text":"Which sentences repeat the same idea?","translation":"Какие предложения повторяют одну мысль?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I have found two redundant ones — cutting them out."},{"is_correct":false,"text":"I have counted the words more times."},{"is_correct":false,"text":"The limit is drafting my 160 words."}],"text":"What does Voice 1 do?","type":"choice"}],"title":"The Overlong Draft"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f76820d4-7427-57e0-93a4-33083da2d13e', '784de1be-7193-5861-a9b8-1b294be5b600', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“redundant” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Not needed, repeating other words"},{"id":"D_B","is_correct":false,"text":"Necessary for covering the task points"},{"id":"D_C","is_correct":false,"text":"The first sentence of the email"}],"word":"redundant"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6814039b-c251-5698-a193-5b0be3ee4762', '784de1be-7193-5861-a9b8-1b294be5b600', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you leave two minutes, you will catch the typos.","explanation":"The missing word is “leave”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"leave","id":"LW_A","is_correct":true},{"audio_text":"will leave","id":"LW_B","is_correct":false},{"audio_text":"left","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ two minutes, you will catch the typos."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('443f2682-46b1-5747-a7d9-0ac77b6502b0', '784de1be-7193-5861-a9b8-1b294be5b600', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"punctuation","explanation":"The complete sentence is “Spelling and punctuation are checked last.”.","hint_prefix":"pu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Spelling and ___ are checked last."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fb894bc-a9a6-5cc9-99bc-38f14b0e1140', '784de1be-7193-5861-a9b8-1b294be5b600', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"word limit","id":"V1","text":"word limit"},{"audio_text":"to cut out","id":"V2","text":"to cut out"},{"audio_text":"redundant","id":"V3","text":"redundant"},{"audio_text":"to prioritise","id":"V4","text":"to prioritise"},{"audio_text":"checking stage","id":"V5","text":"checking stage"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d5c3408-709a-5a1f-8de8-4053c064c9e1', '784de1be-7193-5861-a9b8-1b294be5b600', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I never have time to check my writing."}],"explanation":"“Write shorter — if the draft is tight, the checking stage will fit in two minutes.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Write shorter — if the draft is tight, the checking stage will fit in two minutes."},{"id":"C_B","is_correct":false,"text":"I checked it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The writing is timing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('07f49bd1-9d43-514d-a0c4-d5a884c17c30', '784de1be-7193-5861-a9b8-1b294be5b600', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8da6dc30-debc-578d-94df-6179048de41e', 'en', 'salutation', 'обращение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('62ab3597-8c72-53f2-a151-62560b634407', 'en', 'reason for writing', 'причина письма', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d6bd672-0183-54c9-953e-033f2fe8a2e6', 'en', 'to attach', 'приложить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e957dd71-baea-527b-91de-cd2f3e93c4f4', 'en', 'sign-off', 'заключительная формула', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba89ecdc-5ed2-5063-9266-6d24efdf6b38', 'en', 'word count', 'количество слов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('412698e6-5d47-5a52-a491-900dd39a7ba9', 'en', 'formal register', 'официальный стиль', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ebb2a56-2863-5bd4-accc-c5952bc29455', 'en', 'to proofread', 'вычитать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c01f4dac-0cae-5ee6-a502-c72223d9f356', 'en', 'informal email', 'неофициальное письмо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1581b8b-de68-55db-8a2b-3fdc8d45a9b1', 'en', 'formal email', 'официальное письмо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('529f6604-4b98-522d-93cb-1b2679f26294', 'en', 'shorter', 'короче', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b77e5af3-65b9-5f02-910b-fe6c644c6490', 'en', 'contractions', 'сокращения (don''t, I''m)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d43c135c-09f6-5fb1-bd4c-666a1ed034d7', 'en', 'to organise into paragraphs', 'разбить на абзацы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1fafc5b0-e702-56e7-a461-e48784fa37dd', 'en', 'flow', 'связность (текста)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d2fe04ad-8a09-5b1e-8b25-43e5bdcfe217', 'en', 'to keep to the limit', 'уложиться в лимит', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f6307d4-31d3-5932-a0b3-569ea6603290', 'en', 'word limit', 'лимит слов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6842c3e8-bbc2-5c1d-8347-f0ef029771dc', 'en', 'to cut out', 'вырезать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30e73453-4284-566a-a8f2-01caa20b4c93', 'en', 'redundant', 'избыточный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59ebe165-b87b-5b8e-adef-435ae752a117', 'en', 'to prioritise', 'расставить приоритеты', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04cba368-b573-535d-83c2-cb36b75ed259', 'en', 'checking stage', 'этап проверки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6865adbd-17b2-53f4-840e-2731c2d4b07d', 'en', 'spelling', 'орфография', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70976846-06cb-5f7f-942e-9b849ab1d97f', 'en', 'punctuation', 'пунктуация', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'salutation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'reason for writing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to attach' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'word count' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '2f5f34ab-868d-5daa-ab74-b859c06c0d63', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to proofread' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'informal email' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal email' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'shorter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contractions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to organise into paragraphs' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'flow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, 'd832d0d8-613a-59dd-9f91-4a2fd39abcfa', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to keep to the limit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '784de1be-7193-5861-a9b8-1b294be5b600', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'word limit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '784de1be-7193-5861-a9b8-1b294be5b600', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '784de1be-7193-5861-a9b8-1b294be5b600', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'redundant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '784de1be-7193-5861-a9b8-1b294be5b600', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prioritise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '784de1be-7193-5861-a9b8-1b294be5b600', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'checking stage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '784de1be-7193-5861-a9b8-1b294be5b600', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'spelling' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '07f49bd1-9d43-514d-a0c4-d5a884c17c30', id, '784de1be-7193-5861-a9b8-1b294be5b600', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'punctuation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
