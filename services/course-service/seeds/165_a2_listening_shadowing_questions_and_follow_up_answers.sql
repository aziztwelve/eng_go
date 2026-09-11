-- Track: A2_LISTENING_SHADOWING_QUESTIONS_AND_FOLLOW_UP_ANSWERS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('41f89da2-f17e-5417-a296-ca6b8a7cba53', 'A2_LISTENING_SHADOWING_QUESTIONS_AND_FOLLOW_UP_ANSWERS', 'Вопросы и развёрнутые ответы', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Вопросы и развёрнутые ответы».', '{"en":"Questions and Follow-up Answers","ru":"Вопросы и развёрнутые ответы"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for questions and follow-up answers.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Вопросы и развёрнутые ответы»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', NULL, 'Вопросы о прошлом', 'Понимать вопросы и ответы о прошлом, используя past simple и present perfect.', '{"en":"Questions About the Past","ru":"Вопросы о прошлом"}'::jsonb, '{"en":"Understand past questions and answers using past simple and present perfect.","ru":"Понимать вопросы и ответы о прошлом, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53d1d05c-1cba-5c95-896e-7a321c8f5ce5', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"How long...?","right":"Как долго...?"},{"id":"P2","left":"What happened next?","right":"Что было дальше?"},{"id":"P3","left":"to find out","right":"выяснить"},{"id":"P4","left":"the reason why","right":"причина, по которой"},{"id":"P5","left":"to explain","right":"объяснить"},{"id":"P6","left":"How come?","right":"Как так получилось?"},{"id":"P7","left":"detail","right":"деталь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58f7a5e0-d5ed-56e5-9505-9e9f380bc011', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “How long have you worked here?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"How long have you worked here?"},{"id":"Q_B","is_correct":false,"text":"How long you work here yesterday?"},{"id":"Q_C","is_correct":false,"text":"How long did you worked tomorrow?"}],"question":"Which question asks about duration?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('022fda7b-8274-54c8-9d70-1181d6b595b4', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"How come you did not know about the meeting?","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Как так получилось, что ты не знал о встрече?","target_language":"en","word_bank":["did","tomorrow","did","come","about","meeting?","not","the","How","know","know","you"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e647f6e2-3743-588b-a242-09cd60373425', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"why","instruction":"Выберите подходящее слово.","options":["why","because","how"],"sentence_template":"She explained the reason ___ she had left early.","translation_hint":"Она объяснила причину, по которой ушла раньше."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a4889ba-f7fd-5c2b-9146-ef78d9b05c3c', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Have","you","found","out","what","happened","next?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["next?","Have","out","what","you","found","was","did","happened"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8be9216e-2c82-51c9-af43-7fad9a1c123a', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"How long have you lived in this city? What made you move here, and do you remember your first week?","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21fa269a-fc77-5cd2-94cd-05d5f974a172', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"How long have you lived in this city? What made you move here, and do you remember your first week?","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Как долго ты живёшь в этом городе? Что заставило тебя переехать, и помнишь ли свою первую неделю?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c5f06b1-c47c-5fef-a3db-94712c49fd1c', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"You mentioned a trip to Georgia. How long did you stay?","translation":"Ты упоминала поездку в Грузию. Как долго ты была там?","type":"dialogue"},{"character":"Voice 2","text":"Two weeks. We found out about the mountain trains only after we arrived!","translation":"Две недели. Мы узнали о горных поездах только после приезда!","type":"dialogue"},{"options":[{"is_correct":true,"text":"What happened after you found out about them?"},{"is_correct":false,"text":"What happens after you found it tomorrow?"},{"is_correct":false,"text":"Is the trip asking about the trains?"}],"text":"What does Voice 1 ask next?","type":"choice"}],"title":"Small Talk Questions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b5068b9-8834-5a21-b308-0988e307628e', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“How come...?” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A friendly way to ask why something happened"},{"id":"D_B","is_correct":false,"text":"A polite way to ask for the time"},{"id":"D_C","is_correct":false,"text":"A formal way to end a conversation"}],"word":"How come...?"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f93746d-f92c-5f97-ad42-46bb6428bc69', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"How long have you known each other?","explanation":"The missing word is “long”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"long","id":"LW_A","is_correct":true},{"audio_text":"much","id":"LW_B","is_correct":false},{"audio_text":"many","id":"LW_C","is_correct":false}],"sentence_template":"How ___ have you known each other?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbd928ba-88b6-514b-b48e-956329a27085', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reason","explanation":"The complete sentence is “I still do not know the reason why he called.”.","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I still do not know the ___ why he called."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76bdc2dd-3e95-5008-9b9b-a0fcf320df5c', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"How long...?","id":"V1","text":"How long...?"},{"audio_text":"What happened next?","id":"V2","text":"What happened next?"},{"audio_text":"to find out","id":"V3","text":"to find out"},{"audio_text":"the reason why","id":"V4","text":"the reason why"},{"audio_text":"to explain","id":"V5","text":"to explain"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22bbdc67-0d6e-5d90-9760-ca3935222aa4', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Did you ask her about the concert?"}],"explanation":"“Yes — it turned out she has never been to one, so we are going together.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — it turned out she has never been to one, so we are going together."},{"id":"C_B","is_correct":false,"text":"I asked her yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The concert is asking her."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('41f89da2-f17e-5417-a296-ca6b8a7cba53', '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('487af2d5-b700-5459-a521-cfdb37188609', NULL, 'Вопросы о планах', 'Понимать вопросы о будущем и уточнять детали.', '{"en":"Questions About Plans","ru":"Вопросы о планах"}'::jsonb, '{"en":"Understand future questions and clarify details.","ru":"Понимать вопросы о будущем и уточнять детали."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94158a66-b3a1-5a34-b632-193d05f47c9b', '487af2d5-b700-5459-a521-cfdb37188609', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"What about you?","right":"А ты?"},{"id":"P2","left":"to be planning to","right":"планировать"},{"id":"P3","left":"more specific","right":"конкретнее"},{"id":"P4","left":"either way","right":"в любом случае"},{"id":"P5","left":"to make sure","right":"убедиться"},{"id":"P6","left":"to depend on","right":"зависеть от"},{"id":"P7","left":"as well","right":"тоже"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d60c5a05-7fda-59c3-809c-581d4e8b9f83', '487af2d5-b700-5459-a521-cfdb37188609', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Are you planning to stay for the dinner as well?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Are you planning to stay for the dinner as well?"},{"id":"Q_B","is_correct":false,"text":"You are planning stay yesterday dinner?"},{"id":"Q_C","is_correct":false,"text":"Is the dinner planning you as well?"}],"question":"Which question asks about a future plan politely?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3abc4cc2-52ab-5967-b037-f0836f81c340', '487af2d5-b700-5459-a521-cfdb37188609', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Whether you go to the sea in summer — does it depend on work or on money?","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Поедешь ли ты летом к морю, зависит от работы или от денег?","target_language":"en","word_bank":["on","it","work","yesterday","went","you","sea","did","summer","to","go","Whether","—","the","does","money?","on","in","or","depend"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21aed157-d1b4-5980-9b0c-010cd4bf4fcd', '487af2d5-b700-5459-a521-cfdb37188609', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"Could you be ___ specific about the dates?","translation_hint":"Можешь быть конкретнее насчёт дат?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd8be90d-3f0b-5f76-8d9c-061b263e90a3', '487af2d5-b700-5459-a521-cfdb37188609', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Are","you","planning","to","move","as","well?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["you","move","planning","was","Are","did","to","well?","as"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adcc08b2-4740-5852-a1fe-39cced17674d', '487af2d5-b700-5459-a521-cfdb37188609', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Are you planning to join us on Saturday? It depends on the weather, I know, but either way let me know by Thursday.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76d31e1b-124d-5f41-86d7-c5ba5f9a99a1', '487af2d5-b700-5459-a521-cfdb37188609', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Are you planning to join us on Saturday? It depends on the weather, I know, but either way let me know by Thursday.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Ты планируешь присоединиться в субботу? Я знаю, всё зависит от погоды, но в любом случае дай знать до четверга."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('248f7937-71d3-5603-b788-a93f038db8bc', '487af2d5-b700-5459-a521-cfdb37188609', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Are you planning to take the early train on Friday?","translation":"Ты планируешь ехать ранним поездом в пятницу?","type":"dialogue"},{"character":"Voice 2","text":"Probably. Why — are you going the same way?","translation":"Наверное. А что — ты едешь тем же маршрутом?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, so let''s make sure we book seats together."},{"is_correct":false,"text":"Yes, we booked together yesterday tomorrow."},{"is_correct":false,"text":"The train is planning us both."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Clarifying a Plan"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f04b656-76e2-5211-aea6-f1d590c77247', '487af2d5-b700-5459-a521-cfdb37188609', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“either way” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Used when both possibilities lead to the same result"},{"id":"D_B","is_correct":false,"text":"A phrase for counting two things together"},{"id":"D_C","is_correct":false,"text":"A way to say you disagree politely"}],"word":"either way"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2a32a08-3323-5622-83c8-403f794a1eaf', '487af2d5-b700-5459-a521-cfdb37188609', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Are you planning to stay for lunch?","explanation":"The missing word is “planning”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"planning","id":"LW_A","is_correct":true},{"audio_text":"plan","id":"LW_B","is_correct":false},{"audio_text":"planned","id":"LW_C","is_correct":false}],"sentence_template":"Are you ___ to stay for lunch?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4a34fec-8816-5218-8440-42d8f2a32442', '487af2d5-b700-5459-a521-cfdb37188609', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"depends","explanation":"The complete sentence is “It depends on the traffic, unfortunately.”.","hint_prefix":"de","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"It ___ on the traffic, unfortunately."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8aae46bc-74a5-557c-9942-8bcc5d6736fe', '487af2d5-b700-5459-a521-cfdb37188609', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"What about you?","id":"V1","text":"What about you?"},{"audio_text":"to be planning to","id":"V2","text":"to be planning to"},{"audio_text":"more specific","id":"V3","text":"more specific"},{"audio_text":"either way","id":"V4","text":"either way"},{"audio_text":"to make sure","id":"V5","text":"to make sure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b78e5361-e2a9-5adf-8e69-c04642eea875', '487af2d5-b700-5459-a521-cfdb37188609', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"What are you doing this weekend?"}],"explanation":"“Nothing special — what about you? If you are free, we could try the new climbing wall.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Nothing special — what about you? If you are free, we could try the new climbing wall."},{"id":"C_B","is_correct":false,"text":"I did it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The weekend is doing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('41f89da2-f17e-5417-a296-ca6b8a7cba53', '487af2d5-b700-5459-a521-cfdb37188609', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e212cdc3-8b7a-5246-8c27-7db725849664', NULL, 'Уточняющие вопросы', 'Понимать уточняющие вопросы, используя should и первое условное.', '{"en":"Follow-up Questions","ru":"Уточняющие вопросы"}'::jsonb, '{"en":"Understand follow-up questions using should and the first conditional.","ru":"Понимать уточняющие вопросы, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b92197b6-dbd6-58d3-9ce0-2bf5f47e0c98', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to mean","right":"иметь в виду"},{"id":"P2","left":"to check","right":"уточнить"},{"id":"P3","left":"correct me if I''m wrong","right":"поправь, если я не прав"},{"id":"P4","left":"in other words","right":"другими словами"},{"id":"P5","left":"to sum up","right":"подытожить"},{"id":"P6","left":"to make sense","right":"иметь смысл"},{"id":"P7","left":"exactly","right":"именно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb572d79-b830-5b46-b9c9-41d3e6ca8366', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “So, in other words, the meeting has moved to Friday?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"So, in other words, the meeting has moved to Friday?"},{"id":"Q_B","is_correct":false,"text":"So the meeting moved yesterday Friday, yes?"},{"id":"Q_C","is_correct":false,"text":"In other words is the meeting Friday yesterday?"}],"question":"Which phrase checks understanding politely?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9e886da-3d04-5369-a1f9-effb22742727', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Correct me if I am wrong — you are staying for one more week?","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если я правильно понял, ты остаёшься ещё на неделю?","target_language":"en","word_bank":["yesterday","one","more","I","staying","week?","Correct","if","—","me","did","you","wrong","are","understood","am","for"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7730a9a-5abd-571d-ab30-3d8fc017a51d', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"makes","instruction":"Выберите подходящее слово.","options":["makes","will make","made"],"sentence_template":"If the plan ___ sense, let''s start tomorrow.","translation_hint":"Если план имеет смысл, начнём завтра."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bb2a15a-01a1-5bd7-9098-030578c5feef', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","sum","up,","we","should","wait","for","the","final","answer."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["answer.","we","sum","should","the","for","up,","mustn''t","final","wait","To","went"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b82781ef-0ef3-5fbd-87ec-88a0a9c43273', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Let me check if I understood you: if we order today, the delivery comes on Thursday — is that exactly what you mean?","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ce154ac-d70a-5bf5-a6fb-2f7178e2be36', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Let me check if I understood you: if we order today, the delivery comes on Thursday — is that exactly what you mean?","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Позволь уточнить: если закажем сегодня, доставка придёт в четверг — именно это ты имеешь в виду?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97b2870f-3df4-56f7-bae6-6d7f3050fc09', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"So we should send the draft to the client, in other words?","translation":"Итак, нам следует отправить черновик клиенту, другими словами?","type":"dialogue"},{"character":"Voice 2","text":"Not exactly — we should wait for the designer''s final version first.","translation":"Не совсем — сначала стоит дождаться финальной версии от дизайнера.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Ah, I see. So if the version comes today, we send it this evening?"},{"is_correct":false,"text":"So we sent it yesterday evening already?"},{"is_correct":false,"text":"Is the designer wording the client?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"Checking the Details"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4105131-c84d-524b-a08d-f02e8f527fa6', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to make sense” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To be clear and logical"},{"id":"D_B","is_correct":false,"text":"To be strange and difficult to understand"},{"id":"D_C","is_correct":false,"text":"To cost too much money"}],"word":"to make sense"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ed8d521-4214-5b35-ae15-66a9556e9374', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If I understood you correctly, we start on Monday.","explanation":"The missing word is “understood”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"understood","id":"LW_A","is_correct":true},{"audio_text":"understand","id":"LW_B","is_correct":false},{"audio_text":"understanding","id":"LW_C","is_correct":false}],"sentence_template":"If I ___ you correctly, we start on Monday."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6c03cf8-43bd-5e35-ac27-5af438bef59f', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"sum","explanation":"The complete sentence is “To sum up, we all agree.”.","hint_prefix":"su","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To ___ up, we all agree."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca9c826f-7f64-557c-9902-f6312217774d', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to mean","id":"V1","text":"to mean"},{"audio_text":"to check","id":"V2","text":"to check"},{"audio_text":"correct me if I''m wrong","id":"V3","text":"correct me if I''m wrong"},{"audio_text":"in other words","id":"V4","text":"in other words"},{"audio_text":"to sum up","id":"V5","text":"to sum up"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7212b719-346a-5f74-99e6-a807ffc5ce50', 'e212cdc3-8b7a-5246-8c27-7db725849664', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"So the party starts at nine, right?"}],"explanation":"“Exactly — and if you bring the salad, I will handle the drinks.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Exactly — and if you bring the salad, I will handle the drinks."},{"id":"C_B","is_correct":false,"text":"It started yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The party is nining us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('41f89da2-f17e-5417-a296-ca6b8a7cba53', 'e212cdc3-8b7a-5246-8c27-7db725849664', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05091494-bb23-521c-be9a-5f3cd40c9a96', 'en', 'How long...?', 'Как долго...?', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5cb8b10f-b273-5559-a810-dca484dc499f', 'en', 'What happened next?', 'Что было дальше?', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7af57a4a-6dc9-5624-97b4-262984f26333', 'en', 'to find out', 'выяснить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2925023b-8991-5bc5-9a51-935f23e6cb79', 'en', 'the reason why', 'причина, по которой', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d70beb98-38eb-5847-be0e-4301e553920f', 'en', 'to explain', 'объяснить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e55e333f-2e89-5514-8cf5-b51943dd506f', 'en', 'How come?', 'Как так получилось?', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3447dacc-9f52-5972-9e9e-ab530e2fc1ed', 'en', 'What about you?', 'А ты?', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('db0670f2-fff0-5c78-a493-6aa3445e13f7', 'en', 'to be planning to', 'планировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae266090-4b3e-5e4f-aeb3-1cb0d37ab45d', 'en', 'more specific', 'конкретнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c48749a0-aae5-517c-b45f-1e15ff13bd25', 'en', 'either way', 'в любом случае', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1efba0af-af3e-5e2a-97a7-ba9b8f1ff5fd', 'en', 'to make sure', 'убедиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be42dfdf-4dda-5ac8-9508-6114fad4156b', 'en', 'to depend on', 'зависеть от', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8166f2e4-63ec-5818-aa7e-ea6bacbe6706', 'en', 'as well', 'тоже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('504a2d76-4703-5687-8bf1-24a43ef5f0e5', 'en', 'to mean', 'иметь в виду', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d0d29d53-006a-5c81-b86c-bf37d84bb084', 'en', 'to check', 'уточнить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41b05f36-c68a-562f-a99a-5294acb978a2', 'en', 'correct me if I''m wrong', 'поправь, если я не прав', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('966dd2ed-8671-5308-8de5-5e498509c71d', 'en', 'in other words', 'другими словами', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9cb11f18-7954-58c1-a5cb-fd29b8f6ce8a', 'en', 'to sum up', 'подытожить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18abad17-069a-5534-9dc9-1c00d74ade23', 'en', 'to make sense', 'иметь смысл', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e5dd267-e052-5adb-a36b-53707ef96d84', 'en', 'exactly', 'именно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'How long...?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'What happened next?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to find out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'the reason why' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to explain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'How come?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '0ae306b2-f1a0-58c8-a1ec-613297d8f6ee', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '487af2d5-b700-5459-a521-cfdb37188609', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'What about you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '487af2d5-b700-5459-a521-cfdb37188609', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be planning to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '487af2d5-b700-5459-a521-cfdb37188609', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more specific' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '487af2d5-b700-5459-a521-cfdb37188609', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'either way' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '487af2d5-b700-5459-a521-cfdb37188609', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make sure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '487af2d5-b700-5459-a521-cfdb37188609', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to depend on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, '487af2d5-b700-5459-a521-cfdb37188609', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'as well' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, 'e212cdc3-8b7a-5246-8c27-7db725849664', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to mean' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, 'e212cdc3-8b7a-5246-8c27-7db725849664', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, 'e212cdc3-8b7a-5246-8c27-7db725849664', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'correct me if I''m wrong' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, 'e212cdc3-8b7a-5246-8c27-7db725849664', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'in other words' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, 'e212cdc3-8b7a-5246-8c27-7db725849664', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to sum up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, 'e212cdc3-8b7a-5246-8c27-7db725849664', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make sense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '41f89da2-f17e-5417-a296-ca6b8a7cba53', id, 'e212cdc3-8b7a-5246-8c27-7db725849664', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'exactly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
