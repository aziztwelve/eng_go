-- Track: A2_SPEAKING_DESCRIBING_PEOPLE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', 'A2_SPEAKING_DESCRIBING_PEOPLE', 'Описание людей', 'Развивайте разговорные навыки уровня A2 по теме «Описание людей».', '{"en":"Describing People","ru":"Описание людей"}'::jsonb, '{"en":"Develop A2 speaking skills for describing people.","ru":"Развивайте разговорные навыки уровня A2 по теме «Описание людей»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d23f2b2f-8a18-5673-94b6-faddd246f079', NULL, 'Какой он человек', 'Описать характер человека, используя past simple и present perfect.', '{"en":"What Kind of Person He Is","ru":"Какой он человек"}'::jsonb, '{"en":"Describe someone''s character using past simple and present perfect.","ru":"Описать характер человека, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b95c3761-bc2d-5959-99b5-239d81e37bdb', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"easy-going","right":"легкий в общении"},{"id":"P2","left":"stubborn","right":"упрямый"},{"id":"P3","left":"to get to know","right":"узнать поближе"},{"id":"P4","left":"sense of humour","right":"чувство юмора"},{"id":"P5","left":"reliable","right":"надёжный"},{"id":"P6","left":"quiet","right":"тихий / спокойный"},{"id":"P7","left":"confident","right":"уверенный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbcf34ef-a5d1-5ede-ae00-ebff89dc0322', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have known her since our first job.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have known her since our first job."},{"id":"Q_B","is_correct":false,"text":"I have known her last year."},{"id":"Q_C","is_correct":false,"text":"I know her since three years already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f56f23c3-7256-568f-9128-555babd5d1ba', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"At first he seemed quiet, but within a month we have discovered his sense of humour.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Сначала он показался тихим, но за месяц мы узнали его чувство юмора.","target_language":"en","word_bank":["he","seem","of","quiet,","seemed","discovered","we","within","At","have","humour.","his","yesterday","a","did","month","sense","but","first"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b052a92-e0cc-5645-9d8d-0d6c4695a1d7', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reliable","instruction":"Выберите подходящее слово.","options":["reliable","reliably","reliables"],"sentence_template":"My grandmother has always been very ___ .","translation_hint":"Моя бабушка всегда была очень надёжной."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4119e38b-afdc-5afb-8b81-ec5bac60fb8e', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","become","much","more","confident","this","year."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["become","confident","more","year.","this","did","much","She","was","has"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b19d6f03-f0e2-5801-919f-cd2a4e10a482', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"He used to be stubborn as a child, but he has grown into an easy-going adult.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f3432fa-877c-5788-80de-684cfe7451cb', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"He used to be stubborn as a child, but he has grown into an easy-going adult.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В детстве он был упрямым, но вырос лёгким в общении человеком."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('599c4044-13a2-5803-bf2d-0064a024103c', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"What is your new flatmate like?","translation":"Какой твой новый сосед по квартире?","type":"dialogue"},{"character":"Tom","text":"Very easy-going. We have shared the flat for two months already.","translation":"Очень лёгкий в общении. Мы живём вместе уже два месяца.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Has he ever annoyed you with anything?"},{"is_correct":false,"text":"Did he has annoyed you tomorrow?"},{"is_correct":false,"text":"Is the flat sharing him with you?"}],"text":"What does Anna ask?","type":"choice"}],"title":"The New Colleague"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0372db4d-bb9e-5052-bb50-7345bf4af8bd', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“stubborn” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Not changing your opinion easily"},{"id":"D_B","is_correct":false,"text":"Always agreeing with everything"},{"id":"D_C","is_correct":false,"text":"Happy to try new ideas at once"}],"word":"stubborn"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8875562-4e05-5397-8607-90f769355703', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She has become more talkative lately.","explanation":"The missing word is “become”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"become","id":"LW_A","is_correct":true},{"audio_text":"became","id":"LW_B","is_correct":false},{"audio_text":"becoming","id":"LW_C","is_correct":false}],"sentence_template":"She has ___ more talkative lately."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcc873d1-c2fb-50a5-8282-c1d85f6581cd', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"for","explanation":"The complete sentence is “I have known him for ten years.”.","hint_prefix":"fo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I have known him ___ ten years."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65e8753e-211e-5d8a-94d7-97337b547864', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"easy-going","id":"V1","text":"easy-going"},{"audio_text":"stubborn","id":"V2","text":"stubborn"},{"audio_text":"to get to know","id":"V3","text":"to get to know"},{"audio_text":"sense of humour","id":"V4","text":"sense of humour"},{"audio_text":"reliable","id":"V5","text":"reliable"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c37ccba8-2a57-5b4a-9d52-4336b6c7a825', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Tell me about your new teacher."}],"explanation":"“She is strict but fair — the lessons have been the most useful I have ever had.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"She is strict but fair — the lessons have been the most useful I have ever had."},{"id":"C_B","is_correct":false,"text":"She was it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The teacher is telling me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', 'd23f2b2f-8a18-5673-94b6-faddd246f079', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9706649e-6843-5862-ab61-1ecef79d91f9', NULL, 'Кто на кого похож', 'Сравнить людей по характеру и внешности.', '{"en":"Who Takes After Whom","ru":"Кто на кого похож"}'::jsonb, '{"en":"Compare people by character and appearance.","ru":"Сравнить людей по характеру и внешности."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a83a623-3c1f-5308-a23b-281d57b6d4f3', '9706649e-6843-5862-ab61-1ecef79d91f9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to look like","right":"быть похожим на"},{"id":"P2","left":"to take after","right":"пойти в (родителя)"},{"id":"P3","left":"taller","right":"выше"},{"id":"P4","left":"curly","right":"кудрявый"},{"id":"P5","left":"more patient","right":"терпеливее"},{"id":"P6","left":"as calm as","right":"спокойный как"},{"id":"P7","left":"twins","right":"близнецы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('552ba145-b80d-5f09-8bec-3df2570245dd', '9706649e-6843-5862-ab61-1ecef79d91f9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “My brother is taller than my father.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"My brother is taller than my father."},{"id":"Q_B","is_correct":false,"text":"My brother is more tall than my father."},{"id":"Q_C","is_correct":false,"text":"My brother is tallest than my father."}],"question":"Which sentence compares people correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5d43ab1-7966-577d-a250-7a09df1199b1', '9706649e-6843-5862-ab61-1ecef79d91f9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My younger sister takes after our mother — she is just as calm and patient.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Младшая сестра пошла в маму — такая же спокойная и терпеливая.","target_language":"en","word_bank":["patient.","—","just","sister","My","and","takes","mother","our","did","as","is","younger","yesterday","after","calm","take","she"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c483e2a-18fd-5751-b31f-f3e58aa4a9b1', '9706649e-6843-5862-ab61-1ecef79d91f9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"curly","instruction":"Выберите подходящее слово.","options":["curly","curls","curlily"],"sentence_template":"My cousin has ___ hair and green eyes.","translation_hint":"У моей кузины кудрявые волосы и зелёные глаза."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58a569a6-108c-5632-920e-e43f13e65a0b', '9706649e-6843-5862-ab61-1ecef79d91f9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["My","son","is","going","to","be","taller","than","me,","I","think."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["son","is","be","going","was","think.","did","My","than","I","taller","to","me,"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6df5b00-d0a9-59d2-9672-f2f3dae96344', '9706649e-6843-5862-ab61-1ecef79d91f9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"People say I look like my grandfather, but my character is more like my grandmother''s.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e074cb14-d4d6-579c-8ac6-21cb3b3e07be', '9706649e-6843-5862-ab61-1ecef79d91f9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"People say I look like my grandfather, but my character is more like my grandmother''s.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Говорят, я похож на дедушку, но характер у меня скорее как у бабушки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7de3d336-227e-5c2b-8637-3eec7b72261b', '9706649e-6843-5862-ab61-1ecef79d91f9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Your daughter has curly hair — does she take after you?","translation":"У твоей дочери кудрявые волосы — она в тебя?","type":"dialogue"},{"character":"Tom","text":"Not me! Her mother has exactly the same hair.","translation":"Не в меня! У её мамы точно такие же волосы.","type":"dialogue"},{"options":[{"is_correct":true,"text":"And what about her character — is she as patient as you?"},{"is_correct":false,"text":"And her character was patient tomorrow yesterday."},{"is_correct":false,"text":"Is the hair taking after the character?"}],"text":"What does Anna say?","type":"choice"}],"title":"Family Resemblance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb56efb7-dd25-54e1-8f89-569ee9860b44', '9706649e-6843-5862-ab61-1ecef79d91f9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to take after” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To be similar to an older relative"},{"id":"D_B","is_correct":false,"text":"To look after someone''s pet for a week"},{"id":"D_C","is_correct":false,"text":"To follow someone into a room"}],"word":"to take after"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0126ce0-bf3c-586b-9875-7f11d17318a2', '9706649e-6843-5862-ab61-1ecef79d91f9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"He is going to take after his grandfather.","explanation":"The missing word is “take”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"take","id":"LW_A","is_correct":true},{"audio_text":"took","id":"LW_B","is_correct":false},{"audio_text":"taking","id":"LW_C","is_correct":false}],"sentence_template":"He is going to ___ after his grandfather."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a731055-a3b8-5e99-bc6b-a4dd1ab504ce', '9706649e-6843-5862-ab61-1ecef79d91f9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “My mother is more patient than me.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My mother is ___ patient than me."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b962b77-669e-5c8b-8768-33a81866a53f', '9706649e-6843-5862-ab61-1ecef79d91f9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to look like","id":"V1","text":"to look like"},{"audio_text":"to take after","id":"V2","text":"to take after"},{"audio_text":"taller","id":"V3","text":"taller"},{"audio_text":"curly","id":"V4","text":"curly"},{"audio_text":"more patient","id":"V5","text":"more patient"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62cc370d-5556-5c56-b7c6-a0f5b2207055', '9706649e-6843-5862-ab61-1ecef79d91f9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Do you look like your sister?"}],"explanation":"“A little, but she is taller and much more confident than me.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"A little, but she is taller and much more confident than me."},{"id":"C_B","is_correct":false,"text":"I looked like her yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"My sister is looking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', '9706649e-6843-5862-ab61-1ecef79d91f9', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('eb5c413b-1535-5fdc-81c1-ac5bbef1990c', NULL, 'Не суди по внешности', 'Дать советы о впечатлениях о людях, используя should и первое условное.', '{"en":"Do Not Judge by Appearance","ru":"Не суди по внешности"}'::jsonb, '{"en":"Give advice about impressions using should and the first conditional.","ru":"Дать советы о впечатлениях о людях, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('350d45f4-aca7-5d5a-8911-90c59658aef5', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"first impression","right":"первое впечатление"},{"id":"P2","left":"to judge","right":"судить"},{"id":"P3","left":"appearance","right":"внешность"},{"id":"P4","left":"to get to know","right":"узнать (человека)"},{"id":"P5","left":"shy","right":"стеснительный"},{"id":"P6","left":"to turn out","right":"оказаться"},{"id":"P7","left":"kind","right":"добрый"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4eb49a05-3b12-545a-a432-62a2a0a42ebe', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should not judge people by their appearance.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should not judge people by their appearance."},{"id":"Q_B","is_correct":false,"text":"You should to judge them yesterday."},{"id":"Q_C","is_correct":false,"text":"You not should judging people last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4664de43-5ba6-5dee-a112-0dce151b624b', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you give a person a second chance, they may turn out to be very kind.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты дашь человеку второй шанс, он может оказаться очень добрым.","target_language":"en","word_bank":["yesterday","a","very","turn","gave","If","kind.","second","you","be","did","may","person","they","out","chance,","give","to","a"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bebaeb7-1f33-5d3d-a83c-aeb2e1bd798c', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"seems","instruction":"Выберите подходящее слово.","options":["seems","will seem","seemed"],"sentence_template":"If she ___ shy at first, talk to her about books.","translation_hint":"Если она покажется стеснительной, поговори с ней о книгах."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72c193ef-06d8-56b0-9e00-a787533c27f9', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","look","further","than","the","first","impression."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["than","You","went","should","first","mustn''t","further","impression.","the","look"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0570cde6-a45c-5c15-8c3d-57f1cc22069d', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you talk to him for five minutes, your first impression will completely change.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58cbc9bb-7dc1-5581-8a2d-d996ffd881d9', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you talk to him for five minutes, your first impression will completely change.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если поговорить с ним пять минут, первое впечатление полностью изменится."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bb80523-3e80-543e-8fd9-8b97e8d97c7b', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Our new neighbour seemed unfriendly on day one.","translation":"Новый сосед показался недружелюбным в первый день.","type":"dialogue"},{"character":"Tom","text":"Has he done anything since then?","translation":"Он с тех пор что-нибудь сделал?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes — he has helped me carry the shopping twice, so I was wrong about him."},{"is_correct":false,"text":"Yes, he helps me tomorrow yesterday."},{"is_correct":false,"text":"The first impression is carrying the shopping."}],"text":"What does Anna say?","type":"choice"}],"title":"The Quiet Neighbour"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83f9519b-5871-5f78-8a1b-7fc988985409', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“shy” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Not comfortable talking to new people"},{"id":"D_B","is_correct":false,"text":"Very loud at every party"},{"id":"D_C","is_correct":false,"text":"Always the first to start a conversation"}],"word":"shy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6280882-0d33-5d7c-be41-44add087a000', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you get to know him, you will like him.","explanation":"The missing word is “get”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"get","id":"LW_A","is_correct":true},{"audio_text":"will get","id":"LW_B","is_correct":false},{"audio_text":"got","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ to know him, you will like him."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90454d0b-80b7-5c9c-92cf-7e5825039f79', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"by","explanation":"The complete sentence is “You should not judge people by their looks.”.","hint_prefix":"by","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should not judge people ___ their looks."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b52b03e5-4b57-525a-8220-95eb79b399bf', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"first impression","id":"V1","text":"first impression"},{"audio_text":"to judge","id":"V2","text":"to judge"},{"audio_text":"appearance","id":"V3","text":"appearance"},{"audio_text":"to get to know","id":"V4","text":"to get to know"},{"audio_text":"shy","id":"V5","text":"shy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c720fd3-d713-53e7-91e3-d6c70901dbae', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"My new classmate never talks to anyone."}],"explanation":"“Give her time — if you ask about her drawings, she will open up.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Give her time — if you ask about her drawings, she will open up."},{"id":"C_B","is_correct":false,"text":"She talked yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The classmate is judging me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d0634a9-c5c2-5686-8f6a-a7a69daff6fe', 'en', 'easy-going', 'легкий в общении', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d61d426-5009-5cf1-85b8-806cf90a9dff', 'en', 'stubborn', 'упрямый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b19fa6e2-a3e4-5616-bfb2-2fe92421677a', 'en', 'to get to know', 'узнать поближе', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6bd36f40-4b46-5b3d-84e4-fd8508ccba32', 'en', 'sense of humour', 'чувство юмора', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec0c06cd-69c7-556d-b9d8-5e725183415a', 'en', 'reliable', 'надёжный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d3f9f36-6fc7-5ffc-a1b3-70e34f6de4e4', 'en', 'quiet', 'тихий / спокойный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c98f2097-6229-51a8-b5fd-7c825f35531d', 'en', 'confident', 'уверенный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b9b7822-6fff-5a19-b5b6-8663f6a17a45', 'en', 'to look like', 'быть похожим на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7213df05-cc79-53a1-97ef-39f14e1559c1', 'en', 'to take after', 'пойти в (родителя)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a0195cb-298d-5464-b085-d2e23edbd0d5', 'en', 'taller', 'выше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a099c2e0-d4b6-553a-ae0d-88b55c82283b', 'en', 'curly', 'кудрявый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6671009b-0516-58e1-90e8-92999b5e9b91', 'en', 'more patient', 'терпеливее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4084980-b157-5b1e-a9dc-e1d05cd15755', 'en', 'as calm as', 'спокойный как', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac68f141-0a67-5fe8-9559-48349f19ff94', 'en', 'twins', 'близнецы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('85344729-0994-5d59-a2d4-4a81efd3b1f6', 'en', 'first impression', 'первое впечатление', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3c1d5e9-934d-53fb-b84e-9931f1c0962c', 'en', 'to judge', 'судить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('34b28c8d-7a74-5999-b21c-44471d0b9cc9', 'en', 'appearance', 'внешность', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b19fa6e2-a3e4-5616-bfb2-2fe92421677a', 'en', 'to get to know', 'узнать (человека)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ae18b97-eceb-5a29-a1f3-fec5fe55f08d', 'en', 'shy', 'стеснительный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('296d8b29-b478-5da2-b6b0-1107b4aaa20b', 'en', 'to turn out', 'оказаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1199fc89-df54-5bdf-a4e3-1fcbd8ce8b38', 'en', 'kind', 'добрый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'd23f2b2f-8a18-5673-94b6-faddd246f079', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'easy-going' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'd23f2b2f-8a18-5673-94b6-faddd246f079', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'stubborn' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'd23f2b2f-8a18-5673-94b6-faddd246f079', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to get to know' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'd23f2b2f-8a18-5673-94b6-faddd246f079', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'sense of humour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'd23f2b2f-8a18-5673-94b6-faddd246f079', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'reliable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'd23f2b2f-8a18-5673-94b6-faddd246f079', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'quiet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'd23f2b2f-8a18-5673-94b6-faddd246f079', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'confident' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, '9706649e-6843-5862-ab61-1ecef79d91f9', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to look like' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, '9706649e-6843-5862-ab61-1ecef79d91f9', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take after' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, '9706649e-6843-5862-ab61-1ecef79d91f9', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'taller' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, '9706649e-6843-5862-ab61-1ecef79d91f9', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'curly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, '9706649e-6843-5862-ab61-1ecef79d91f9', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'more patient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, '9706649e-6843-5862-ab61-1ecef79d91f9', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'as calm as' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, '9706649e-6843-5862-ab61-1ecef79d91f9', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'twins' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'first impression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to judge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'appearance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to get to know' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'shy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to turn out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c6a6f0-c865-5ec1-9005-fb2455eb03b1', id, 'eb5c413b-1535-5fdc-81c1-ac5bbef1990c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'kind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
