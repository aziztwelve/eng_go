-- Track: A2_STUDY_STUDY_GOALS_AND_PLANS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b9e38fc3-e186-57f1-b435-6f2ee0068827', 'A2_STUDY_STUDY_GOALS_AND_PLANS', 'Учебные цели и планы', 'Развивайте учебные навыки уровня A2 по теме «Учебные цели и планы».', '{"en":"Study Goals and Plans","ru":"Учебные цели и планы"}'::jsonb, '{"en":"Develop A2 study skills for study goals and plans.","ru":"Развивайте учебные навыки уровня A2 по теме «Учебные цели и планы»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5265a46a-9f63-51c1-ba09-4bdc1b553b2f', NULL, 'Мои цели и что уже сделано', 'Рассказать о целях, используя past simple и present perfect.', '{"en":"My Goals and What Is Already Done","ru":"Мои цели и что уже сделано"}'::jsonb, '{"en":"Talk about goals using past simple and present perfect.","ru":"Рассказать о целях, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7d4cb44-a907-54ee-8f04-9493067f2a1e', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"long-term goal","right":"долгосрочная цель"},{"id":"P2","left":"to break down into steps","right":"разбить на шаги"},{"id":"P3","left":"to tick off","right":"отметить (выполненным)"},{"id":"P4","left":"so far","right":"до сих пор"},{"id":"P5","left":"by the end of","right":"к концу"},{"id":"P6","left":"to commit to","right":"обязаться (делать)"},{"id":"P7","left":"checklist","right":"чек-лист"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a82e4b8-e70b-5045-9ff1-a7aa23d5d2a3', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have ticked off six of the ten steps so far.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have ticked off six of the ten steps so far."},{"id":"Q_B","is_correct":false,"text":"I have ticked them off last week."},{"id":"Q_C","is_correct":false,"text":"I tick six steps already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9515f907-c0a7-5a24-bc90-8b88fe4d09b4', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I broke the big goal into twelve steps and have ticked off four.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я разбил большую цель на двенадцать шагов и отметил четыре.","target_language":"en","word_bank":["ticked","into","big","did","broke","and","broke","tomorrow","I","four.","off","twelve","goal","have","steps","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7eff44c-d753-5c8f-82aa-3234d9795492', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"committed","instruction":"Выберите подходящее слово.","options":["committed","has commit","committing"],"sentence_template":"In March she ___ to daily practice.","translation_hint":"В марте она обязалась практиковаться ежедневно."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e1e3097-ddae-59e7-9527-f750a3532f0b', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","completed","the","first","module","already."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["first","module","already.","was","did","completed","the","We","have"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('257e3f93-a167-55ee-a0cc-f4cd05fe0801', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"By the end of spring I promised myself the B1 exam — I have registered and paid this week.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4975573-af13-5a81-8f17-9d2c052957d1', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"By the end of spring I promised myself the B1 exam — I have registered and paid this week.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"К концу весны я обещал себе экзамен B1 — на этой неделе я зарегистрировался и оплатил."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16a571ef-c832-5b4a-8faf-0c63a3ad1815', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"How is your language plan going?","translation":"Как идёт твой языковой план?","type":"dialogue"},{"character":"Voice 2","text":"Not bad — I have ticked off the grammar base and the first thousand words.","translation":"Неплохо — я отметил грамматическую базу и первую тысячу слов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What is left for the next two months?"},{"is_correct":false,"text":"What is left tomorrow yesterday?"},{"is_correct":false,"text":"Is the plan ticking off your grammar?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"The Checklist"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92edee4b-9bf2-5aa3-a4d7-6709c2f14acb', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“long-term goal” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A big aim that takes months or years"},{"id":"D_B","is_correct":false,"text":"A task you finish in one evening"},{"id":"D_C","is_correct":false,"text":"A homework assignment for tomorrow"}],"word":"long-term goal"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('485eda16-efc9-5e38-983c-37d3dcdc50fb', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have broken the goal into small steps.","explanation":"The missing word is “broken”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"broken","id":"LW_A","is_correct":true},{"audio_text":"broke","id":"LW_B","is_correct":false},{"audio_text":"breaking","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the goal into small steps."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc8b7264-f6d9-5a8f-a2f3-d89a48a51b16', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"off","explanation":"The complete sentence is “She has ticked off three tasks.”.","hint_prefix":"of","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has ticked ___ three tasks."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d85c875-dfd9-57b7-a3ca-4b71f1ae0a50', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"long-term goal","id":"V1","text":"long-term goal"},{"audio_text":"to break down into steps","id":"V2","text":"to break down into steps"},{"audio_text":"to tick off","id":"V3","text":"to tick off"},{"audio_text":"so far","id":"V4","text":"so far"},{"audio_text":"by the end of","id":"V5","text":"by the end of"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b7e7d6e-e79b-5283-a390-75ea2ed496af', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"When is your exam, exactly?"}],"explanation":"“June the fifteenth — I have booked it and have started the countdown.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"June the fifteenth — I have booked it and have started the countdown."},{"id":"C_B","is_correct":false,"text":"It was June yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The exam is datting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b9e38fc3-e186-57f1-b435-6f2ee0068827', '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f405fc03-8679-527a-9f08-e827a1b47b60', NULL, 'План на семестр', 'Составить план и сравнить стратегии учёбы.', '{"en":"The Semester Plan","ru":"План на семестр"}'::jsonb, '{"en":"Make a plan and compare study strategies.","ru":"Составить план и сравнить стратегии учёбы."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c60e6e2-395a-5fc8-86ab-90fda20fd4fe', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"weekly plan","right":"недельный план"},{"id":"P2","left":"more specific","right":"конкретнее"},{"id":"P3","left":"to allocate time","right":"распределить время"},{"id":"P4","left":"to overload","right":"перегрузить"},{"id":"P5","left":"achievable","right":"достижимый"},{"id":"P6","left":"priority","right":"приоритет"},{"id":"P7","left":"to build in","right":"заложить (в план)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9cbc744-d9ca-5ce8-b26e-2147d7d05d8e', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “''Read two chapters a week'' is more specific than ''read more''.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"''Read two chapters a week'' is more specific than ''read more''."},{"id":"Q_B","is_correct":false,"text":"''Two chapters'' is more specificest than ''read more''."},{"id":"Q_C","is_correct":false,"text":"''Two chapters'' is most specific than ''more''."}],"question":"Which sentence compares two plans correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fff39a85-e9a9-57a5-ae6e-b55f9c759d84', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This semester I am going to allocate the mornings to grammar.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В этом семестре я собираюсь выделить утро на грамматику.","target_language":"en","word_bank":["I","am","grammar.","allocate","yesterday","going","the","semester","did","This","to","allocated","mornings","to"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df758caf-b90b-5577-83a8-b0a7fb9983b4', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"An overloaded plan is ___ dangerous than no plan.","translation_hint":"Перегруженный план опаснее отсутствия плана."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f0453ef-c2bb-55f9-ba82-2d6a4d66e60d', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","are","going","to","build","in","a","review","week","before","exams."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["exams.","was","build","going","before","to","They","review","did","a","in","week","are"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb3f80ab-e052-5ce3-89ca-aa9033a8e62c', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you build in one flexible evening a week, a single missed day will not destroy the whole plan.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3e8411d-0d08-5a0f-9488-66d572a6791c', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you build in one flexible evening a week, a single missed day will not destroy the whole plan.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если заложить в план один гибкий вечер в неделю, один пропущенный день не разрушит весь план."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38f088a1-3d14-5bdd-b6de-8a3cd1e042bd', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Should I plan all seven days of the week?","translation":"Планировать все семь дней недели?","type":"dialogue"},{"character":"Voice 2","text":"Six — the seventh is your safety net for missed tasks.","translation":"Шесть — седьмой это твоя подушка для пропущенных задач.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Smart — I am going to plan six days and keep Sunday flexible."},{"is_correct":false,"text":"I planned seven yesterday tomorrow."},{"is_correct":false,"text":"The week is netting my safety."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Planning the Term"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('314cefd9-6637-586a-9778-cc346bf65eff', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“achievable” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Possible to do in the time you have"},{"id":"D_B","is_correct":false,"text":"So difficult that nobody can do it"},{"id":"D_C","is_correct":false,"text":"So easy that it brings no progress"}],"word":"achievable"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2c302c8-3f96-52bc-8e3b-6381b582800a', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to allocate two hours a day to reading.","explanation":"The missing word is “allocate”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"allocate","id":"LW_A","is_correct":true},{"audio_text":"allocated","id":"LW_B","is_correct":false},{"audio_text":"allocating","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ two hours a day to reading."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab2e6503-b122-5003-8f08-6a9b2b665a84', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"priority","explanation":"The complete sentence is “Speaking is my top priority this term.”.","hint_prefix":"pr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Speaking is my top ___ this term."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdb61d65-9f54-5089-9fcb-1fe28a8ec4f1', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"weekly plan","id":"V1","text":"weekly plan"},{"audio_text":"more specific","id":"V2","text":"more specific"},{"audio_text":"to allocate time","id":"V3","text":"to allocate time"},{"audio_text":"to overload","id":"V4","text":"to overload"},{"audio_text":"achievable","id":"V5","text":"achievable"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e9acd6a-e45f-55e4-a0d9-4c4e141131fd', 'f405fc03-8679-527a-9f08-e827a1b47b60', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How many hours a day should I study?"}],"explanation":"“Two focused ones — if you overload the plan, you will quit by week three.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Two focused ones — if you overload the plan, you will quit by week three."},{"id":"C_B","is_correct":false,"text":"I studied them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The hours are prioritising me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b9e38fc3-e186-57f1-b435-6f2ee0068827', 'f405fc03-8679-527a-9f08-e827a1b47b60', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b0c36d4c-8975-5201-886c-fb7610400bce', NULL, 'Если сорвался план', 'Обсудить срыв планов, используя should и первое условное.', '{"en":"If the Plan Falls Apart","ru":"Если сорвался план"}'::jsonb, '{"en":"Discuss broken plans using should and the first conditional.","ru":"Обсудить срыв планов, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29ca0747-65fe-5bef-a967-c75d10d16d98', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to fall behind schedule","right":"отставать от графика"},{"id":"P2","left":"to catch up","right":"наверстать"},{"id":"P3","left":"excuse","right":"оправдание"},{"id":"P4","left":"to restart","right":"начать заново"},{"id":"P5","left":"from scratch","right":"с нуля"},{"id":"P6","left":"all-or-nothing thinking","right":"мышление «всё или ничего»"},{"id":"P7","left":"to adjust","right":"скорректировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e35a008f-ef73-5394-a6bc-fdcc64868440', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should restart the plan instead of quitting it.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should restart the plan instead of quitting it."},{"id":"Q_B","is_correct":false,"text":"You should to restart it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must restarting plan last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c7bcfe8-c97d-5915-a7d1-2a2a421ac9cc', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you fall behind by a week, do not quit — just adjust the deadlines.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если отстанешь на неделю, не бросай — просто скорректируй сроки.","target_language":"en","word_bank":["by","yesterday","behind","—","fall","did","If","a","the","adjust","week,","not","just","you","deadlines.","quit","do","fell"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb1b538b-0cfa-5028-841c-e31c21c2ef9d', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"restart","instruction":"Выберите подходящее слово.","options":["restart","will restart","restarted"],"sentence_template":"If you miss three days, ___ on the fourth.","translation_hint":"Если пропустил три дня, начни заново на четвёртый."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae73ae84-bbdc-5f52-a639-264705d5a807', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","catch","up","gradually,","not","in","one","night."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["in","gradually,","mustn''t","should","You","one","night.","not","catch","went","up"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4162b9f4-be37-52fc-9db3-11916d725cfe', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you drop the all-or-nothing thinking, one missed day will feel like a pause, not a failure.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13147eac-06cd-5c2f-ae4f-c5fe8e6620ba', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you drop the all-or-nothing thinking, one missed day will feel like a pause, not a failure.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если отбросить мышление «всё или ничего», один пропущенный день будет паузой, а не провалом."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5d4c882-02e6-5756-86e5-922f9b3621f4', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I missed a whole week, and now I want to quit the plan.","translation":"Я пропустил целую неделю и теперь хочу бросить план.","type":"dialogue"},{"character":"Voice 2","text":"Why? Do you start from scratch when you miss a bus?","translation":"Почему? Ты начинаешь путь заново, когда опаздываешь на автобус?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Fair point — I should just continue from where I stopped."},{"is_correct":false,"text":"I continued it yesterday tomorrow already."},{"is_correct":false,"text":"The week is quitting my bus."}],"text":"What does Voice 1 realise?","type":"choice"}],"title":"The Abandoned Plan"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01e7ea02-7bab-5e8b-ab4c-10aeec724ac1', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to catch up” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To do the work you missed"},{"id":"D_B","is_correct":false,"text":"To plan the work for next month"},{"id":"D_C","is_correct":false,"text":"To skip the topics you find boring"}],"word":"to catch up"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1a8b52a-04ff-5988-a92a-25896e2bede3', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you fall behind, adjust the plan.","explanation":"The missing word is “fall”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"fall","id":"LW_A","is_correct":true},{"audio_text":"will fall","id":"LW_B","is_correct":false},{"audio_text":"fell","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ behind, adjust the plan."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fab3c83-7dbf-5eea-b53a-6ff04be1bd27', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"scratch","explanation":"The complete sentence is “Do not start from scratch — just continue.”.","hint_prefix":"sc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Do not start from ___ — just continue."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('caeae9bf-cd1c-5120-80b9-2ce6a719f874', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to fall behind schedule","id":"V1","text":"to fall behind schedule"},{"audio_text":"to catch up","id":"V2","text":"to catch up"},{"audio_text":"excuse","id":"V3","text":"excuse"},{"audio_text":"to restart","id":"V4","text":"to restart"},{"audio_text":"from scratch","id":"V5","text":"from scratch"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ceaee7d4-ece4-5cdf-bced-de887e199c19', 'b0c36d4c-8975-5201-886c-fb7610400bce', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I have not opened the textbook since Monday."}],"explanation":"“Open it now for ten minutes — if you restart small, the momentum will return.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Open it now for ten minutes — if you restart small, the momentum will return."},{"id":"C_B","is_correct":false,"text":"I opened it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The textbook is Mondaying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b9e38fc3-e186-57f1-b435-6f2ee0068827', 'b0c36d4c-8975-5201-886c-fb7610400bce', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f01c1dcb-9998-577f-b5dd-5e8b3d549524', 'en', 'long-term goal', 'долгосрочная цель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b8ebfdbc-70c6-5320-8587-68a0b77408e9', 'en', 'to break down into steps', 'разбить на шаги', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e6064a2-f535-5b1f-94c6-13ca9ad6b523', 'en', 'to tick off', 'отметить (выполненным)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07157512-44a1-5318-aab8-3051f21a1091', 'en', 'by the end of', 'к концу', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf3c998b-05cf-5c6c-aeea-56ce197896b5', 'en', 'to commit to', 'обязаться (делать)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea7f6dc0-87e9-5895-9e59-06c90a11ec34', 'en', 'checklist', 'чек-лист', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b145d120-8db3-5bb8-9844-a3da63906a58', 'en', 'weekly plan', 'недельный план', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae266090-4b3e-5e4f-aeb3-1cb0d37ab45d', 'en', 'more specific', 'конкретнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35596421-11cd-54c0-8dff-16a7f3ff48e8', 'en', 'to allocate time', 'распределить время', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7d608a2f-1fb3-5f43-8a30-f3d780c29847', 'en', 'to overload', 'перегрузить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4db83807-63c2-5705-8cb8-fe6fea1faed8', 'en', 'achievable', 'достижимый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a5d16a1-7f9e-5c34-bf92-150d61852a8b', 'en', 'priority', 'приоритет', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c5b5f8d2-570a-5535-91e4-7451038fab28', 'en', 'to build in', 'заложить (в план)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2343b210-a7e0-5578-9c03-ece9310957c4', 'en', 'to fall behind schedule', 'отставать от графика', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5db29a89-eceb-5af9-994e-4177f994574b', 'en', 'to catch up', 'наверстать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('530da8a5-9b75-53b9-a363-8bfc0b4066c6', 'en', 'excuse', 'оправдание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c70075ac-f955-549b-a7f4-f76fd6366c40', 'en', 'to restart', 'начать заново', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f0010fe-78a9-559b-92f5-015c1661c921', 'en', 'from scratch', 'с нуля', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88e65071-49d8-5345-86b2-125a93fd8a78', 'en', 'all-or-nothing thinking', 'мышление «всё или ничего»', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e8e8f49f-b90a-5551-a45a-b054acb1a962', 'en', 'to adjust', 'скорректировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'long-term goal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to break down into steps' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to tick off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'by the end of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to commit to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, '5265a46a-9f63-51c1-ba09-4bdc1b553b2f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'checklist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'f405fc03-8679-527a-9f08-e827a1b47b60', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'weekly plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'f405fc03-8679-527a-9f08-e827a1b47b60', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more specific' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'f405fc03-8679-527a-9f08-e827a1b47b60', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to allocate time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'f405fc03-8679-527a-9f08-e827a1b47b60', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to overload' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'f405fc03-8679-527a-9f08-e827a1b47b60', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'achievable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'f405fc03-8679-527a-9f08-e827a1b47b60', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'f405fc03-8679-527a-9f08-e827a1b47b60', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to build in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'b0c36d4c-8975-5201-886c-fb7610400bce', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fall behind schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'b0c36d4c-8975-5201-886c-fb7610400bce', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to catch up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'b0c36d4c-8975-5201-886c-fb7610400bce', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'excuse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'b0c36d4c-8975-5201-886c-fb7610400bce', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to restart' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'b0c36d4c-8975-5201-886c-fb7610400bce', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'from scratch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'b0c36d4c-8975-5201-886c-fb7610400bce', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'all-or-nothing thinking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b9e38fc3-e186-57f1-b435-6f2ee0068827', id, 'b0c36d4c-8975-5201-886c-fb7610400bce', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to adjust' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
