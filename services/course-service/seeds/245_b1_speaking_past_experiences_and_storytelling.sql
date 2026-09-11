-- Track: B1_SPEAKING_PAST_EXPERIENCES_AND_STORYTELLING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('59275403-f873-57ec-856d-dcf8eb070d40', 'B1_SPEAKING_PAST_EXPERIENCES_AND_STORYTELLING', 'Прошлый опыт и рассказы', 'Развивайте разговорный английский уровня B1 по теме «Прошлый опыт и рассказы».', '{"en":"Past Experiences and Storytelling","ru":"Прошлый опыт и рассказы"}'::jsonb, '{"en":"Develop B1 spoken English for past experiences and storytelling.","ru":"Развивайте разговорный английский уровня B1 по теме «Прошлый опыт и рассказы»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5504ff21-9bd9-5399-a19a-370b94e75002', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Setting the Scene","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30a1a334-03e0-5ab4-be82-d2b1d048afcc', '5504ff21-9bd9-5399-a19a-370b94e75002', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SPWA_2","left":"plan","right":"план"},{"id":"A2SPWA_3","left":"today","right":"сегодня"},{"id":"A2SPWA_4","left":"tomorrow","right":"завтра"},{"id":"A2SPWA_5","left":"weekend","right":"выходные"},{"id":"A2SPWA_6","left":"go to the park","right":"пойти в парк"},{"id":"A2SPWA_7","left":"watch a film","right":"посмотреть фильм"},{"id":"A2SPWA_8","left":"What are your plans?","right":"Какие у тебя планы?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82ca1857-cb1b-5daa-a124-0bd073612bfb', '5504ff21-9bd9-5399-a19a-370b94e75002', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Tomorrow is the day after today.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SPWA_10","is_correct":true,"text":"Tomorrow"},{"id":"A2SPWA_11","is_correct":false,"text":"Today"},{"id":"A2SPWA_12","is_correct":false,"text":"Weekend"}],"question":"Which word means the day after today?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25592897-c1f4-5298-9e15-e3a3dcf68c75', '5504ff21-9bd9-5399-a19a-370b94e75002', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to the park tomorrow.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Завтра я иду в парк.","target_language":"en","word_bank":["tomorrow.","park","the","to","going","am","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eef4f90c-f7bd-5adc-bc6d-47426d801f1a', '5504ff21-9bd9-5399-a19a-370b94e75002', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"film","instruction":"Выберите подходящее слово.","options":["film","teacher","pencil"],"sentence_template":"I am going to watch a ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28cc5777-e313-5a71-8098-7bc83ecb441a', '5504ff21-9bd9-5399-a19a-370b94e75002', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["What","are","your","plans?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["plans?","your","are","What"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e049a679-f388-5fae-a269-930de7c4638b', '5504ff21-9bd9-5399-a19a-370b94e75002', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am going to the park tomorrow.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('958af4af-4d04-566f-b561-874e988b51f1', '5504ff21-9bd9-5399-a19a-370b94e75002', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This weekend, I am going to watch a film. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"В эти выходные я собираюсь посмотреть фильм. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c35c117b-64e7-5a0a-adab-6f91048600de', '5504ff21-9bd9-5399-a19a-370b94e75002', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"What are your plans for Saturday?","translation":"Какие у тебя планы на субботу?","type":"dialogue"},{"character":"Leo","text":"I am going to the park.","translation":"Я собираюсь пойти в парк.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That sounds nice."},{"is_correct":false,"text":"Open your textbook."}],"text":"What can Nina say?","type":"choice"}],"title":"Weekend Plans"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e32f2489-dddc-5ca4-9247-adfbd38ec213', '5504ff21-9bd9-5399-a19a-370b94e75002', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A plan is something you decide to do in the future.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SPWA_20","is_correct":true,"text":"Something you decide to do in the future"},{"id":"A2SPWA_21","is_correct":false,"text":"A place where students study"},{"id":"A2SPWA_22","is_correct":false,"text":"A meal in the morning"}],"word":"plan"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ff67768-9efc-5ef1-89cf-50c8cd9a043a', '5504ff21-9bd9-5399-a19a-370b94e75002', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to watch a film.","explanation":"The missing word is “film.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"film","id":"A2SPWA_24","is_correct":true},{"audio_text":"desk","id":"A2SPWA_25","is_correct":false},{"audio_text":"sister","id":"A2SPWA_26","is_correct":false}],"sentence_template":"I am going to watch a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12bdf93e-e555-5d94-93d8-d45510e69348', '5504ff21-9bd9-5399-a19a-370b94e75002', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"tomorrow","explanation":"The complete phrase is “See you tomorrow.”","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"See you ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d1b2bec-40a5-5758-9d79-34f18bdd5539', '5504ff21-9bd9-5399-a19a-370b94e75002', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"today","id":"A2SPWA_29","text":"today"},{"audio_text":"tomorrow","id":"A2SPWA_30","text":"tomorrow"},{"audio_text":"this weekend","id":"A2SPWA_31","text":"this weekend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59e38d2b-6e61-5648-9e8d-a20f48af27b6', '5504ff21-9bd9-5399-a19a-370b94e75002', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Maya","text":"What are your plans for tomorrow?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SPWA_33","is_correct":true,"text":"I am going to the park."},{"id":"A2SPWA_34","is_correct":false,"text":"My classroom is upstairs."},{"id":"A2SPWA_35","is_correct":false,"text":"I have two pencils."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('59275403-f873-57ec-856d-dcf8eb070d40', '5504ff21-9bd9-5399-a19a-370b94e75002', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('35a322e9-423a-52c0-a00c-1edd3b91c891', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Describing Events","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5e6053d-ff07-54ae-899c-5b7b4a11e185', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SPWA_37","left":"invite","right":"приглашать"},{"id":"A2SPWA_38","left":"party","right":"вечеринка"},{"id":"A2SPWA_39","left":"come with me","right":"пойдём со мной"},{"id":"A2SPWA_40","left":"Would you like to come?","right":"Хочешь прийти?"},{"id":"A2SPWA_41","left":"Yes, I would","right":"Да, хочу"},{"id":"A2SPWA_42","left":"Sorry, I cannot","right":"Извини, я не могу"},{"id":"A2SPWA_43","left":"That sounds great","right":"Звучит замечательно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('659ca445-0258-57dc-ac8f-ae82b263ae6d', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“That sounds great” shows that you like the invitation.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SPWA_45","is_correct":true,"text":"That sounds great."},{"id":"A2SPWA_46","is_correct":false,"text":"Sorry, I cannot."},{"id":"A2SPWA_47","is_correct":false,"text":"Close the door."}],"question":"Which response politely accepts an invitation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c9db76d-5831-5988-9b68-4b86c9de6d25', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Would you like to come with me?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хочешь пойти со мной?","target_language":"en","word_bank":["me?","with","come","to","like","you","Would"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32a21160-ada3-5f6a-9a36-e81904c05bfa', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"party","instruction":"Выберите подходящее слово.","options":["party","library","ruler"],"sentence_template":"Would you like to come to my ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1af01edf-eed8-51de-b4a5-81e1f5ca9835', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["That","sounds","great."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["great.","sounds","That"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9c81aad-b95c-5fa3-80bf-e4a37d57c095', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Would you like to come to my party?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4550e52b-d6c4-5e6c-adcb-d88ce7fe464d', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Yes, I would. Thank you for the invitation. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Да, хочу. Спасибо за приглашение. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39680d9b-63b2-53cb-b784-7315d900ec49', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"I am having a party on Sunday. Would you like to come?","translation":"В воскресенье у меня вечеринка. Хочешь прийти?","type":"dialogue"},{"character":"Aida","text":"Yes. That sounds great.","translation":"Да. Звучит замечательно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"See you on Sunday."},{"is_correct":false,"text":"The library is downstairs."}],"text":"What can Ben say?","type":"choice"}],"title":"A Birthday Invitation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba9138c4-5048-5b7f-9f35-3b54b214f05b', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Invite means to ask someone to come to an event.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SPWA_55","is_correct":true,"text":"To ask someone to come to an event"},{"id":"A2SPWA_56","is_correct":false,"text":"To study for a test"},{"id":"A2SPWA_57","is_correct":false,"text":"To give directions in a building"}],"word":"invite"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25a7afa4-be71-5e43-bad4-5fa44de7afd6', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Come with me.","explanation":"The missing word is “me.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"me","id":"A2SPWA_59","is_correct":true},{"audio_text":"book","id":"A2SPWA_60","is_correct":false},{"audio_text":"lunch","id":"A2SPWA_61","is_correct":false}],"sentence_template":"Come with ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b96cd7f-a703-5c13-b506-ea68edce6dda', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"great","explanation":"The complete sentence is “That sounds great.”","hint_prefix":"gr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"That sounds ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdd98946-ba5e-5bcf-a4b8-2383cd2f0427', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Would you like to come?","id":"A2SPWA_64","text":"Would you like to come?"},{"audio_text":"Yes, I would","id":"A2SPWA_65","text":"Yes, I would"},{"audio_text":"Sorry, I cannot","id":"A2SPWA_66","text":"Sorry, I cannot"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2078fe50-df90-53c4-9371-313e9c3004b4', '35a322e9-423a-52c0-a00c-1edd3b91c891', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Omar","text":"Would you like to come to my party?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SPWA_68","is_correct":true,"text":"Yes, I would. Thank you."},{"id":"A2SPWA_69","is_correct":false,"text":"Yes, the teacher is here."},{"id":"A2SPWA_70","is_correct":false,"text":"Yes, I have mathematics."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('59275403-f873-57ec-856d-dcf8eb070d40', '35a322e9-423a-52c0-a00c-1edd3b91c891', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cca51da1-8b8e-5d0b-a109-7b276277fc27', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Ending a Story","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b75e03e7-39fd-5a98-9b7b-2e615723e392', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SPWA_72","left":"meet","right":"встретиться"},{"id":"A2SPWA_73","left":"time","right":"время"},{"id":"A2SPWA_74","left":"place","right":"место"},{"id":"A2SPWA_75","left":"at three o’clock","right":"в три часа"},{"id":"A2SPWA_76","left":"in front of the cafe","right":"перед кафе"},{"id":"A2SPWA_77","left":"Are you free?","right":"Ты свободен?"},{"id":"A2SPWA_78","left":"See you there","right":"Увидимся там"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df74439a-9e48-596f-b036-5b7a4ee6af03', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Are you free?” asks whether someone has time to meet.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SPWA_80","is_correct":true,"text":"Are you free?"},{"id":"A2SPWA_81","is_correct":false,"text":"Where is your book?"},{"id":"A2SPWA_82","is_correct":false,"text":"Do you like rice?"}],"question":"Which question asks if someone has time?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2ff295c-d803-5a14-b4eb-2851a4b1d21a', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Let us meet at three o’clock.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Давай встретимся в три часа.","target_language":"en","word_bank":["o’clock.","three","at","meet","us","Let"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bb63f9c-4397-5ff4-a89f-8f270032787a', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cafe","instruction":"Выберите подходящее слово.","options":["cafe","notebook","lesson"],"sentence_template":"Let us meet in front of the ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72a41f8d-ace0-55b9-a8f0-a9c53c124e4b', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Are","you","free","on","Saturday?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["free","Saturday?","you","on","Are"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a376ffe-4f48-5ca6-9817-32a708106e5d', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Let us meet at four o’clock.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('089be1bd-8780-5b5c-8fda-2e8e6895cb77', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"See you in front of the cafe at three. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Увидимся перед кафе в три часа. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('317a0e59-3a88-5d70-a7d5-45ecb57613fd', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sara","text":"Are you free after class?","translation":"Ты свободен после уроков?","type":"dialogue"},{"character":"Max","text":"Yes. Let us meet at four.","translation":"Да. Давай встретимся в четыре.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Where shall we meet?"},{"is_correct":false,"text":"Who is your teacher?"}],"text":"What can Sara ask?","type":"choice"}],"title":"Meeting After Class"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76d7c536-3e2a-5fc0-a2c3-343cbf36cf45', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Meet means to come together with another person.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SPWA_90","is_correct":true,"text":"To come together with another person"},{"id":"A2SPWA_91","is_correct":false,"text":"To write words in a notebook"},{"id":"A2SPWA_92","is_correct":false,"text":"To eat a meal at school"}],"word":"meet"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5519b0f6-b7b4-5c0e-871e-627b1c67a6e4', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Let us meet at three.","explanation":"The missing time is “three.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"three","id":"A2SPWA_94","is_correct":true},{"audio_text":"science","id":"A2SPWA_95","is_correct":false},{"audio_text":"window","id":"A2SPWA_96","is_correct":false}],"sentence_template":"Let us meet at ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a80517fa-840a-57a5-9484-9e49f0ad9e8c', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"there","explanation":"The complete phrase is “See you there.”","hint_prefix":"th","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"See you ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f09e60d3-5597-5b68-a934-3643c7d0939d', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Are you free?","id":"A2SPWA_99","text":"Are you free?"},{"audio_text":"at three o’clock","id":"A2SPWA_100","text":"at three o’clock"},{"audio_text":"See you there","id":"A2SPWA_101","text":"See you there"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d002d64-86bc-54af-ba63-be15333d0b2d', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Lena","text":"Are you free on Sunday?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SPWA_103","is_correct":true,"text":"Yes. Let us meet at three."},{"id":"A2SPWA_104","is_correct":false,"text":"Yes. My teacher is nice."},{"id":"A2SPWA_105","is_correct":false,"text":"Yes. This is my textbook."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('59275403-f873-57ec-856d-dcf8eb070d40', 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1eb851bc-8bdd-5b10-bb1a-76cb3d9c23be', 'en', 'plan', 'план', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f63596fa-e1a7-596d-839b-65eddde8d504', 'en', 'today', 'сегодня', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d87e567-9d2d-55d9-ba3e-587332645ba9', 'en', 'tomorrow', 'завтра', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81085528-5336-52d0-8ab3-182d92d44216', 'en', 'weekend', 'выходные', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a84229e-be14-5690-93fe-4c6ae0716bf8', 'en', 'go to the park', 'пойти в парк', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('51a5b779-8d2f-5ca0-bf4f-937bf9a7fad3', 'en', 'watch a film', 'посмотреть фильм', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c2c3cf1-373c-5e76-a514-0d79f237404e', 'en', 'What are your plans?', 'Какие у тебя планы?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ae389ae-a504-5db1-b9b4-1f5841d6fe4a', 'en', 'invite', 'приглашать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06c6dd3a-ce7c-59e4-9de5-bfc8b9c34c3f', 'en', 'party', 'вечеринка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a949e755-ab2b-5289-9951-34ffd468545f', 'en', 'come with me', 'пойдём со мной', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6cdee0c-04b5-5ffe-9d35-15be39558c7d', 'en', 'Would you like to come?', 'Хочешь прийти?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9d54b03-4fe8-5cac-ac39-794729c72575', 'en', 'Yes, I would', 'Да, хочу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('569b8510-04ab-57da-bf43-6814cbf5e662', 'en', 'Sorry, I cannot', 'Извини, я не могу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('249ae316-99d9-51c3-86c9-f68f1f0c88bd', 'en', 'That sounds great', 'Звучит замечательно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39db6cf9-cf7c-59c7-87a3-6202279f17c6', 'en', 'meet', 'встретиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d33fd7a-fc05-5793-904d-6c014d5b40a7', 'en', 'time', 'время', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f2726268-b985-519c-bdb8-287e8330b655', 'en', 'place', 'место', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e94aa47-c92e-5e69-b887-be785913444c', 'en', 'at three o’clock', 'в три часа', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('64b3bb43-6667-54eb-9574-6a1d21592c4c', 'en', 'in front of the cafe', 'перед кафе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02befadb-ae58-5174-9de6-361c921d5205', 'en', 'Are you free?', 'Ты свободен?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31e30f29-1f49-5148-a205-24d7fb026fbd', 'en', 'See you there', 'Увидимся там', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '5504ff21-9bd9-5399-a19a-370b94e75002', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '5504ff21-9bd9-5399-a19a-370b94e75002', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'today' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '5504ff21-9bd9-5399-a19a-370b94e75002', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '5504ff21-9bd9-5399-a19a-370b94e75002', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'weekend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '5504ff21-9bd9-5399-a19a-370b94e75002', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'go to the park' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '5504ff21-9bd9-5399-a19a-370b94e75002', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'watch a film' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '5504ff21-9bd9-5399-a19a-370b94e75002', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'What are your plans?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '35a322e9-423a-52c0-a00c-1edd3b91c891', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'invite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '35a322e9-423a-52c0-a00c-1edd3b91c891', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'party' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '35a322e9-423a-52c0-a00c-1edd3b91c891', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'come with me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '35a322e9-423a-52c0-a00c-1edd3b91c891', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Would you like to come?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '35a322e9-423a-52c0-a00c-1edd3b91c891', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, I would' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '35a322e9-423a-52c0-a00c-1edd3b91c891', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Sorry, I cannot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, '35a322e9-423a-52c0-a00c-1edd3b91c891', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'That sounds great' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'place' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'at three o’clock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in front of the cafe' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Are you free?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59275403-f873-57ec-856d-dcf8eb070d40', id, 'cca51da1-8b8e-5d0b-a109-7b276277fc27', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'See you there' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
