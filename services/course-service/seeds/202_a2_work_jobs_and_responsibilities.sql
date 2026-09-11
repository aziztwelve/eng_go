-- Track: A2_WORK_JOBS_AND_RESPONSIBILITIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0ea018cb-1c01-5c00-818f-9b8655976185', 'A2_WORK_JOBS_AND_RESPONSIBILITIES', 'Работа и обязанности', 'Развивайте практический английский уровня A2 для работы по теме «Работа и обязанности».', '{"en":"Jobs and Responsibilities","ru":"Работа и обязанности"}'::jsonb, '{"en":"Develop practical A2 workplace English for jobs and responsibilities.","ru":"Развивайте практический английский уровня A2 для работы по теме «Работа и обязанности»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('332418f2-7bcc-5c7c-a1e7-b39c47e5db40', NULL, 'Кто что сделал в этом квартале', 'Рассказать о результатах коллег, используя past simple и present perfect.', '{"en":"Who Did What This Quarter","ru":"Кто что сделал в этом квартале"}'::jsonb, '{"en":"Talk about colleagues'' results using past simple and present perfect.","ru":"Рассказать о результатах коллег, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90e8f051-b472-55f6-aaa2-6ea7b523fff6', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"responsibility","right":"обязанность"},{"id":"P2","left":"to promote","right":"повысить в должности"},{"id":"P3","left":"department","right":"отдел"},{"id":"P4","left":"to achieve","right":"достичь"},{"id":"P5","left":"target","right":"цель / план"},{"id":"P6","left":"employee","right":"сотрудник"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc0a62e3-b93c-5244-90c4-c0bc3eb9432b', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Our team has achieved three targets so far this year.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Our team has achieved three targets so far this year."},{"id":"Q_B","is_correct":false,"text":"Our team has achieved three targets last year."},{"id":"Q_C","is_correct":false,"text":"Our team achieved three targets so far yet."}],"question":"Which sentence uses the present perfect with ''so far''?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26d95c14-8246-5e01-8989-3c50e6a92980', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Maria has led the project since March and has already increased sales by ten percent.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мария руководила проектом с марта и уже повысила продажи на десять процентов.","target_language":"en","word_bank":["sales","ten","since","yesterday","has","the","led","already","by","has","percent.","project","Maria","did","and","led","increased","March"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd91b75c-9826-5442-94fc-0cee608632fd', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"worked","instruction":"Выберите подходящее слово.","options":["worked","has work","working"],"sentence_template":"Last year he ___ in the sales department.","translation_hint":"В прошлом году он работал в отделе продаж."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4669a6d-767f-5afb-abd3-8102781d7988', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","trained","five","new","employees","since","September."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["employees","was","did","trained","since","five","new","September.","She","has"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9e79888-c479-55b7-ac11-23a13e81e2c4', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Who prepared the quarterly report? I think Anna did it, and she has done it very well.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d19f270-ce77-5548-bf33-d455b8d79d49', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Who prepared the quarterly report? I think Anna did it, and she has done it very well.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Кто подготовил квартальный отчёт? Думаю, это сделала Аня, и она сделала это очень хорошо."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c199a00-2b25-5143-b91e-a2eedd74f166', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"I have good news. We have promoted Daniel to team leader.","translation":"У меня хорошая новость. Мы повысили Даниэля до тимлида.","type":"dialogue"},{"character":"Daniel","text":"Thank you! I have worked hard for this opportunity.","translation":"Спасибо! Я усердно работал ради этой возможности.","type":"dialogue"},{"options":[{"is_correct":true,"text":"You have led the project very well since March."},{"is_correct":false,"text":"You have lead the project yesterday."},{"is_correct":false,"text":"The project is promoting you next year."}],"text":"What does the manager add?","type":"choice"}],"title":"A Promotion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82ceac7a-fc5a-5dab-84ba-238fb1b53f21', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to promote” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To move someone to a higher, more important position at work"},{"id":"D_B","is_correct":false,"text":"To send someone to another office"},{"id":"D_C","is_correct":false,"text":"To give someone less work to do"}],"word":"to promote"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('811af56b-b2f4-5f96-995b-175c04f16be2', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"He has worked in three departments so far.","explanation":"The missing word is “worked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"worked","id":"LW_A","is_correct":true},{"audio_text":"work","id":"LW_B","is_correct":false},{"audio_text":"working","id":"LW_C","is_correct":false}],"sentence_template":"He has ___ in three departments so far."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dd933e8-a446-5716-9729-f895a448979c', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"for","explanation":"The complete sentence is “She has been responsible for the project since May.”.","hint_prefix":"fo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has been responsible ___ the project since May."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1aad27c8-4c84-548f-8de9-66d9cfe3cf98', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"responsibility","id":"V1","text":"responsibility"},{"audio_text":"to promote","id":"V2","text":"to promote"},{"audio_text":"department","id":"V3","text":"department"},{"audio_text":"to achieve","id":"V4","text":"to achieve"},{"audio_text":"target","id":"V5","text":"target"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('737a69dd-d03c-59ab-90bb-ec404704f2c3', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Has the new employee started yet?"}],"explanation":"“Yes, he joined last Monday and has already finished the training.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, he joined last Monday and has already finished the training."},{"id":"C_B","is_correct":false,"text":"Yes, he has start yesterday."},{"id":"C_C","is_correct":false,"text":"The employee is starting himself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0ea018cb-1c01-5c00-818f-9b8655976185', '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d9b7589b-290e-567a-a2a2-f8e43b78fc69', NULL, 'Карьерные планы', 'Рассказать о карьерных планах и сравнить должности.', '{"en":"Career Plans","ru":"Карьерные планы"}'::jsonb, '{"en":"Talk about career plans and compare positions.","ru":"Рассказать о карьерных планах и сравнить должности."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66bd6416-978b-5024-97b8-43943626a173', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"position","right":"должность"},{"id":"P2","left":"salary","right":"зарплата"},{"id":"P3","left":"experience","right":"опыт"},{"id":"P4","left":"to apply for","right":"подать заявку на"},{"id":"P5","left":"promotion","right":"повышение"},{"id":"P6","left":"more interesting","right":"интереснее"},{"id":"P7","left":"skills","right":"навыки"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d50cc18-b48e-5371-8aa5-91126bc6b911', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I am going to apply for the project manager position.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I am going to apply for the project manager position."},{"id":"Q_B","is_correct":false,"text":"I applied for the project manager position last month."},{"id":"Q_C","is_correct":false,"text":"I have applied for the position yesterday."}],"question":"Which sentence talks about a future career plan?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0086dd72-f773-5e0a-a61d-0d033a2994a9', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This position is more interesting than my current one, but it requires more experience.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Эта должность интереснее моей текущей, но требует большего опыта.","target_language":"en","word_bank":["most","did","but","This","was","is","interesting","more","more","position","current","requires","than","it","experience.","one,","my"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d9bf26b-0b02-5e5d-af9b-9b90c6751616', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"higher","instruction":"Выберите подходящее слово.","options":["higher","highest","more high"],"sentence_template":"A manager''s salary is ___ than an assistant''s.","translation_hint":"Зарплата менеджера выше, чем у ассистента."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e188bb00-1e9a-527d-8c2b-07c928de049d', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","improve","my","presentation","skills","this","year."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["improve","skills","this","my","was","going","presentation","I","did","to","year.","am"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba591bba-0666-55e6-a8f4-9fc0a2a019ae', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If I get this promotion, I will have more responsibility but a better salary.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ef94471-8749-5bef-8c2d-dad53b6829ff', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If I get this promotion, I will have more responsibility but a better salary.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если я получу это повышение, у меня будет больше ответственности, но лучше зарплата."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cd86bac-4e77-5a8a-9b58-9864869a5e46', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Have you seen the new vacancy on the company website?","translation":"Ты видел новую вакансию на сайте компании?","type":"dialogue"},{"character":"Tom","text":"Yes, the position is more senior than my current role.","translation":"Да, эта должность выше моей текущей.","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should apply — you have great experience."},{"is_correct":false,"text":"You must to apply yesterday immediately."},{"is_correct":false,"text":"The vacancy is applying for you."}],"text":"What does Anna say?","type":"choice"}],"title":"The Internal Vacancy"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c957d94-a888-5d37-8d72-06825a5b6be6', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to apply for” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To formally ask for a job or a position"},{"id":"D_B","is_correct":false,"text":"To refuse a job politely"},{"id":"D_C","is_correct":false,"text":"To leave a job to travel"}],"word":"to apply for"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf833371-992b-50a3-ab5b-b3a0eda08e7c', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to apply for a new position.","explanation":"The missing word is “apply”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"apply","id":"LW_A","is_correct":true},{"audio_text":"applied","id":"LW_B","is_correct":false},{"audio_text":"applying","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ for a new position."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('708c6017-5920-5e49-95b4-790801961102', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “This job is more demanding than my old one.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This job is ___ demanding than my old one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9d6c5fa-55ad-55a1-8c69-7d63549e08e9', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"position","id":"V1","text":"position"},{"audio_text":"salary","id":"V2","text":"salary"},{"audio_text":"experience","id":"V3","text":"experience"},{"audio_text":"to apply for","id":"V4","text":"to apply for"},{"audio_text":"promotion","id":"V5","text":"promotion"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c685c44-19d0-5aae-b171-631728a0f301', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Are you going to apply for the team leader role?"}],"explanation":"“Yes, I am going to apply before Friday.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, I am going to apply before Friday."},{"id":"C_B","is_correct":false,"text":"Yes, I applied it tomorrow."},{"id":"C_C","is_correct":false,"text":"The role is applying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0ea018cb-1c01-5c00-818f-9b8655976185', 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('372a08c2-6d55-5f65-9985-d227dd47c11d', NULL, 'Советы по развитию карьеры', 'Дать совет о развитии карьеры, используя should и первое условное.', '{"en":"Career Advice","ru":"Советы по развитию карьеры"}'::jsonb, '{"en":"Give career development advice using should and the first conditional.","ru":"Дать совет о развитии карьеры, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74741b77-da4e-5ffb-b288-def85f837078', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to improve","right":"улучшить"},{"id":"P2","left":"advice","right":"совет"},{"id":"P3","left":"opportunity","right":"возможность"},{"id":"P4","left":"to take on","right":"взять на себя (задачи)"},{"id":"P5","left":"regularly","right":"регулярно"},{"id":"P6","left":"confident","right":"уверенный"},{"id":"P7","left":"career development","right":"развитие карьеры"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e66d6ea6-1d7f-572a-8032-6e686eaee54e', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should take on more responsibility if you want a promotion.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should take on more responsibility if you want a promotion."},{"id":"Q_B","is_correct":false,"text":"You should to take more responsibility yesterday."},{"id":"Q_C","is_correct":false,"text":"You must taking responsibility last year."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1aea887-86ea-5e3b-a81e-39ff18390ce0', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you want to develop your career, you should learn something new regularly.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты хочешь развивать карьеру, тебе следует регулярно учиться новому.","target_language":"en","word_bank":["career,","to","If","you","wanted","learn","your","did","regularly.","you","something","develop","should","new","want","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12ae8271-d35b-5a81-8ed9-47ad86ef68b8', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"should","instruction":"Выберите подходящее слово.","options":["should","must to","shoulds"],"sentence_template":"You ___ discuss your career plan with your manager every year.","translation_hint":"Тебе стоит обсуждать карьерный план с менеджером каждый год."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62c85f4c-085b-5fde-9c09-66c7b77c9aed', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","speak","more","confidently","during","the","team","meetings."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["mustn''t","speak","more","went","during","meetings.","You","should","team","the","confidently"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('464c26de-f0f7-56c6-b112-6338b05a8ae6', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you take on this project, you will get valuable experience and new skills.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f607dce9-f6c5-5f35-905e-4c2624e789c0', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you take on this project, you will get valuable experience and new skills.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ты возьмёшь на себя этот проект, ты получишь ценный опыт и новые навыки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('637e1ca4-f906-5865-8412-37d7822890cb', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"Your technical skills are strong, but you should improve your communication.","translation":"Твои технические навыки сильны, но тебе стоит улучшить коммуникацию.","type":"dialogue"},{"character":"Tom","text":"I agree. What should I do first?","translation":"Согласен. Что мне сделать сначала?","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should present at the next team meeting."},{"is_correct":false,"text":"You must to present at yesterday meeting."},{"is_correct":false,"text":"The communication is improving you."}],"text":"What does the manager say?","type":"choice"}],"title":"After the Review"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d862e9a-42ed-5781-9bf3-834b46a34e73', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“opportunity” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A chance to do something good or useful"},{"id":"D_B","is_correct":false,"text":"A problem that is difficult to solve"},{"id":"D_C","is_correct":false,"text":"A rule that stops people from working"}],"word":"opportunity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dfa47cf-576e-5097-8014-04a6d4d53f32', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you take this course, you will get a certificate.","explanation":"The missing word is “take”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"take","id":"LW_A","is_correct":true},{"audio_text":"will take","id":"LW_B","is_correct":false},{"audio_text":"took","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ this course, you will get a certificate."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('163d35ca-1329-5803-a2af-2b9102956fb5', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"should","explanation":"The complete sentence is “You should ask for feedback more often.”.","hint_prefix":"sh","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You ___ ask for feedback more often."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd35f639-d0d4-5628-8db4-e606944bae70', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to improve","id":"V1","text":"to improve"},{"audio_text":"advice","id":"V2","text":"advice"},{"audio_text":"opportunity","id":"V3","text":"opportunity"},{"audio_text":"to take on","id":"V4","text":"to take on"},{"audio_text":"regularly","id":"V5","text":"regularly"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8711e0a2-2bd2-5a77-89c0-e5bbbb39e8f2', '372a08c2-6d55-5f65-9985-d227dd47c11d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"I want to become a senior specialist."}],"explanation":"“You should take on more complex tasks and ask for feedback.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should take on more complex tasks and ask for feedback."},{"id":"C_B","is_correct":false,"text":"You must to become senior yesterday."},{"id":"C_C","is_correct":false,"text":"The specialist is becoming you."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0ea018cb-1c01-5c00-818f-9b8655976185', '372a08c2-6d55-5f65-9985-d227dd47c11d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd39b0e0-d1f0-5aa4-bffa-b531cb19aec1', 'en', 'responsibility', 'обязанность', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('549277fd-d198-5d42-ae8d-80537b30626a', 'en', 'to promote', 'повысить в должности', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95b6b96c-2c70-5179-b6c9-1c218c84eb34', 'en', 'department', 'отдел', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1c5f262-1955-57d2-8746-74059c9daf39', 'en', 'to achieve', 'достичь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0182fd4-7db8-5207-99bb-5d26b5146728', 'en', 'target', 'цель / план', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a67ddcd3-987f-5c7f-914b-131fc6973b00', 'en', 'employee', 'сотрудник', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5140a680-47fa-54b8-b6a5-6b41ed23f7f4', 'en', 'position', 'должность', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f0c7d5c-5907-5c6a-bdc2-6d03d44e4c2f', 'en', 'salary', 'зарплата', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('749bb679-f32e-527b-92db-97f10a850cb8', 'en', 'experience', 'опыт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8614e35b-8596-592e-b248-b2630b238b96', 'en', 'to apply for', 'подать заявку на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('104fadd9-edaf-53a0-b9d8-ab13378b1f9b', 'en', 'promotion', 'повышение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e315f377-635b-5bb6-b946-527fedab6305', 'en', 'more interesting', 'интереснее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('163ec622-e2bc-528c-a577-01497c293a28', 'en', 'skills', 'навыки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31b9e1a1-e703-5fbc-b7bf-9e4edd1eaa3c', 'en', 'to improve', 'улучшить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('77d84af0-ae7e-51a1-9dee-d94c0fe65c84', 'en', 'advice', 'совет', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9b6b4a2-e87c-5627-b61d-40dab0a7d50a', 'en', 'opportunity', 'возможность', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6389ce2b-2ce6-5de3-b7c7-0ceeacd490ff', 'en', 'to take on', 'взять на себя (задачи)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b91591cb-a38e-5ed2-bc8e-f05b47a31e0e', 'en', 'regularly', 'регулярно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c98f2097-6229-51a8-b5fd-7c825f35531d', 'en', 'confident', 'уверенный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfb0c3e7-54b9-5a9d-a718-e2c88cd1719c', 'en', 'career development', 'развитие карьеры', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to promote' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'department' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to achieve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'target' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'employee' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '332418f2-7bcc-5c7c-a1e7-b39c47e5db40', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'salary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'experience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to apply for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'promotion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'more interesting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, 'd9b7589b-290e-567a-a2a2-f8e43b78fc69', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'skills' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '372a08c2-6d55-5f65-9985-d227dd47c11d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to improve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '372a08c2-6d55-5f65-9985-d227dd47c11d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'advice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '372a08c2-6d55-5f65-9985-d227dd47c11d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '372a08c2-6d55-5f65-9985-d227dd47c11d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '372a08c2-6d55-5f65-9985-d227dd47c11d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'regularly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '372a08c2-6d55-5f65-9985-d227dd47c11d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'confident' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0ea018cb-1c01-5c00-818f-9b8655976185', id, '372a08c2-6d55-5f65-9985-d227dd47c11d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'career development' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
