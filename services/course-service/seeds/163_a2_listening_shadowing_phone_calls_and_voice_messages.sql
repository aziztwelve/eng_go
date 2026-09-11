-- Track: A2_LISTENING_SHADOWING_PHONE_CALLS_AND_VOICE_MESSAGES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('51967c95-2aa3-50f3-85bf-39bcf94e1b78', 'A2_LISTENING_SHADOWING_PHONE_CALLS_AND_VOICE_MESSAGES', 'Телефонные разговоры и голосовые сообщения', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Телефонные разговоры и голосовые сообщения».', '{"en":"Phone Calls and Voice Messages","ru":"Телефонные разговоры и голосовые сообщения"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for phone calls and voice messages.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Телефонные разговоры и голосовые сообщения»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', NULL, 'Голосовые на этой неделе', 'Понимать голосовые сообщения, используя past simple и present perfect.', '{"en":"Voice Messages This Week","ru":"Голосовые на этой неделе"}'::jsonb, '{"en":"Understand voice messages using past simple and present perfect.","ru":"Понимать голосовые сообщения, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24ccaab6-2fac-58e6-8363-9d0444fdd462', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to call back","right":"перезвонить"},{"id":"P2","left":"signal","right":"сигнал (связи)"},{"id":"P3","left":"to cut off","right":"оборваться (о связи)"},{"id":"P4","left":"voicemail","right":"голосовая почта"},{"id":"P5","left":"battery","right":"батарея"},{"id":"P6","left":"to hang up","right":"положить трубку"},{"id":"P7","left":"missed call","right":"пропущенный звонок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c413f1a8-fadf-5a06-ac1d-6cdc04485523', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The signal has cut off three times during our call.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The signal has cut off three times during our call."},{"id":"Q_B","is_correct":false,"text":"The signal has cut off yesterday three times."},{"id":"Q_C","is_correct":false,"text":"The signal cut off already now three times."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0acc3864-f9a7-5ec9-a555-ed68b3cdb74f', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I left a voicemail because your phone had run out of battery.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я оставил голосовое, потому что у тебя разрядился телефон.","target_language":"en","word_bank":["I","of","tomorrow","run","your","leave","battery.","out","had","a","voicemail","did","because","phone","left"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc259fb4-f640-562a-9522-cba3251532cf', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hang up","instruction":"Выберите подходящее слово.","options":["hang up","hangs up","hanging up"],"sentence_template":"Sorry, I have to ___ — someone is at the door.","translation_hint":"Извини, мне нужно положить трубку — кто-то у двери."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b550e947-0951-572d-b130-0db0acbd1a1f', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","sent","three","voice","messages","this","morning."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","voice","did","sent","was","She","messages","three","this","morning."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcf6df59-35eb-5c35-b8fa-1ced1a4840ea', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Hi! You have three missed calls from me — my battery died, so call back when you can, and do not hang up too early!","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a2787c3-4ad7-5ebc-824b-11eeb9a8252e', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Hi! You have three missed calls from me — my battery died, so call back when you can, and do not hang up too early!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Привет! У тебя три пропущенных от меня — батарея села, так что перезвони, когда сможешь, и не сбрасывай сразу!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4a4f917-51d4-5600-8899-6f630839faff', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Hello? Hello? The signal is terrible here...","translation":"Алло? Алло? Здесь ужасный сигнал...","type":"dialogue"},{"character":"Voice 2","text":"I can barely hear you — you are cutting off.","translation":"Я тебя едва слышу — связь обрывается.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Let''s hang up and I will call you back from the landline."},{"is_correct":false,"text":"Let''s hang up it tomorrow yesterday."},{"is_correct":false,"text":"The signal is calling the landline back."}],"text":"What do they decide?","type":"choice"}],"title":"The Broken Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('803996c3-52f0-51f7-99a8-24c9140882a6', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“voicemail” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A recorded message left when someone does not answer"},{"id":"D_B","is_correct":false,"text":"A text message sent late at night"},{"id":"D_C","is_correct":false,"text":"A photo shared in a group chat"}],"word":"voicemail"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4cf7cec-d6ae-5528-89d4-7b8d50d68906', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have sent you a voice message.","explanation":"The missing word is “sent”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"sent","id":"LW_A","is_correct":true},{"audio_text":"send","id":"LW_B","is_correct":false},{"audio_text":"sending","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ you a voice message."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b86e3596-199b-58e1-b718-95bb8988d437', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"battery","explanation":"The complete sentence is “My phone has run out of battery .”.","hint_prefix":"ba","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My phone has run out of ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfe6717d-b6a6-5fa9-b788-bbfea232574e', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to call back","id":"V1","text":"to call back"},{"audio_text":"signal","id":"V2","text":"signal"},{"audio_text":"to cut off","id":"V3","text":"to cut off"},{"audio_text":"voicemail","id":"V4","text":"voicemail"},{"audio_text":"battery","id":"V5","text":"battery"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40ab00c4-1d66-50f3-ad21-ed44f179fa14', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Why didn''t you pick up?"}],"explanation":"“Sorry — I have been in the metro, and the signal cut off halfway.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Sorry — I have been in the metro, and the signal cut off halfway."},{"id":"C_B","is_correct":false,"text":"I picked it up yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The phone is picking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('51967c95-2aa3-50f3-85bf-39bcf94e1b78', '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5b05b567-8072-550f-8130-3040a7019a48', NULL, 'Звонок по делу', 'Понимать телефонные договорённости и сравнивать способы связи.', '{"en":"A Business-like Call","ru":"Звонок по делу"}'::jsonb, '{"en":"Understand phone arrangements and compare ways of communicating.","ru":"Понимать телефонные договорённости и сравнивать способы связи."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('221287ec-a864-51e9-8263-c6ada6cf91f3', '5b05b567-8072-550f-8130-3040a7019a48', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to confirm","right":"подтвердить"},{"id":"P2","left":"more convenient","right":"удобнее"},{"id":"P3","left":"to text","right":"написать SMS/в чат"},{"id":"P4","left":"reception","right":"приём (связи)"},{"id":"P5","left":"in writing","right":"в письменном виде"},{"id":"P6","left":"loud","right":"громкий"},{"id":"P7","left":"to arrange","right":"договориться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f471a9ad-b545-5e60-89e0-a40f4c57fb27', '5b05b567-8072-550f-8130-3040a7019a48', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Email is more convenient than a call for detailed information.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Email is more convenient than a call for detailed information."},{"id":"Q_B","is_correct":false,"text":"Email is convenienter than calls."},{"id":"Q_C","is_correct":false,"text":"Email is most convenient than a call."}],"question":"Which sentence compares communication ways correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50ea3029-08dc-579f-8c06-a6800176e803', '5b05b567-8072-550f-8130-3040a7019a48', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I will send the details by email — it is too loud for a phone call.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я отправлю детали письмом — по телефону слишком шумно.","target_language":"en","word_bank":["did","details","loud","sent","call.","is","the","—","send","yesterday","a","I","will","for","too","email","by","it","phone"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d947758-5d94-5a83-86a8-cc21e3d13e43', '5b05b567-8072-550f-8130-3040a7019a48', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"easier","instruction":"Выберите подходящее слово.","options":["easier","easiest","more easy"],"sentence_template":"Texting is ___ in a noisy place than calling.","translation_hint":"В шумном месте писать в чате легче, чем звонить."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('397736f7-29fb-5148-8ef5-d6a3de41e393', '5b05b567-8072-550f-8130-3040a7019a48', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Let","me","confirm","everything","in","writing","after","the","call."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["after","confirm","Let","did","was","me","the","in","call.","everything","writing"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4be6495-d51b-5810-a948-177dcaf76822', '5b05b567-8072-550f-8130-3040a7019a48', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If reception is bad at your place, we can arrange the details by text instead of a long call.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c61b2a80-ef86-5194-acd0-040c8e0c42dd', '5b05b567-8072-550f-8130-3040a7019a48', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If reception is bad at your place, we can arrange the details by text instead of a long call.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если у тебя плохой приём, договоримся о деталях в чате вместо долгого звонка."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df73bbe4-6a29-5ba9-be0a-78fcd0461045', '5b05b567-8072-550f-8130-3040a7019a48', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"So, the delivery is on Thursday between two and four, right?","translation":"Итак, доставка в четверг с двух до четырёх, верно?","type":"dialogue"},{"character":"Voice 2","text":"Exactly. Shall I confirm the time in writing?","translation":"Точно. Подтвердить время письменно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, please — a text is more convenient for me."},{"is_correct":false,"text":"Yes, you confirmed it yesterday tomorrow."},{"is_correct":false,"text":"The delivery is texting the time."}],"text":"What does Voice 1 answer?","type":"choice"}],"title":"Arranging by Phone"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d66f53f-40e7-50ba-ab49-c735ab822e9c', '5b05b567-8072-550f-8130-3040a7019a48', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reception” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"How well your phone receives a signal"},{"id":"D_B","is_correct":false,"text":"The place where you buy a new phone"},{"id":"D_C","is_correct":false,"text":"The sound your ringtone makes"}],"word":"reception"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d04a824-367b-559b-a6a8-0bcb0540183a', '5b05b567-8072-550f-8130-3040a7019a48', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I will confirm the time by text.","explanation":"The missing word is “confirm”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"confirm","id":"LW_A","is_correct":true},{"audio_text":"confirms","id":"LW_B","is_correct":false},{"audio_text":"confirming","id":"LW_C","is_correct":false}],"sentence_template":"I will ___ the time by text."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7dd27aad-12ef-5b4f-8e53-1e459745772c', '5b05b567-8072-550f-8130-3040a7019a48', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"clearer","explanation":"The complete sentence is “A quick text is clearer than voicemail.”.","hint_prefix":"cl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A quick text is ___ than voicemail."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9be41639-34c2-521c-93ec-3b3ebe0a4d95', '5b05b567-8072-550f-8130-3040a7019a48', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to confirm","id":"V1","text":"to confirm"},{"audio_text":"more convenient","id":"V2","text":"more convenient"},{"audio_text":"to text","id":"V3","text":"to text"},{"audio_text":"reception","id":"V4","text":"reception"},{"audio_text":"in writing","id":"V5","text":"in writing"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05d0d673-6205-5f4e-8a71-e2b6e80c5c4c', '5b05b567-8072-550f-8130-3040a7019a48', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Call me tonight to discuss it?"}],"explanation":"“Better in writing — if I text you, you will have all the addresses.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Better in writing — if I text you, you will have all the addresses."},{"id":"C_B","is_correct":false,"text":"I called you yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Tonight is calling me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('51967c95-2aa3-50f3-85bf-39bcf94e1b78', '5b05b567-8072-550f-8130-3040a7019a48', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('527b828c-3f7e-5707-9e71-c030f819a14f', NULL, 'Телефонный этикет', 'Понимать советы о телефонном общении, используя should и первое условное.', '{"en":"Phone Etiquette","ru":"Телефонный этикет"}'::jsonb, '{"en":"Understand phone etiquette advice using should and the first conditional.","ru":"Понимать советы о телефонном общении, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('327f411f-6915-5830-aa23-c4aee86993cb', '527b828c-3f7e-5707-9e71-c030f819a14f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to identify yourself","right":"назвать себя"},{"id":"P2","left":"bad connection","right":"плохая связь"},{"id":"P3","left":"to speak up","right":"говорить громче"},{"id":"P4","left":"polite","right":"вежливый"},{"id":"P5","left":"to disturb","right":"беспокоить"},{"id":"P6","left":"suitable time","right":"подходящее время"},{"id":"P7","left":"brief","right":"краткий"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a95fadee-51cc-5df1-ba4e-7dec713588f5', '527b828c-3f7e-5707-9e71-c030f819a14f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should state your name at the beginning of a business call.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should state your name at the beginning of a business call."},{"id":"Q_B","is_correct":false,"text":"You should to state it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must stating your name last call."}],"question":"Which sentence gives correct phone advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2b1eb94-efde-5572-93d0-9d1a7e6fb134', '527b828c-3f7e-5707-9e71-c030f819a14f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you call at an unsuitable time, you should apologise and ask when it is convenient.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если позвонишь в неподходящее время, попроси прощения и уточни, когда удобно.","target_language":"en","word_bank":["convenient.","If","should","and","ask","an","it","you","unsuitable","time,","you","call","yesterday","at","when","did","apologise","is","called"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5253a0c2-0b6b-5936-a5d5-7b45339279d0', '527b828c-3f7e-5707-9e71-c030f819a14f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"speak up","instruction":"Выберите подходящее слово.","options":["speak up","speaks up","speaking up"],"sentence_template":"If the person cannot hear you, ___ .","translation_hint":"Если человек тебя не слышит, говори громче."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1da0e8c-9990-5e4f-8819-dacafefb7782', '527b828c-3f7e-5707-9e71-c030f819a14f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","keep","business","calls","brief","and","polite."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["and","calls","brief","went","mustn''t","business","polite.","keep","should","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ffd7e94-2a1b-57b9-96e5-0f93b17a5088', '527b828c-3f7e-5707-9e71-c030f819a14f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you call someone new, you should identify yourself first — otherwise they will not know who is speaking.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c65558e6-2150-52b7-9f86-7348429b8844', '527b828c-3f7e-5707-9e71-c030f819a14f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you call someone new, you should identify yourself first — otherwise they will not know who is speaking.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если звонишь новому человеку, сначала стоит представиться — иначе собеседник не поймёт, с кем говорит."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('501c854a-4ce7-5436-904f-0ef90d4091e3', '527b828c-3f7e-5707-9e71-c030f819a14f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Hello, this is Marina from the clinic. Is this a suitable time to talk?","translation":"Здравствуйте, это Марина из клиники. Сейчас удобное время для разговора?","type":"dialogue"},{"character":"Voice 2","text":"I am driving — could you call back in half an hour?","translation":"Я за рулём — можно перезвонить через полчаса?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Of course, I will call at four — sorry to disturb you."},{"is_correct":false,"text":"I called you back yesterday tomorrow."},{"is_correct":false,"text":"The driving is calling the clinic."}],"text":"What does Marina answer?","type":"choice"}],"title":"The Wrong Moment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb83093a-8687-5d1e-92d8-7be5058a40ea', '527b828c-3f7e-5707-9e71-c030f819a14f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to disturb” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To interrupt someone, often at a bad moment"},{"id":"D_B","is_correct":false,"text":"To help someone remember a meeting"},{"id":"D_C","is_correct":false,"text":"To send a polite reminder by email"}],"word":"to disturb"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46b11ead-ab3f-5d5d-891d-acb6c16f8419', '527b828c-3f7e-5707-9e71-c030f819a14f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If it is urgent, speak up, please.","explanation":"The missing word is “speak”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"speak","id":"LW_A","is_correct":true},{"audio_text":"will speak","id":"LW_B","is_correct":false},{"audio_text":"spoke","id":"LW_C","is_correct":false}],"sentence_template":"If it is urgent, ___ up, please."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c77a26b6-5fb5-57b8-b85a-bd1ff14ff05c', '527b828c-3f7e-5707-9e71-c030f819a14f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"yourself","explanation":"The complete sentence is “You should identify yourself first.”.","hint_prefix":"you","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should identify ___ first."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13dad58e-a683-58aa-bbfb-b410b1531b54', '527b828c-3f7e-5707-9e71-c030f819a14f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to identify yourself","id":"V1","text":"to identify yourself"},{"audio_text":"bad connection","id":"V2","text":"bad connection"},{"audio_text":"to speak up","id":"V3","text":"to speak up"},{"audio_text":"polite","id":"V4","text":"polite"},{"audio_text":"to disturb","id":"V5","text":"to disturb"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e41fc300-1b9e-55aa-8570-f4314af91c57', '527b828c-3f7e-5707-9e71-c030f819a14f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"He never says his name when he calls."}],"explanation":"“Annoying — if he identified himself, I would not hang up on him.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Annoying — if he identified himself, I would not hang up on him."},{"id":"C_B","is_correct":false,"text":"He said it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"His name is calling me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('51967c95-2aa3-50f3-85bf-39bcf94e1b78', '527b828c-3f7e-5707-9e71-c030f819a14f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c12a75c3-b6f9-5b0c-9f5e-683338a3629c', 'en', 'to call back', 'перезвонить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('15aa959f-9f4c-50c6-aa85-2252e08b6741', 'en', 'signal', 'сигнал (связи)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('818e2f09-2388-52cf-85b7-01d78909d1fc', 'en', 'to cut off', 'оборваться (о связи)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9394030c-a6e0-5fd8-97d6-c2234de86a6f', 'en', 'voicemail', 'голосовая почта', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e474b7c-4f94-5d17-955e-cc497d311ac1', 'en', 'battery', 'батарея', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09e2d00e-c958-54d1-a229-99e7718a9164', 'en', 'to hang up', 'положить трубку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76697d11-45cf-5837-8528-305c02b6a4fb', 'en', 'missed call', 'пропущенный звонок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('479ada9b-5e03-574e-8749-5ae36cbb4e81', 'en', 'to confirm', 'подтвердить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d7bac6b-efc5-5994-a19a-98b6367b75f7', 'en', 'more convenient', 'удобнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f60bfff6-cd2d-5c37-8326-33c09d2b943f', 'en', 'to text', 'написать SMS/в чат', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc239625-9be5-54cd-a1c3-15c3a99f6539', 'en', 'reception', 'приём (связи)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4123f4d-1c57-598b-8d01-c01141690633', 'en', 'in writing', 'в письменном виде', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c30df822-a47b-5e5a-9775-9788a9ce46e9', 'en', 'loud', 'громкий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a97a3bec-8199-5231-9799-802e7e2c3511', 'en', 'to arrange', 'договориться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e1249d4d-72eb-5091-8f8b-91530cdbc4ce', 'en', 'to identify yourself', 'назвать себя', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c77e668c-7562-531f-a7d6-b634015debec', 'en', 'bad connection', 'плохая связь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c98a7e0a-b02d-5e0b-b706-a0af62a0842c', 'en', 'to speak up', 'говорить громче', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d444b15-a6e2-561a-87a1-404b86fed95d', 'en', 'polite', 'вежливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42e440ad-155d-50f2-b718-df2cc2e2c61e', 'en', 'to disturb', 'беспокоить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a7ec274-3a38-5390-8b82-659508ffaef5', 'en', 'suitable time', 'подходящее время', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4c8f3de2-01b0-5b3d-9006-5d9fe53a9487', 'en', 'brief', 'краткий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to call back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'signal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'voicemail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'battery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hang up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5bc69c2b-5622-5f85-a28d-9ba27d3f2ba9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'missed call' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5b05b567-8072-550f-8130-3040a7019a48', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5b05b567-8072-550f-8130-3040a7019a48', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more convenient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5b05b567-8072-550f-8130-3040a7019a48', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to text' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5b05b567-8072-550f-8130-3040a7019a48', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5b05b567-8072-550f-8130-3040a7019a48', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in writing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5b05b567-8072-550f-8130-3040a7019a48', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'loud' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '5b05b567-8072-550f-8130-3040a7019a48', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to arrange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '527b828c-3f7e-5707-9e71-c030f819a14f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to identify yourself' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '527b828c-3f7e-5707-9e71-c030f819a14f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'bad connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '527b828c-3f7e-5707-9e71-c030f819a14f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to speak up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '527b828c-3f7e-5707-9e71-c030f819a14f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'polite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '527b828c-3f7e-5707-9e71-c030f819a14f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to disturb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '527b828c-3f7e-5707-9e71-c030f819a14f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'suitable time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '51967c95-2aa3-50f3-85bf-39bcf94e1b78', id, '527b828c-3f7e-5707-9e71-c030f819a14f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'brief' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
