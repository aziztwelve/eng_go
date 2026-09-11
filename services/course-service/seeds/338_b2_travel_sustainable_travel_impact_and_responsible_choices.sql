-- Track: B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('39baa261-d51f-5e1d-a2f5-f592814b5a6d', 'B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES', 'Устойчивые путешествия, влияние и ответственный выбор', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Устойчивые путешествия, влияние и ответственный выбор», оценивая варианты, права, риски и культурный контекст.', '{"en":"Sustainable Travel, Impact and Responsible Choices","ru":"Устойчивые путешествия, влияние и ответственный выбор"}'::jsonb, '{"en":"Develop confident B2 communication for sustainable travel, impact and responsible choices by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Устойчивые путешествия, влияние и ответственный выбор», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4c42a48e-b016-583c-a6d9-22c8a47045ec', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Comparing Environmental Impact","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d359c661-8e45-5497-9360-75962be48172', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D01","left":"carbon footprint","right":"углеродный след"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D02","left":"overtourism","right":"чрезмерный туризм"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D03","left":"local economy","right":"местная экономика"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D04","left":"low-impact option","right":"вариант с низким воздействием"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D05","left":"seasonal pressure","right":"сезонная нагрузка"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D06","left":"responsible choice","right":"ответственный выбор"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D07","left":"offsetting scheme","right":"схема компенсации выбросов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdf72cfe-f99d-5117-9daa-5eba1b67fbaf', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D08","is_correct":true,"text":"A carbon footprint comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e477e2f5-3276-5722-86d8-8abb54e9864e', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A carbon footprint comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сравнение углеродного следа должно учитывать всю поездку, заполняемость, расстояние и альтернативы, а не только вид транспорта.","target_language":"en","word_bank":["A","carbon","footprint","comparison","should","consider","the","entire","journey",",","occupancy",",","distance",",","and","alternatives","rather","than","transport","labels","alone","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dd4b3cf-a6e4-5025-86c3-6e51dd372e17', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"carbon footprint","instruction":"Выберите подходящее слово.","options":["carbon footprint","low-impact option","responsible choice"],"sentence_template":"A ___ comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('292a2907-8758-5a4a-8c7a-746b490ad256', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","carbon","footprint","comparison","should","consider","the","entire","journey",",","occupancy",",","distance",",","and","alternatives","rather","than","transport","labels","alone","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","alone","labels","transport","than","rather","alternatives","and",",","distance",",","occupancy",",","journey","entire","the","consider","should","comparison","footprint","carbon","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b338350-45df-5919-b9c6-3a2edae5d842', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A carbon footprint comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a8f12c2-c8a0-55dd-881b-6726dad62274', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A carbon footprint comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Сравнение углеродного следа должно учитывать всю поездку, заполняемость, расстояние и альтернативы, а не только вид транспорта. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18dfbc46-3988-5d59-a4ae-6731d3a83407', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A carbon footprint comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone.","translation":"Сравнение углеродного следа должно учитывать всю поездку, заполняемость, расстояние и альтернативы, а не только вид транспорта.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Comparing Environmental Impact"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('227bd406-8a35-5dd8-a075-b85d712ce6a6', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“carbon footprint” means the greenhouse-gas impact of an activity.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D11","is_correct":true,"text":"the greenhouse-gas impact of an activity"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D12","is_correct":false,"text":"visitor pressure causing harm to a destination"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D13","is_correct":false,"text":"the system of businesses and employment in an area"}],"word":"carbon footprint"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a636353-d4b3-5f8f-9aae-e247e19611f6', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A carbon footprint comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone.","explanation":"The missing travel expression is “carbon footprint”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"carbon footprint","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D14","is_correct":true},{"audio_text":"local economy","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D15","is_correct":false},{"audio_text":"seasonal pressure","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D16","is_correct":false}],"sentence_template":"A ___ comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('209f9ef8-fb9e-575c-8db9-2b06fbf2b040', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"carbon footprint","explanation":"The complete travel statement uses “carbon footprint” precisely.","hint_prefix":"carb","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d6b0088-2e3d-5925-a247-2df430ef48ce', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"carbon footprint","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D17","text":"carbon footprint"},{"audio_text":"overtourism","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D18","text":"overtourism"},{"audio_text":"local economy","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D19","text":"local economy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5700d63-5e1a-507a-a8b4-a562ffc5a5a8', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Comparing Environmental Impact”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D20","is_correct":true,"text":"A carbon footprint comparison should consider the entire journey, occupancy, distance, and alternatives rather than transport labels alone."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('39baa261-d51f-5e1d-a2f5-f592814b5a6d', '4c42a48e-b016-583c-a6d9-22c8a47045ec', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Managing Overtourism Concerns","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc032744-3612-57e8-88a5-3ab87ea77d2b', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D01","left":"carbon footprint","right":"углеродный след"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D02","left":"overtourism","right":"чрезмерный туризм"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D03","left":"local economy","right":"местная экономика"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D04","left":"low-impact option","right":"вариант с низким воздействием"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D05","left":"seasonal pressure","right":"сезонная нагрузка"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D06","left":"responsible choice","right":"ответственный выбор"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D07","left":"offsetting scheme","right":"схема компенсации выбросов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('588a83c8-f14f-563c-9a45-4e5652aa148d', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D08","is_correct":true,"text":"Overtourism places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c0222e6-3999-5b11-a877-e5f149f629b9', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Overtourism places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чрезмерный туризм создаёт сезонную нагрузку на жильё, инфраструктуру и общественные пространства, даже если расходы посетителей поддерживают местную экономику.","target_language":"en","word_bank":["Overtourism","places","seasonal","pressure","on","housing",",","infrastructure",",","and","public","spaces","even","when","visitor","spending","supports","the","local","economy","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e929f9ea-b228-5996-b389-621cab39f048', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"overtourism","instruction":"Выберите подходящее слово.","options":["overtourism","seasonal pressure","offsetting scheme"],"sentence_template":"___ places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9a88eee-3261-5b02-a1e1-875146d1d7d3', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Overtourism","places","seasonal","pressure","on","housing",",","infrastructure",",","and","public","spaces","even","when","visitor","spending","supports","the","local","economy","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","economy","local","the","supports","spending","visitor","when","even","spaces","public","and",",","infrastructure",",","housing","on","pressure","seasonal","places","Overtourism"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2350acb0-e92c-59e7-b82a-eed3f38a1746', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Overtourism places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd4da095-3e6c-58c2-a46c-ace330e6b50c', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Overtourism places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чрезмерный туризм создаёт сезонную нагрузку на жильё, инфраструктуру и общественные пространства, даже если расходы посетителей поддерживают местную экономику. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f5dcecf-f46f-5927-8d35-ba5031d5daa3', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Overtourism places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy.","translation":"Чрезмерный туризм создаёт сезонную нагрузку на жильё, инфраструктуру и общественные пространства, даже если расходы посетителей поддерживают местную экономику.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Managing Overtourism Concerns"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31674a97-db9c-597f-979d-ed7ebc11ee92', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“overtourism” means visitor pressure causing harm to a destination.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D11","is_correct":true,"text":"visitor pressure causing harm to a destination"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D12","is_correct":false,"text":"the system of businesses and employment in an area"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D13","is_correct":false,"text":"a choice causing less environmental or social harm"}],"word":"overtourism"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dd43c53-dafc-5218-955a-6ca392e1934e', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Overtourism places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy.","explanation":"The missing travel expression is “overtourism”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"overtourism","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D14","is_correct":true},{"audio_text":"low-impact option","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D15","is_correct":false},{"audio_text":"responsible choice","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D16","is_correct":false}],"sentence_template":"___ places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe3cb764-caa1-5b9e-b895-a524894d79ea', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"overtourism","explanation":"The complete travel statement uses “overtourism” precisely.","hint_prefix":"over","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9898fd3c-db1b-5e01-8ee1-f2967df57a0a', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"carbon footprint","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D17","text":"carbon footprint"},{"audio_text":"overtourism","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D18","text":"overtourism"},{"audio_text":"local economy","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D19","text":"local economy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c075796-fa38-51d9-9a81-b135a438c535', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Managing Overtourism Concerns”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D20","is_correct":true,"text":"Overtourism places seasonal pressure on housing, infrastructure, and public spaces even when visitor spending supports the local economy."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('39baa261-d51f-5e1d-a2f5-f592814b5a6d', '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8aee1434-26f8-51cb-9b88-a32efe6623d5', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Planning Responsible Travel","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dab9620-31a7-5c5a-9a12-126217267812', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D01","left":"carbon footprint","right":"углеродный след"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D02","left":"overtourism","right":"чрезмерный туризм"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D03","left":"local economy","right":"местная экономика"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D04","left":"low-impact option","right":"вариант с низким воздействием"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D05","left":"seasonal pressure","right":"сезонная нагрузка"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D06","left":"responsible choice","right":"ответственный выбор"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D07","left":"offsetting scheme","right":"схема компенсации выбросов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78c1753d-9cd6-5835-9d83-49239f038f57', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D08","is_correct":true,"text":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83c71866-be87-54b8-b282-95c195fd1921', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ответственный выбор отдаёт приоритет реальному сокращению выбросов, а схему компенсации следует рассматривать как ограниченную дополнительную меру.","target_language":"en","word_bank":["A","responsible","choice","prioritises","genuine","emission","reduction",",","while","an","offsetting","scheme","should","be","treated","as","a","limited","additional","measure","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6433852-920b-5a9c-af75-3eacc4def49b', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"local economy","instruction":"Выберите подходящее слово.","options":["local economy","responsible choice","carbon footprint"],"sentence_template":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35a04b41-55f1-59ec-a75d-738e711b6bf3', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","responsible","choice","prioritises","genuine","emission","reduction",",","while","an","offsetting","scheme","should","be","treated","as","a","limited","additional","measure","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","measure","additional","limited","a","as","treated","be","should","scheme","offsetting","an","while",",","reduction","emission","genuine","prioritises","choice","responsible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69f4d574-9207-5e7f-8c42-1a2b62beb080', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('882c6124-2d94-5c46-9e10-526582ac8d19', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Ответственный выбор отдаёт приоритет реальному сокращению выбросов, а схему компенсации следует рассматривать как ограниченную дополнительную меру. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7cb4ca21-d2f9-5811-8a47-e93d142ebc89', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure.","translation":"Ответственный выбор отдаёт приоритет реальному сокращению выбросов, а схему компенсации следует рассматривать как ограниченную дополнительную меру.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Planning Responsible Travel"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0821d85d-ddaf-59c4-9bba-577f4403c88f', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“local economy” means the system of businesses and employment in an area.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D11","is_correct":true,"text":"the system of businesses and employment in an area"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D12","is_correct":false,"text":"a choice causing less environmental or social harm"},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D13","is_correct":false,"text":"concentrated demand during a particular time"}],"word":"local economy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4af4306a-3b53-56ee-935d-f7f63e2e5f3f', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure.","explanation":"The missing travel expression is “local economy”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"local economy","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D14","is_correct":true},{"audio_text":"seasonal pressure","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D15","is_correct":false},{"audio_text":"offsetting scheme","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D16","is_correct":false}],"sentence_template":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f937b73-a21b-569e-80b2-9eec05138273', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"local economy","explanation":"The complete travel statement uses “local economy” precisely.","hint_prefix":"loca","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6321918a-0a39-5b8f-9a5a-c2204eb29bfb', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"carbon footprint","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D17","text":"carbon footprint"},{"audio_text":"overtourism","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D18","text":"overtourism"},{"audio_text":"local economy","id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D19","text":"local economy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0fcb42c-efa6-5259-9087-5704c37cbe6b', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Planning Responsible Travel”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D20","is_correct":true,"text":"A responsible choice prioritises genuine emission reduction, while an offsetting scheme should be treated as a limited additional measure."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_SUSTAINABLE_TRAVEL_IMPACT_AND_RESPONSIBLE_CHOICES_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('39baa261-d51f-5e1d-a2f5-f592814b5a6d', '8aee1434-26f8-51cb-9b88-a32efe6623d5', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9cb8f69-8abf-52a1-b777-8792a7cc1d52', 'en', 'carbon footprint', 'углеродный след', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3403113b-11a2-5f8d-a1e7-10378dbc9253', 'en', 'overtourism', 'чрезмерный туризм', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb06a9b3-925a-53f1-902c-de6b0c14f2d2', 'en', 'local economy', 'местная экономика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73da7698-2e86-53a5-8336-f1434c29c9b0', 'en', 'low-impact option', 'вариант с низким воздействием', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad67bd44-aac6-5000-838c-0eaffdc52e48', 'en', 'seasonal pressure', 'сезонная нагрузка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d090eb5b-2bf2-5abb-9897-a84663106db5', 'en', 'responsible choice', 'ответственный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e2cf8f1-4de3-561a-83a6-1358ecfb0bc3', 'en', 'offsetting scheme', 'схема компенсации выбросов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9cb8f69-8abf-52a1-b777-8792a7cc1d52', 'en', 'carbon footprint', 'углеродный след', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3403113b-11a2-5f8d-a1e7-10378dbc9253', 'en', 'overtourism', 'чрезмерный туризм', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb06a9b3-925a-53f1-902c-de6b0c14f2d2', 'en', 'local economy', 'местная экономика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73da7698-2e86-53a5-8336-f1434c29c9b0', 'en', 'low-impact option', 'вариант с низким воздействием', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad67bd44-aac6-5000-838c-0eaffdc52e48', 'en', 'seasonal pressure', 'сезонная нагрузка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d090eb5b-2bf2-5abb-9897-a84663106db5', 'en', 'responsible choice', 'ответственный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e2cf8f1-4de3-561a-83a6-1358ecfb0bc3', 'en', 'offsetting scheme', 'схема компенсации выбросов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9cb8f69-8abf-52a1-b777-8792a7cc1d52', 'en', 'carbon footprint', 'углеродный след', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3403113b-11a2-5f8d-a1e7-10378dbc9253', 'en', 'overtourism', 'чрезмерный туризм', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb06a9b3-925a-53f1-902c-de6b0c14f2d2', 'en', 'local economy', 'местная экономика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73da7698-2e86-53a5-8336-f1434c29c9b0', 'en', 'low-impact option', 'вариант с низким воздействием', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad67bd44-aac6-5000-838c-0eaffdc52e48', 'en', 'seasonal pressure', 'сезонная нагрузка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d090eb5b-2bf2-5abb-9897-a84663106db5', 'en', 'responsible choice', 'ответственный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e2cf8f1-4de3-561a-83a6-1358ecfb0bc3', 'en', 'offsetting scheme', 'схема компенсации выбросов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '4c42a48e-b016-583c-a6d9-22c8a47045ec', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'carbon footprint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '4c42a48e-b016-583c-a6d9-22c8a47045ec', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'overtourism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '4c42a48e-b016-583c-a6d9-22c8a47045ec', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'local economy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '4c42a48e-b016-583c-a6d9-22c8a47045ec', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'low-impact option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '4c42a48e-b016-583c-a6d9-22c8a47045ec', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'seasonal pressure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '4c42a48e-b016-583c-a6d9-22c8a47045ec', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsible choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '4c42a48e-b016-583c-a6d9-22c8a47045ec', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'offsetting scheme' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'carbon footprint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'overtourism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'local economy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'low-impact option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'seasonal pressure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsible choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '7c14b3dc-9b03-5b73-962c-f0d6fdfa8203', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'offsetting scheme' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '8aee1434-26f8-51cb-9b88-a32efe6623d5', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'carbon footprint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '8aee1434-26f8-51cb-9b88-a32efe6623d5', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'overtourism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '8aee1434-26f8-51cb-9b88-a32efe6623d5', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'local economy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '8aee1434-26f8-51cb-9b88-a32efe6623d5', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'low-impact option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '8aee1434-26f8-51cb-9b88-a32efe6623d5', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'seasonal pressure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '8aee1434-26f8-51cb-9b88-a32efe6623d5', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsible choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '39baa261-d51f-5e1d-a2f5-f592814b5a6d', id, '8aee1434-26f8-51cb-9b88-a32efe6623d5', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'offsetting scheme' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
