-- Track: A2_BUSINESS_ENGLISH_EVERYDAY_BUSINESS_EMAILS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2da9be77-dff0-53e8-a2a5-23574fc38c83', 'A2_BUSINESS_ENGLISH_EVERYDAY_BUSINESS_EMAILS', 'Повседневная деловая переписка', 'Развивайте деловой английский уровня A2 по теме «Повседневная деловая переписка».', '{"en":"Everyday Business Emails","ru":"Повседневная деловая переписка"}'::jsonb, '{"en":"Develop A2 business English for everyday business emails.","ru":"Развивайте деловой английский уровня A2 по теме «Повседневная деловая переписка»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ff765aca-9643-50fe-bade-19d39487adf8', NULL, 'Письма на этой неделе', 'Рассказать о переписке, используя past simple и present perfect.', '{"en":"Emails This Week","ru":"Письма на этой неделе"}'::jsonb, '{"en":"Talk about email exchanges using past simple and present perfect.","ru":"Рассказать о переписке, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6414a97-9510-55fc-ac57-b842ad6330e3', 'ff765aca-9643-50fe-bade-19d39487adf8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"inbox","right":"входящие"},{"id":"P2","left":"to reply","right":"ответить"},{"id":"P3","left":"attachment","right":"вложение"},{"id":"P4","left":"to forward","right":"переслать"},{"id":"P5","left":"subject line","right":"тема письма"},{"id":"P6","left":"to attach","right":"приложить"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('328bec3a-6905-584b-90a9-4b6aa2350c85', 'ff765aca-9643-50fe-bade-19d39487adf8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have answered twenty emails so far today.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have answered twenty emails so far today."},{"id":"Q_B","is_correct":false,"text":"I have answered twenty emails yesterday."},{"id":"Q_C","is_correct":false,"text":"I answer twenty emails so far already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1806c055-f80a-541c-99f4-30ecf2f6e06f', 'ff765aca-9643-50fe-bade-19d39487adf8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I forwarded the email to the accounting department and attached the invoice.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я переслал письмо бухгалтерии и приложил счёт-фактуру.","target_language":"en","word_bank":["forwarded","invoice.","accounting","the","forwards","tomorrow","attached","email","department","the","to","and","did","I","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc1d2699-c161-5b64-b03f-834eb0151463', 'ff765aca-9643-50fe-bade-19d39487adf8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"add","instruction":"Выберите подходящее слово.","options":["add","has add","adding"],"sentence_template":"She forgot to ___ the attachment last Friday.","translation_hint":"В прошлую пятницу она забыла приложить вложение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d1c8bd4-9134-573f-9bad-0fc86387f2d1', 'ff765aca-9643-50fe-bade-19d39487adf8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","has","already","replied","to","the","most","important","message."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["important","was","to","replied","most","has","message.","the","did","He","already"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e547768c-ed33-573b-8c1a-5ce4a432efe3', 'ff765aca-9643-50fe-bade-19d39487adf8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have checked my inbox twice this morning, and the contract has not arrived yet.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa2e2ba8-8ab1-5937-8f1c-49f6612a9ec9', 'ff765aca-9643-50fe-bade-19d39487adf8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have checked my inbox twice this morning, and the contract has not arrived yet.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я проверял входящие дважды сегодня утром, а контракт всё ещё не пришёл."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0faa5420-84c0-5009-be29-6baec359d8d5', 'ff765aca-9643-50fe-bade-19d39487adf8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Client","text":"Your email arrived, but there is no attachment.","translation":"Ваше письмо пришло, но вложения нет.","type":"dialogue"},{"character":"Anna","text":"You are right — I forgot it. I''m very sorry.","translation":"Вы правы — я забыла его. Очень извиняюсь.","type":"dialogue"},{"options":[{"is_correct":true,"text":"She has just sent the file again with an apology."},{"is_correct":false,"text":"She sends it yesterday again tomorrow."},{"is_correct":false,"text":"The attachment is emailing itself."}],"text":"What does Anna do next?","type":"choice"}],"title":"The Missing Attachment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b2d2907-0029-5338-9754-8730cb8d8448', 'ff765aca-9643-50fe-bade-19d39487adf8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to forward” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To send an email you received to another person"},{"id":"D_B","is_correct":false,"text":"To delete an email from the inbox"},{"id":"D_C","is_correct":false,"text":"To print an email on paper"}],"word":"to forward"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('439075ab-ae1b-5d0c-95ab-d2a6b8408683', 'ff765aca-9643-50fe-bade-19d39487adf8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have attached the invoice to the email.","explanation":"The missing word is “attached”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"attached","id":"LW_A","is_correct":true},{"audio_text":"attach","id":"LW_B","is_correct":false},{"audio_text":"attaching","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the invoice to the email."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7fa612d-77c1-5aa4-ba7a-34c511e89c79', 'ff765aca-9643-50fe-bade-19d39487adf8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"line","explanation":"The complete sentence is “Please write a clear subject line .”.","hint_prefix":"li","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please write a clear subject ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1efca6d-745d-51e5-9162-16faf4ef08fa', 'ff765aca-9643-50fe-bade-19d39487adf8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"inbox","id":"V1","text":"inbox"},{"audio_text":"to reply","id":"V2","text":"to reply"},{"audio_text":"attachment","id":"V3","text":"attachment"},{"audio_text":"to forward","id":"V4","text":"to forward"},{"audio_text":"subject line","id":"V5","text":"subject line"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5c73a10-ebaf-51a9-bb9c-2102d7ad861a', 'ff765aca-9643-50fe-bade-19d39487adf8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did you see the client''s email?"}],"explanation":"“Yes, I replied this morning and have forwarded it to the manager.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, I replied this morning and have forwarded it to the manager."},{"id":"C_B","is_correct":false,"text":"Yes, I reply it tomorrow."},{"id":"C_C","is_correct":false,"text":"The email is seeing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2da9be77-dff0-53e8-a2a5-23574fc38c83', 'ff765aca-9643-50fe-bade-19d39487adf8', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('64d56585-7ee6-5fef-b185-19e119a8a036', NULL, 'Пишем письмо-запрос', 'Составить вежливый запрос и сравнить формулировки.', '{"en":"Writing a Request Email","ru":"Пишем письмо-запрос"}'::jsonb, '{"en":"Write a polite request and compare wording options.","ru":"Составить вежливый запрос и сравнить формулировки."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('946f8c33-b506-5e3f-ba73-ea2889242c83', '64d56585-7ee6-5fef-b185-19e119a8a036', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"polite","right":"вежливый"},{"id":"P2","left":"formal","right":"официальный"},{"id":"P3","left":"more direct","right":"прямее"},{"id":"P4","left":"to request","right":"запросить"},{"id":"P5","left":"regarding","right":"касательно"},{"id":"P6","left":"to follow up","right":"напомнить о себе письмом"},{"id":"P7","left":"short","right":"короткий"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfc10bbf-4681-5d50-884a-11b0c1468605', '64d56585-7ee6-5fef-b185-19e119a8a036', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Request: new price list for 2026”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Request: new price list for 2026"},{"id":"Q_B","is_correct":false,"text":"Hello!"},{"id":"Q_C","is_correct":false,"text":"Very important, open now!!!"}],"question":"Which subject line is the clearest?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b499ef35-cc25-5da8-b445-d83c3799ccbe', '64d56585-7ee6-5fef-b185-19e119a8a036', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you please send the updated price list regarding our contract?","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Не могли бы вы прислать обновлённый прайс-лист касательно нашего контракта?","target_language":"en","word_bank":["regarding","price","Could","send","our","the","you","yesterday","updated","list","can","did","contract?","please"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a14681e-cb6e-5f1e-abf3-6862b1c1ce73', '64d56585-7ee6-5fef-b185-19e119a8a036', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"A formal email is ___ appropriate for a first contact than a short chat message.","translation_hint":"Официальное письмо уместнее для первого контакта, чем короткое сообщение в чате."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('646bac0e-0b70-5e16-9925-3547ea023f4c', '64d56585-7ee6-5fef-b185-19e119a8a036', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","write","a","short","email","with","one","clear","question."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["to","email","am","short","with","I","clear","question.","one","going","did","a","was","write"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3068d89c-5996-550b-9498-d38e5e554253', '64d56585-7ee6-5fef-b185-19e119a8a036', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you put the main question in the first line, the reader will answer faster.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4c9b04e-fbe0-55ed-9418-58fe8e7b307d', '64d56585-7ee6-5fef-b185-19e119a8a036', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you put the main question in the first line, the reader will answer faster.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если поставить главный вопрос в первую строку, читатель ответит быстрее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec5c0cd3-867f-5a7b-8414-f64e49a01cc7', '64d56585-7ee6-5fef-b185-19e119a8a036', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"I sent the request five minutes ago and got an answer already!","translation":"Я отправил запрос пять минут назад и уже получил ответ!","type":"dialogue"},{"character":"Anna","text":"That''s unusually fast. What did you write in the subject line?","translation":"Это необычно быстро. Что ты написал в теме письма?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I wrote one clear question: ''Invoice number for order 415?''"},{"is_correct":false,"text":"I wrote ''Hello'' and attached three documents."},{"is_correct":false,"text":"The subject line answered me itself."}],"text":"What does Tom say?","type":"choice"}],"title":"The Rushed Email"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed261d95-449d-5c63-90ce-903b819a3597', '64d56585-7ee6-5fef-b185-19e119a8a036', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“regarding” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"About or connected with a subject"},{"id":"D_B","is_correct":false,"text":"Before a deadline"},{"id":"D_C","is_correct":false,"text":"Instead of an attachment"}],"word":"regarding"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19ad9693-861a-5eea-91f7-2e1ae119ea90', '64d56585-7ee6-5fef-b185-19e119a8a036', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you complete the form by Friday?","explanation":"The missing word is “complete”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"complete","id":"LW_A","is_correct":true},{"audio_text":"completed","id":"LW_B","is_correct":false},{"audio_text":"completing","id":"LW_C","is_correct":false}],"sentence_template":"Could you ___ the form by Friday?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2b54288-aa11-5eba-a4ae-15ad6fb01d01', '64d56585-7ee6-5fef-b185-19e119a8a036', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “A short email is more effective than a long one.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A short email is ___ effective than a long one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('129f6060-ba16-5d5b-a4e1-f54bae340825', '64d56585-7ee6-5fef-b185-19e119a8a036', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"polite","id":"V1","text":"polite"},{"audio_text":"formal","id":"V2","text":"formal"},{"audio_text":"more direct","id":"V3","text":"more direct"},{"audio_text":"to request","id":"V4","text":"to request"},{"audio_text":"regarding","id":"V5","text":"regarding"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d030f81c-2bb6-51ba-8e9d-6bacb255d260', '64d56585-7ee6-5fef-b185-19e119a8a036', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should I start the email to the new client?"}],"explanation":"“Start formally — ''Dear Mr Brown'' is safer than ''Hi'' for a first contact.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Start formally — ''Dear Mr Brown'' is safer than ''Hi'' for a first contact."},{"id":"C_B","is_correct":false,"text":"I started it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The email is starting the client."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2da9be77-dff0-53e8-a2a5-23574fc38c83', '64d56585-7ee6-5fef-b185-19e119a8a036', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('76d450fa-a349-574f-8478-669be6eea0e9', NULL, 'Если письмо не понятно', 'Уточнить письмо, используя should и первое условное.', '{"en":"When an Email Is Unclear","ru":"Если письмо не понятно"}'::jsonb, '{"en":"Clarify an email using should and the first conditional.","ru":"Уточнить письмо, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71b862cb-2859-5777-b6f9-20fb3082faa8', '76d450fa-a349-574f-8478-669be6eea0e9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"unclear","right":"неясный"},{"id":"P2","left":"to rewrite","right":"переписать"},{"id":"P3","left":"shorter","right":"короче"},{"id":"P4","left":"bulleted list","right":"маркированный список"},{"id":"P5","left":"to misunderstand","right":"неверно понять"},{"id":"P6","left":"simple","right":"простой"},{"id":"P7","left":"to proofread","right":"вычитать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31aaa9a0-165e-5033-9303-aa82e8f0e58f', '76d450fa-a349-574f-8478-669be6eea0e9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should proofread the email before you send it.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should proofread the email before you send it."},{"id":"Q_B","is_correct":false,"text":"You should to proofread it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must proofreading it last night."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58bcbf20-75fb-5b49-80b9-dcd01a44bc4f', '76d450fa-a349-574f-8478-669be6eea0e9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If an email is unclear, the reader will spend twice as much time.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если письмо непонятное, читатель потратит вдвое больше времени.","target_language":"en","word_bank":["did","If","an","was","much","spend","as","time.","will","twice","the","yesterday","reader","is","unclear,","email"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('480ae903-0377-5cef-bfe6-8a4d9a87f522', '76d450fa-a349-574f-8478-669be6eea0e9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"divide","instruction":"Выберите подходящее слово.","options":["divide","will divide","divided"],"sentence_template":"If you ___ the email into short paragraphs, it will be easier to read.","translation_hint":"Если разбить письмо на короткие абзацы, его будет легче читать."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b327efc-a14a-5c84-acc9-75c952ab22fa', '76d450fa-a349-574f-8478-669be6eea0e9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","use","a","bulleted","list","for","three","or","more","items."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["went","three","items.","more","for","use","should","a","bulleted","You","or","mustn''t","list"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddc434bc-f329-58c8-b727-1551da1eaa34', '76d450fa-a349-574f-8478-669be6eea0e9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you rewrite the message in simpler words, the client will not misunderstand you.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e8e5e0a-d905-5241-bc2f-a70cdaf0d388', '76d450fa-a349-574f-8478-669be6eea0e9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you rewrite the message in simpler words, the client will not misunderstand you.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если переписать сообщение более простыми словами, клиент вас не поймёт неверно."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80a48b00-a43c-5bf1-a67b-8972a564efe2', '76d450fa-a349-574f-8478-669be6eea0e9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I have read the client''s reply three times, and it is still unclear.","translation":"Я трижды прочитала ответ клиента, и он всё ещё неясен.","type":"dialogue"},{"character":"Tom","text":"What should we do — guess or ask?","translation":"Что делать — догадаться или спросить?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should ask one short clarifying question today."},{"is_correct":false,"text":"We should guessing until tomorrow."},{"is_correct":false,"text":"The reply is reading us three times."}],"text":"What is the better decision?","type":"choice"}],"title":"The Confusing Reply"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2decaea9-ac7c-53a4-b90d-becb8af348e1', '76d450fa-a349-574f-8478-669be6eea0e9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to proofread” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To read a text again to find mistakes"},{"id":"D_B","is_correct":false,"text":"To translate an email into another language"},{"id":"D_C","is_correct":false,"text":"To send an email to a big group"}],"word":"to proofread"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('760a1b40-47eb-5005-92eb-5b8b237efb34', '76d450fa-a349-574f-8478-669be6eea0e9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you proofread the email, you will find the typo.","explanation":"The missing word is “proofread”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"proofread","id":"LW_A","is_correct":true},{"audio_text":"will proofread","id":"LW_B","is_correct":false},{"audio_text":"proofreaded","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the email, you will find the typo."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12a56f03-31c6-5c08-824a-ad4f3f64af46', '76d450fa-a349-574f-8478-669be6eea0e9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"easier","explanation":"The complete sentence is “Shorter sentences are easier to understand.”.","hint_prefix":"ea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Shorter sentences are ___ to understand."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ff0af64-65fb-50dc-ad9a-6ffa93ad6ac8', '76d450fa-a349-574f-8478-669be6eea0e9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"unclear","id":"V1","text":"unclear"},{"audio_text":"to rewrite","id":"V2","text":"to rewrite"},{"audio_text":"shorter","id":"V3","text":"shorter"},{"audio_text":"bulleted list","id":"V4","text":"bulleted list"},{"audio_text":"to misunderstand","id":"V5","text":"to misunderstand"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d2fa0cd-50ee-5ac7-b3d7-d5b162e6220d', '76d450fa-a349-574f-8478-669be6eea0e9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The client misunderstood my last email."}],"explanation":"“Next time you should use a bulleted list — if the points are numbered, nothing will be lost.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Next time you should use a bulleted list — if the points are numbered, nothing will be lost."},{"id":"C_B","is_correct":false,"text":"I used it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The email is misunderstanding the client."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2da9be77-dff0-53e8-a2a5-23574fc38c83', '76d450fa-a349-574f-8478-669be6eea0e9', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5ea1f95-e45e-5a9f-aaa6-c53b45c66a60', 'en', 'inbox', 'входящие', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a484191-8ba7-59d3-a40c-bad21a50896b', 'en', 'to reply', 'ответить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0fe26307-8371-51f1-8414-74e74af495c2', 'en', 'attachment', 'вложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b70d4714-df4f-5494-95fd-2ae1cd59937f', 'en', 'to forward', 'переслать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70cc97ad-4d17-5315-ba41-9a4bab766ec5', 'en', 'subject line', 'тема письма', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d6bd672-0183-54c9-953e-033f2fe8a2e6', 'en', 'to attach', 'приложить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d444b15-a6e2-561a-87a1-404b86fed95d', 'en', 'polite', 'вежливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5cfe3e7-26f5-5bb3-85b9-89836887f30e', 'en', 'formal', 'официальный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('846dbee1-5d2e-56fd-b10f-d9537a365857', 'en', 'more direct', 'прямее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('019a499c-b4e6-5a53-a7d5-d23230489efe', 'en', 'to request', 'запросить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b3b73bb-5121-5286-b0e4-14c4a6adb9b8', 'en', 'regarding', 'касательно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a9c79db-0c31-561c-b419-bd95120840e5', 'en', 'to follow up', 'напомнить о себе письмом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c06f8a68-5f8f-5681-9f5a-a019c3a927db', 'en', 'short', 'короткий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d3dcb385-379e-5c58-9ef5-2b7efc4cd085', 'en', 'unclear', 'неясный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f06840b5-3f49-52c3-bd15-7c198b9cf60a', 'en', 'to rewrite', 'переписать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('529f6604-4b98-522d-93cb-1b2679f26294', 'en', 'shorter', 'короче', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1df6c607-9e6b-5886-845e-852f1d46947d', 'en', 'bulleted list', 'маркированный список', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41554601-092a-5e2d-8f89-e16c17dd6a9d', 'en', 'to misunderstand', 'неверно понять', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4c5e48e-94cb-5d66-89e6-aa48cf5f3fd6', 'en', 'simple', 'простой', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ebb2a56-2863-5bd4-accc-c5952bc29455', 'en', 'to proofread', 'вычитать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, 'ff765aca-9643-50fe-bade-19d39487adf8', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'inbox' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, 'ff765aca-9643-50fe-bade-19d39487adf8', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to reply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, 'ff765aca-9643-50fe-bade-19d39487adf8', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'attachment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, 'ff765aca-9643-50fe-bade-19d39487adf8', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to forward' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, 'ff765aca-9643-50fe-bade-19d39487adf8', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, 'ff765aca-9643-50fe-bade-19d39487adf8', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to attach' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, 'ff765aca-9643-50fe-bade-19d39487adf8', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '64d56585-7ee6-5fef-b185-19e119a8a036', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'polite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '64d56585-7ee6-5fef-b185-19e119a8a036', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '64d56585-7ee6-5fef-b185-19e119a8a036', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more direct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '64d56585-7ee6-5fef-b185-19e119a8a036', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '64d56585-7ee6-5fef-b185-19e119a8a036', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'regarding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '64d56585-7ee6-5fef-b185-19e119a8a036', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to follow up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '64d56585-7ee6-5fef-b185-19e119a8a036', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'short' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '76d450fa-a349-574f-8478-669be6eea0e9', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'unclear' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '76d450fa-a349-574f-8478-669be6eea0e9', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to rewrite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '76d450fa-a349-574f-8478-669be6eea0e9', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'shorter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '76d450fa-a349-574f-8478-669be6eea0e9', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'bulleted list' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '76d450fa-a349-574f-8478-669be6eea0e9', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to misunderstand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '76d450fa-a349-574f-8478-669be6eea0e9', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'simple' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2da9be77-dff0-53e8-a2a5-23574fc38c83', id, '76d450fa-a349-574f-8478-669be6eea0e9', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to proofread' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
