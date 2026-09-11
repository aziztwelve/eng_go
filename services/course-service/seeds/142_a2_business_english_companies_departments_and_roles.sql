-- Track: A2_BUSINESS_ENGLISH_COMPANIES_DEPARTMENTS_AND_ROLES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('253b608c-c6c9-5a22-842b-930e5b868a35', 'A2_BUSINESS_ENGLISH_COMPANIES_DEPARTMENTS_AND_ROLES', 'Компании, отделы и должности', 'Развивайте деловой английский уровня A2 по теме «Компании, отделы и должности».', '{"en":"Companies, Departments and Roles","ru":"Компании, отделы и должности"}'::jsonb, '{"en":"Develop A2 business English for companies, departments and roles.","ru":"Развивайте деловой английский уровня A2 по теме «Компании, отделы и должности»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', NULL, 'Как устроена компания', 'Описать структуру компании, используя past simple и present perfect.', '{"en":"How the Company Is Organised","ru":"Как устроена компания"}'::jsonb, '{"en":"Describe a company structure using past simple and present perfect.","ru":"Описать структуру компании, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1be59b7-c0c1-5f75-a8b3-afd86817c01a', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"head office","right":"главный офис"},{"id":"P2","left":"subsidiary","right":"дочерняя компания"},{"id":"P3","left":"to be responsible for","right":"отвечать за"},{"id":"P4","left":"to expand","right":"расшириться"},{"id":"P5","left":"staff","right":"персонал"},{"id":"P6","left":"to found","right":"основать"},{"id":"P7","left":"abroad","right":"за границей"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc9d9d49-a045-5299-aecc-c75844cafc58', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The company has opened three new offices since January.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The company has opened three new offices since January."},{"id":"Q_B","is_correct":false,"text":"The company has opened a new office last year."},{"id":"Q_C","is_correct":false,"text":"The company open three offices already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00e9845c-4604-5ec4-8b1b-b5a7181d9f8b', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The company founded its head office in 2010 and has opened branches abroad since then.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Компания основала главный офис в 2010 году и с тех пор открыла филиалы за границей.","target_language":"en","word_bank":["since","opened","branches","its","The","yesterday","has","abroad","in","head","found","and","then.","did","2010","company","office","founded"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('387a4818-6c57-571d-bfc1-f4d0f62132ba', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"moved","instruction":"Выберите подходящее слово.","options":["moved","has move","moving"],"sentence_template":"Last year the sales department ___ to a bigger floor.","translation_hint":"В прошлом году отдел продаж переехал на больший этаж."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73b87e32-7311-5dd6-8ca3-374685a77f84', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Our","HR","team","has","grown","from","two","to","ten","people."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["people.","was","to","grown","from","ten","two","has","did","Our","HR","team"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bcc9ae5-a569-557d-ae18-b8fc31378902', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The finance department has just published the annual report, and the CEO has commented on it already.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecf737a3-e170-5082-a39d-7103795d3be1', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The finance department has just published the annual report, and the CEO has commented on it already.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Финансовый отдел только что опубликовал годовой отчёт, и CEO уже прокомментировал его."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fe2cda3-7744-5432-877e-18c96f7b5635', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Ben","text":"Have you heard? The company has opened a subsidiary in Poland.","translation":"Слышал? Компания открыла дочернюю компанию в Польше.","type":"dialogue"},{"character":"Maya","text":"When did it happen?","translation":"Когда это произошло?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Last month. The Warsaw team has already hired twenty people."},{"is_correct":false,"text":"Tomorrow. They hired twenty people last year already."},{"is_correct":false,"text":"The subsidiary is opening the company."}],"text":"What does Ben answer?","type":"choice"}],"title":"The New Subsidiary"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8250694d-d84a-5c6b-8a85-3804577eabfc', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“subsidiary” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A company that belongs to a larger company"},{"id":"D_B","is_correct":false,"text":"A small shop that sells one product"},{"id":"D_C","is_correct":false,"text":"A department inside one office building"}],"word":"subsidiary"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76cbfa63-6ff6-5034-add5-f32bc3e3199c', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The company has expanded to South America.","explanation":"The missing word is “expanded”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"expanded","id":"LW_A","is_correct":true},{"audio_text":"expand","id":"LW_B","is_correct":false},{"audio_text":"expanding","id":"LW_C","is_correct":false}],"sentence_template":"The company has ___ to South America."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5b3ca1c-1cf1-52e8-bcf8-4e173e4d323e', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"for","explanation":"The complete sentence is “She is responsible for the marketing team.”.","hint_prefix":"fo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She is responsible ___ the marketing team."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ea510f3-6e3c-5cb8-8a1e-1c574f90e4df', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"head office","id":"V1","text":"head office"},{"audio_text":"subsidiary","id":"V2","text":"subsidiary"},{"audio_text":"to be responsible for","id":"V3","text":"to be responsible for"},{"audio_text":"to expand","id":"V4","text":"to expand"},{"audio_text":"staff","id":"V5","text":"staff"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31147994-17d4-53d0-9d58-68b7bfc718ab', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Who is responsible for the new project?"}],"explanation":"“Anna is. She has led similar projects since 2019.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Anna is. She has led similar projects since 2019."},{"id":"C_B","is_correct":false,"text":"Anna was it tomorrow."},{"id":"C_C","is_correct":false,"text":"The project is responsible for Anna."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('253b608c-c6c9-5a22-842b-930e5b868a35', 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8ddc662a-6673-5cfd-afc0-7a6a111e8c38', NULL, 'Роли и рост команды', 'Сравнить роли и рассказать о планах роста команды.', '{"en":"Roles and Team Growth","ru":"Роли и рост команды"}'::jsonb, '{"en":"Compare roles and talk about team growth plans.","ru":"Сравнить роли и рассказать о планах роста команды."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b2c13ab-3ef4-558c-80f5-4bbe98549bb6', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"team leader","right":"тимлид"},{"id":"P2","left":"more senior","right":"старше по должности"},{"id":"P3","left":"to report to","right":"подотчётен (кому-то)"},{"id":"P4","left":"to hire","right":"найять (сотрудника)"},{"id":"P5","left":"position","right":"должность"},{"id":"P6","left":"junior","right":"младший (сотрудник)"},{"id":"P7","left":"to grow","right":"расти"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9ffd80a-bb08-5c84-bdc2-6b9b76942c2e', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “A team leader is more senior than a junior specialist.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"A team leader is more senior than a junior specialist."},{"id":"Q_B","is_correct":false,"text":"A team leader is seniorer than a junior."},{"id":"Q_C","is_correct":false,"text":"A team leader is most senior than a junior."}],"question":"Which sentence compares roles correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd145437-a87f-5b04-bf6e-7be159859ed1', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to hire two junior specialists because the team has doubled in size.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся нанять двух младших специалистов, потому что команда выросла вдвое.","target_language":"en","word_bank":["team","two","did","going","specialists","hired","yesterday","are","doubled","junior","to","size.","the","We","in","hire","has","because"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4594a8e3-dff1-5dea-b215-0b21314fb1cb', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"report","instruction":"Выберите подходящее слово.","options":["report","reports","reporting"],"sentence_template":"In our structure, assistants ___ directly to the office manager.","translation_hint":"В нашей структуре ассистенты подотчётны напрямую офис-менеджеру."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf3c19a0-4fda-5c48-a921-a2cecc3469fc', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","logistics","team","is","going","to","grow","next","quarter."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["quarter.","team","was","is","grow","did","logistics","to","next","The","going"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dc55eda-75b4-52ba-994e-ea04f38437b6', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the company wins the tender, the department will create fifteen new positions.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27d0c71f-d5bf-5e6c-86b0-52a657d384d3', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the company wins the tender, the department will create fifteen new positions.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если компания выиграет тендер, отдел создаст пятнадцать новых должностей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c7ac575-161b-5452-92f9-77f4749f9897', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"We are going to create a new position: customer success manager.","translation":"Мы собираемся ввести новую должность: менеджер по удержанию клиентов.","type":"dialogue"},{"character":"Anna","text":"Who will the new manager report to?","translation":"Кому будет подотчётен новый менеджер?","type":"dialogue"},{"options":[{"is_correct":true,"text":"To me — and the role is more senior than the support team roles."},{"is_correct":false,"text":"To me, and it was seniorer yesterday."},{"is_correct":false,"text":"The position is reporting to itself."}],"text":"What does the manager say?","type":"choice"}],"title":"The New Role"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12bece2d-377c-5350-b8e1-97effbb3c77a', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to report to” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To be managed by a particular person at work"},{"id":"D_B","is_correct":false,"text":"To write a report about a colleague"},{"id":"D_C","is_correct":false,"text":"To finish work before the deadline"}],"word":"to report to"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5902398f-8e2a-57da-b957-5844be041ee9', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"They are going to hire five engineers.","explanation":"The missing word is “hire”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"hire","id":"LW_A","is_correct":true},{"audio_text":"hired","id":"LW_B","is_correct":false},{"audio_text":"hiring","id":"LW_C","is_correct":false}],"sentence_template":"They are going to ___ five engineers."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d03ae4ce-b94e-5d32-a20b-0a5e72f13711', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “This role is more senior than my old one.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This role is ___ senior than my old one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea6e931d-c57d-54ab-a340-8384eaa4ce57', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"team leader","id":"V1","text":"team leader"},{"audio_text":"more senior","id":"V2","text":"more senior"},{"audio_text":"to report to","id":"V3","text":"to report to"},{"audio_text":"to hire","id":"V4","text":"to hire"},{"audio_text":"position","id":"V5","text":"position"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc0a7f2b-51c8-5770-8cad-a59bc8c6bafe', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Is the new position junior or senior?"}],"explanation":"“More senior — it reports directly to the head of department.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"More senior — it reports directly to the head of department."},{"id":"C_B","is_correct":false,"text":"It was seniorer yesterday."},{"id":"C_C","is_correct":false,"text":"The position is reporting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('253b608c-c6c9-5a22-842b-930e5b868a35', '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', NULL, 'К кому обратиться', 'Объяснить, к кому идти с вопросами, используя should и первое условное.', '{"en":"Who to Contact","ru":"К кому обратиться"}'::jsonb, '{"en":"Explain who to contact using should and the first conditional.","ru":"Объяснить, к кому идти с вопросами, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1977a913-45c3-5751-b162-c57305718443', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to contact","right":"обратиться к"},{"id":"P2","left":"in charge of","right":"ответственный за"},{"id":"P3","left":"to solve","right":"решить (вопрос)"},{"id":"P4","left":"colleague","right":"коллега"},{"id":"P5","left":"department","right":"отдел"},{"id":"P6","left":"faster","right":"быстрее"},{"id":"P7","left":"internal request","right":"внутренний запрос"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f771dee-d752-5b93-8a56-9e316734f1e6', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should contact HR about holiday requests.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should contact HR about holiday requests."},{"id":"Q_B","is_correct":false,"text":"You should to contact HR yesterday."},{"id":"Q_C","is_correct":false,"text":"You must contacting HR last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf439409-6270-5b16-a38e-d15654418df2', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the question is about salaries, you should contact the HR department.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если вопрос касается зарплаты, обратитесь в отдел кадров.","target_language":"en","word_bank":["If","the","yesterday","is","salaries,","concerned","did","question","should","you","contact","HR","about","the","department."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8964b7a-4c15-54a7-8053-b2eca5815990', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"contact","instruction":"Выберите подходящее слово.","options":["contact","will contact","contacted"],"sentence_template":"If you ___ the right department, you will get an answer faster.","translation_hint":"Если обратишься в нужный отдел, получишь ответ быстрее."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03309f2c-0588-53c2-90eb-71018fab45d8', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","ask","the","person","in","charge","of","the","budget."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["mustn''t","should","person","the","went","budget.","You","of","charge","the","ask","in"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a5788f6-0d21-5647-873c-279bf886e394', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you are not sure who to ask, the office manager will point you to the right department.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3efd57ee-e6b0-55fc-b4ee-0823685a80c9', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you are not sure who to ask, the office manager will point you to the right department.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если не знаешь, кого спросить, офис-менеджер подскажет нужный отдел."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6be1c68-b6c4-57c3-9112-d520e1b576db', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"I sent my request to finance, but they returned it.","translation":"Я отправил запрос в финансовый отдел, но его вернули.","type":"dialogue"},{"character":"Anna","text":"Equipment requests go to the office manager, not finance.","translation":"Запросы на технику идут офис-менеджеру, а не в финансы.","type":"dialogue"},{"options":[{"is_correct":true,"text":"He contacted the wrong department, so he should resend it."},{"is_correct":false,"text":"He contacted finance tomorrow instead."},{"is_correct":false,"text":"The request is sending itself back."}],"text":"What did Tom do wrong?","type":"choice"}],"title":"The Wrong Department"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e24253be-a667-53ea-bb68-92da749c3fcc', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“in charge of” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Having control or responsibility for something"},{"id":"D_B","is_correct":false,"text":"Being new in a company"},{"id":"D_C","is_correct":false,"text":"Being on holiday this week"}],"word":"in charge of"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe5f5095-f3c0-5355-829d-f336adcb221c', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you contact the office manager, she will help today.","explanation":"The missing word is “contact”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"contact","id":"LW_A","is_correct":true},{"audio_text":"will contact","id":"LW_B","is_correct":false},{"audio_text":"contacted","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the office manager, she will help today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4689dd41-33bb-53db-a167-1d24d6db7685', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “You should contact the person in charge of IT.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should contact the person ___ charge of IT."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c3ee2cc-965a-596d-9909-0794803f990e', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to contact","id":"V1","text":"to contact"},{"audio_text":"in charge of","id":"V2","text":"in charge of"},{"audio_text":"to solve","id":"V3","text":"to solve"},{"audio_text":"colleague","id":"V4","text":"colleague"},{"audio_text":"department","id":"V5","text":"department"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e789d58c-00c4-547f-b906-7c457f87a775', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Who should I ask about the parking pass?"}],"explanation":"“Ask the office manager — if she cannot help, she will forward you to facilities.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Ask the office manager — if she cannot help, she will forward you to facilities."},{"id":"C_B","is_correct":false,"text":"I asked her yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The pass is parking the office."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('253b608c-c6c9-5a22-842b-930e5b868a35', 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2175f575-5ba9-5c8b-a9ba-3d19c3c9ebb6', 'en', 'head office', 'главный офис', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efd6da64-0648-5652-8d11-5bd43b91ead5', 'en', 'subsidiary', 'дочерняя компания', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61321809-45ff-5eb9-9db3-a074a9cdac70', 'en', 'to be responsible for', 'отвечать за', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cbb5a4fb-e209-570d-990e-9109ac2a1617', 'en', 'to expand', 'расшириться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d0a91360-8f7d-5eae-8352-e7abbb008eb4', 'en', 'staff', 'персонал', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7904fcad-d961-532f-b974-5929f99f0245', 'en', 'to found', 'основать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efb21a54-6581-5499-b454-4ccdadbc1eaa', 'en', 'abroad', 'за границей', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09805715-ab6a-55cb-b35b-2ec55006a259', 'en', 'team leader', 'тимлид', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0631df26-b007-51a0-a73d-8b05bd6797d6', 'en', 'more senior', 'старше по должности', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('beb14026-8ed2-56e5-a9ff-563138433d0f', 'en', 'to report to', 'подотчётен (кому-то)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cfd4436-7367-57ee-a92a-932a7d3feb61', 'en', 'to hire', 'найять (сотрудника)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5140a680-47fa-54b8-b6a5-6b41ed23f7f4', 'en', 'position', 'должность', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32d0c2d0-62a2-5f0f-8f83-b5a44dbbc086', 'en', 'junior', 'младший (сотрудник)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3433d18b-a129-5fb3-89fa-a3f509b6ade6', 'en', 'to grow', 'расти', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22acbcd4-63c9-5b3b-9480-a4c11008dc25', 'en', 'to contact', 'обратиться к', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5bb8199-e174-5af2-a1e4-e317ad1018d8', 'en', 'in charge of', 'ответственный за', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('807f815e-0f12-53c8-8097-e912ea31f97b', 'en', 'to solve', 'решить (вопрос)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44d4a962-56ae-58fb-868f-087abd9e2e17', 'en', 'colleague', 'коллега', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95b6b96c-2c70-5179-b6c9-1c218c84eb34', 'en', 'department', 'отдел', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4b43ee9-777a-5164-b53b-1e1787c7aa0e', 'en', 'faster', 'быстрее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3417d17b-0a1c-5cab-b0b0-0eccca7b675f', 'en', 'internal request', 'внутренний запрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'head office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'subsidiary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be responsible for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to expand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'staff' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to found' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'ab0c3a95-eb4f-5c4b-b822-d9b65fe4c37f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'abroad' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'team leader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more senior' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to report to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hire' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'junior' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, '8ddc662a-6673-5cfd-afc0-7a6a111e8c38', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to grow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to contact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'in charge of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to solve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'colleague' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'department' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'faster' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '253b608c-c6c9-5a22-842b-930e5b868a35', id, 'da1c94b7-9efa-5d63-a8ca-daf03ffce5e2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'internal request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
