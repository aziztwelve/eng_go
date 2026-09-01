-- Track: A1_BUSINESS_ENGLISH_BASIC_BUSINESS_EMAILS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ca62491e-2fa2-56e4-89c2-709c36ea0d9d', 'A1_BUSINESS_ENGLISH_BASIC_BUSINESS_EMAILS', 'Основные деловые письма', 'Научитесь начинать простое деловое письмо, писать просьбу и вежливо завершать ответ.', 'en', 'A1', '', ARRAY['business_english']::text[], true, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('65c35222-efa7-57c3-b57b-da9d1b2f0005', NULL, 'Начало делового письма', 'Научиться использовать простое приветствие и представление в деловом письме.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ceef91b5-37b2-5c4b-a714-a2a0a0105da2', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBE_L1_MP_P1","left":"email","right":"электронное письмо"},{"id":"BEBE_L1_MP_P2","left":"subject","right":"тема письма"},{"id":"BEBE_L1_MP_P3","left":"Dear Anna","right":"Уважаемая Анна"},{"id":"BEBE_L1_MP_P4","left":"Hello Mr. Lee","right":"Здравствуйте, мистер Ли"},{"id":"BEBE_L1_MP_P5","left":"My name is","right":"Меня зовут"},{"id":"BEBE_L1_MP_P6","left":"I work for","right":"Я работаю в компании"},{"id":"BEBE_L1_MP_P7","left":"Good morning","right":"Доброе утро"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('84156538-f92f-5615-82d9-6b6bf19b3881', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'quiz', 'Проверьте себя', '{"explanation":"“Dear Mr. Brown” is a suitable greeting in a simple business email.","instruction":"Выберите правильный ответ.","options":[{"id":"BEBE_L1_Q_A","is_correct":true,"text":"Dear Mr. Brown,"},{"id":"BEBE_L1_Q_B","is_correct":false,"text":"See you yesterday."},{"id":"BEBE_L1_Q_C","is_correct":false,"text":"I am an email."}],"question":"Which phrase is a suitable email greeting?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('726b165e-1763-5d09-a9c6-e854cad7c4b3', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'translate', 'Переведите', '{"correct_translation":"Dear Anna, my name is Mark.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Уважаемая Анна, меня зовут Марк.","target_language":"en","word_bank":["Mark.","is","name","my","Anna,","Dear"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('28ade89b-dd39-5438-ad68-e03e953e0743', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"Dear","instruction":"Выберите подходящее слово.","options":["Dear","Meeting","Thanks"],"sentence_template":"___ Mr. Lee,"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c9e7f833-6e26-5da4-81ad-06c2a40216fd', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'tap_words', 'Соберите фразу', '{"correct_words":["I","work","for","Lumo."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Lumo.","for","work","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7f9ec5fb-751f-54c2-93ac-24d978382922', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'listening', 'Послушайте', '{"audio_text":"Dear Anna, my name is David.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3550d4df-9860-5c75-9d61-914237c9ec74', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'listening_shadowing', 'Повторите', '{"audio_text":"Good morning, Ms. Green. My name is Eva.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Доброе утро, мисс Грин. Меня зовут Ева."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7df0ee76-0fc9-5c86-aa6d-9a3bf638fe0b', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mia","text":"Dear Mr. Lee,","translation":"Уважаемый мистер Ли,","type":"dialogue"},{"character":"Mia","text":"My name is Mia, and I work for Lumo.","translation":"Меня зовут Миа, и я работаю в компании Lumo.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am writing about our meeting."},{"is_correct":false,"text":"My email can swim."}],"text":"What should Mia write next?","type":"choice"}],"title":"A First Email"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e27cd328-f420-5d08-824a-fd74709fa740', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'choose_definition', 'Определение', '{"explanation":"An email subject is a short line that says what the email is about.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBE_L1_D_A","is_correct":true,"text":"A short line that says what an email is about"},{"id":"BEBE_L1_D_B","is_correct":false,"text":"The person who sends an email"},{"id":"BEBE_L1_D_C","is_correct":false,"text":"The final word in an email"}],"word":"subject"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3440c82b-1d05-54c3-af54-f4a1142bb69d', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'listen_choose_word', 'Слово', '{"audio_text":"Dear Anna,","explanation":"The missing greeting is “Dear.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Dear","id":"BEBE_L1_LW_A","is_correct":true},{"audio_text":"Thanks","id":"BEBE_L1_LW_B","is_correct":false},{"audio_text":"Office","id":"BEBE_L1_LW_C","is_correct":false}],"sentence_template":"___ Anna,"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('990f7a44-440c-5bd0-a50a-135bc9826103', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'missing_word', 'Впишите', '{"correct_answer":"name","explanation":"The complete sentence is “My name is Tom.”","hint_prefix":"na","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My ___ is Tom."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1f9ec2a5-bb68-51c1-94b0-da42844f680a', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'match_pairs_voice', 'Звук', '{"explanation":"Match each business email phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"email","id":"BEBE_L1_VM_P1","text":"email"},{"audio_text":"Dear Anna","id":"BEBE_L1_VM_P2","text":"Dear Anna"},{"audio_text":"Good morning","id":"BEBE_L1_VM_P3","text":"Good morning"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3216f8b4-6c3c-5118-b454-489c75fc430f', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Client","text":"Hello. My name is Daniel Green."}],"explanation":"This is a polite and suitable email response.","instruction":"Ответьте.","options":[{"id":"BEBE_L1_C_A","is_correct":true,"text":"Dear Mr. Green, thank you for your email."},{"id":"BEBE_L1_C_B","is_correct":false,"text":"I am an email years old."},{"id":"BEBE_L1_C_C","is_correct":false,"text":"Good night, subject."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ca62491e-2fa2-56e4-89c2-709c36ea0d9d', '65c35222-efa7-57c3-b57b-da9d1b2f0005', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ee309470-8a63-5333-b68c-f8da644d211c', NULL, 'Простые просьбы в письме', 'Научиться писать простую просьбу и запрашивать основную информацию.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('08ea957d-11d6-5132-9715-718812792589', 'ee309470-8a63-5333-b68c-f8da644d211c', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBE_L2_MP_P1","left":"Please send","right":"Пожалуйста, отправьте"},{"id":"BEBE_L2_MP_P2","left":"Please confirm","right":"Пожалуйста, подтвердите"},{"id":"BEBE_L2_MP_P3","left":"information","right":"информация"},{"id":"BEBE_L2_MP_P4","left":"document","right":"документ"},{"id":"BEBE_L2_MP_P5","left":"meeting time","right":"время встречи"},{"id":"BEBE_L2_MP_P6","left":"Can you help?","right":"Вы можете помочь?"},{"id":"BEBE_L2_MP_P7","left":"Thank you","right":"Спасибо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('eb582c47-a8e7-5dc1-ad16-2b407a815e30', 'ee309470-8a63-5333-b68c-f8da644d211c', 'quiz', 'Проверьте себя', '{"explanation":"“Please send the document” is a clear and polite request.","instruction":"Выберите правильный ответ.","options":[{"id":"BEBE_L2_Q_A","is_correct":true,"text":"Please send the document."},{"id":"BEBE_L2_Q_B","is_correct":false,"text":"The document is a meeting."},{"id":"BEBE_L2_Q_C","is_correct":false,"text":"Thank you yesterday."}],"question":"Which phrase asks someone to send a document?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c453b007-47f0-5ba4-802f-9f6e67bc90e7', 'ee309470-8a63-5333-b68c-f8da644d211c', 'translate', 'Переведите', '{"correct_translation":"Please confirm the meeting time.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пожалуйста, подтвердите время встречи.","target_language":"en","word_bank":["time.","meeting","the","confirm","Please"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3dc56f14-f1b9-5c1b-bc53-9bb993d6b55e', 'ee309470-8a63-5333-b68c-f8da644d211c', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"document","instruction":"Выберите подходящее слово.","options":["document","manager","morning"],"sentence_template":"Please send the ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7f0a2994-4c60-513a-be50-00d6acc0a39d', 'ee309470-8a63-5333-b68c-f8da644d211c', 'tap_words', 'Соберите фразу', '{"correct_words":["Can","you","help?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["help?","you","Can"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5e203452-a4cd-5510-8031-978a5ba776b6', 'ee309470-8a63-5333-b68c-f8da644d211c', 'listening', 'Послушайте', '{"audio_text":"Please send the information.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('671c1e80-da5b-5b49-8a16-a3efa2371292', 'ee309470-8a63-5333-b68c-f8da644d211c', 'listening_shadowing', 'Повторите', '{"audio_text":"Can you confirm the meeting time, please?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Вы можете подтвердить время встречи, пожалуйста?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('74059993-6090-55c2-a79a-6cf0875dcd0a', 'ee309470-8a63-5333-b68c-f8da644d211c', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Anna","text":"Hello Tom,","translation":"Здравствуйте, Том,","type":"dialogue"},{"character":"Anna","text":"Please send the document today.","translation":"Пожалуйста, отправьте документ сегодня.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"The document is a colleague."}],"text":"What should Anna write next?","type":"choice"}],"title":"A Short Request"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8b479b63-4a85-54f0-b1ea-bac18dc31e11', 'ee309470-8a63-5333-b68c-f8da644d211c', 'choose_definition', 'Определение', '{"explanation":"“Confirm” means to say that information or a plan is correct.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBE_L2_D_A","is_correct":true,"text":"To say that information or a plan is correct"},{"id":"BEBE_L2_D_B","is_correct":false,"text":"To begin a meeting"},{"id":"BEBE_L2_D_C","is_correct":false,"text":"To introduce a colleague"}],"word":"confirm"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2e2022f7-d034-5bd4-8b7f-7a029aa08a47', 'ee309470-8a63-5333-b68c-f8da644d211c', 'listen_choose_word', 'Слово', '{"audio_text":"Please send the document.","explanation":"The missing word is “document.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"document","id":"BEBE_L2_LW_A","is_correct":true},{"audio_text":"client","id":"BEBE_L2_LW_B","is_correct":false},{"audio_text":"lunch","id":"BEBE_L2_LW_C","is_correct":false}],"sentence_template":"Please send the ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bd3f81a7-6c10-55bf-ab10-1153fafaaef3', 'ee309470-8a63-5333-b68c-f8da644d211c', 'missing_word', 'Впишите', '{"correct_answer":"confirm","explanation":"The complete request is “Please confirm the time.”","hint_prefix":"co","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please ___ the time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0358767b-90d7-58fe-84b2-1f4a71e29afc', 'ee309470-8a63-5333-b68c-f8da644d211c', 'match_pairs_voice', 'Звук', '{"explanation":"Match each business email phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Please send","id":"BEBE_L2_VM_P1","text":"Please send"},{"audio_text":"Please confirm","id":"BEBE_L2_VM_P2","text":"Please confirm"},{"audio_text":"Can you help?","id":"BEBE_L2_VM_P3","text":"Can you help?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('02224aa0-5fd3-55d9-9572-e0dd847db5ae', 'ee309470-8a63-5333-b68c-f8da644d211c', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Manager","text":"Please send the report today."}],"explanation":"This reply politely accepts the email request.","instruction":"Ответьте.","options":[{"id":"BEBE_L2_C_A","is_correct":true,"text":"Of course. I will send it today."},{"id":"BEBE_L2_C_B","is_correct":false,"text":"I am a report today."},{"id":"BEBE_L2_C_C","is_correct":false,"text":"My document is five."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ca62491e-2fa2-56e4-89c2-709c36ea0d9d', 'ee309470-8a63-5333-b68c-f8da644d211c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('30d48657-70fd-543e-9393-437625cf270e', NULL, 'Ответ и завершение письма', 'Научиться писать короткий ответ и вежливо завершать деловое письмо.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('db679c35-db15-53d1-8c70-b1b4061707e9', '30d48657-70fd-543e-9393-437625cf270e', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBE_L3_MP_P1","left":"Thank you for your email","right":"Спасибо за ваше письмо"},{"id":"BEBE_L3_MP_P2","left":"I understand","right":"Я понимаю"},{"id":"BEBE_L3_MP_P3","left":"I will send it","right":"Я отправлю это"},{"id":"BEBE_L3_MP_P4","left":"See you on Monday","right":"Увидимся в понедельник"},{"id":"BEBE_L3_MP_P5","left":"Best regards","right":"С наилучшими пожеланиями"},{"id":"BEBE_L3_MP_P6","left":"Kind regards","right":"С уважением"},{"id":"BEBE_L3_MP_P7","left":"reply","right":"ответить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5460ffb3-1763-5f0a-bb41-d921c199f785', '30d48657-70fd-543e-9393-437625cf270e', 'quiz', 'Проверьте себя', '{"explanation":"“Best regards” is a polite closing at the end of a business email.","instruction":"Выберите правильный ответ.","options":[{"id":"BEBE_L3_Q_A","is_correct":true,"text":"Best regards,"},{"id":"BEBE_L3_Q_B","is_correct":false,"text":"Dear Monday,"},{"id":"BEBE_L3_Q_C","is_correct":false,"text":"Please start the email."}],"question":"Which phrase is used at the end of a business email?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f3879c9b-b812-557d-ac68-c4ca4d3ce9a4', '30d48657-70fd-543e-9393-437625cf270e', 'translate', 'Переведите', '{"correct_translation":"Thank you for your email.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Спасибо за ваше письмо.","target_language":"en","word_bank":["email.","your","for","you","Thank"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('281efdf6-df5d-5e1b-9373-c1f28af633ec', '30d48657-70fd-543e-9393-437625cf270e', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"regards","instruction":"Выберите подходящее слово.","options":["regards","subject","document"],"sentence_template":"Best ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c22a779c-a5ef-5d8c-b035-cf76677f1e4e', '30d48657-70fd-543e-9393-437625cf270e', 'tap_words', 'Соберите фразу', '{"correct_words":["I","will","send","it","today."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["send","today.","it","will","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('49202a46-16da-5d2a-8c65-5c0fc988948f', '30d48657-70fd-543e-9393-437625cf270e', 'listening', 'Послушайте', '{"audio_text":"Thank you for your email.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d1f3bc4a-069e-5390-80af-5526bdecd290', '30d48657-70fd-543e-9393-437625cf270e', 'listening_shadowing', 'Повторите', '{"audio_text":"I understand. I will send the document today. Best regards, Anna.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я понимаю. Я отправлю документ сегодня. С наилучшими пожеланиями, Анна."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7aa75f08-7ba2-5e4b-971b-f44bb821fc07', '30d48657-70fd-543e-9393-437625cf270e', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"Thank you for your email.","translation":"Спасибо за ваше письмо.","type":"dialogue"},{"character":"Ben","text":"I will confirm the meeting today.","translation":"Я подтвержу встречу сегодня.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Best regards, Ben."},{"is_correct":false,"text":"My regards are a meeting."}],"text":"How should Ben close the email?","type":"choice"}],"title":"An Email Reply"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bd7b9a34-c394-58dc-bcbe-d40cf5211b9a', '30d48657-70fd-543e-9393-437625cf270e', 'choose_definition', 'Определение', '{"explanation":"“Reply” means to answer a message or email.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBE_L3_D_A","is_correct":true,"text":"To answer a message or email"},{"id":"BEBE_L3_D_B","is_correct":false,"text":"To write the email subject"},{"id":"BEBE_L3_D_C","is_correct":false,"text":"To start a business meeting"}],"word":"reply"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('18c64802-e37a-5ff4-9898-49a1bfa9cb30', '30d48657-70fd-543e-9393-437625cf270e', 'listen_choose_word', 'Слово', '{"audio_text":"Best regards.","explanation":"The missing word is “regards.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"regards","id":"BEBE_L3_LW_A","is_correct":true},{"audio_text":"client","id":"BEBE_L3_LW_B","is_correct":false},{"audio_text":"ready","id":"BEBE_L3_LW_C","is_correct":false}],"sentence_template":"Best ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0ec0ff33-e7d8-593d-8f6f-53491437a39f', '30d48657-70fd-543e-9393-437625cf270e', 'missing_word', 'Впишите', '{"correct_answer":"send","explanation":"The complete sentence is “I will send it.”","hint_prefix":"se","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I will ___ it."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b470bf80-3bb3-5539-b2f2-54afa74127cf', '30d48657-70fd-543e-9393-437625cf270e', 'match_pairs_voice', 'Звук', '{"explanation":"Match each business email phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Thank you for your email","id":"BEBE_L3_VM_P1","text":"Thank you for your email"},{"audio_text":"Best regards","id":"BEBE_L3_VM_P2","text":"Best regards"},{"audio_text":"Kind regards","id":"BEBE_L3_VM_P3","text":"Kind regards"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9f55bafc-d247-545b-9a6b-3aa5d699e0f8', '30d48657-70fd-543e-9393-437625cf270e', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Client","text":"Thank you for the information."}],"explanation":"This is a polite short reply and email closing.","instruction":"Ответьте.","options":[{"id":"BEBE_L3_C_A","is_correct":true,"text":"You are welcome. Kind regards, Anna."},{"id":"BEBE_L3_C_B","is_correct":false,"text":"I am information."},{"id":"BEBE_L3_C_C","is_correct":false,"text":"Dear goodbye yesterday."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ca62491e-2fa2-56e4-89c2-709c36ea0d9d', '30d48657-70fd-543e-9393-437625cf270e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('20d0f721-e4e4-5dd6-938c-835855530666', 'en', 'email', 'электронное письмо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cfd70fc-7a53-51c5-9e9c-e0f354167b14', 'en', 'subject', 'тема письма', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('971488fd-b9dc-5855-a12a-d9a52254de97', 'en', 'Dear Anna', 'Уважаемая Анна', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cc21db2-bfa4-5697-80e9-fc7f127616b2', 'en', 'Hello Mr. Lee', 'Здравствуйте, мистер Ли', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10535791-2ab9-5963-a77c-534729030e5e', 'en', 'My name is', 'Меня зовут', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('232dd0ca-561c-5d33-a661-b37c38eb4e95', 'en', 'I work for', 'Я работаю в компании', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777dc687-03b4-5f9c-8375-8f436101a373', 'en', 'Good morning', 'Доброе утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e7323d87-e031-59e8-9396-908c2675bbe3', 'en', 'Please send', 'Пожалуйста, отправьте', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9de99e69-beb6-51a5-bb56-edeb845a4eb6', 'en', 'Please confirm', 'Пожалуйста, подтвердите', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37ec5cdf-a5e4-5a5b-b9e2-7be533cacbb0', 'en', 'information', 'информация', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05d73e48-e9a4-5afb-9449-3bd50d3a6e5b', 'en', 'document', 'документ', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4196da8a-fee4-5aa0-a58f-dfab6f62ac3d', 'en', 'meeting time', 'время встречи', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('edfcc7ea-7e26-532f-b785-8d19cd015c45', 'en', 'Can you help?', 'Вы можете помочь?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54461f61-5c4d-585c-83fa-25ffcd20762a', 'en', 'Thank you', 'Спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1066b197-9104-59f6-993b-4e425e524a9e', 'en', 'Thank you for your email', 'Спасибо за ваше письмо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37778822-2ef6-58c9-996a-2b96bc494d74', 'en', 'I understand', 'Я понимаю', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46778b82-b394-5455-8640-3c1aded9ed9e', 'en', 'I will send it', 'Я отправлю это', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('edb9ed9a-8ca7-54e0-b6f9-c60e625dbab3', 'en', 'See you on Monday', 'Увидимся в понедельник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cce16d61-a1e4-5d27-8203-be6f42cb21c9', 'en', 'Best regards', 'С наилучшими пожеланиями', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('168e6933-a0f2-5b3c-a4ed-36170f7c45dc', 'en', 'Kind regards', 'С уважением', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('616e5ba6-caac-5621-91f6-d13065423bf1', 'en', 'reply', 'ответить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '65c35222-efa7-57c3-b57b-da9d1b2f0005', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'email' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '65c35222-efa7-57c3-b57b-da9d1b2f0005', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '65c35222-efa7-57c3-b57b-da9d1b2f0005', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'Dear Anna' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '65c35222-efa7-57c3-b57b-da9d1b2f0005', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Hello Mr. Lee' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '65c35222-efa7-57c3-b57b-da9d1b2f0005', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'My name is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '65c35222-efa7-57c3-b57b-da9d1b2f0005', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'I work for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '65c35222-efa7-57c3-b57b-da9d1b2f0005', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, 'ee309470-8a63-5333-b68c-f8da644d211c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please send' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, 'ee309470-8a63-5333-b68c-f8da644d211c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, 'ee309470-8a63-5333-b68c-f8da644d211c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'information' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, 'ee309470-8a63-5333-b68c-f8da644d211c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, 'ee309470-8a63-5333-b68c-f8da644d211c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'meeting time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, 'ee309470-8a63-5333-b68c-f8da644d211c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can you help?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, 'ee309470-8a63-5333-b68c-f8da644d211c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '30d48657-70fd-543e-9393-437625cf270e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you for your email' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '30d48657-70fd-543e-9393-437625cf270e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'I understand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '30d48657-70fd-543e-9393-437625cf270e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'I will send it' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '30d48657-70fd-543e-9393-437625cf270e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'See you on Monday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '30d48657-70fd-543e-9393-437625cf270e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Best regards' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '30d48657-70fd-543e-9393-437625cf270e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Kind regards' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ca62491e-2fa2-56e4-89c2-709c36ea0d9d', id, '30d48657-70fd-543e-9393-437625cf270e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
