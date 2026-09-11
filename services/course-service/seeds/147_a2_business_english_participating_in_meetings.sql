-- Track: A2_BUSINESS_ENGLISH_PARTICIPATING_IN_MEETINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('848ad668-9c99-533d-b181-98f301e801b4', 'A2_BUSINESS_ENGLISH_PARTICIPATING_IN_MEETINGS', 'Участие в совещаниях', 'Развивайте деловой английский уровня A2 по теме «Участие в совещаниях».', '{"en":"Participating in Meetings","ru":"Участие в совещаниях"}'::jsonb, '{"en":"Develop A2 business English for participating in meetings.","ru":"Развивайте деловой английский уровня A2 по теме «Участие в совещаниях»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7e23a99b-12e0-5172-873c-c9b6c1873e89', NULL, 'Что решили на встрече', 'Сообщить о решениях встречи, используя past simple и present perfect.', '{"en":"What We Decided","ru":"Что решили на встрече"}'::jsonb, '{"en":"Report meeting decisions using past simple and present perfect.","ru":"Сообщить о решениях встречи, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6624cdf-a4aa-5ab2-bac6-43ef275119b3', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"decision","right":"решение"},{"id":"P2","left":"to agree on","right":"договориться о"},{"id":"P3","left":"action item","right":"пункт действий"},{"id":"P4","left":"minutes","right":"протокол встречи"},{"id":"P5","left":"to vote","right":"голосовать"},{"id":"P6","left":"next steps","right":"следующие шаги"},{"id":"P7","left":"to chair","right":"вести (встречу)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('290cbdf3-e7e7-57e2-a160-7546abe26a0d', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have agreed on the budget for the next quarter.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have agreed on the budget for the next quarter."},{"id":"Q_B","is_correct":false,"text":"We have agreed on the budget yesterday."},{"id":"Q_C","is_correct":false,"text":"We agree on the budget already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('600423c0-c37c-5a75-9eda-d1c18cdcd692', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"At the meeting we agreed on the deadlines and shared out the tasks.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На встрече мы договорились о сроках и распределили задачи.","target_language":"en","word_bank":["agreed","we","tasks.","did","shared","the","the","tomorrow","out","meeting","deadlines","the","on","and","At","agrees"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6341b443-5cba-5d93-8e49-dd1224ebbb9e', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"chaired","instruction":"Выберите подходящее слово.","options":["chaired","has chair","chairing"],"sentence_template":"Who ___ the meeting last Thursday?","translation_hint":"Кто вёл встречу в прошлый четверг?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3463473-3e6f-5022-ae96-334169ca1c40', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","already","sent","the","minutes","to","all","participants."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["minutes","already","She","to","the","has","all","did","sent","participants.","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd48e54a-1c11-520d-9f58-2b4742e3edef', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The team has made three decisions, and every action item now has an owner and a deadline.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('637536e5-11e3-562a-87a5-09173bea0fa4', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The team has made three decisions, and every action item now has an owner and a deadline.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Команда приняла три решения, и у каждого пункта действий теперь есть владелец и срок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('550f8ea2-6336-55b8-898f-b69c6b3e45f5', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"I missed the planning meeting. What did they decide?","translation":"Я пропустил планёрку. Что решили?","type":"dialogue"},{"character":"Anna","text":"They have chosen May for the launch and agreed on the new budget.","translation":"Выбрали май для запуска и согласовали новый бюджет.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Has anyone published the minutes yet?"},{"is_correct":false,"text":"Did anyone has published them tomorrow?"},{"is_correct":false,"text":"Is the launch deciding the budget?"}],"text":"What does Tom ask?","type":"choice"}],"title":"After the Meeting"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75ac8f40-ced2-54e3-a319-e53997db6974', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“minutes” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The written record of what was said and decided at a meeting"},{"id":"D_B","is_correct":false,"text":"Sixty seconds of waiting before a call starts"},{"id":"D_C","is_correct":false,"text":"A short break in the middle of a meeting"}],"word":"minutes"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c621e9e-74da-5bb2-a4c4-a4169f8df1e9', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have agreed on the final date.","explanation":"The missing word is “agreed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"agreed","id":"LW_A","is_correct":true},{"audio_text":"agree","id":"LW_B","is_correct":false},{"audio_text":"agreeing","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ on the final date."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ff61fb1-0b05-5c2a-84dd-9c5e2742327a', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"item","explanation":"The complete sentence is “Every action item has an owner.”.","hint_prefix":"it","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Every action ___ has an owner."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab0b3832-8e83-5a1c-957f-49ca73680c84', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"decision","id":"V1","text":"decision"},{"audio_text":"to agree on","id":"V2","text":"to agree on"},{"audio_text":"action item","id":"V3","text":"action item"},{"audio_text":"minutes","id":"V4","text":"minutes"},{"audio_text":"to vote","id":"V5","text":"to vote"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59deaed8-833a-5067-9f58-8d086a6db95a', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did you send the minutes?"}],"explanation":"“Yes, I sent them an hour ago, and the director has already replied.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, I sent them an hour ago, and the director has already replied."},{"id":"C_B","is_correct":false,"text":"Yes, I send them tomorrow."},{"id":"C_C","is_correct":false,"text":"The minutes are sending themselves."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('848ad668-9c99-533d-b181-98f301e801b4', '7e23a99b-12e0-5172-873c-c9b6c1873e89', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7f1b2e9f-e2cb-59f0-812b-912a7c209020', NULL, 'Встреча на следующей неделе', 'Подготовиться к будущей встрече и сравнить форматы.', '{"en":"The Meeting Next Week","ru":"Встреча на следующей неделе"}'::jsonb, '{"en":"Prepare for a future meeting and compare formats.","ru":"Подготовиться к будущей встрече и сравнить форматы."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('554b6065-5e3d-5644-9540-cd46435c67df', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to invite","right":"пригласить"},{"id":"P2","left":"shorter","right":"короче"},{"id":"P3","left":"to prepare","right":"подготовиться"},{"id":"P4","left":"online","right":"онлайн"},{"id":"P5","left":"in person","right":"лично"},{"id":"P6","left":"more productive","right":"продуктивнее"},{"id":"P7","left":"timebox","right":"лимит времени"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c18e87b9-3f74-5e75-b577-62aa054ed973', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are going to invite the design team to the next call.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are going to invite the design team to the next call."},{"id":"Q_B","is_correct":false,"text":"We invited the design team to yesterday''s call."},{"id":"Q_C","is_correct":false,"text":"We has invited them tomorrow already."}],"question":"Which sentence talks about a future meeting?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85dc4559-a230-521e-8d0b-c4b09e17bde6', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The next meeting is going to be shorter — only thirty minutes with a timebox for each question.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Следующая встреча будет короче — всего тридцать минут с лимитом на каждый вопрос.","target_language":"en","word_bank":["shorter","going","a","only","timebox","with","was","is","minutes","did","for","question.","each","yesterday","next","thirty","be","to","meeting","—","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3aea645b-8e16-57d6-927a-a69e4cfd5e15', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"A meeting with an agenda is ___ productive than a chat without a plan.","translation_hint":"Встреча с повесткой продуктивнее болтовни без плана."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('238a8f39-f59f-5b6d-99fb-1d33fad86aee', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","prepare","two","slides","for","the","budget","part."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["I","prepare","was","part.","am","going","slides","did","two","budget","to","the","for"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afa50050-7531-55dc-a26f-abed037d6420', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If everyone reads the documents in advance, the meeting will be ten minutes shorter.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c761a150-da1a-54ca-9f22-63e9597175f0', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If everyone reads the documents in advance, the meeting will be ten minutes shorter.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если все прочитают документы заранее, встреча будет на десять минут короче."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76476990-ac98-507c-a3c3-4e26f0ae6c2c', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"Should we do the quarterly review online or in person?","translation":"Проводить квартальный обзор онлайн или лично?","type":"dialogue"},{"character":"Anna","text":"In person is more productive for long discussions.","translation":"Лично продуктивнее для долгих обсуждений.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we are going to book a room for the whole morning."},{"is_correct":false,"text":"Then we booked it yesterday tomorrow."},{"is_correct":false,"text":"The review is meeting us online."}],"text":"What does the manager decide?","type":"choice"}],"title":"Online or in Person?"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f22a9c18-69c3-533e-b18b-5a996d50d890', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“timebox” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A fixed maximum time for one topic or task"},{"id":"D_B","is_correct":false,"text":"A calendar invitation sent by email"},{"id":"D_C","is_correct":false,"text":"A list of people at a meeting"}],"word":"timebox"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('808030a7-e486-578b-935b-1e97c989b5c0', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to invite the suppliers too.","explanation":"The missing word is “invite”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"invite","id":"LW_A","is_correct":true},{"audio_text":"invited","id":"LW_B","is_correct":false},{"audio_text":"inviting","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ the suppliers too."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82eade1b-bb5a-542f-9683-1f534dba8c3a', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “Online calls are better for short check-ins.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Online calls are ___ for short check-ins."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bf6b4d0-45c9-5184-b119-0958ba9c8ebb', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to invite","id":"V1","text":"to invite"},{"audio_text":"shorter","id":"V2","text":"shorter"},{"audio_text":"to prepare","id":"V3","text":"to prepare"},{"audio_text":"online","id":"V4","text":"online"},{"audio_text":"in person","id":"V5","text":"in person"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc59a16e-3da5-528a-bcc6-3ec0a478bff3', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How long should the demo meeting be?"}],"explanation":"“Thirty minutes — if we timebox the questions, we will finish on time.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Thirty minutes — if we timebox the questions, we will finish on time."},{"id":"C_B","is_correct":false,"text":"It was thirty minutes yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The demo is timing us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('848ad668-9c99-533d-b181-98f301e801b4', '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7883ed60-c61c-5b52-a41a-f0b8740472e0', NULL, 'Как вести себя на встрече', 'Дать советы об участии во встречах, используя should и первое условное.', '{"en":"How to Behave in a Meeting","ru":"Как вести себя на встрече"}'::jsonb, '{"en":"Give meeting participation advice using should and the first conditional.","ru":"Дать советы об участии во встречах, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00a87b82-3978-55ce-839b-eb2147495ba2', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to interrupt politely","right":"вежливо перебить"},{"id":"P2","left":"to stay on topic","right":"не отходить от темы"},{"id":"P3","left":"to listen first","right":"сначала выслушать"},{"id":"P4","left":"late","right":"поздний"},{"id":"P5","left":"to contribute","right":"внести вклад"},{"id":"P6","left":"respect","right":"уважение"},{"id":"P7","left":"to mute","right":"выключить микрофон"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95425d70-aa3d-5156-a7c0-228b7fbee31d', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should mute your microphone when you are not speaking.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should mute your microphone when you are not speaking."},{"id":"Q_B","is_correct":false,"text":"You should to mute it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must muting it last meeting."}],"question":"Which sentence gives correct meeting advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('024bc687-0750-5b2a-84df-39715604acf8', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you listen to your colleague to the end, your answer will be more precise.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты выслушаешь коллегу до конца, твой ответ будет точнее.","target_language":"en","word_bank":["did","be","will","the","your","answer","colleague","to","end,","listen","more","you","listened","precise.","If","your","yesterday","to"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33941bb9-715a-553f-b0d1-4a4a4ed987c4', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"will","instruction":"Выберите подходящее слово.","options":["will","wills","is"],"sentence_template":"If you arrive late, the meeting ___ start without you.","translation_hint":"Если опоздаешь, встреча начнётся без тебя."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3be0389-cbe1-5ce6-89a3-593598b7bcc0', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","stay","on","topic","during","short","meetings."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["during","mustn''t","on","went","meetings.","topic","stay","should","short","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de2254a5-72ee-5025-9d4e-6ef4b4fabe47', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you contribute one clear idea instead of five vague ones, people will remember it.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e825b4b-519d-50fc-a340-dabe34d432ab', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you contribute one clear idea instead of five vague ones, people will remember it.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если внести одну чёткую идею вместо пяти расплывчатых, её запомнят."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dccb0224-eec1-5d7a-9e83-4f1da1e63be4', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Tom spoke for fifteen minutes about his holiday during the budget meeting.","translation":"Том говорил пятнадцать минут об отпуске во время встречи по бюджету.","type":"dialogue"},{"character":"Manager","text":"What should we do about it?","translation":"Что нам с этим делать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should remind him politely to stay on topic."},{"is_correct":false,"text":"You must to remind him yesterday."},{"is_correct":false,"text":"The holiday is speaking about Tom."}],"text":"What does Anna suggest?","type":"choice"}],"title":"The Long Monologue"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b2b2c33-52a4-5dec-bb3f-2499254750e8', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to contribute” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To give your ideas or effort to a discussion"},{"id":"D_B","is_correct":false,"text":"To stay completely silent during a call"},{"id":"D_C","is_correct":false,"text":"To leave a meeting before it ends"}],"word":"to contribute"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('592db196-6c8b-58b7-9efa-7498f3e830dc', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you listen first, you will understand better.","explanation":"The missing word is “listen”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"listen","id":"LW_A","is_correct":true},{"audio_text":"will listen","id":"LW_B","is_correct":false},{"audio_text":"listened","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ first, you will understand better."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37536e26-3601-5f81-80ac-a669542c6da2', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"short","explanation":"The complete sentence is “You should keep your answers short and clear.”.","hint_prefix":"sh","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should keep your answers ___ and clear."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f95cbe9f-91ae-5167-8d5b-558c075a64f0', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to interrupt politely","id":"V1","text":"to interrupt politely"},{"audio_text":"to stay on topic","id":"V2","text":"to stay on topic"},{"audio_text":"to listen first","id":"V3","text":"to listen first"},{"audio_text":"late","id":"V4","text":"late"},{"audio_text":"to contribute","id":"V5","text":"to contribute"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a65be612-6e74-5c4a-8ac8-73d6eadac858', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"People keep interrupting each other on our calls."}],"explanation":"“The chair should set a speaking order — if we follow it, the call will be calmer.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"The chair should set a speaking order — if we follow it, the call will be calmer."},{"id":"C_B","is_correct":false,"text":"The chair set it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The calls are interrupting us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('848ad668-9c99-533d-b181-98f301e801b4', '7883ed60-c61c-5b52-a41a-f0b8740472e0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e29eac5-42f8-5b70-a44e-24fedf021663', 'en', 'decision', 'решение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a5615215-86f2-5ff3-90fc-34cc9e447864', 'en', 'to agree on', 'договориться о', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('486635d1-b4df-5ebe-8871-a21f82c6f9de', 'en', 'action item', 'пункт действий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a47972f-0ef3-5584-8fb2-741a5f2e8fc9', 'en', 'minutes', 'протокол встречи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('abd22b5d-71a0-5596-97d1-c8945098ccaf', 'en', 'to vote', 'голосовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e35036ae-1bf9-5a16-a7d5-0ef14269a856', 'en', 'next steps', 'следующие шаги', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b054237-2c82-56c4-b1b4-5edcd3c5a794', 'en', 'to chair', 'вести (встречу)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c61c0ee-1818-52f7-8359-e9ca2e68044d', 'en', 'to invite', 'пригласить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('529f6604-4b98-522d-93cb-1b2679f26294', 'en', 'shorter', 'короче', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('442ed282-ff82-520f-8b05-adf59be04d8c', 'en', 'to prepare', 'подготовиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4638168-57e4-5992-8d87-1cbe95440e3c', 'en', 'online', 'онлайн', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83dea719-7397-540f-9595-3d49d2533303', 'en', 'in person', 'лично', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f40e9770-3080-5c0a-bcf9-b0b4d9e217fc', 'en', 'more productive', 'продуктивнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46c732b5-e013-5fcd-b56b-48cd0ffe2186', 'en', 'timebox', 'лимит времени', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79edb1cb-dc16-5360-8fbb-520829f01be1', 'en', 'to interrupt politely', 'вежливо перебить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bd05256-6845-5019-b0c3-d3fe61c1504f', 'en', 'to stay on topic', 'не отходить от темы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df2a9de0-270b-53d2-8be2-c261a2f84547', 'en', 'to listen first', 'сначала выслушать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b88631d7-b15a-50e0-8061-594df693c0d8', 'en', 'late', 'поздний', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('025a3f90-8ca1-56d7-b52d-15d65d27f160', 'en', 'to contribute', 'внести вклад', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c7af3ff4-da1b-5120-9687-229474e136af', 'en', 'respect', 'уважение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cde35db2-5830-5a80-b6a2-3cdd03a45d35', 'en', 'to mute', 'выключить микрофон', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7e23a99b-12e0-5172-873c-c9b6c1873e89', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7e23a99b-12e0-5172-873c-c9b6c1873e89', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to agree on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7e23a99b-12e0-5172-873c-c9b6c1873e89', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'action item' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7e23a99b-12e0-5172-873c-c9b6c1873e89', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'minutes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7e23a99b-12e0-5172-873c-c9b6c1873e89', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to vote' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7e23a99b-12e0-5172-873c-c9b6c1873e89', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'next steps' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7e23a99b-12e0-5172-873c-c9b6c1873e89', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to chair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to invite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'shorter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prepare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'online' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in person' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'more productive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7f1b2e9f-e2cb-59f0-812b-912a7c209020', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'timebox' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7883ed60-c61c-5b52-a41a-f0b8740472e0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to interrupt politely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7883ed60-c61c-5b52-a41a-f0b8740472e0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to stay on topic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7883ed60-c61c-5b52-a41a-f0b8740472e0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to listen first' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7883ed60-c61c-5b52-a41a-f0b8740472e0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'late' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7883ed60-c61c-5b52-a41a-f0b8740472e0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to contribute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7883ed60-c61c-5b52-a41a-f0b8740472e0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'respect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '848ad668-9c99-533d-b181-98f301e801b4', id, '7883ed60-c61c-5b52-a41a-f0b8740472e0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to mute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
