-- Track: A2_STUDY_GROUP_PROJECTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('da88639d-2552-533a-a131-3c431bf194bf', 'A2_STUDY_GROUP_PROJECTS', 'Групповые проекты', 'Развивайте учебные навыки уровня A2 по теме «Групповые проекты».', '{"en":"Group Projects","ru":"Групповые проекты"}'::jsonb, '{"en":"Develop A2 study skills for group projects.","ru":"Развивайте учебные навыки уровня A2 по теме «Групповые проекты»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1a227de2-1974-5ec9-83db-48c5c192c9ba', NULL, 'Как прошёл наш проект', 'Рассказать о групповом проекте, используя past simple и present perfect.', '{"en":"How Our Project Went","ru":"Как прошёл наш проект"}'::jsonb, '{"en":"Talk about a group project using past simple and present perfect.","ru":"Рассказать о групповом проекте, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f14eec2-f5a6-5d37-bfd4-a5e8fd0154ab', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to divide tasks","right":"разделить задачи"},{"id":"P2","left":"deadline","right":"срок"},{"id":"P3","left":"to contribute","right":"внести вклад"},{"id":"P4","left":"slide deck","right":"презентация (набор слайдов)"},{"id":"P5","left":"to proofread","right":"вычитать"},{"id":"P6","left":"to merge","right":"объединить (файлы/части)"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4fd9e16-908d-51db-af04-f15deaa5805c', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Our group has finished the research part so far.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Our group has finished the research part so far."},{"id":"Q_B","is_correct":false,"text":"Our group has finished it last week."},{"id":"Q_C","is_correct":false,"text":"We finish the research already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97ec3e44-05d1-5110-8f1f-ed9e790bc5cb', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We divided the tasks on Monday, and we have already merged the slide deck.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы разделили задачи в понедельник, а презентацию уже объединили.","target_language":"en","word_bank":["deck.","Monday,","on","did","merged","We","divide","already","slide","the","and","we","divided","the","tasks","tomorrow","have"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10ab60c0-a6ea-5a51-ba28-40f8797d3d8c', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"proofread","instruction":"Выберите подходящее слово.","options":["proofread","has proofread","proofreading"],"sentence_template":"Last night I ___ the final text of the report.","translation_hint":"Прошлой ночью я вычитал финальный текст отчёта."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a00361e-3fa5-591b-8a76-523e747dd688', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Each","member","has","contributed","to","the","presentation."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","the","presentation.","was","did","contributed","member","Each","to"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee4c48c0-3393-5000-8357-14b7df78650d', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We have met four times this month, and every meeting has moved the project forward.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78fe0816-9428-5c59-9531-841e4da54c7a', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We have met four times this month, and every meeting has moved the project forward.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мы встречались четыре раза за месяц, и каждая встреча двигала проект вперёд."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('379bdbf4-4805-5533-8bb7-ed49da84217e', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Has everyone uploaded their parts?","translation":"Все загрузили свои части?","type":"dialogue"},{"character":"Voice 2","text":"Three of us have. Kirill promised to send his slides by nine.","translation":"Трое уже. Кирилл обещал прислать слайды к девяти.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good — I have proofread the introduction already."},{"is_correct":false,"text":"Good, I proofread it tomorrow yesterday."},{"is_correct":false,"text":"Is the introduction uploading Kirill?"}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Before Submission"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cf77ddb-e5f1-5025-b57f-60fde1a85f62', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to merge” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To combine several files or parts into one"},{"id":"D_B","is_correct":false,"text":"To delete the extra copies of a file"},{"id":"D_C","is_correct":false,"text":"To print a document for the whole group"}],"word":"to merge"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78ce26e9-0a20-5673-89cd-c732911c50cd', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have merged all the parts into one file.","explanation":"The missing word is “merged”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"merged","id":"LW_A","is_correct":true},{"audio_text":"merge","id":"LW_B","is_correct":false},{"audio_text":"merging","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ all the parts into one file."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3215d3c-a07f-5a8b-8bb3-6b17f12e5ecc', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"contributed","explanation":"The complete sentence is “She has contributed a lot to the project.”.","hint_prefix":"co","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has ___ a lot to the project."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c48205e7-5fa6-51e7-98ce-ae6c5cbfadb0', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to divide tasks","id":"V1","text":"to divide tasks"},{"audio_text":"deadline","id":"V2","text":"deadline"},{"audio_text":"to contribute","id":"V3","text":"to contribute"},{"audio_text":"slide deck","id":"V4","text":"slide deck"},{"audio_text":"to proofread","id":"V5","text":"to proofread"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e20334a-ddbc-5591-af35-9846b42241e7', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Classmate","text":"Who did the design?"}],"explanation":"“Lena did — she has made all the charts, and we have checked the numbers twice.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Lena did — she has made all the charts, and we have checked the numbers twice."},{"id":"C_B","is_correct":false,"text":"She did them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The design is charting us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('da88639d-2552-533a-a131-3c431bf194bf', '1a227de2-1974-5ec9-83db-48c5c192c9ba', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6ec0a786-6163-560d-b1cd-4b29cdc635ff', NULL, 'Планируем следующий проект', 'Спланировать проект и сравнить роли в группе.', '{"en":"Planning the Next Project","ru":"Планируем следующий проект"}'::jsonb, '{"en":"Plan a project and compare group roles.","ru":"Спланировать проект и сравнить роли в группе."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d33bdc19-eb90-5bde-96ff-3c4fb83d9d0c', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"team leader","right":"тимлид"},{"id":"P2","left":"more responsible","right":"ответственнее"},{"id":"P3","left":"to assign roles","right":"распределить роли"},{"id":"P4","left":"shared folder","right":"общая папка"},{"id":"P5","left":"to set a timeline","right":"составить график"},{"id":"P6","left":"editor","right":"редактор"},{"id":"P7","left":"fair","right":"справедливый"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32e334d6-6ea3-511c-801e-5d9b5c239c01', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The editor''s role is more demanding than the timekeeper''s.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The editor''s role is more demanding than the timekeeper''s."},{"id":"Q_B","is_correct":false,"text":"Editor is demandinger than timekeeper."},{"id":"Q_C","is_correct":false,"text":"Editor is most demanding than timekeeper."}],"question":"Which sentence compares two roles correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbc7d61e-06b9-53c9-9f6e-d10bde699051', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to assign the roles at the next meeting and set up a shared folder.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся распределить роли на следующей встрече и завести общую папку.","target_language":"en","word_bank":["did","assign","to","are","folder.","roles","going","assigned","and","next","the","up","We","yesterday","shared","set","meeting","a","the","at"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dfee233-cfcb-5cba-92f3-b2aa4a6b3518', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"better","instruction":"Выберите подходящее слово.","options":["better","best","more good"],"sentence_template":"A clear timeline is ___ than vague promises.","translation_hint":"Чёткий график лучше расплывчатых обещаний."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('096b8059-808f-547f-a633-8d39d5b5b5ee', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","be","the","editor","this","time."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["this","going","the","to","be","did","time.","was","I","am","editor"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72b7b1dd-1f41-52f1-a5bd-c3e04afc71e7', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we set a timeline with three checkpoints, the project will not pile up in the last week.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc2bfa96-60c2-5c22-babb-5ed4f19f6e9a', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we set a timeline with three checkpoints, the project will not pile up in the last week.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если составить график с тремя контрольными точками, проект не навалится всей массой в последнюю неделю."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a62d2a8-1f69-5c40-b73b-e520adbb1d8a', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Who wants to be the team leader this time?","translation":"Кто теперь хочет быть тимлидом?","type":"dialogue"},{"character":"Voice 2","text":"You did the design last time — I can lead if nobody minds.","translation":"Прошлый раз дизайн делал ты — могу вести я, если никто не против.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good idea — and I am going to be the editor."},{"is_correct":false,"text":"Good idea, I was editor yesterday tomorrow."},{"is_correct":false,"text":"Is the leader minding the design?"}],"text":"What does Voice 1 answer?","type":"choice"}],"title":"Assigning Roles"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9807aae-f2ad-583f-95bf-221ceb1ccd96', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“shared folder” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"An online folder all group members can use"},{"id":"D_B","is_correct":false,"text":"A private folder only the leader opens"},{"id":"D_C","is_correct":false,"text":"A printed copy of the final report"}],"word":"shared folder"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb997a07-1255-5117-9f9e-a9d1a036dd85', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to assign roles today.","explanation":"The missing word is “assign”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"assign","id":"LW_A","is_correct":true},{"audio_text":"assigned","id":"LW_B","is_correct":false},{"audio_text":"assigning","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ roles today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd3f2cfc-d825-5d4f-bc30-9b116d795b79', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Leading a team is more stressful than editing.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Leading a team is ___ stressful than editing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e068d2c-dd78-588e-8170-75b4120575ff', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"team leader","id":"V1","text":"team leader"},{"audio_text":"more responsible","id":"V2","text":"more responsible"},{"audio_text":"to assign roles","id":"V3","text":"to assign roles"},{"audio_text":"shared folder","id":"V4","text":"shared folder"},{"audio_text":"to set a timeline","id":"V5","text":"to set a timeline"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a1a56f8-983a-5a69-8214-8e76ecbdbfec', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Classmate","text":"How should we divide the work?"}],"explanation":"“By strengths — if everyone takes what they do best, the quality will be higher.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"By strengths — if everyone takes what they do best, the quality will be higher."},{"id":"C_B","is_correct":false,"text":"We divided it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The work is dividing us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('da88639d-2552-533a-a131-3c431bf194bf', '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('32f6d39c-d8ae-54f3-bae9-62e1e4616e24', NULL, 'Если кто-то не сдаёт работу', 'Обсудить проблемы в группе, используя should и первое условное.', '{"en":"If Someone Does Not Deliver","ru":"Если кто-то не сдаёт работу"}'::jsonb, '{"en":"Discuss group problems using should and the first conditional.","ru":"Обсудить проблемы в группе, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f0c890b-bf70-5c7a-9952-9dd75dc93875', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to fall behind","right":"отставать"},{"id":"P2","left":"to remind","right":"напомнить"},{"id":"P3","left":"to rely on","right":"полагаться на"},{"id":"P4","left":"honest","right":"честный"},{"id":"P5","left":"to split up the work","right":"переделить работу"},{"id":"P6","left":"consequence","right":"последствие"},{"id":"P7","left":"as early as possible","right":"как можно раньше"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('280268d3-3e72-5c50-b20e-24289fdeb7d7', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should tell the leader about problems as early as possible.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should tell the leader about problems as early as possible."},{"id":"Q_B","is_correct":false,"text":"You should to tell him yesterday."},{"id":"Q_C","is_correct":false,"text":"You must telling leader last week."}],"question":"Which sentence gives correct group advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a07571b7-1b7f-5b60-b05b-a1a6cbed79c5', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If one person falls behind, the whole group risks missing the deadline.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если один отстанет, вся группа рискует сорвать срок.","target_language":"en","word_bank":["the","one","the","missing","risks","deadline.","yesterday","did","behind,","group","falls","person","fell","whole","If"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6e01b76-c48d-5a80-b52a-7880476976d2', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"tell","instruction":"Выберите подходящее слово.","options":["tell","will tell","told"],"sentence_template":"If you cannot finish your part, ___ the others immediately.","translation_hint":"Если не можешь закончить свою часть, сразу скажи остальным."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('556b7fd6-071d-5f9c-9476-f86024345523', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","not","rely","on","memory","—","set","reminders."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["You","went","not","rely","mustn''t","memory","reminders.","should","on","—","set"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31720a5c-4c9e-5b2d-8243-4baabab779c6', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the group splits up the unfinished work early, a small delay will not become a disaster.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1d9fffa-be7d-5130-8a02-720480e3673f', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the group splits up the unfinished work early, a small delay will not become a disaster.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если группа заранее переделит незаконченную работу, небольшая задержка не станет катастрофой."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('feb3124c-0592-51f7-b249-a7c672df090c', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Mark has not sent his part, and the deadline is tomorrow.","translation":"Марк не прислал свою часть, а срок завтра.","type":"dialogue"},{"character":"Voice 2","text":"Has anyone reminded him?","translation":"Кто-нибудь напоминал ему?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will call him now — if he cannot do it, we will split up his part."},{"is_correct":false,"text":"I called him yesterday tomorrow already."},{"is_correct":false,"text":"The deadline is missing Mark''s part."}],"text":"What do they decide?","type":"choice"}],"title":"The Missing Part"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74630832-9eca-5326-a92f-75ce8742a179', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to fall behind” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To progress more slowly than needed"},{"id":"D_B","is_correct":false,"text":"To finish your part earlier than planned"},{"id":"D_C","is_correct":false,"text":"To leave the group for another project"}],"word":"to fall behind"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29cf0fa4-b346-5d55-a914-201e66e37000', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If a task is late, remind the leader today.","explanation":"The missing word is “remind”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"remind","id":"LW_A","is_correct":true},{"audio_text":"will remind","id":"LW_B","is_correct":false},{"audio_text":"reminded","id":"LW_C","is_correct":false}],"sentence_template":"If a task is late, ___ the leader today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('197e5855-2615-59b2-9e46-2628c6de16ae', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"on","explanation":"The complete sentence is “You should rely on the shared calendar.”.","hint_prefix":"on","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should rely ___ the shared calendar."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcf24d63-ecc9-5ad8-a2be-a6503804d6db', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to fall behind","id":"V1","text":"to fall behind"},{"audio_text":"to remind","id":"V2","text":"to remind"},{"audio_text":"to rely on","id":"V3","text":"to rely on"},{"audio_text":"honest","id":"V4","text":"honest"},{"audio_text":"to split up the work","id":"V5","text":"to split up the work"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5122beb8-9da9-53e2-8a0d-800af85cc86b', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Classmate","text":"I am afraid I will miss my part."}],"explanation":"“Tell us today — if we know early, we will help you finish it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Tell us today — if we know early, we will help you finish it."},{"id":"C_B","is_correct":false,"text":"He told us yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The part is missing you."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('da88639d-2552-533a-a131-3c431bf194bf', '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3ca36db-6983-525f-9eeb-545abfddf737', 'en', 'to divide tasks', 'разделить задачи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('025a3f90-8ca1-56d7-b52d-15d65d27f160', 'en', 'to contribute', 'внести вклад', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df5bdfbe-53f6-5cb1-9d6b-fb5379890038', 'en', 'slide deck', 'презентация (набор слайдов)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ebb2a56-2863-5bd4-accc-c5952bc29455', 'en', 'to proofread', 'вычитать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3068d3c9-1e5f-5f59-9a84-b8c63c234032', 'en', 'to merge', 'объединить (файлы/части)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09805715-ab6a-55cb-b35b-2ec55006a259', 'en', 'team leader', 'тимлид', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4d3b293-0b9e-5475-81c5-f0d7b69c44d0', 'en', 'more responsible', 'ответственнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7025d5c2-7c1d-5d62-a322-141084a35b54', 'en', 'to assign roles', 'распределить роли', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('335f2909-0237-5290-b846-ee35bca1f99e', 'en', 'shared folder', 'общая папка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('50e95a0d-0de5-5d49-981c-4676d2d2457c', 'en', 'to set a timeline', 'составить график', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ecd37be6-7291-5860-a1f7-135809b656c8', 'en', 'editor', 'редактор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1986fff-2948-55bf-83c4-4bc716af1669', 'en', 'fair', 'справедливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3700b5c7-2c4c-5419-a80b-2fb14a8de264', 'en', 'to fall behind', 'отставать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a293c728-d11e-5893-8c1d-b3807474c23b', 'en', 'to remind', 'напомнить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aeb327d5-1663-5da0-a94b-54c88be09134', 'en', 'to rely on', 'полагаться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f161dd5f-c7d3-584b-a2fc-703140c5107e', 'en', 'honest', 'честный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f113e6a9-7090-536e-8d35-ab5a88c1b9ff', 'en', 'to split up the work', 'переделить работу', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b94d8e51-d825-5ec3-a762-b21b360cd359', 'en', 'consequence', 'последствие', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d25c180-9272-5b35-bd2a-4a2c6aee90cb', 'en', 'as early as possible', 'как можно раньше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '1a227de2-1974-5ec9-83db-48c5c192c9ba', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to divide tasks' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '1a227de2-1974-5ec9-83db-48c5c192c9ba', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '1a227de2-1974-5ec9-83db-48c5c192c9ba', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to contribute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '1a227de2-1974-5ec9-83db-48c5c192c9ba', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'slide deck' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '1a227de2-1974-5ec9-83db-48c5c192c9ba', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to proofread' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '1a227de2-1974-5ec9-83db-48c5c192c9ba', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to merge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '1a227de2-1974-5ec9-83db-48c5c192c9ba', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'team leader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more responsible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to assign roles' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'shared folder' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to set a timeline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'editor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '6ec0a786-6163-560d-b1cd-4b29cdc635ff', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'fair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fall behind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to remind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to rely on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'honest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to split up the work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'da88639d-2552-533a-a131-3c431bf194bf', id, '32f6d39c-d8ae-54f3-bae9-62e1e4616e24', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'as early as possible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
