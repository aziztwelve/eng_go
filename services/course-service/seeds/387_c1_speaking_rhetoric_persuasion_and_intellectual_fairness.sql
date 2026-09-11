-- Track: C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('cca7d213-7e00-56af-8191-8b9b99b7f737', 'C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS', 'Риторика, убеждение и интеллектуальная честность', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Риторика, убеждение и интеллектуальная честность», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Rhetoric, Persuasion and Intellectual Fairness","ru":"Риторика, убеждение и интеллектуальная честность"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for rhetoric, persuasion and intellectual fairness by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Риторика, убеждение и интеллектуальная честность», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8e7e6708-2746-5268-a678-14d748db3880', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Analysing Rhetorical Strategy","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3be84faa-b72f-5240-806e-98b9cc4f22a0', '8e7e6708-2746-5268-a678-14d748db3880', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D01","left":"rhetorical framing","right":"риторическое обрамление"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D02","left":"steelman an argument","right":"представить сильнейшую версию аргумента"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D03","left":"emotional appeal","right":"эмоциональный призыв"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D04","left":"evidential burden","right":"бремя доказательства"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D05","left":"intellectual fairness","right":"интеллектуальная честность"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D06","left":"strategic concession","right":"стратегическая уступка"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D07","left":"manipulative technique","right":"манипулятивный приём"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f82b6c4c-b76e-564a-b39c-930fdeaee684', '8e7e6708-2746-5268-a678-14d748db3880', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D08","is_correct":true,"text":"Rhetorical framing is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc381f11-a793-5f3d-8196-6eda9a6da522', '8e7e6708-2746-5268-a678-14d748db3880', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Rhetorical framing is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Риторическое обрамление неизбежно, но интеллектуальная честность требует не скрывать значимые доказательства и убедительные альтернативы.","target_language":"en","word_bank":["Rhetorical","framing","is","unavoidable",",","but","intellectual","fairness","demands","that","relevant","evidence","and","credible","alternatives","are","not","concealed","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('605fe630-c0dc-5707-a278-04df8a4a8c65', '8e7e6708-2746-5268-a678-14d748db3880', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"rhetorical framing","instruction":"Выберите подходящее слово.","options":["rhetorical framing","evidential burden","strategic concession"],"sentence_template":"___ is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('447f6b90-7497-54a4-ba25-797d05ad05f1', '8e7e6708-2746-5268-a678-14d748db3880', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Rhetorical","framing","is","unavoidable",",","but","intellectual","fairness","demands","that","relevant","evidence","and","credible","alternatives","are","not","concealed","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","concealed","not","are","alternatives","credible","and","evidence","relevant","that","demands","fairness","intellectual","but",",","unavoidable","is","framing","Rhetorical"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('883955e1-ea67-5beb-be18-b36f91de9d8b', '8e7e6708-2746-5268-a678-14d748db3880', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Rhetorical framing is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76adf803-fafb-5542-9950-9d5b8359d4b3', '8e7e6708-2746-5268-a678-14d748db3880', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Rhetorical framing is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Риторическое обрамление неизбежно, но интеллектуальная честность требует не скрывать значимые доказательства и убедительные альтернативы. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b566f50-45df-50c5-ae8b-c7b0cd1f0382', '8e7e6708-2746-5268-a678-14d748db3880', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Rhetorical framing is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed.","translation":"Риторическое обрамление неизбежно, но интеллектуальная честность требует не скрывать значимые доказательства и убедительные альтернативы.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Analysing Rhetorical Strategy"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('872a31d4-3470-5716-9f17-e03ac57af19c', '8e7e6708-2746-5268-a678-14d748db3880', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“rhetorical framing” means presentation designed to shape how an issue is perceived.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D11","is_correct":true,"text":"presentation designed to shape how an issue is perceived"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D12","is_correct":false,"text":"state an opposing case in its strongest reasonable form"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D13","is_correct":false,"text":"persuasion directed at feelings"}],"word":"rhetorical framing"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a254b04e-bc0e-505a-9f2b-b4523ded7be0', '8e7e6708-2746-5268-a678-14d748db3880', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Rhetorical framing is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed.","explanation":"The missing C1 expression is “rhetorical framing”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"rhetorical framing","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D14","is_correct":true},{"audio_text":"emotional appeal","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D15","is_correct":false},{"audio_text":"intellectual fairness","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D16","is_correct":false}],"sentence_template":"___ is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c4a352a-fecb-5a33-9c26-f1242fbefa0c', '8e7e6708-2746-5268-a678-14d748db3880', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"rhetorical framing","explanation":"The complete argument uses “rhetorical framing” with conceptual precision.","hint_prefix":"rhet","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cee9288-4764-5e1c-916f-8d94916573d1', '8e7e6708-2746-5268-a678-14d748db3880', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rhetorical framing","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D17","text":"rhetorical framing"},{"audio_text":"steelman an argument","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D18","text":"steelman an argument"},{"audio_text":"emotional appeal","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D19","text":"emotional appeal"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13f1051b-598a-55cd-bfa3-5904bfdb9e93', '8e7e6708-2746-5268-a678-14d748db3880', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Analysing Rhetorical Strategy”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D20","is_correct":true,"text":"Rhetorical framing is unavoidable, but intellectual fairness demands that relevant evidence and credible alternatives are not concealed."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cca7d213-7e00-56af-8191-8b9b99b7f737', '8e7e6708-2746-5268-a678-14d748db3880', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d20e60d8-0d8f-533c-8677-69f699789a2a', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Representing Opposing Views Fairly","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9237e0fa-9506-5500-a549-510c96d67b1b', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D01","left":"rhetorical framing","right":"риторическое обрамление"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D02","left":"steelman an argument","right":"представить сильнейшую версию аргумента"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D03","left":"emotional appeal","right":"эмоциональный призыв"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D04","left":"evidential burden","right":"бремя доказательства"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D05","left":"intellectual fairness","right":"интеллектуальная честность"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D06","left":"strategic concession","right":"стратегическая уступка"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D07","left":"manipulative technique","right":"манипулятивный приём"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fb2f9e1-2771-501c-add2-27b553e62f96', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D08","is_correct":true,"text":"To steelman an argument is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da8f1158-8bcb-50a1-af99-817d0e7a307c', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To steelman an argument is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Представить сильнейшую версию аргумента означает выполнить бремя доказательства против наиболее убедительной формы, а не победить удобную карикатуру.","target_language":"en","word_bank":["To","steelman","an","argument","is","to","meet","the","evidential","burden","against","its","strongest","plausible","form","rather","than","defeat","a","convenient","caricature","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('425dbcfa-a4b7-5acb-b209-92951e4a9a83', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"steelman an argument","instruction":"Выберите подходящее слово.","options":["steelman an argument","intellectual fairness","manipulative technique"],"sentence_template":"To ___ is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0b61909-cf8c-5543-af08-b905d6e164ae', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","steelman","an","argument","is","to","meet","the","evidential","burden","against","its","strongest","plausible","form","rather","than","defeat","a","convenient","caricature","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","caricature","convenient","a","defeat","than","rather","form","plausible","strongest","its","against","burden","evidential","the","meet","to","is","argument","an","steelman","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79ddba6f-b07e-580d-9a1e-1d8c8547df1d', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To steelman an argument is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0372dc50-4dc3-5cce-9261-a973ecc9e0bd', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To steelman an argument is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Представить сильнейшую версию аргумента означает выполнить бремя доказательства против наиболее убедительной формы, а не победить удобную карикатуру. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af83667b-6746-5716-a7fd-afb48a47afc0', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"To steelman an argument is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature.","translation":"Представить сильнейшую версию аргумента означает выполнить бремя доказательства против наиболее убедительной формы, а не победить удобную карикатуру.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Representing Opposing Views Fairly"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b63da202-dd4f-5ffc-92de-7dd1b0d035b9', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“steelman an argument” means state an opposing case in its strongest reasonable form.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D11","is_correct":true,"text":"state an opposing case in its strongest reasonable form"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D12","is_correct":false,"text":"persuasion directed at feelings"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D13","is_correct":false,"text":"responsibility for supporting a claim"}],"word":"steelman an argument"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('564b1afc-96d2-51cc-a3aa-eae3f49c6dc4', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To steelman an argument is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature.","explanation":"The missing C1 expression is “steelman an argument”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"steelman an argument","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D14","is_correct":true},{"audio_text":"evidential burden","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D15","is_correct":false},{"audio_text":"strategic concession","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D16","is_correct":false}],"sentence_template":"To ___ is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b52f3fc5-d728-5e22-bf69-81feabb81557', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"steelman an argument","explanation":"The complete argument uses “steelman an argument” with conceptual precision.","hint_prefix":"stee","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To ___ is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('861edd96-6f2d-5252-bfdb-36714bbb6c60', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rhetorical framing","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D17","text":"rhetorical framing"},{"audio_text":"steelman an argument","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D18","text":"steelman an argument"},{"audio_text":"emotional appeal","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D19","text":"emotional appeal"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e76aa76-c10c-5114-9260-14df3a05340b', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Representing Opposing Views Fairly”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D20","is_correct":true,"text":"To steelman an argument is to meet the evidential burden against its strongest plausible form rather than defeat a convenient caricature."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cca7d213-7e00-56af-8191-8b9b99b7f737', 'd20e60d8-0d8f-533c-8677-69f699789a2a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('17875019-204b-5078-b9b0-2314ce6376cf', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Persuading Without Manipulating","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('814113ce-b554-5120-9c96-551e77032384', '17875019-204b-5078-b9b0-2314ce6376cf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D01","left":"rhetorical framing","right":"риторическое обрамление"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D02","left":"steelman an argument","right":"представить сильнейшую версию аргумента"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D03","left":"emotional appeal","right":"эмоциональный призыв"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D04","left":"evidential burden","right":"бремя доказательства"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D05","left":"intellectual fairness","right":"интеллектуальная честность"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D06","left":"strategic concession","right":"стратегическая уступка"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D07","left":"manipulative technique","right":"манипулятивный приём"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86161998-db5f-509e-ab4e-2b7dfa90aed9', '17875019-204b-5078-b9b0-2314ce6376cf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D08","is_correct":true,"text":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b30c8c8-a7ec-5245-a624-a56ea6be6e97', '17875019-204b-5078-b9b0-2314ce6376cf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Стратегическая уступка может усилить убеждение, тогда как манипулятивный приём добивается согласия, не позволяя сформировать осознанное суждение.","target_language":"en","word_bank":["A","strategic","concession","can","enhance","persuasion",",","whereas","a","manipulative","technique","seeks","compliance","without","enabling","informed","judgement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d8836bd-8461-5aa7-aa89-2b56feead49c', '17875019-204b-5078-b9b0-2314ce6376cf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"emotional appeal","instruction":"Выберите подходящее слово.","options":["emotional appeal","strategic concession","rhetorical framing"],"sentence_template":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3d9ff7a-50f6-51d9-bd12-c820d08bda77', '17875019-204b-5078-b9b0-2314ce6376cf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","strategic","concession","can","enhance","persuasion",",","whereas","a","manipulative","technique","seeks","compliance","without","enabling","informed","judgement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","judgement","informed","enabling","without","compliance","seeks","technique","manipulative","a","whereas",",","persuasion","enhance","can","concession","strategic","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a227ed55-ae8a-56be-81b8-111211782a9f', '17875019-204b-5078-b9b0-2314ce6376cf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aed99ba5-fa24-521f-8986-ab0eb1733823', '17875019-204b-5078-b9b0-2314ce6376cf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Стратегическая уступка может усилить убеждение, тогда как манипулятивный приём добивается согласия, не позволяя сформировать осознанное суждение. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5280c46f-219e-590c-893d-0abff7d117fd', '17875019-204b-5078-b9b0-2314ce6376cf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement.","translation":"Стратегическая уступка может усилить убеждение, тогда как манипулятивный приём добивается согласия, не позволяя сформировать осознанное суждение.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Persuading Without Manipulating"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b94487f-3ed2-588f-863c-2e9a155afcf1', '17875019-204b-5078-b9b0-2314ce6376cf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“emotional appeal” means persuasion directed at feelings.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D11","is_correct":true,"text":"persuasion directed at feelings"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D12","is_correct":false,"text":"responsibility for supporting a claim"},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D13","is_correct":false,"text":"accurate and charitable treatment of competing views"}],"word":"emotional appeal"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e4b83e2-8a74-55af-977a-6a984d673f01', '17875019-204b-5078-b9b0-2314ce6376cf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement.","explanation":"The missing C1 expression is “emotional appeal”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"emotional appeal","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D14","is_correct":true},{"audio_text":"intellectual fairness","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D15","is_correct":false},{"audio_text":"manipulative technique","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D16","is_correct":false}],"sentence_template":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b91675f4-0ad5-58c4-85e2-a4f646b960a7', '17875019-204b-5078-b9b0-2314ce6376cf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"emotional appeal","explanation":"The complete argument uses “emotional appeal” with conceptual precision.","hint_prefix":"emot","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed333f72-da2f-5aa2-97f7-4c0cf52c1a12', '17875019-204b-5078-b9b0-2314ce6376cf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rhetorical framing","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D17","text":"rhetorical framing"},{"audio_text":"steelman an argument","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D18","text":"steelman an argument"},{"audio_text":"emotional appeal","id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D19","text":"emotional appeal"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d190ead-5889-54cc-ab6c-a19a8e0e90e7', '17875019-204b-5078-b9b0-2314ce6376cf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Persuading Without Manipulating”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D20","is_correct":true,"text":"A strategic concession can enhance persuasion, whereas a manipulative technique seeks compliance without enabling informed judgement."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_RHETORIC_PERSUASION_AND_INTELLECTUAL_FAIRNESS_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cca7d213-7e00-56af-8191-8b9b99b7f737', '17875019-204b-5078-b9b0-2314ce6376cf', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95d521cb-9a66-5e8c-b485-127ebf3caa51', 'en', 'rhetorical framing', 'риторическое обрамление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e943af93-e59f-539b-b7db-f1a1309b5bb1', 'en', 'steelman an argument', 'представить сильнейшую версию аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b4d3df-3356-5b87-9b34-80face25a33f', 'en', 'emotional appeal', 'эмоциональный призыв', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02377d80-2491-54fd-8a93-ae106ddbae9d', 'en', 'evidential burden', 'бремя доказательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44fb7cc1-29df-5889-9ba9-64ce9c19e3de', 'en', 'intellectual fairness', 'интеллектуальная честность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb666628-9b5e-57b0-914d-d137777f8412', 'en', 'strategic concession', 'стратегическая уступка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fae177dd-a8f2-5d50-ab78-c50bf6510719', 'en', 'manipulative technique', 'манипулятивный приём', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95d521cb-9a66-5e8c-b485-127ebf3caa51', 'en', 'rhetorical framing', 'риторическое обрамление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e943af93-e59f-539b-b7db-f1a1309b5bb1', 'en', 'steelman an argument', 'представить сильнейшую версию аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b4d3df-3356-5b87-9b34-80face25a33f', 'en', 'emotional appeal', 'эмоциональный призыв', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02377d80-2491-54fd-8a93-ae106ddbae9d', 'en', 'evidential burden', 'бремя доказательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44fb7cc1-29df-5889-9ba9-64ce9c19e3de', 'en', 'intellectual fairness', 'интеллектуальная честность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb666628-9b5e-57b0-914d-d137777f8412', 'en', 'strategic concession', 'стратегическая уступка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fae177dd-a8f2-5d50-ab78-c50bf6510719', 'en', 'manipulative technique', 'манипулятивный приём', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95d521cb-9a66-5e8c-b485-127ebf3caa51', 'en', 'rhetorical framing', 'риторическое обрамление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e943af93-e59f-539b-b7db-f1a1309b5bb1', 'en', 'steelman an argument', 'представить сильнейшую версию аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b4d3df-3356-5b87-9b34-80face25a33f', 'en', 'emotional appeal', 'эмоциональный призыв', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02377d80-2491-54fd-8a93-ae106ddbae9d', 'en', 'evidential burden', 'бремя доказательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44fb7cc1-29df-5889-9ba9-64ce9c19e3de', 'en', 'intellectual fairness', 'интеллектуальная честность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb666628-9b5e-57b0-914d-d137777f8412', 'en', 'strategic concession', 'стратегическая уступка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fae177dd-a8f2-5d50-ab78-c50bf6510719', 'en', 'manipulative technique', 'манипулятивный приём', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '8e7e6708-2746-5268-a678-14d748db3880', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '8e7e6708-2746-5268-a678-14d748db3880', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'steelman an argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '8e7e6708-2746-5268-a678-14d748db3880', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'emotional appeal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '8e7e6708-2746-5268-a678-14d748db3880', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidential burden' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '8e7e6708-2746-5268-a678-14d748db3880', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual fairness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '8e7e6708-2746-5268-a678-14d748db3880', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '8e7e6708-2746-5268-a678-14d748db3880', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'manipulative technique' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, 'd20e60d8-0d8f-533c-8677-69f699789a2a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, 'd20e60d8-0d8f-533c-8677-69f699789a2a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'steelman an argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, 'd20e60d8-0d8f-533c-8677-69f699789a2a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'emotional appeal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, 'd20e60d8-0d8f-533c-8677-69f699789a2a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidential burden' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, 'd20e60d8-0d8f-533c-8677-69f699789a2a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual fairness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, 'd20e60d8-0d8f-533c-8677-69f699789a2a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, 'd20e60d8-0d8f-533c-8677-69f699789a2a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'manipulative technique' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '17875019-204b-5078-b9b0-2314ce6376cf', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '17875019-204b-5078-b9b0-2314ce6376cf', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'steelman an argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '17875019-204b-5078-b9b0-2314ce6376cf', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'emotional appeal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '17875019-204b-5078-b9b0-2314ce6376cf', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidential burden' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '17875019-204b-5078-b9b0-2314ce6376cf', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual fairness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '17875019-204b-5078-b9b0-2314ce6376cf', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cca7d213-7e00-56af-8191-8b9b99b7f737', id, '17875019-204b-5078-b9b0-2314ce6376cf', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'manipulative technique' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
