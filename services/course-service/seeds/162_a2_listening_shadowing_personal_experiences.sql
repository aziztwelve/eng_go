-- Track: A2_LISTENING_SHADOWING_PERSONAL_EXPERIENCES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f44b932f-78b3-5165-8a4c-8d711450eac5', 'A2_LISTENING_SHADOWING_PERSONAL_EXPERIENCES', 'Личный опыт', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Личный опыт».', '{"en":"Personal Experiences","ru":"Личный опыт"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for personal experiences.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Личный опыт»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('52f2c17c-a86b-525e-9d24-54b9de55a494', NULL, 'Истории из жизни', 'Понимать рассказы о прошлом, используя past simple и present perfect.', '{"en":"Life Stories","ru":"Истории из жизни"}'::jsonb, '{"en":"Understand stories about the past using past simple and present perfect.","ru":"Понимать рассказы о прошлом, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cebd3470-34b2-54ca-916a-717089a3c3b0', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"childhood","right":"детство"},{"id":"P2","left":"to move house","right":"переехать (в другой дом)"},{"id":"P3","left":"used to","right":"раньше (было)"},{"id":"P4","left":"memory","right":"воспоминание"},{"id":"P5","left":"to grow up","right":"вырасти"},{"id":"P6","left":"the first time","right":"первый раз"},{"id":"P7","left":"since then","right":"с тех пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db4ad322-d412-5b21-8f5b-51695ad795e3', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We used to play football in this yard every day.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We used to play football in this yard every day."},{"id":"Q_B","is_correct":false,"text":"We use to played here yesterday."},{"id":"Q_C","is_correct":false,"text":"The yard is playing us daily."}],"question":"Which sentence talks about a childhood habit?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7390e6a-2721-564e-8915-88c25dae4a9a', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I grew up in a small town, and then we moved house to the capital.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я вырос в маленьком городе, а потом мы переехали в столицу.","target_language":"en","word_bank":["tomorrow","moved","did","to","small","capital.","and","a","I","in","grow","then","the","up","we","house","grew","town,"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b1851a7-9f47-5c15-8920-0adbabbf9d74', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"since","instruction":"Выберите подходящее слово.","options":["since","for","ago"],"sentence_template":"She has lived in five cities ___ she left home.","translation_hint":"Она пожила в пяти городах с тех пор, как уехала из дома."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a645b89-7396-5e3d-bc98-41cbf38a2da6', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Since","then","I","have","never","eaten","oysters","again."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Since","oysters","then","I","never","have","again.","was","did","eaten"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f564305-2259-533c-a301-89d0fa46b7eb', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When I was a child, we used to spend every summer at the lake, and I have kept those memories all my life.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92215568-82f7-5f72-9f7b-33adc394f917', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When I was a child, we used to spend every summer at the lake, and I have kept those memories all my life.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В детстве мы проводили каждое лето у озера, и я храню эти воспоминания всю жизнь."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a53244fa-0dad-577d-b209-6274282b601d', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Look at this photo — it was my first day at school.","translation":"Посмотри на это фото — мой первый день в школе.","type":"dialogue"},{"character":"Voice 2","text":"You look so serious! Where did you grow up?","translation":"Той такой серьёзный! Где ты вырос?","type":"dialogue"},{"options":[{"is_correct":true,"text":"In a village near the sea. We moved house when I was ten."},{"is_correct":false,"text":"I grew up tomorrow yesterday near the sea."},{"is_correct":false,"text":"The photo is growing me serious."}],"text":"What does Voice 1 answer?","type":"choice"}],"title":"An Old Photo"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7507d811-b4be-575d-be8c-a9041a49d1d9', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“memory” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something you remember from the past"},{"id":"D_B","is_correct":false,"text":"A plan you make for next summer"},{"id":"D_C","is_correct":false,"text":"A photo you are going to take tomorrow"}],"word":"memory"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8c8392e-0935-5ad0-8ce9-3592e239abb0', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have kept this medal since childhood.","explanation":"The missing word is “medal”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"medal","id":"LW_A","is_correct":true},{"audio_text":"medals","id":"LW_B","is_correct":false},{"audio_text":"medalled","id":"LW_C","is_correct":false}],"sentence_template":"I have kept this ___ since childhood."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0150c1c-980e-51c1-bc7e-d3abdb3284c1', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"used","explanation":"The complete sentence is “We used to swim in this river.”.","hint_prefix":"us","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We ___ to swim in this river."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1461658e-4a7e-5ed1-bb84-f4b2f81d93eb', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"childhood","id":"V1","text":"childhood"},{"audio_text":"to move house","id":"V2","text":"to move house"},{"audio_text":"used to","id":"V3","text":"used to"},{"audio_text":"memory","id":"V4","text":"memory"},{"audio_text":"to grow up","id":"V5","text":"to grow up"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b03de761-1f1a-5985-9007-1b4db6487ab7', '52f2c17c-a86b-525e-9d24-54b9de55a494', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Have you ever changed schools?"}],"explanation":"“Twice — I still remember how nervous I was the first time.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Twice — I still remember how nervous I was the first time."},{"id":"C_B","is_correct":false,"text":"I changed them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The schools are changing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f44b932f-78b3-5165-8a4c-8d711450eac5', '52f2c17c-a86b-525e-9d24-54b9de55a494', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('90934155-0b6e-5a1f-a242-c75664054dfa', NULL, 'Планы, о которых рассказывают', 'Понимать рассказы о планах и сравнивать жизненные пути.', '{"en":"Plans People Talk About","ru":"Планы, о которых рассказывают"}'::jsonb, '{"en":"Understand talks about plans and compare life paths.","ru":"Понимать рассказы о планах и сравнивать жизненные пути."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0338436-5c7a-5f48-b4a9-2b402f0c1ed9', '90934155-0b6e-5a1f-a242-c75664054dfa', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to settle down","right":"осесть, обосноваться"},{"id":"P2","left":"career change","right":"смена карьеры"},{"id":"P3","left":"more challenging","right":"сложнее (вызов)"},{"id":"P4","left":"to apply for","right":"подать заявку на"},{"id":"P5","left":"abroad","right":"за границей"},{"id":"P6","left":"to be ready for","right":"быть готовым к"},{"id":"P7","left":"gap year","right":"перерыв на год (между учёбой)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b7850cb-f9c1-5976-ac57-f9b668df8506', '90934155-0b6e-5a1f-a242-c75664054dfa', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Moving abroad is more challenging than changing jobs at home.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Moving abroad is more challenging than changing jobs at home."},{"id":"Q_B","is_correct":false,"text":"Moving abroad is challenginger than jobs."},{"id":"Q_C","is_correct":false,"text":"Abroad is most challenging than home."}],"question":"Which sentence compares two paths correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('410097dc-3f1c-5663-a02a-6f2d9bcf07f9', '90934155-0b6e-5a1f-a242-c75664054dfa', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Next year she is going to take a gap year and live abroad.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В следующем году она собирается взять перерыв и пожить за границей.","target_language":"en","word_bank":["gap","is","took","a","take","going","she","yesterday","live","and","to","year","Next","did","year","abroad."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bb69bb8-c41d-5b02-ac44-51a72f778e50', '90934155-0b6e-5a1f-a242-c75664054dfa', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"less","instruction":"Выберите подходящее слово.","options":["less","least","little"],"sentence_template":"A career change is ___ risky at thirty than at fifty.","translation_hint":"Смена карьеры в тридцать менее рискованна, чем в пятьдесят."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e2031d4-01a4-5f1f-b32c-00060fad440a', '90934155-0b6e-5a1f-a242-c75664054dfa', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","are","going","to","settle","down","in","the","countryside."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["going","in","They","did","to","down","countryside.","was","are","settle","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7173ede1-5fae-5ad7-8e63-1374e8001820', '90934155-0b6e-5a1f-a242-c75664054dfa', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you are ready for a big change, a career switch will feel less scary than it sounds.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1148f25-9e85-552f-bc9d-938341105a71', '90934155-0b6e-5a1f-a242-c75664054dfa', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you are ready for a big change, a career switch will feel less scary than it sounds.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ты готов к большим переменам, смена карьеры будет менее страшной, чем звучит."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('269efd88-a9e6-5264-84fa-895fcb7eadda', '90934155-0b6e-5a1f-a242-c75664054dfa', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I have some news — I am going to apply for a job in Berlin.","translation":"У меня новость — я собираюсь подать заявку на работу в Берлине.","type":"dialogue"},{"character":"Voice 2","text":"Really? That is a big step. Are you ready for such a change?","translation":"Серьёзно? Это большой шаг. Ты готова к таким переменам?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I think so — it is more challenging, but I have planned it for a year."},{"is_correct":false,"text":"Yes, I was ready for it yesterday tomorrow."},{"is_correct":false,"text":"Berlin is applying for me."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Plans Over Coffee"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a90cda53-df36-5d40-b1e6-f385e7f9ca74', '90934155-0b6e-5a1f-a242-c75664054dfa', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to settle down” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To start living a stable life in one place"},{"id":"D_B","is_correct":false,"text":"To travel non-stop for several years"},{"id":"D_C","is_correct":false,"text":"To change your flat every month"}],"word":"to settle down"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddc28140-8484-599e-9a3a-0f0f3b6e34dc', '90934155-0b6e-5a1f-a242-c75664054dfa', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"He is going to apply for a master''s programme.","explanation":"The missing word is “apply”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"apply","id":"LW_A","is_correct":true},{"audio_text":"applied","id":"LW_B","is_correct":false},{"audio_text":"applying","id":"LW_C","is_correct":false}],"sentence_template":"He is going to ___ for a master''s programme."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58ba346a-7d19-5fee-9c02-d26a3a333775', '90934155-0b6e-5a1f-a242-c75664054dfa', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Living abroad is more comfortable now.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Living abroad is ___ comfortable now."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e136e3c7-972f-50d6-bb20-0e99fd382dcd', '90934155-0b6e-5a1f-a242-c75664054dfa', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to settle down","id":"V1","text":"to settle down"},{"audio_text":"career change","id":"V2","text":"career change"},{"audio_text":"more challenging","id":"V3","text":"more challenging"},{"audio_text":"to apply for","id":"V4","text":"to apply for"},{"audio_text":"abroad","id":"V5","text":"abroad"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b63808a4-5714-59bb-872e-331090886491', '90934155-0b6e-5a1f-a242-c75664054dfa', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"What would you do with a gap year?"}],"explanation":"“I would learn Spanish — if I stay in one place, progress will be faster.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I would learn Spanish — if I stay in one place, progress will be faster."},{"id":"C_B","is_correct":false,"text":"I took it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The year is gapping me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f44b932f-78b3-5165-8a4c-8d711450eac5', '90934155-0b6e-5a1f-a242-c75664054dfa', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('41e893f9-0267-5e6d-8d07-e19ffec6e171', NULL, 'Опыт, который учит', 'Понимать рассказы об уроках жизни, используя should и первое условное.', '{"en":"Experience That Teaches","ru":"Опыт, который учит"}'::jsonb, '{"en":"Understand life-lesson stories using should and the first conditional.","ru":"Понимать рассказы об уроках жизни, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2feeeeae-8c55-54de-aa8e-b70694bb640f', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"lesson","right":"урок"},{"id":"P2","left":"to regret","right":"сожалеть"},{"id":"P3","left":"mistake","right":"ошибка"},{"id":"P4","left":"to take a risk","right":"рискнуть"},{"id":"P5","left":"worth it","right":"того стоило"},{"id":"P6","left":"to look back","right":"оглядываться назад"},{"id":"P7","left":"to learn from","right":"извлечь урок из"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e252249-ac53-54d4-98a3-e0b18a6d15c5', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “If I had asked for help, the move would have been easier — now I always ask.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"If I had asked for help, the move would have been easier — now I always ask."},{"id":"Q_B","is_correct":false,"text":"I asked help yesterday, and now never ask."},{"id":"Q_C","is_correct":false,"text":"The help is moving me easier."}],"question":"Which sentence describes a lesson learned?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5327379a-8872-5fa4-beef-0d0b3072fcf8', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you do not take the risk, you will regret it later.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты не рискнёшь, то потом будешь об этом жалеть.","target_language":"en","word_bank":["do","later.","will","took","risk,","regret","you","If","you","yesterday","the","it","take","did","not"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('904cde57-b8de-535e-b09a-1b1cb2088c3b', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"was","instruction":"Выберите подходящее слово.","options":["was","were","been"],"sentence_template":"Looking back, that mistake ___ the best lesson of my career.","translation_hint":"Оглядываясь назад, та ошибка была лучшим уроком моей карьеры."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e5dadfc-2fc3-5584-aa26-90334393793c', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","learn","from","mistakes,","not","fear","them."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["fear","not","should","You","mustn''t","mistakes,","learn","from","them.","went"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04ed68a1-0b83-547b-9a98-06f1dfff9ed9', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I almost turned down the job offer, but a friend said: if you never take risks, you will never know.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6ca05cf-3569-52d2-ac53-12e5b47c3f12', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I almost turned down the job offer, but a friend said: if you never take risks, you will never know.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я чуть не отказался от предложения о работе, но друг сказал: если никогда не рискуешь, никогда не узнаешь."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('130c75df-69f7-51f1-948e-98c1a968e06a', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Have I told you about my first job interview? I turned the offer down.","translation":"Я рассказывал о своём первом собеседовании? Я отказался от предложения.","type":"dialogue"},{"character":"Voice 2","text":"Why? Do you regret it?","translation":"Почему? Сожалеешь?","type":"dialogue"},{"options":[{"is_correct":true,"text":"A little — but I learned from it, and the next risk was worth it."},{"is_correct":false,"text":"Yes, I regret it tomorrow yesterday."},{"is_correct":false,"text":"The interview is regretting me down."}],"text":"What does Voice 1 answer?","type":"choice"}],"title":"The Rejected Offer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47ee894d-6a45-5d29-81dd-f2ed5e5964c9', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to regret” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To feel sad about something you did or did not do"},{"id":"D_B","is_correct":false,"text":"To feel happy about a past decision"},{"id":"D_C","is_correct":false,"text":"To plan a future change carefully"}],"word":"to regret"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('983ea098-4ed5-51b4-a5d2-929ad0c01e07', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you never take a risk, you will never grow.","explanation":"The missing word is “take”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"take","id":"LW_A","is_correct":true},{"audio_text":"will take","id":"LW_B","is_correct":false},{"audio_text":"took","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ a risk, you will never grow."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dff699b8-8c6c-56b6-ba44-e006857b459b', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"worth","explanation":"The complete sentence is “It was difficult, but it was worth it.”.","hint_prefix":"wo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"It was difficult, but it was ___ it."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74a4669b-475b-5f58-9ea3-bb63685e2a48', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"lesson","id":"V1","text":"lesson"},{"audio_text":"to regret","id":"V2","text":"to regret"},{"audio_text":"mistake","id":"V3","text":"mistake"},{"audio_text":"to take a risk","id":"V4","text":"to take a risk"},{"audio_text":"worth it","id":"V5","text":"worth it"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('035c6390-9272-5920-a56a-2a27f2b82b51', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I failed my first driving test."}],"explanation":"“So did I — if you learn from it, the second attempt will be easier.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"So did I — if you learn from it, the second attempt will be easier."},{"id":"C_B","is_correct":false,"text":"I passed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The test is failing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f44b932f-78b3-5165-8a4c-8d711450eac5', '41e893f9-0267-5e6d-8d07-e19ffec6e171', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('877d678d-87d6-5fa4-b42a-7b2ce9aaccc4', 'en', 'childhood', 'детство', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f2d5fd2-e2c4-5068-9a3e-3587d9190bba', 'en', 'to move house', 'переехать (в другой дом)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('343d4964-2251-51dd-bfc1-db0be8e0541e', 'en', 'used to', 'раньше (было)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0170ecc-a7f8-5611-b7c7-3c994ac45400', 'en', 'memory', 'воспоминание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb31df92-0a97-5f45-80ef-3df0852d1800', 'en', 'to grow up', 'вырасти', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('acc53103-1b68-5dd6-b904-8e7ed116303e', 'en', 'the first time', 'первый раз', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a56c8a83-a521-53c8-8aa4-8778718ae6dd', 'en', 'since then', 'с тех пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('836c2d0b-3f43-54df-86aa-3de804d1c28f', 'en', 'to settle down', 'осесть, обосноваться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2d92d7-92b3-5aa4-a40d-34d1510753a8', 'en', 'career change', 'смена карьеры', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29c96b2f-465f-50ef-b9e4-282d31d79e18', 'en', 'more challenging', 'сложнее (вызов)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8614e35b-8596-592e-b248-b2630b238b96', 'en', 'to apply for', 'подать заявку на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efb21a54-6581-5499-b454-4ccdadbc1eaa', 'en', 'abroad', 'за границей', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd64af0e-d02c-59f9-815b-f57df287c2d9', 'en', 'to be ready for', 'быть готовым к', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1ad49f3-f747-5795-a23b-26fe106d28fc', 'en', 'gap year', 'перерыв на год (между учёбой)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('817bcc28-e37f-5143-9ab8-68cf71d92731', 'en', 'lesson', 'урок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68035698-3ba1-52ea-bdda-50a0c60ce73d', 'en', 'to regret', 'сожалеть', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2de0da2b-152d-58f7-b870-be54f4a8dfe9', 'en', 'mistake', 'ошибка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16b00155-e4c6-5ed5-aebc-abf3562e2558', 'en', 'to take a risk', 'рискнуть', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30aa9eea-25e4-5b74-9d8a-e627b3ac8332', 'en', 'worth it', 'того стоило', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9aa367cb-de06-5452-bb40-8cd68af1e022', 'en', 'to look back', 'оглядываться назад', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40aa4c98-facb-5c19-8288-ac4abdc8347a', 'en', 'to learn from', 'извлечь урок из', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '52f2c17c-a86b-525e-9d24-54b9de55a494', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'childhood' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '52f2c17c-a86b-525e-9d24-54b9de55a494', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to move house' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '52f2c17c-a86b-525e-9d24-54b9de55a494', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'used to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '52f2c17c-a86b-525e-9d24-54b9de55a494', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'memory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '52f2c17c-a86b-525e-9d24-54b9de55a494', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to grow up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '52f2c17c-a86b-525e-9d24-54b9de55a494', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'the first time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '52f2c17c-a86b-525e-9d24-54b9de55a494', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'since then' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '90934155-0b6e-5a1f-a242-c75664054dfa', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to settle down' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '90934155-0b6e-5a1f-a242-c75664054dfa', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'career change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '90934155-0b6e-5a1f-a242-c75664054dfa', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more challenging' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '90934155-0b6e-5a1f-a242-c75664054dfa', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to apply for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '90934155-0b6e-5a1f-a242-c75664054dfa', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'abroad' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '90934155-0b6e-5a1f-a242-c75664054dfa', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be ready for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '90934155-0b6e-5a1f-a242-c75664054dfa', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'gap year' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '41e893f9-0267-5e6d-8d07-e19ffec6e171', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'lesson' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '41e893f9-0267-5e6d-8d07-e19ffec6e171', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to regret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '41e893f9-0267-5e6d-8d07-e19ffec6e171', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '41e893f9-0267-5e6d-8d07-e19ffec6e171', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take a risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '41e893f9-0267-5e6d-8d07-e19ffec6e171', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'worth it' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '41e893f9-0267-5e6d-8d07-e19ffec6e171', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to look back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44b932f-78b3-5165-8a4c-8d711450eac5', id, '41e893f9-0267-5e6d-8d07-e19ffec6e171', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to learn from' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
