-- Track: B1_SPEAKING_FUTURE_AMBITIONS_AND_DECISIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('46336b27-cff8-514b-b76b-8a212f011611', 'B1_SPEAKING_FUTURE_AMBITIONS_AND_DECISIONS', 'Будущие цели и решения', 'Развивайте разговорный английский уровня B1 по теме «Будущие цели и решения».', '{"en":"Future Ambitions and Decisions","ru":"Будущие цели и решения"}'::jsonb, '{"en":"Develop B1 spoken English for future ambitions and decisions.","ru":"Развивайте разговорный английский уровня B1 по теме «Будущие цели и решения»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f9b85172-7700-5176-84e4-4b6cb4fb0767', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Personal Ambitions","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d98df04f-4c85-530c-bdc5-a9b5b73b9925', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SFP_2","left":"plan","right":"план"},{"id":"A2SFP_3","left":"today","right":"сегодня"},{"id":"A2SFP_4","left":"tomorrow","right":"завтра"},{"id":"A2SFP_5","left":"weekend","right":"выходные"},{"id":"A2SFP_6","left":"go to the park","right":"пойти в парк"},{"id":"A2SFP_7","left":"watch a film","right":"посмотреть фильм"},{"id":"A2SFP_8","left":"What are your plans?","right":"Какие у тебя планы?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abd6c18c-41d0-5b27-b3cf-691caecb5d45', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Tomorrow is the day after today.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SFP_10","is_correct":true,"text":"Tomorrow"},{"id":"A2SFP_11","is_correct":false,"text":"Today"},{"id":"A2SFP_12","is_correct":false,"text":"Weekend"}],"question":"Which word means the day after today?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39ba5e11-e37f-531e-8af2-d995c8a8ca7f', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to the park tomorrow.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Завтра я иду в парк.","target_language":"en","word_bank":["tomorrow.","park","the","to","going","am","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6283125c-bd2f-59d1-812c-a0467a378d0d', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"film","instruction":"Выберите подходящее слово.","options":["film","teacher","pencil"],"sentence_template":"I am going to watch a ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71d2b246-be80-55b3-b551-6516822a234f', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["What","are","your","plans?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["plans?","your","are","What"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('413f13f9-2a18-57c2-b79b-a2afbabc684a', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am going to the park tomorrow.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('156d574a-65d3-5dfc-b471-0c08c51bdee4', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This weekend, I am going to watch a film. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"В эти выходные я собираюсь посмотреть фильм. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3af68595-b084-522b-9fbb-08d4548faca0', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"What are your plans for Saturday?","translation":"Какие у тебя планы на субботу?","type":"dialogue"},{"character":"Leo","text":"I am going to the park.","translation":"Я собираюсь пойти в парк.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That sounds nice."},{"is_correct":false,"text":"Open your textbook."}],"text":"What can Nina say?","type":"choice"}],"title":"Weekend Plans"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc4db25a-237d-5987-8a8f-d7ed8cef0654', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A plan is something you decide to do in the future.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SFP_20","is_correct":true,"text":"Something you decide to do in the future"},{"id":"A2SFP_21","is_correct":false,"text":"A place where students study"},{"id":"A2SFP_22","is_correct":false,"text":"A meal in the morning"}],"word":"plan"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8b0dabb-e234-5647-a951-1df3d4f3e5e4', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to watch a film.","explanation":"The missing word is “film.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"film","id":"A2SFP_24","is_correct":true},{"audio_text":"desk","id":"A2SFP_25","is_correct":false},{"audio_text":"sister","id":"A2SFP_26","is_correct":false}],"sentence_template":"I am going to watch a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3b7ffef-7e36-521c-a67d-d485adaa06be', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"tomorrow","explanation":"The complete phrase is “See you tomorrow.”","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"See you ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21788f0d-f494-50f8-bc50-4e0f8b0a5fde', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"today","id":"A2SFP_29","text":"today"},{"audio_text":"tomorrow","id":"A2SFP_30","text":"tomorrow"},{"audio_text":"this weekend","id":"A2SFP_31","text":"this weekend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('351c044b-588c-57c0-957a-c854afed2787', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Maya","text":"What are your plans for tomorrow?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SFP_33","is_correct":true,"text":"I am going to the park."},{"id":"A2SFP_34","is_correct":false,"text":"My classroom is upstairs."},{"id":"A2SFP_35","is_correct":false,"text":"I have two pencils."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('46336b27-cff8-514b-b76b-8a212f011611', 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4b17b995-4753-5a8a-bd4d-c802970c64c3', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Plans and Possibilities","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1633ab8-56b0-55fc-9d56-7c062c0660c3', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SFP_37","left":"invite","right":"приглашать"},{"id":"A2SFP_38","left":"party","right":"вечеринка"},{"id":"A2SFP_39","left":"come with me","right":"пойдём со мной"},{"id":"A2SFP_40","left":"Would you like to come?","right":"Хочешь прийти?"},{"id":"A2SFP_41","left":"Yes, I would","right":"Да, хочу"},{"id":"A2SFP_42","left":"Sorry, I cannot","right":"Извини, я не могу"},{"id":"A2SFP_43","left":"That sounds great","right":"Звучит замечательно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa9a6425-e499-56bf-9ea6-5eb749c0a069', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“That sounds great” shows that you like the invitation.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SFP_45","is_correct":true,"text":"That sounds great."},{"id":"A2SFP_46","is_correct":false,"text":"Sorry, I cannot."},{"id":"A2SFP_47","is_correct":false,"text":"Close the door."}],"question":"Which response politely accepts an invitation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd6e8817-4304-566c-8427-46a97c349ef3', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Would you like to come with me?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хочешь пойти со мной?","target_language":"en","word_bank":["me?","with","come","to","like","you","Would"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc511f6e-e045-524a-b093-cf016bcf3037', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"party","instruction":"Выберите подходящее слово.","options":["party","library","ruler"],"sentence_template":"Would you like to come to my ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2931bb7-02b1-5889-a82a-d0aff0489a75', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["That","sounds","great."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["great.","sounds","That"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e183051-de3d-520d-9bfc-968fcfdef791', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Would you like to come to my party?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb8fc8fb-6921-53f9-b44d-8099b4bf6af3', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Yes, I would. Thank you for the invitation. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Да, хочу. Спасибо за приглашение. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('132e4342-e4a9-59e2-8ec0-62279358e435', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"I am having a party on Sunday. Would you like to come?","translation":"В воскресенье у меня вечеринка. Хочешь прийти?","type":"dialogue"},{"character":"Aida","text":"Yes. That sounds great.","translation":"Да. Звучит замечательно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"See you on Sunday."},{"is_correct":false,"text":"The library is downstairs."}],"text":"What can Ben say?","type":"choice"}],"title":"A Birthday Invitation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71bc9a6a-6942-506a-87b1-7a619005cdae', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Invite means to ask someone to come to an event.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SFP_55","is_correct":true,"text":"To ask someone to come to an event"},{"id":"A2SFP_56","is_correct":false,"text":"To study for a test"},{"id":"A2SFP_57","is_correct":false,"text":"To give directions in a building"}],"word":"invite"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('118ac93a-f833-53ee-b68b-0d59d6d559d3', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Come with me.","explanation":"The missing word is “me.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"me","id":"A2SFP_59","is_correct":true},{"audio_text":"book","id":"A2SFP_60","is_correct":false},{"audio_text":"lunch","id":"A2SFP_61","is_correct":false}],"sentence_template":"Come with ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b88e0e59-d33e-5728-acc9-8755824f461e', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"great","explanation":"The complete sentence is “That sounds great.”","hint_prefix":"gr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"That sounds ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('241a137c-8034-5c3b-9aaf-766db24b06cd', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Would you like to come?","id":"A2SFP_64","text":"Would you like to come?"},{"audio_text":"Yes, I would","id":"A2SFP_65","text":"Yes, I would"},{"audio_text":"Sorry, I cannot","id":"A2SFP_66","text":"Sorry, I cannot"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90fa1319-2f50-5228-a24d-30ce5f588fa9', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Omar","text":"Would you like to come to my party?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SFP_68","is_correct":true,"text":"Yes, I would. Thank you."},{"id":"A2SFP_69","is_correct":false,"text":"Yes, the teacher is here."},{"id":"A2SFP_70","is_correct":false,"text":"Yes, I have mathematics."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('46336b27-cff8-514b-b76b-8a212f011611', '4b17b995-4753-5a8a-bd4d-c802970c64c3', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ae32a418-ff6b-51b5-b97c-d650afe86ea6', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Explaining Decisions","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41f0fe53-9944-57c2-83cc-69c321ccf160', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SFP_72","left":"meet","right":"встретиться"},{"id":"A2SFP_73","left":"time","right":"время"},{"id":"A2SFP_74","left":"place","right":"место"},{"id":"A2SFP_75","left":"at three o’clock","right":"в три часа"},{"id":"A2SFP_76","left":"in front of the cafe","right":"перед кафе"},{"id":"A2SFP_77","left":"Are you free?","right":"Ты свободен?"},{"id":"A2SFP_78","left":"See you there","right":"Увидимся там"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7574823d-1c1e-5730-8027-7b50c63070b4', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Are you free?” asks whether someone has time to meet.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SFP_80","is_correct":true,"text":"Are you free?"},{"id":"A2SFP_81","is_correct":false,"text":"Where is your book?"},{"id":"A2SFP_82","is_correct":false,"text":"Do you like rice?"}],"question":"Which question asks if someone has time?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd611100-5a19-51f6-b795-fe5b5264d6e9', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Let us meet at three o’clock.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Давай встретимся в три часа.","target_language":"en","word_bank":["o’clock.","three","at","meet","us","Let"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6592e2e2-ab4c-54c2-81f8-f0b0b01dad85', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cafe","instruction":"Выберите подходящее слово.","options":["cafe","notebook","lesson"],"sentence_template":"Let us meet in front of the ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04156281-a682-5e61-a89a-9205d54cca1b', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Are","you","free","on","Saturday?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["free","Saturday?","you","on","Are"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31b19b0a-ebdd-566a-b7dd-e85902b25c41', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Let us meet at four o’clock.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70c29593-3fd7-5f37-97fd-85543f84aa5a', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"See you in front of the cafe at three. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Увидимся перед кафе в три часа. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc9f8d9c-8a4a-560c-a118-36685061ef3a', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sara","text":"Are you free after class?","translation":"Ты свободен после уроков?","type":"dialogue"},{"character":"Max","text":"Yes. Let us meet at four.","translation":"Да. Давай встретимся в четыре.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Where shall we meet?"},{"is_correct":false,"text":"Who is your teacher?"}],"text":"What can Sara ask?","type":"choice"}],"title":"Meeting After Class"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c68bd47-6be7-5ebe-b89f-c450750aee70', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Meet means to come together with another person.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SFP_90","is_correct":true,"text":"To come together with another person"},{"id":"A2SFP_91","is_correct":false,"text":"To write words in a notebook"},{"id":"A2SFP_92","is_correct":false,"text":"To eat a meal at school"}],"word":"meet"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bc33cb2-8fa2-56cf-809d-670cc22827a7', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Let us meet at three.","explanation":"The missing time is “three.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"three","id":"A2SFP_94","is_correct":true},{"audio_text":"science","id":"A2SFP_95","is_correct":false},{"audio_text":"window","id":"A2SFP_96","is_correct":false}],"sentence_template":"Let us meet at ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('505ae328-f2b2-5c22-bf04-bf49e6fc40f2', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"there","explanation":"The complete phrase is “See you there.”","hint_prefix":"th","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"See you ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cadefc5b-d78b-50e0-8e78-900880376d81', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Are you free?","id":"A2SFP_99","text":"Are you free?"},{"audio_text":"at three o’clock","id":"A2SFP_100","text":"at three o’clock"},{"audio_text":"See you there","id":"A2SFP_101","text":"See you there"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8efea1d2-d947-57a1-a869-2e2e779db297', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Lena","text":"Are you free on Sunday?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SFP_103","is_correct":true,"text":"Yes. Let us meet at three."},{"id":"A2SFP_104","is_correct":false,"text":"Yes. My teacher is nice."},{"id":"A2SFP_105","is_correct":false,"text":"Yes. This is my textbook."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('46336b27-cff8-514b-b76b-8a212f011611', 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 2)
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
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'today' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'weekend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'go to the park' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'watch a film' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'f9b85172-7700-5176-84e4-4b6cb4fb0767', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'What are your plans?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, '4b17b995-4753-5a8a-bd4d-c802970c64c3', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'invite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, '4b17b995-4753-5a8a-bd4d-c802970c64c3', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'party' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, '4b17b995-4753-5a8a-bd4d-c802970c64c3', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'come with me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, '4b17b995-4753-5a8a-bd4d-c802970c64c3', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Would you like to come?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, '4b17b995-4753-5a8a-bd4d-c802970c64c3', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, I would' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, '4b17b995-4753-5a8a-bd4d-c802970c64c3', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Sorry, I cannot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, '4b17b995-4753-5a8a-bd4d-c802970c64c3', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'That sounds great' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'place' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'at three o’clock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in front of the cafe' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Are you free?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '46336b27-cff8-514b-b76b-8a212f011611', id, 'ae32a418-ff6b-51b5-b97c-d650afe86ea6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'See you there' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
