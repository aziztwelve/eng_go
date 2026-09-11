-- Track: A2_BUSINESS_ENGLISH_PROFESSIONAL_INTRODUCTIONS_AND_NETWORKING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8fab51f6-f7cb-5621-8464-1e45f4c67ded', 'A2_BUSINESS_ENGLISH_PROFESSIONAL_INTRODUCTIONS_AND_NETWORKING', 'Деловые знакомства и нетворкинг', 'Развивайте деловой английский уровня A2 по теме «Деловые знакомства и нетворкинг».', '{"en":"Professional Introductions and Networking","ru":"Деловые знакомства и нетворкинг"}'::jsonb, '{"en":"Develop A2 business English for professional introductions and networking.","ru":"Развивайте деловой английский уровня A2 по теме «Деловые знакомства и нетворкинг»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d1a61b73-24cd-5c92-8aaa-52148c39f6c8', NULL, 'Знакомство на конференции', 'Рассказать о знакомствах, используя past simple и present perfect.', '{"en":"Meeting at a Conference","ru":"Знакомство на конференции"}'::jsonb, '{"en":"Talk about new contacts using past simple and present perfect.","ru":"Рассказать о знакомствах, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fea29a3-ff75-5d59-8125-5af647570904', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to introduce","right":"представить (кого-то)"},{"id":"P2","left":"business card","right":"визитка"},{"id":"P3","left":"to exchange","right":"обменяться"},{"id":"P4","left":"common interests","right":"общие интересы"},{"id":"P5","left":"to keep in touch","right":"оставаться на связи"},{"id":"P6","left":"network","right":"сеть контактов"},{"id":"P7","left":"since then","right":"с тех пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2d50167-04c4-5a0f-a647-7c64e615b776', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have kept in touch since the conference.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have kept in touch since the conference."},{"id":"Q_B","is_correct":false,"text":"We have kept in touch last year."},{"id":"Q_C","is_correct":false,"text":"We keep in touch since yesterday already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d14c8b67-6d60-5efc-b516-c75190af5de2', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I met her at the conference, and we have cooperated since then.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я познакомился с ней на конференции, и с тех пор мы сотрудничаем.","target_language":"en","word_bank":["I","tomorrow","the","conference,","then.","since","meets","we","cooperated","at","have","did","met","and","her"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a8a0423-bc85-5d36-ae90-478c495940de', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"introduced","instruction":"Выберите подходящее слово.","options":["introduced","has introduce","introducing"],"sentence_template":"He ___ me to the sales director at the dinner.","translation_hint":"Он представил меня директору по продажам на ужине."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2d2deae-5c9a-515a-b895-19d2fda3036e', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","exchanged","contacts","with","three","potential","partners."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","have","partners.","three","We","potential","contacts","exchanged","with","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc96cb52-313e-5afd-821d-e5a26565514a', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have just met the founder of a logistics startup, and we have agreed to call next week.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d00bef83-2753-5e99-a8f7-db5d66de0230', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have just met the founder of a logistics startup, and we have agreed to call next week.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я только что познакомился с основателем логистического стартапа, и мы договорились созвониться на следующей неделе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4439258-5acf-5b94-8008-50767e263b40', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Stranger","text":"Excuse me, I enjoyed your presentation. I''m Lena from SoftLine.","translation":"Извините, мне понравилась ваша презентация. Я Лена из SoftLine.","type":"dialogue"},{"character":"Anna","text":"Thank you! Nice to meet you, Lena. Have you been to this conference before?","translation":"Спасибо! Приятно познакомиться, Лена. Вы раньше были на этой конференции?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, I came last year too, and it has grown a lot."},{"is_correct":false,"text":"Yes, I come tomorrow also last year."},{"is_correct":false,"text":"The conference is meeting me before."}],"text":"What does Lena answer?","type":"choice"}],"title":"After the Panel"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1342a49-f996-5efe-954d-651aea3e6a34', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to keep in touch” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To continue to communicate with someone"},{"id":"D_B","is_correct":false,"text":"To forget a contact after one meeting"},{"id":"D_C","is_correct":false,"text":"To send one invoice per year"}],"word":"to keep in touch"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0dbe246-1afa-56e6-9240-af2cfa8ec0bb', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have exchanged business cards.","explanation":"The missing word is “exchanged”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"exchanged","id":"LW_A","is_correct":true},{"audio_text":"exchange","id":"LW_B","is_correct":false},{"audio_text":"exchanging","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ business cards."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('393ff8fc-ca03-5e69-9556-e87790fe905a', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"meet","explanation":"The complete sentence is “Nice to meet you at last!”.","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Nice to ___ you at last!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2e80b30-4757-519e-be23-2616c57b8e8e', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to introduce","id":"V1","text":"to introduce"},{"audio_text":"business card","id":"V2","text":"business card"},{"audio_text":"to exchange","id":"V3","text":"to exchange"},{"audio_text":"common interests","id":"V4","text":"common interests"},{"audio_text":"to keep in touch","id":"V5","text":"to keep in touch"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8d90ac4-a8c6-599a-b6cc-3960b379928e', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did you talk to the speaker after the session?"}],"explanation":"“Yes, we exchanged contacts and have already emailed twice.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, we exchanged contacts and have already emailed twice."},{"id":"C_B","is_correct":false,"text":"Yes, I talk to him tomorrow."},{"id":"C_C","is_correct":false,"text":"The speaker is emailing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8fab51f6-f7cb-5621-8464-1e45f4c67ded', 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', NULL, 'Нетворкинг на завтра', 'Рассказать о планах на нетворкинг и сравнить мероприятия.', '{"en":"Networking Tomorrow","ru":"Нетворкинг на завтра"}'::jsonb, '{"en":"Talk about networking plans and compare events.","ru":"Рассказать о планах на нетворкинг и сравнить мероприятия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fffa2fe-c8db-5d10-b79b-39c2cb87c1ea', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"trade fair","right":"отраслевая выставка"},{"id":"P2","left":"more useful","right":"полезнее"},{"id":"P3","left":"to attend","right":"посетить"},{"id":"P4","left":"to register","right":"зарегистрироваться"},{"id":"P5","left":"in advance","right":"заранее"},{"id":"P6","left":"bigger","right":"больше"},{"id":"P7","left":"follow-up","right":"последующее письмо /跟进"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f0ad2e7-7725-5396-b99d-be735eb1045e', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I am going to attend two networking events this month.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I am going to attend two networking events this month."},{"id":"Q_B","is_correct":false,"text":"I attended two events last month."},{"id":"Q_C","is_correct":false,"text":"I has attended two events yesterday already."}],"question":"Which sentence talks about the future?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('789f0e58-7fd0-5767-b33d-731664045d2b', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The trade fair is bigger this year, and I am going to attend both days.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Выставка в этом году больше, и я собираюсь посетить оба дня.","target_language":"en","word_bank":["and","going","to","year,","days.","The","trade","both","fair","yesterday","am","did","was","bigger","this","I","attend","is"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76905374-85a6-5a66-bfc6-a8452c5cc637', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"Small events are ___ useful for real contacts than huge ones.","translation_hint":"Небольшие мероприятия полезнее для реальных контактов, чем огромные."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dd9488f-58c8-53d9-8221-d118b2fbe5d6', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","register","for","the","conference","in","advance."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","to","I","am","going","conference","register","in","was","advance.","the","for"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25b7c145-91e8-570c-ad49-47811b923e9a', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you send a short follow-up email the day after the event, people will remember you.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('088ff77a-15af-5694-98b1-f1abb6270f93', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you send a short follow-up email the day after the event, people will remember you.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если на следующий день после мероприятия отправить короткое письмо, вас запомнят."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('beddbc4a-894d-58c3-948b-52e4ceae7002', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"There are two events in May: a big expo and a small business breakfast.","translation":"В мае два мероприятия: большая выставка и небольшой бизнес-завтрак.","type":"dialogue"},{"character":"Anna","text":"The breakfast is smaller, but the contacts are more relevant.","translation":"Завтрак меньше, но контакты более релевантные.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am going to attend the breakfast, and you should visit the expo."},{"is_correct":false,"text":"I attended the breakfast yesterday tomorrow."},{"is_correct":false,"text":"The events are attending us in May."}],"text":"What do they decide?","type":"choice"}],"title":"Which Event?"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8e6fcbf-5412-50ce-9eb8-a1c5b90136ae', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“trade fair” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A big event where companies show their products"},{"id":"D_B","is_correct":false,"text":"A small meeting of two colleagues"},{"id":"D_C","is_correct":false,"text":"An online course about sales"}],"word":"trade fair"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c2f872b-2ba2-5894-8374-de6c6a67a735', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to register for the dinner.","explanation":"The missing word is “register”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"register","id":"LW_A","is_correct":true},{"audio_text":"registered","id":"LW_B","is_correct":false},{"audio_text":"registering","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ for the dinner."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('006e0ea3-c8b6-51b3-ad6f-bd1a09318103', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “A follow-up email is better than silence.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A follow-up email is ___ than silence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d98dad2e-5693-54df-9647-31cb1025065c', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"trade fair","id":"V1","text":"trade fair"},{"audio_text":"more useful","id":"V2","text":"more useful"},{"audio_text":"to attend","id":"V3","text":"to attend"},{"audio_text":"to register","id":"V4","text":"to register"},{"audio_text":"in advance","id":"V5","text":"in advance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('feb5a91c-a071-5efe-8662-1cd0eae471e9', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Are you going to the expo on Wednesday?"}],"explanation":"“Yes — if I collect twenty contacts, the trip will be worth the price.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — if I collect twenty contacts, the trip will be worth the price."},{"id":"C_B","is_correct":false,"text":"I went there yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The expo is collecting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8fab51f6-f7cb-5621-8464-1e45f4c67ded', '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a25542c2-3551-5a88-93e3-d13fe094189e', NULL, 'Как поддерживать связи', 'Дать советы о поддержании связей, используя should и первое условное.', '{"en":"How to Maintain Contacts","ru":"Как поддерживать связи"}'::jsonb, '{"en":"Give advice on maintaining contacts using should and the first conditional.","ru":"Дать советы о поддержании связей, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21c2f5b4-e0c7-5acb-9f10-84aacd2afd13', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"regularly","right":"регулярно"},{"id":"P2","left":"congratulations","right":"поздравления"},{"id":"P3","left":"to mention","right":"упомянуть"},{"id":"P4","left":"mutual contact","right":"общий контакт"},{"id":"P5","left":"to recommend","right":"порекомендовать"},{"id":"P6","left":"genuine","right":"искренний"},{"id":"P7","left":"to add on LinkedIn","right":"добавить в LinkedIn"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bda0c1c-c4e1-528d-b70d-186ee0b5df71', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should congratulate contacts on their promotions.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should congratulate contacts on their promotions."},{"id":"Q_B","is_correct":false,"text":"You should to congratulate them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must congratulating them last year."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8a9f8ac-1fb9-568c-a4c5-4f561c2b95c8', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you mention a mutual contact, the conversation will start more easily.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты упомянешь общего знакомого, разговор начнётся легче.","target_language":"en","word_bank":["easily.","mutual","a","will","did","yesterday","contact,","If","more","you","the","start","mention","conversation","mentioned"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c850c462-46d4-54a5-b334-2d117fa8bc61', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"need","instruction":"Выберите подходящее слово.","options":["need","will need","needed"],"sentence_template":"If you only write when you ___ something, people will notice.","translation_hint":"Если писать только когда что-то нужно, люди это заметят."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7c58f03-410d-502d-9220-27e061e5d2d6', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","add","new","contacts","on","LinkedIn","within","a","day."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["day.","contacts","You","mustn''t","should","add","within","on","LinkedIn","went","new","a"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5cc9d32-a050-58bf-9e28-8506465fd014', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you recommend a contact to a client, both of them will trust you more in the future.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68313cca-3c92-5f8b-8493-5844a64e5915', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you recommend a contact to a client, both of them will trust you more in the future.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если порекомендовать контакт клиенту, в будущем оба будут больше вам доверять."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('582a75ab-b0ca-5fe4-b0ad-8315edc98f01', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"This supplier only calls when he wants to sell something.","translation":"Этот поставщик звонит только когда хочет что-то продать.","type":"dialogue"},{"character":"Tom","text":"That''s not real networking. What should we do?","translation":"Это не настоящий нетворкинг. Что нам делать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should also share useful news, not only requests."},{"is_correct":false,"text":"We must to share news yesterday already."},{"is_correct":false,"text":"The supplier is networking us calls."}],"text":"What does Anna advise?","type":"choice"}],"title":"The One-Sided Contact"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d84f707-0b7e-5d3f-b654-6a3f2ffb3259', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“genuine” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Real and honest, not pretended"},{"id":"D_B","is_correct":false,"text":"Very formal and cold"},{"id":"D_C","is_correct":false,"text":"Only about business numbers"}],"word":"genuine"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5601a7ee-964e-57a7-afdf-8f203ce49485', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you recommend them to a client, they will thank you.","explanation":"The missing word is “recommend”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"recommend","id":"LW_A","is_correct":true},{"audio_text":"will recommend","id":"LW_B","is_correct":false},{"audio_text":"recommended","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ them to a client, they will thank you."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('016812dc-6bf3-5295-b20e-9b545a96170e', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “You should keep in touch more often.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should keep in touch ___ often."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('febd61d2-10d5-5ed1-bccd-74c64781b431', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"regularly","id":"V1","text":"regularly"},{"audio_text":"congratulations","id":"V2","text":"congratulations"},{"audio_text":"to mention","id":"V3","text":"to mention"},{"audio_text":"mutual contact","id":"V4","text":"mutual contact"},{"audio_text":"to recommend","id":"V5","text":"to recommend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f213b1d6-c197-50ed-917e-242b2671ab16', 'a25542c2-3551-5a88-93e3-d13fe094189e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Should I message the new contact today?"}],"explanation":"“Yes — if you write while the conversation is fresh, they will remember you.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — if you write while the conversation is fresh, they will remember you."},{"id":"C_B","is_correct":false,"text":"I messaged them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The contact is messaging me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8fab51f6-f7cb-5621-8464-1e45f4c67ded', 'a25542c2-3551-5a88-93e3-d13fe094189e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e14309c-1bde-505d-a9a1-6530733e7059', 'en', 'to introduce', 'представить (кого-то)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('047fe102-ee85-5013-9ad8-a23e5a010159', 'en', 'business card', 'визитка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89bbe95d-1f13-5689-acb1-c42c35822696', 'en', 'to exchange', 'обменяться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2d5805c-2699-505d-be23-75555bab5751', 'en', 'common interests', 'общие интересы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42751fc3-d983-5e0e-88d9-bd417d6097c7', 'en', 'to keep in touch', 'оставаться на связи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('896ebd98-0a90-51f8-ac06-cbf64bcfeda3', 'en', 'network', 'сеть контактов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a56c8a83-a521-53c8-8aa4-8778718ae6dd', 'en', 'since then', 'с тех пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ad4fe0d-0c98-52ad-80c8-3599556d7d28', 'en', 'trade fair', 'отраслевая выставка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8421dc05-cfee-53ab-9476-832523f74d19', 'en', 'more useful', 'полезнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67e120ed-9dfd-5839-b251-84b9b7429b74', 'en', 'to attend', 'посетить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('805b06cc-1612-59ab-9a2e-239efe13e2ff', 'en', 'to register', 'зарегистрироваться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48465a51-bb8d-5af5-beb9-23e75da4553e', 'en', 'in advance', 'заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9745d514-4031-542d-8a80-f42853be3327', 'en', 'bigger', 'больше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('62aa2e7e-ce8d-570c-939c-ae41fbbb7e3a', 'en', 'follow-up', 'последующее письмо /跟进', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b91591cb-a38e-5ed2-bc8e-f05b47a31e0e', 'en', 'regularly', 'регулярно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d39c562d-b3b7-59a3-b10a-8a55a23749ba', 'en', 'congratulations', 'поздравления', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8f93511-1ca2-5899-afb7-26341bc63d7f', 'en', 'to mention', 'упомянуть', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44cf928d-c736-5a89-b898-1e7aa6ab6ce7', 'en', 'mutual contact', 'общий контакт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a9c7-ccb0-5bbe-bc59-8df91202fb08', 'en', 'to recommend', 'порекомендовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ef1ab6f-5323-5614-bdfc-27857d2ab0e2', 'en', 'genuine', 'искренний', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c123c8c6-9a54-5527-b4cf-c0853d2dbdc0', 'en', 'to add on LinkedIn', 'добавить в LinkedIn', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to introduce' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'business card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'common interests' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to keep in touch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'network' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'd1a61b73-24cd-5c92-8aaa-52148c39f6c8', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'since then' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'trade fair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more useful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to attend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'bigger' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, '2604b1a8-2fc0-5c2f-9162-a86f6a8ddef9', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'a25542c2-3551-5a88-93e3-d13fe094189e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'regularly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'a25542c2-3551-5a88-93e3-d13fe094189e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'congratulations' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'a25542c2-3551-5a88-93e3-d13fe094189e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to mention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'a25542c2-3551-5a88-93e3-d13fe094189e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual contact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'a25542c2-3551-5a88-93e3-d13fe094189e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'a25542c2-3551-5a88-93e3-d13fe094189e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'genuine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fab51f6-f7cb-5621-8464-1e45f4c67ded', id, 'a25542c2-3551-5a88-93e3-d13fe094189e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to add on LinkedIn' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
