-- Track: B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8afc3b69-74ca-5f5c-ab65-06e93aab0311', 'B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES', 'Культура питания, диетические потребности и проблемы обслуживания', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Культура питания, диетические потребности и проблемы обслуживания», оценивая варианты, права, риски и культурный контекст.', '{"en":"Dining Culture, Dietary Needs and Service Issues","ru":"Культура питания, диетические потребности и проблемы обслуживания"}'::jsonb, '{"en":"Develop confident B2 communication for dining culture, dietary needs and service issues by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Культура питания, диетические потребности и проблемы обслуживания», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ad671a9d-4e20-5205-9726-33ace61f83bb', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Navigating Dining Conventions","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('256f6e07-ce88-5fb7-9515-d233ac3b75ae', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D01","left":"dietary restriction","right":"диетическое ограничение"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D02","left":"cross-contamination","right":"перекрёстное загрязнение"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D03","left":"ingredient disclosure","right":"раскрытие состава"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D04","left":"dining etiquette","right":"столовый этикет"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D05","left":"service charge","right":"плата за обслуживание"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D06","left":"substitution","right":"замена ингредиента"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D07","left":"raise a concern","right":"сообщить о проблеме"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ba11d2e-e56c-5dd9-8042-3691b2f58383', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D08","is_correct":true,"text":"A dietary restriction involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18f389cc-5339-5c4e-8607-fc39b5453327', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A dietary restriction involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Диетическое ограничение, связанное с тяжёлой аллергией, требует раскрытия состава и объяснения того, как предотвращается перекрёстное загрязнение.","target_language":"en","word_bank":["A","dietary","restriction","involving","a","severe","allergy","requires","ingredient","disclosure","and","reassurance","about","how","cross-contamination","is","prevented","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('572ccfd5-f84e-5b51-b69c-84137deb53e8', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"dietary restriction","instruction":"Выберите подходящее слово.","options":["dietary restriction","dining etiquette","substitution"],"sentence_template":"A ___ involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b205b817-f81a-5c5d-b4c9-eceb010094b0', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","dietary","restriction","involving","a","severe","allergy","requires","ingredient","disclosure","and","reassurance","about","how","cross-contamination","is","prevented","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","prevented","is","cross-contamination","how","about","reassurance","and","disclosure","ingredient","requires","allergy","severe","a","involving","restriction","dietary","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2758b139-5fe3-5923-83e7-e54e380afeb8', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A dietary restriction involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ca4a64e-d8a1-554e-98da-b339ba9a7345', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A dietary restriction involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Диетическое ограничение, связанное с тяжёлой аллергией, требует раскрытия состава и объяснения того, как предотвращается перекрёстное загрязнение. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96c2fca7-88eb-5f8e-b5b2-28003ebda86c', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A dietary restriction involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented.","translation":"Диетическое ограничение, связанное с тяжёлой аллергией, требует раскрытия состава и объяснения того, как предотвращается перекрёстное загрязнение.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Navigating Dining Conventions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff6c84e8-6bb1-5367-bb21-e314be61e5a4', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“dietary restriction” means a rule limiting what a person can eat.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D11","is_correct":true,"text":"a rule limiting what a person can eat"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D12","is_correct":false,"text":"unintended transfer of an allergen or substance"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D13","is_correct":false,"text":"clear information about ingredients used"}],"word":"dietary restriction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d42c0b0b-554c-5d5e-87d7-2cdea574dd3d', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A dietary restriction involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented.","explanation":"The missing travel expression is “dietary restriction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"dietary restriction","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D14","is_correct":true},{"audio_text":"ingredient disclosure","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D15","is_correct":false},{"audio_text":"service charge","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D16","is_correct":false}],"sentence_template":"A ___ involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65e1905c-5b50-552a-98d2-b91110fcaa94', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"dietary restriction","explanation":"The complete travel statement uses “dietary restriction” precisely.","hint_prefix":"diet","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fda65ae-4a0c-5605-a1af-9fa4428c76fb', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"dietary restriction","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D17","text":"dietary restriction"},{"audio_text":"cross-contamination","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D18","text":"cross-contamination"},{"audio_text":"ingredient disclosure","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D19","text":"ingredient disclosure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a3ba153-c8f9-50ce-b955-e31cd816ecdc', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Navigating Dining Conventions”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D20","is_correct":true,"text":"A dietary restriction involving a severe allergy requires ingredient disclosure and reassurance about how cross-contamination is prevented."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8afc3b69-74ca-5f5c-ab65-06e93aab0311', 'ad671a9d-4e20-5205-9726-33ace61f83bb', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dfe925f7-4451-582d-922b-0bcf3432cb39', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Communicating Complex Dietary Needs","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4948ec4f-e004-5b53-9f51-8755e18064a2', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D01","left":"dietary restriction","right":"диетическое ограничение"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D02","left":"cross-contamination","right":"перекрёстное загрязнение"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D03","left":"ingredient disclosure","right":"раскрытие состава"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D04","left":"dining etiquette","right":"столовый этикет"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D05","left":"service charge","right":"плата за обслуживание"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D06","left":"substitution","right":"замена ингредиента"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D07","left":"raise a concern","right":"сообщить о проблеме"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41137409-4a1c-5a9d-b06a-47296e5e9471', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D08","is_correct":true,"text":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fa9dd72-9ed5-59c8-ae15-0a7359e2674c', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Столовый этикет различается, поэтому посетителям следует учитывать местную практику, прежде чем считать, что плата за обслуживание заменяет любые чаевые.","target_language":"en","word_bank":["Dining","etiquette","varies",",","so","visitors","should","observe","local","practice","before","assuming","that","a","service","charge","replaces","every","form","of","tipping","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13d83225-e6e3-5852-8495-c4a53a016db3', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cross-contamination","instruction":"Выберите подходящее слово.","options":["cross-contamination","service charge","raise a concern"],"sentence_template":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef67f6d3-687d-5e86-b9de-9efa4c0b0432', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Dining","etiquette","varies",",","so","visitors","should","observe","local","practice","before","assuming","that","a","service","charge","replaces","every","form","of","tipping","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","tipping","of","form","every","replaces","charge","service","a","that","assuming","before","practice","local","observe","should","visitors","so",",","varies","etiquette","Dining"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78b4a92f-6de7-5b32-8abf-c26c2920798e', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9ffe406-cf03-5677-b5f3-c18326905981', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Столовый этикет различается, поэтому посетителям следует учитывать местную практику, прежде чем считать, что плата за обслуживание заменяет любые чаевые. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b2edf25-90ac-5d28-ac70-dbd0b25100a2', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping.","translation":"Столовый этикет различается, поэтому посетителям следует учитывать местную практику, прежде чем считать, что плата за обслуживание заменяет любые чаевые.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Communicating Complex Dietary Needs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ffd6493-64d1-5f66-bf20-66ceb99356e0', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cross-contamination” means unintended transfer of an allergen or substance.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D11","is_correct":true,"text":"unintended transfer of an allergen or substance"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D12","is_correct":false,"text":"clear information about ingredients used"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D13","is_correct":false,"text":"social conventions governing meals"}],"word":"cross-contamination"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a363623-c0af-54e0-9daa-d35f5d9a2fe3', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping.","explanation":"The missing travel expression is “cross-contamination”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cross-contamination","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D14","is_correct":true},{"audio_text":"dining etiquette","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D15","is_correct":false},{"audio_text":"substitution","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D16","is_correct":false}],"sentence_template":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3761febd-2be2-5c98-a7e5-173cf1c24657', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cross-contamination","explanation":"The complete travel statement uses “cross-contamination” precisely.","hint_prefix":"cros","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad415a8e-edfb-5319-8c21-934fe5971e94', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"dietary restriction","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D17","text":"dietary restriction"},{"audio_text":"cross-contamination","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D18","text":"cross-contamination"},{"audio_text":"ingredient disclosure","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D19","text":"ingredient disclosure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfa692a0-98e5-5b22-bef6-be818372da30', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Communicating Complex Dietary Needs”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D20","is_correct":true,"text":"Dining etiquette varies, so visitors should observe local practice before assuming that a service charge replaces every form of tipping."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8afc3b69-74ca-5f5c-ab65-06e93aab0311', 'dfe925f7-4451-582d-922b-0bcf3432cb39', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0609db7c-a67a-5e50-9485-94e3707a7f8e', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Resolving a Restaurant Problem","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2e23eed-473f-5bf5-8b4b-cc3aaca499bd', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D01","left":"dietary restriction","right":"диетическое ограничение"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D02","left":"cross-contamination","right":"перекрёстное загрязнение"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D03","left":"ingredient disclosure","right":"раскрытие состава"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D04","left":"dining etiquette","right":"столовый этикет"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D05","left":"service charge","right":"плата за обслуживание"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D06","left":"substitution","right":"замена ингредиента"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D07","left":"raise a concern","right":"сообщить о проблеме"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ac13f9f-166f-5644-9ace-7d1951452ecc', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D08","is_correct":true,"text":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1a7bbd1-d15f-5022-82ee-5b026877cf20', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда замена была подана без объяснения, мы вежливо сообщили о проблеме и спросили, сохраняется ли первоначальная цена.","target_language":"en","word_bank":["When","the","substitution","arrived","without","explanation",",","we","raised","a","concern","politely","and","asked","whether","the","original","price","still","applied","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9234948-6ac4-51c6-bd20-67268704e126', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ingredient disclosure","instruction":"Выберите подходящее слово.","options":["ingredient disclosure","substitution","dietary restriction"],"sentence_template":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5bf79d9-9a79-5335-895f-6339a3c3c10e', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","the","substitution","arrived","without","explanation",",","we","raised","a","concern","politely","and","asked","whether","the","original","price","still","applied","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","applied","still","price","original","the","whether","asked","and","politely","concern","a","raised","we",",","explanation","without","arrived","substitution","the","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1f08e18-e4b9-54f0-b3eb-7b27d4e6139e', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6b7d0ef-b81d-5384-a9ed-4bf95576b104', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Когда замена была подана без объяснения, мы вежливо сообщили о проблеме и спросили, сохраняется ли первоначальная цена. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18f83596-7d0a-5733-b170-4d45f6ca2a6d', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied.","translation":"Когда замена была подана без объяснения, мы вежливо сообщили о проблеме и спросили, сохраняется ли первоначальная цена.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Resolving a Restaurant Problem"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('361c6752-7cf7-517e-b3de-b9face1940f6', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“ingredient disclosure” means clear information about ingredients used.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D11","is_correct":true,"text":"clear information about ingredients used"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D12","is_correct":false,"text":"social conventions governing meals"},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D13","is_correct":false,"text":"an amount added for restaurant service"}],"word":"ingredient disclosure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a6747bc-3afb-56aa-afe5-d24d009b02b4', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied.","explanation":"The missing travel expression is “ingredient disclosure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"ingredient disclosure","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D14","is_correct":true},{"audio_text":"service charge","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D15","is_correct":false},{"audio_text":"raise a concern","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D16","is_correct":false}],"sentence_template":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87c7d882-33c9-5cc0-871e-c085a82369f8', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ingredient disclosure","explanation":"The complete travel statement uses “ingredient disclosure” precisely.","hint_prefix":"ingr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4542ba81-653d-5cb0-aa44-21255095182f', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"dietary restriction","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D17","text":"dietary restriction"},{"audio_text":"cross-contamination","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D18","text":"cross-contamination"},{"audio_text":"ingredient disclosure","id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D19","text":"ingredient disclosure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eabe4a96-d3f7-5303-9923-2d9ebfa2a361', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Resolving a Restaurant Problem”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D20","is_correct":true,"text":"When the substitution arrived without explanation, we raised a concern politely and asked whether the original price still applied."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_DINING_CULTURE_DIETARY_NEEDS_AND_SERVICE_ISSUES_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8afc3b69-74ca-5f5c-ab65-06e93aab0311', '0609db7c-a67a-5e50-9485-94e3707a7f8e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3eb37d68-8de2-54f7-b475-1efa5700153c', 'en', 'dietary restriction', 'диетическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42564187-cb9a-5d4b-acda-db2081bf3424', 'en', 'cross-contamination', 'перекрёстное загрязнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('135467c6-b24a-5767-b289-60d0c588ede4', 'en', 'ingredient disclosure', 'раскрытие состава', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2709b74-be3e-527f-ad1d-870450847240', 'en', 'dining etiquette', 'столовый этикет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1c68421-aa8d-5e51-bfb5-ccaee6a64f62', 'en', 'service charge', 'плата за обслуживание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7214ae4a-8bf8-5545-94be-01d9e62cb493', 'en', 'substitution', 'замена ингредиента', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18aa6888-62fc-5efb-8c97-f42471ecff91', 'en', 'raise a concern', 'сообщить о проблеме', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3eb37d68-8de2-54f7-b475-1efa5700153c', 'en', 'dietary restriction', 'диетическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42564187-cb9a-5d4b-acda-db2081bf3424', 'en', 'cross-contamination', 'перекрёстное загрязнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('135467c6-b24a-5767-b289-60d0c588ede4', 'en', 'ingredient disclosure', 'раскрытие состава', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2709b74-be3e-527f-ad1d-870450847240', 'en', 'dining etiquette', 'столовый этикет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1c68421-aa8d-5e51-bfb5-ccaee6a64f62', 'en', 'service charge', 'плата за обслуживание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7214ae4a-8bf8-5545-94be-01d9e62cb493', 'en', 'substitution', 'замена ингредиента', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18aa6888-62fc-5efb-8c97-f42471ecff91', 'en', 'raise a concern', 'сообщить о проблеме', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3eb37d68-8de2-54f7-b475-1efa5700153c', 'en', 'dietary restriction', 'диетическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42564187-cb9a-5d4b-acda-db2081bf3424', 'en', 'cross-contamination', 'перекрёстное загрязнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('135467c6-b24a-5767-b289-60d0c588ede4', 'en', 'ingredient disclosure', 'раскрытие состава', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2709b74-be3e-527f-ad1d-870450847240', 'en', 'dining etiquette', 'столовый этикет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1c68421-aa8d-5e51-bfb5-ccaee6a64f62', 'en', 'service charge', 'плата за обслуживание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7214ae4a-8bf8-5545-94be-01d9e62cb493', 'en', 'substitution', 'замена ингредиента', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18aa6888-62fc-5efb-8c97-f42471ecff91', 'en', 'raise a concern', 'сообщить о проблеме', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'ad671a9d-4e20-5205-9726-33ace61f83bb', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'dietary restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'ad671a9d-4e20-5205-9726-33ace61f83bb', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-contamination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'ad671a9d-4e20-5205-9726-33ace61f83bb', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient disclosure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'ad671a9d-4e20-5205-9726-33ace61f83bb', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'dining etiquette' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'ad671a9d-4e20-5205-9726-33ace61f83bb', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'service charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'ad671a9d-4e20-5205-9726-33ace61f83bb', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'ad671a9d-4e20-5205-9726-33ace61f83bb', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'dfe925f7-4451-582d-922b-0bcf3432cb39', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'dietary restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'dfe925f7-4451-582d-922b-0bcf3432cb39', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-contamination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'dfe925f7-4451-582d-922b-0bcf3432cb39', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient disclosure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'dfe925f7-4451-582d-922b-0bcf3432cb39', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'dining etiquette' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'dfe925f7-4451-582d-922b-0bcf3432cb39', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'service charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'dfe925f7-4451-582d-922b-0bcf3432cb39', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, 'dfe925f7-4451-582d-922b-0bcf3432cb39', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, '0609db7c-a67a-5e50-9485-94e3707a7f8e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'dietary restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, '0609db7c-a67a-5e50-9485-94e3707a7f8e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-contamination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, '0609db7c-a67a-5e50-9485-94e3707a7f8e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient disclosure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, '0609db7c-a67a-5e50-9485-94e3707a7f8e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'dining etiquette' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, '0609db7c-a67a-5e50-9485-94e3707a7f8e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'service charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, '0609db7c-a67a-5e50-9485-94e3707a7f8e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8afc3b69-74ca-5f5c-ab65-06e93aab0311', id, '0609db7c-a67a-5e50-9485-94e3707a7f8e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
