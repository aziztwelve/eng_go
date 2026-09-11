-- Track: B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', 'B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH', 'Телефонные разговоры, сообщения и связная речь', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Телефонные разговоры, сообщения и связная речь».', '{"en":"Phone Calls, Messages and Connected Speech","ru":"Телефонные разговоры, сообщения и связная речь"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for phone calls, messages and connected speech.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Телефонные разговоры, сообщения и связная речь»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Detailed Phone Calls","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d61029f-a022-5017-80ec-ea907e382b59', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N01","left":"voicemail","right":"голосовое сообщение"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N02","left":"line broke up","right":"связь прерывалась"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N03","left":"confirm details","right":"подтвердить детали"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N04","left":"call back","right":"перезвонить"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N05","left":"stress","right":"ударение"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N06","left":"linking","right":"связывание звуков"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N07","left":"tone","right":"тон"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ac335f3-be20-5bc5-9b7e-dc9c906820f8', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N08","is_correct":true,"text":"The line broke up while she was confirming the details, so I asked her to call back."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d047ce25-20a5-55fd-b0f8-c2ad2ff959b2', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The line broke up while she was confirming the details, so I asked her to call back.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Связь прерывалась, пока она подтверждала детали, поэтому я попросил её перезвонить.","target_language":"en","word_bank":["The","line","broke","up","while","she","was","confirming","the","details,","so","I","asked","her","to","call","back."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('498c7ba0-f48a-5fc3-812e-d0d699c8967e', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"voicemail","instruction":"Выберите подходящее слово.","options":["voicemail","call back","linking"],"sentence_template":"The line broke up while she was confirming the details, so I asked her to call back."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36b56263-cdb0-50e1-a2b0-c5d61d09dbf4', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","line","broke","up","while","she","was","confirming","the","details,","so","I","asked","her","to","call","back."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["back.","call","to","her","asked","I","so","details,","the","confirming","was","she","while","up","broke","line","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('779172b7-e6ed-5b8f-aea7-d1a8aeaff411', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The line broke up while she was confirming the details, so I asked her to call back. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15e0bbf6-2c61-5dc1-b366-9c720528917b', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The line broke up while she was confirming the details, so I asked her to call back. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Связь прерывалась, пока она подтверждала детали, поэтому я попросил её перезвонить. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ad9d1d3-2f17-518f-909e-e10b7da9a767', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The line broke up while she was confirming the details, so I asked her to call back.","translation":"Связь прерывалась, пока она подтверждала детали, поэтому я попросил её перезвонить.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Detailed Phone Calls"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a15bebbe-abd2-5772-ba0e-3cf22110f95d', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“voicemail” means a recorded telephone message.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N11","is_correct":true,"text":"a recorded telephone message"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N12","is_correct":false,"text":"the telephone connection became unclear"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N13","is_correct":false,"text":"check information is correct"}],"word":"voicemail"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1c60c80-c609-5f5e-a0f9-0ffd50c5b1f4', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The line broke up while she was confirming the details, so I asked her to call back.","explanation":"The missing expression is “voicemail”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"voicemail","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N14","is_correct":true},{"audio_text":"confirm details","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N15","is_correct":false},{"audio_text":"stress","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N16","is_correct":false}],"sentence_template":"The line broke up while she was confirming the details, so I asked her to call back."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4170a894-1809-58fb-8a21-01a7d1cdbd65', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"voicemail","explanation":"The recording uses “voicemail” in this position.","hint_prefix":"voi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The line broke up while she was confirming the details, so I asked her to call back."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3222988a-a8de-5a92-8bd6-39d523b3d61e', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"voicemail","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N17","text":"voicemail"},{"audio_text":"line broke up","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N18","text":"line broke up"},{"audio_text":"confirm details","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N19","text":"confirm details"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aceda9b4-8ac9-5f6e-bf53-669d094d5257', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N20","is_correct":true,"text":"The line broke up while she was confirming the details, so I asked her to call back."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bb63c452-3d71-58d4-969d-d05ec1c0171a', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Voice Messages","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfc1fe62-ebe9-5ce1-94f3-789c9c489e40', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N01","left":"voicemail","right":"голосовое сообщение"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N02","left":"line broke up","right":"связь прерывалась"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N03","left":"confirm details","right":"подтвердить детали"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N04","left":"call back","right":"перезвонить"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N05","left":"stress","right":"ударение"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N06","left":"linking","right":"связывание звуков"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N07","left":"tone","right":"тон"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abba2ce2-fb4d-591b-9858-f5959c3c4aa0', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N08","is_correct":true,"text":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5529307-cc71-5ad9-942b-5c425e47af92', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Его голосовое сообщение звучало срочно, потому что ударение падало на срок, а не на саму встречу.","target_language":"en","word_bank":["His","voicemail","sounded","urgent","because","the","stress","fell","on","the","deadline","rather","than","the","meeting","itself."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1e48e38-48a3-55ab-9d5a-1b3c0c790d3f', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"line broke up","instruction":"Выберите подходящее слово.","options":["line broke up","stress","tone"],"sentence_template":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c5e7e98-ab18-53bf-81d4-c0f9c92d3c27', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["His","voicemail","sounded","urgent","because","the","stress","fell","on","the","deadline","rather","than","the","meeting","itself."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["itself.","meeting","the","than","rather","deadline","the","on","fell","stress","the","because","urgent","sounded","voicemail","His"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9aa8988-6440-5358-9cfe-d454732044ec', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b1d858a-8766-52c1-b1ed-43327672074d', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Его голосовое сообщение звучало срочно, потому что ударение падало на срок, а не на саму встречу. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fc9e26a-e5cf-5ed7-9214-f0103bf293bc', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself.","translation":"Его голосовое сообщение звучало срочно, потому что ударение падало на срок, а не на саму встречу.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Voice Messages"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7de3e83-19f9-5d5a-b037-37028d662e7d', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“line broke up” means the telephone connection became unclear.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N11","is_correct":true,"text":"the telephone connection became unclear"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N12","is_correct":false,"text":"check information is correct"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N13","is_correct":false,"text":"telephone someone again"}],"word":"line broke up"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54f3c4c0-5056-5575-b79d-4c9bf27c7f10', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself.","explanation":"The missing expression is “line broke up”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"line broke up","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N14","is_correct":true},{"audio_text":"call back","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N15","is_correct":false},{"audio_text":"linking","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N16","is_correct":false}],"sentence_template":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86bf73df-f799-5f7f-be9d-1d1886bd655c', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"line broke up","explanation":"The recording uses “line broke up” in this position.","hint_prefix":"lin","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ce50f07-bb9c-5b5e-8dee-6af70739c10f', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"voicemail","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N17","text":"voicemail"},{"audio_text":"line broke up","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N18","text":"line broke up"},{"audio_text":"confirm details","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N19","text":"confirm details"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8cae685c-91c0-51b4-bae7-71f0a245a1ed', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N20","is_correct":true,"text":"His voicemail sounded urgent because the stress fell on the deadline rather than the meeting itself."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bc95cf64-226f-55a3-bf34-7e8d78eb28de', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Rhythm Stress and Linking","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a468d106-f051-57ad-ae3b-d83efd5d53a0', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N01","left":"voicemail","right":"голосовое сообщение"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N02","left":"line broke up","right":"связь прерывалась"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N03","left":"confirm details","right":"подтвердить детали"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N04","left":"call back","right":"перезвонить"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N05","left":"stress","right":"ударение"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N06","left":"linking","right":"связывание звуков"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N07","left":"tone","right":"тон"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c74abeae-f14b-59d5-a15e-e51d2d42360f', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N08","is_correct":true,"text":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38f6db2a-c384-5480-b095-e09eeddb5b4f', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Распознавание связывания звуков и тона облегчает понимание связной речи, даже когда отдельные слова сокращаются.","target_language":"en","word_bank":["Recognising","linking","and","tone","makes","connected","speech","easier","to","follow,","even","when","individual","words","are","reduced."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71d1bab4-65f3-5e5e-a83c-cbbaa7fb616c', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"confirm details","instruction":"Выберите подходящее слово.","options":["confirm details","linking","voicemail"],"sentence_template":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84fb9668-ba36-567e-bd38-077191712173', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Recognising","linking","and","tone","makes","connected","speech","easier","to","follow,","even","when","individual","words","are","reduced."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["reduced.","are","words","individual","when","even","follow,","to","easier","speech","connected","makes","tone","and","linking","Recognising"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc0c0d50-8b39-5cf1-936f-3952c3a5aae4', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bbb0704-caab-5287-a62c-b12c3bcdfbb5', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Распознавание связывания звуков и тона облегчает понимание связной речи, даже когда отдельные слова сокращаются. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89d121de-2d72-593a-b4ea-81eab2e92556', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced.","translation":"Распознавание связывания звуков и тона облегчает понимание связной речи, даже когда отдельные слова сокращаются.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Rhythm Stress and Linking"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59541e0f-f063-5290-9f57-a8dfcf9c77f1', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“confirm details” means check information is correct.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N11","is_correct":true,"text":"check information is correct"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N12","is_correct":false,"text":"telephone someone again"},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N13","is_correct":false,"text":"emphasis placed on a word"}],"word":"confirm details"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d2c3d4d-9d5b-59ed-b1b0-ae8fb25c2a9f', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced.","explanation":"The missing expression is “confirm details”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"confirm details","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N14","is_correct":true},{"audio_text":"stress","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N15","is_correct":false},{"audio_text":"tone","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N16","is_correct":false}],"sentence_template":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1567d136-36a8-5999-94b1-b4e031afb2b8', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"confirm details","explanation":"The recording uses “confirm details” in this position.","hint_prefix":"con","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb7fe17c-b96f-5e5f-b952-1b798575fe9f', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"voicemail","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N17","text":"voicemail"},{"audio_text":"line broke up","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N18","text":"line broke up"},{"audio_text":"confirm details","id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N19","text":"confirm details"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c675010c-aaaa-5a62-92c3-32fa45a9e94e', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N20","is_correct":true,"text":"Recognising linking and tone makes connected speech easier to follow, even when individual words are reduced."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_PHONE_CALLS_MESSAGES_AND_CONNECTED_SPEECH_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9394030c-a6e0-5fd8-97d6-c2234de86a6f', 'en', 'voicemail', 'голосовое сообщение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('51cea47a-6c9a-5814-8c60-08b9ef6bea89', 'en', 'line broke up', 'связь прерывалась', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a3fa3542-b7eb-5454-9258-690062cb390a', 'en', 'confirm details', 'подтвердить детали', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('917acfcd-7456-5cb8-812a-86992013f465', 'en', 'call back', 'перезвонить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c163f4e-4ee2-5ee4-b8f8-e15a6a56c261', 'en', 'stress', 'ударение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d296cedd-5d59-5275-b4d8-4da00c12f257', 'en', 'linking', 'связывание звуков', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('041bb7b0-8bab-52e3-933f-9d8790b555df', 'en', 'tone', 'тон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9394030c-a6e0-5fd8-97d6-c2234de86a6f', 'en', 'voicemail', 'голосовое сообщение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('51cea47a-6c9a-5814-8c60-08b9ef6bea89', 'en', 'line broke up', 'связь прерывалась', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a3fa3542-b7eb-5454-9258-690062cb390a', 'en', 'confirm details', 'подтвердить детали', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('917acfcd-7456-5cb8-812a-86992013f465', 'en', 'call back', 'перезвонить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c163f4e-4ee2-5ee4-b8f8-e15a6a56c261', 'en', 'stress', 'ударение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d296cedd-5d59-5275-b4d8-4da00c12f257', 'en', 'linking', 'связывание звуков', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('041bb7b0-8bab-52e3-933f-9d8790b555df', 'en', 'tone', 'тон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9394030c-a6e0-5fd8-97d6-c2234de86a6f', 'en', 'voicemail', 'голосовое сообщение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('51cea47a-6c9a-5814-8c60-08b9ef6bea89', 'en', 'line broke up', 'связь прерывалась', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a3fa3542-b7eb-5454-9258-690062cb390a', 'en', 'confirm details', 'подтвердить детали', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('917acfcd-7456-5cb8-812a-86992013f465', 'en', 'call back', 'перезвонить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c163f4e-4ee2-5ee4-b8f8-e15a6a56c261', 'en', 'stress', 'ударение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d296cedd-5d59-5275-b4d8-4da00c12f257', 'en', 'linking', 'связывание звуков', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('041bb7b0-8bab-52e3-933f-9d8790b555df', 'en', 'tone', 'тон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'voicemail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'line broke up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm details' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'call back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, '1e9d5ea0-3b99-5101-8bb3-0533b64c3eb3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'tone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'voicemail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'line broke up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm details' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'call back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bb63c452-3d71-58d4-969d-d05ec1c0171a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'voicemail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'line broke up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm details' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'call back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1bb2ea8b-33fa-54a9-88af-7d11f8a10eda', id, 'bc95cf64-226f-55a3-bf34-7e8d78eb28de', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
