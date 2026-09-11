-- Track: A2_WORK_WORKPLACE_PROBLEMS_AND_SOLUTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('145b5a23-233b-533e-9dd9-6e81e00f0f29', 'A2_WORK_WORKPLACE_PROBLEMS_AND_SOLUTIONS', 'Рабочие проблемы и решения', 'Развивайте практический английский уровня A2 для работы по теме «Рабочие проблемы и решения».', '{"en":"Workplace Problems and Solutions","ru":"Рабочие проблемы и решения"}'::jsonb, '{"en":"Develop practical A2 workplace English for workplace problems and solutions.","ru":"Развивайте практический английский уровня A2 для работы по теме «Рабочие проблемы и решения»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('be370fbd-58f1-5289-9f19-f0f181a1e18f', NULL, 'Что пошло не так', 'Описать рабочую проблему, используя past simple и present perfect.', '{"en":"What Went Wrong","ru":"Что пошло не так"}'::jsonb, '{"en":"Describe a workplace problem using past simple and present perfect.","ru":"Описать рабочую проблему, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31f0f45e-922a-5982-a586-d4ac5195d865', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to go wrong","right":"пойти не так"},{"id":"P2","left":"to complain","right":"жаловаться"},{"id":"P3","left":"to lose data","right":"потерять данные"},{"id":"P4","left":"to fix","right":"починить"},{"id":"P5","left":"issue","right":"проблема / вопрос"},{"id":"P6","left":"twice","right":"дважды"},{"id":"P7","left":"to contact support","right":"обратиться в поддержку"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f124efb-88e6-532b-9545-e02977847ed5', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The system has crashed twice this week.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The system has crashed twice this week."},{"id":"Q_B","is_correct":false,"text":"The system has crashed yesterday twice."},{"id":"Q_C","is_correct":false,"text":"The system crash twice already this week."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d0c8812-0975-55e5-8e38-e2bb3bb080ca', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The server crashed yesterday morning, and we have lost two hours of work.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Сервер упал вчера утром, и мы потеряли два часа работы.","target_language":"en","word_bank":["server","hours","yesterday","tomorrow","work.","of","two","we","crashed","morning,","and","lost","did","have","The","crashes"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cce596d-6d66-539c-8f2d-0a436643e9cc', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"complained","instruction":"Выберите подходящее слово.","options":["complained","has complain","complaining"],"sentence_template":"The client ___ about the delay last Tuesday.","translation_hint":"Клиент пожаловался на задержку в прошлый вторник."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b68b952-aca6-50b2-a3fb-0c2d07e172b8', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","already","contacted","support","about","this","issue."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["have","already","contacted","about","this","issue.","did","We","support","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa98d86a-25a0-561d-a683-6bde19521fc2', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The payment system went down this morning, and three customers have already called to complain.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9c3ac2c-1521-5be3-a97a-ae2509cfb2bb', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The payment system went down this morning, and three customers have already called to complain.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Платёжная система упала сегодня утром, и три клиента уже позвонили с жалобами."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9952ddf-f50d-5f44-a280-b810a0637bb3', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Why is everyone standing near the coffee machine?","translation":"Почему все стоят у кофемашины?","type":"dialogue"},{"character":"Tom","text":"The order system went down an hour ago.","translation":"Система заказов упала час назад.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Has anyone contacted support yet?"},{"is_correct":false,"text":"Did anyone has contacted them yesterday?"},{"is_correct":false,"text":"Is the system drinking coffee too?"}],"text":"What does Anna ask?","type":"choice"}],"title":"The System Crash"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c958b060-883b-56ca-9241-83a8004a4cb6', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to complain” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To say that you are not happy about something"},{"id":"D_B","is_correct":false,"text":"To say thank you for good service"},{"id":"D_C","is_correct":false,"text":"To ask a question about prices"}],"word":"to complain"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25d61318-f113-54fe-a7bf-5c182f623620', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have contacted support twice today.","explanation":"The missing word is “contacted”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"contacted","id":"LW_A","is_correct":true},{"audio_text":"contact","id":"LW_B","is_correct":false},{"audio_text":"contacting","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ support twice today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7d48c44-aa4f-5d77-9f8e-39894c36a4be', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"got","explanation":"The complete sentence is “The issue has got worse since Monday.”.","hint_prefix":"go","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The issue has ___ worse since Monday."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0992126-47a9-5d83-8a51-61697891e43a', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to go wrong","id":"V1","text":"to go wrong"},{"audio_text":"to complain","id":"V2","text":"to complain"},{"audio_text":"to lose data","id":"V3","text":"to lose data"},{"audio_text":"to fix","id":"V4","text":"to fix"},{"audio_text":"issue","id":"V5","text":"issue"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed5009fb-412f-5e30-81db-d5811d413aec', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The printer is broken again."}],"explanation":"“I know — it has already broken down twice this month.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I know — it has already broken down twice this month."},{"id":"C_B","is_correct":false,"text":"Yes, it broke tomorrow morning."},{"id":"C_C","is_correct":false,"text":"The printer is fixing itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('145b5a23-233b-533e-9dd9-6e81e00f0f29', 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5d713340-072d-599d-843a-69eaf2eb127e', NULL, 'Как мы это решим', 'Предложить решения и сравнить варианты.', '{"en":"How We Will Solve It","ru":"Как мы это решим"}'::jsonb, '{"en":"Offer solutions and compare options.","ru":"Предложить решения и сравнить варианты."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f97c9bcc-3dab-5e5a-840f-c72b9d760ca3', '5d713340-072d-599d-843a-69eaf2eb127e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"solution","right":"решение"},{"id":"P2","left":"backup","right":"резервная копия"},{"id":"P3","left":"temporary","right":"временный"},{"id":"P4","left":"to test","right":"протестировать"},{"id":"P5","left":"more efficient","right":"эффективнее"},{"id":"P6","left":"to implement","right":"внедрить"},{"id":"P7","left":"step by step","right":"шаг за шагом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5c5e89f-02fb-585e-bec3-838753052b7a', '5d713340-072d-599d-843a-69eaf2eb127e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The new process is more efficient than the old one.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The new process is more efficient than the old one."},{"id":"Q_B","is_correct":false,"text":"The new process is efficienter than the old one."},{"id":"Q_C","is_correct":false,"text":"The new process is most efficient than old."}],"question":"Which sentence compares two solutions correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d10d50fd-d894-591e-a6a6-21a378baf13d', '5d713340-072d-599d-843a-69eaf2eb127e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to implement a temporary solution and then test it step by step.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся внедрить временное решение, а потом протестировать его шаг за шагом.","target_language":"en","word_bank":["to","it","implement","solution","implemented","and","by","yesterday","are","We","going","then","a","test","step","temporary","step.","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e69a433-4e10-5a07-99ef-45fe68813645', '5d713340-072d-599d-843a-69eaf2eb127e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"better","instruction":"Выберите подходящее слово.","options":["better","best","more good"],"sentence_template":"A backup process is ___ than having no process at all.","translation_hint":"Резервный процесс лучше, чем его отсутствие."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('042d0356-1c27-57fd-af03-bd1e446d46e7', '5d713340-072d-599d-843a-69eaf2eb127e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","team","is","going","to","test","the","solution","tomorrow","morning."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["morning.","solution","did","going","tomorrow","to","was","team","the","is","The","test"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6960c90b-06cb-5a87-b803-1363c7de2ef3', '5d713340-072d-599d-843a-69eaf2eb127e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we implement the backup system now, the next crash will cause fewer problems.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62e9978e-cedc-5446-97e3-424c621b4a06', '5d713340-072d-599d-843a-69eaf2eb127e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we implement the backup system now, the next crash will cause fewer problems.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если мы внедрим резервную систему сейчас, следующий сбой вызовет меньше проблем."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4a57e72-76e4-521d-a0d2-0ef17571307b', '5d713340-072d-599d-843a-69eaf2eb127e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"We have two options: a quick temporary fix or a full system update.","translation":"У нас два варианта: быстрый временный фикс или полное обновление системы.","type":"dialogue"},{"character":"Anna","text":"The temporary fix is faster, but the update is more reliable.","translation":"Временный фикс быстрее, но обновление надёжнее.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We are going to do the fix now and the update next month."},{"is_correct":false,"text":"We did the fix yesterday and the update tomorrow."},{"is_correct":false,"text":"The options are deciding about us."}],"text":"What does the manager decide?","type":"choice"}],"title":"Two Options"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5ca45ab-1d10-550f-a60c-0354d18476ef', '5d713340-072d-599d-843a-69eaf2eb127e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“backup” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A copy of information that you keep in case of a problem"},{"id":"D_B","is_correct":false,"text":"A meeting about future plans"},{"id":"D_C","is_correct":false,"text":"A person who repairs computers every day"}],"word":"backup"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c3ad839-66b2-5936-922a-3f00ca84cce1', '5d713340-072d-599d-843a-69eaf2eb127e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to test the new process.","explanation":"The missing word is “test”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"test","id":"LW_A","is_correct":true},{"audio_text":"tested","id":"LW_B","is_correct":false},{"audio_text":"testing","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ the new process."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5970cb8c-ab09-53b0-8973-b2ff0d2b53f1', '5d713340-072d-599d-843a-69eaf2eb127e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"less","explanation":"The complete sentence is “The temporary solution is less reliable.”.","hint_prefix":"le","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The temporary solution is ___ reliable."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('765410dd-dc06-5307-8630-c3e5f62a94c9', '5d713340-072d-599d-843a-69eaf2eb127e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"solution","id":"V1","text":"solution"},{"audio_text":"backup","id":"V2","text":"backup"},{"audio_text":"temporary","id":"V3","text":"temporary"},{"audio_text":"to test","id":"V4","text":"to test"},{"audio_text":"more efficient","id":"V5","text":"more efficient"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d9cd391-574d-5cad-8733-9fa5f464f50f', '5d713340-072d-599d-843a-69eaf2eb127e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Which solution should we choose?"}],"explanation":"“The second one — it is more expensive but much more reliable.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"The second one — it is more expensive but much more reliable."},{"id":"C_B","is_correct":false,"text":"We chose it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The solution is choosing us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('145b5a23-233b-533e-9dd9-6e81e00f0f29', '5d713340-072d-599d-843a-69eaf2eb127e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c6dd3bd3-93e4-573d-b4a2-97299b9132c6', NULL, 'Чтобы проблема не повторилась', 'Предложить меры профилактики, используя should и первое условное.', '{"en":"Stopping the Problem From Repeating","ru":"Чтобы проблема не повторилась"}'::jsonb, '{"en":"Suggest preventive measures using should and the first conditional.","ru":"Предложить меры профилактики, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10a94f62-6aec-5b21-bda3-2ac52535f6b6', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to prevent","right":"предотвратить"},{"id":"P2","left":"root cause","right":"первопричина"},{"id":"P3","left":"to repeat","right":"повториться"},{"id":"P4","left":"checklist","right":"контрольный список"},{"id":"P5","left":"to train","right":"обучить"},{"id":"P6","left":"regularly","right":"регулярно"},{"id":"P7","left":"to document","right":"задокументировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b259f49-2dd5-5d00-b937-eeedcaec3cb6', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We should find the root cause before we change anything.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We should find the root cause before we change anything."},{"id":"Q_B","is_correct":false,"text":"We should to find the root cause yesterday."},{"id":"Q_C","is_correct":false,"text":"We must finding the cause last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('492aef7d-e0ff-560a-a0ba-51aad434d6e8', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If we document the problem now, we will be able to prevent it from repeating.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если мы задокументируем проблему сейчас, то сможем предотвратить её повторение.","target_language":"en","word_bank":["document","repeating.","to","documented","it","we","did","be","will","problem","now,","prevent","from","If","the","yesterday","we","able"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7916df5a-0f74-568d-8bd1-1168d6e7783e', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"follow","instruction":"Выберите подходящее слово.","options":["follow","will follow","followed"],"sentence_template":"If staff ___ the checklist, mistakes will happen less often.","translation_hint":"Если сотрудники будут следовать чек-листу, ошибок станет меньше."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30b2a7ad-bc60-512c-8790-4aaeb468fd60', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","document","every","step","of","the","process."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["should","You","process.","the","document","of","every","step","went","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c658184-c7ca-5af5-8034-6774fd5f9a6b', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we train the team regularly, the same problem will not repeat next quarter.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72a9690f-8e83-553e-8c32-1543436dd7a4', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we train the team regularly, the same problem will not repeat next quarter.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если мы будем регулярно обучать команду, та же проблема не повторится в следующем квартале."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4527ca88-4f52-5b64-873e-e54e0cb2eaea', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"The same issue has repeated three times this month.","translation":"Эта проблема повторилась трижды за месяц.","type":"dialogue"},{"character":"Anna","text":"Then we should look for the root cause.","translation":"Тогда стоит искать первопричину.","type":"dialogue"},{"options":[{"is_correct":true,"text":"If we document the steps, we will find the cause faster."},{"is_correct":false,"text":"If we will document the steps, we found it yesterday."},{"is_correct":false,"text":"The root cause is documenting us."}],"text":"What does Tom suggest?","type":"choice"}],"title":"Prevention"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca12989e-c479-5a1d-b909-501307004dc0', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“checklist” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A list of steps to check so you do not forget anything"},{"id":"D_B","is_correct":false,"text":"A list of employees on holiday"},{"id":"D_C","is_correct":false,"text":"A letter from a client about a problem"}],"word":"checklist"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('439cb741-8779-5854-a9fa-fa64cb0de103', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If we train the team, the problem will not repeat.","explanation":"The missing word is “train”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"train","id":"LW_A","is_correct":true},{"audio_text":"will train","id":"LW_B","is_correct":false},{"audio_text":"trained","id":"LW_C","is_correct":false}],"sentence_template":"If we ___ the team, the problem will not repeat."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a9d8986-00aa-5f2c-a381-a62217e3de29', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"from","explanation":"The complete sentence is “We should prevent it from happening again.”.","hint_prefix":"fr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We should prevent it ___ happening again."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('631f138b-1f0e-5594-ac3d-f5fd95030fbc', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to prevent","id":"V1","text":"to prevent"},{"audio_text":"root cause","id":"V2","text":"root cause"},{"audio_text":"to repeat","id":"V3","text":"to repeat"},{"audio_text":"checklist","id":"V4","text":"checklist"},{"audio_text":"to train","id":"V5","text":"to train"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21e54cda-5824-58f9-a567-0675516cb751', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The same mistake happened again today."}],"explanation":"“We should create a checklist — if we follow it, the mistake will not repeat.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We should create a checklist — if we follow it, the mistake will not repeat."},{"id":"C_B","is_correct":false,"text":"We must to create it yesterday."},{"id":"C_C","is_correct":false,"text":"The mistake is creating checklists."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('145b5a23-233b-533e-9dd9-6e81e00f0f29', 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('256ab961-e532-5f97-8cec-2e6fb09e728a', 'en', 'to go wrong', 'пойти не так', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('016ed52a-4126-5b70-97fd-2772291d4fdc', 'en', 'to complain', 'жаловаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('23825533-ff5a-5a30-a98b-ce1b569ee8f8', 'en', 'to lose data', 'потерять данные', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('901ff791-b3d0-55f9-9ae1-cf93d89e38c7', 'en', 'to fix', 'починить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90be2997-63b3-59fb-a9e8-43a59bdbc3e5', 'en', 'issue', 'проблема / вопрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75cc07dc-9d42-551b-974d-c9e3b1f498dd', 'en', 'twice', 'дважды', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ad7a5af-0490-5030-959a-04d229ef07ff', 'en', 'to contact support', 'обратиться в поддержку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a74332-dbe4-5a74-98a9-c09242c4a534', 'en', 'solution', 'решение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5da2aebb-f551-5aae-a77e-4f8ac9a81c38', 'en', 'backup', 'резервная копия', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0112ea3-30ec-5885-b464-d216739b053f', 'en', 'temporary', 'временный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f13eb5b1-842b-51c5-a646-5ed2eb7e859d', 'en', 'to test', 'протестировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3f8cbaca-8ddb-5711-92be-1a21f4b7b6bf', 'en', 'more efficient', 'эффективнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fe4c2b7-5de8-5738-b030-d950212ee5fc', 'en', 'to implement', 'внедрить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d9b1ae9-f3d5-54ca-89c3-f6c306284a06', 'en', 'step by step', 'шаг за шагом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac848c0e-50da-5cfd-9eae-c60078a30893', 'en', 'to prevent', 'предотвратить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'первопричина', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89a50a4e-fd62-58b8-ab87-fc7dedbbff6e', 'en', 'to repeat', 'повториться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea7f6dc0-87e9-5895-9e59-06c90a11ec34', 'en', 'checklist', 'контрольный список', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea9314c6-55fb-5233-a7b8-e114eb46e869', 'en', 'to train', 'обучить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b91591cb-a38e-5ed2-bc8e-f05b47a31e0e', 'en', 'regularly', 'регулярно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac1f504a-45f7-56d3-9798-bd138549c382', 'en', 'to document', 'задокументировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to go wrong' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to complain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to lose data' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'twice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'be370fbd-58f1-5289-9f19-f0f181a1e18f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to contact support' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, '5d713340-072d-599d-843a-69eaf2eb127e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'solution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, '5d713340-072d-599d-843a-69eaf2eb127e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'backup' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, '5d713340-072d-599d-843a-69eaf2eb127e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'temporary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, '5d713340-072d-599d-843a-69eaf2eb127e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to test' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, '5d713340-072d-599d-843a-69eaf2eb127e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'more efficient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, '5d713340-072d-599d-843a-69eaf2eb127e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to implement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, '5d713340-072d-599d-843a-69eaf2eb127e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'step by step' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prevent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to repeat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'checklist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to train' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'regularly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '145b5a23-233b-533e-9dd9-6e81e00f0f29', id, 'c6dd3bd3-93e4-573d-b4a2-97299b9132c6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
