-- Track: B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', 'B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS', 'Рассказы о путешествиях, критические обзоры и рекомендации', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Рассказы о путешествиях, критические обзоры и рекомендации», оценивая варианты, права, риски и культурный контекст.', '{"en":"Travel Narratives, Critical Reviews and Recommendations","ru":"Рассказы о путешествиях, критические обзоры и рекомендации"}'::jsonb, '{"en":"Develop confident B2 communication for travel narratives, critical reviews and recommendations by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Рассказы о путешествиях, критические обзоры и рекомендации», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3ff44e18-154d-5ba6-8da9-b91f05c23968', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Telling an Engaging Travel Story","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d9ff3ae-fcf8-566b-818f-f760eb62b5e8', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D01","left":"turning point","right":"поворотный момент"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D02","left":"vivid detail","right":"яркая деталь"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D03","left":"balanced assessment","right":"взвешенная оценка"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D04","left":"contextual factor","right":"контекстуальный фактор"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D05","left":"qualified recommendation","right":"рекомендация с оговоркой"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D06","left":"live up to expectations","right":"оправдать ожидания"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D07","left":"first-hand experience","right":"личный опыт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8e0cc8a-37c4-5cce-9f55-0839d61d92ef', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D08","is_correct":true,"text":"The turning point came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d444312c-b7c2-57f1-a218-f88f434c0824', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The turning point came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Поворотный момент наступил, когда отменённый паром вынудил нас переночевать в деревне, которую мы первоначально собирались проехать.","target_language":"en","word_bank":["The","turning","point","came","when","the","cancelled","ferry","forced","us","to","stay","overnight","in","a","village","we","had","originally","planned","to","pass","through","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fb7b048-0408-5174-aaaf-06c399753f43', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"turning point","instruction":"Выберите подходящее слово.","options":["turning point","contextual factor","live up to expectations"],"sentence_template":"The ___ came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a81d3e29-9c63-5480-b0e4-457a6564dd7b', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","turning","point","came","when","the","cancelled","ferry","forced","us","to","stay","overnight","in","a","village","we","had","originally","planned","to","pass","through","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","through","pass","to","planned","originally","had","we","village","a","in","overnight","stay","to","us","forced","ferry","cancelled","the","when","came","point","turning","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2bec83a-021d-564e-9b41-22db0e7778ad', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The turning point came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17b1058a-6ea5-5549-8804-cbf424fca06e', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The turning point came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Поворотный момент наступил, когда отменённый паром вынудил нас переночевать в деревне, которую мы первоначально собирались проехать. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('693360be-7365-5b9d-82b5-ae0f4d6b22ac', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The turning point came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through.","translation":"Поворотный момент наступил, когда отменённый паром вынудил нас переночевать в деревне, которую мы первоначально собирались проехать.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Telling an Engaging Travel Story"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efeb8332-fdd3-5f0b-8f37-2a8ac770ad0d', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“turning point” means an event causing a decisive change.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D11","is_correct":true,"text":"an event causing a decisive change"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D12","is_correct":false,"text":"a precise description creating a strong image"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D13","is_correct":false,"text":"a judgement considering strengths and weaknesses"}],"word":"turning point"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('884af264-4490-50f3-a0e4-191f32750ac6', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The turning point came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through.","explanation":"The missing travel expression is “turning point”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"turning point","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D14","is_correct":true},{"audio_text":"balanced assessment","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D15","is_correct":false},{"audio_text":"qualified recommendation","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D16","is_correct":false}],"sentence_template":"The ___ came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af6dd63c-c874-5ea3-8eef-4857cced4595', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"turning point","explanation":"The complete travel statement uses “turning point” precisely.","hint_prefix":"turn","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('008185f1-4ff2-5bc4-a2ee-bd30a47cf618', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turning point","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D17","text":"turning point"},{"audio_text":"vivid detail","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D18","text":"vivid detail"},{"audio_text":"balanced assessment","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D19","text":"balanced assessment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8205d589-210f-5e52-a83d-cfad6af63b85', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Telling an Engaging Travel Story”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D20","is_correct":true,"text":"The turning point came when the cancelled ferry forced us to stay overnight in a village we had originally planned to pass through."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', '3ff44e18-154d-5ba6-8da9-b91f05c23968', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('16b893b3-2a12-5463-83e2-f31b51e7e7c7', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Writing a Balanced Review","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cecd0d38-e532-5a6f-8ec5-de0e0e0220b0', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D01","left":"turning point","right":"поворотный момент"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D02","left":"vivid detail","right":"яркая деталь"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D03","left":"balanced assessment","right":"взвешенная оценка"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D04","left":"contextual factor","right":"контекстуальный фактор"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D05","left":"qualified recommendation","right":"рекомендация с оговоркой"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D06","left":"live up to expectations","right":"оправдать ожидания"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D07","left":"first-hand experience","right":"личный опыт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a14e9780-9902-50f2-b832-41f80a9ad3bc', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D08","is_correct":true,"text":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78b53099-5ea9-5980-9d3c-ef9e9c3100f1', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Взвешенная оценка объясняет, оправдала ли услуга ожидания, признавая контекстуальные факторы вне контроля оператора.","target_language":"en","word_bank":["A","balanced","assessment","explains","whether","the","service","lived","up","to","expectations","while","recognising","contextual","factors","beyond","the","operator’s","control","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ceed7f1-50b9-512c-b9eb-52fc5df67942', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"vivid detail","instruction":"Выберите подходящее слово.","options":["vivid detail","qualified recommendation","first-hand experience"],"sentence_template":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed69c7b9-a6e6-5838-a3e6-100ea5040c0a', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","balanced","assessment","explains","whether","the","service","lived","up","to","expectations","while","recognising","contextual","factors","beyond","the","operator’s","control","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","control","operator’s","the","beyond","factors","contextual","recognising","while","expectations","to","up","lived","service","the","whether","explains","assessment","balanced","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1fac780-f05e-5c00-9f00-a9217e95fc1d', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('059c7014-2328-5c96-a9e5-b0ca0d51ac34', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Взвешенная оценка объясняет, оправдала ли услуга ожидания, признавая контекстуальные факторы вне контроля оператора. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('853a22f4-ab49-5513-bd65-1f147e754894', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control.","translation":"Взвешенная оценка объясняет, оправдала ли услуга ожидания, признавая контекстуальные факторы вне контроля оператора.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Writing a Balanced Review"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c9addd2-5a6a-58ca-81df-22c23636a97e', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“vivid detail” means a precise description creating a strong image.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D11","is_correct":true,"text":"a precise description creating a strong image"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D12","is_correct":false,"text":"a judgement considering strengths and weaknesses"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D13","is_correct":false,"text":"a circumstance influencing an experience"}],"word":"vivid detail"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8291ddd0-b0df-5a99-aef0-5e2481df95f7', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control.","explanation":"The missing travel expression is “vivid detail”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"vivid detail","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D14","is_correct":true},{"audio_text":"contextual factor","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D15","is_correct":false},{"audio_text":"live up to expectations","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D16","is_correct":false}],"sentence_template":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c30d598e-8e9c-5621-bfc6-ab81a303d1d9', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"vivid detail","explanation":"The complete travel statement uses “vivid detail” precisely.","hint_prefix":"vivi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9106ff2-e454-5281-8c4c-b4b044965a11', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turning point","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D17","text":"turning point"},{"audio_text":"vivid detail","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D18","text":"vivid detail"},{"audio_text":"balanced assessment","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D19","text":"balanced assessment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85a7c618-a8f6-5ce5-89e3-44c9c3b09209', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Writing a Balanced Review”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D20","is_correct":true,"text":"A balanced assessment explains whether the service lived up to expectations while recognising contextual factors beyond the operator’s control."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a9cb509e-f1ec-516c-8744-df480316d9d9', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Giving Qualified Recommendations","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('123875e6-050d-5070-b685-4cb5db0203d0', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D01","left":"turning point","right":"поворотный момент"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D02","left":"vivid detail","right":"яркая деталь"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D03","left":"balanced assessment","right":"взвешенная оценка"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D04","left":"contextual factor","right":"контекстуальный фактор"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D05","left":"qualified recommendation","right":"рекомендация с оговоркой"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D06","left":"live up to expectations","right":"оправдать ожидания"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D07","left":"first-hand experience","right":"личный опыт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('234e0e00-24e8-5d79-9a1d-22f2c283c04a', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D08","is_correct":true,"text":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abc0f1e9-7751-5007-9138-dfd31f1b71e7', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Моя рекомендация с оговоркой основана на личном опыте: маршрут прекрасен для подготовленных туристов, но непригоден в плохую погоду.","target_language":"en","word_bank":["My","qualified","recommendation","is","based","on","first-hand","experience",":","the","route","is","rewarding","for","prepared","walkers",",","but","unsuitable","in","poor","weather","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa4041ca-f304-5698-b968-39df0740c0ba', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"balanced assessment","instruction":"Выберите подходящее слово.","options":["balanced assessment","live up to expectations","turning point"],"sentence_template":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25521e59-3b1e-57bd-befe-e3b4a5ce8d4a', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["My","qualified","recommendation","is","based","on","first-hand","experience",":","the","route","is","rewarding","for","prepared","walkers",",","but","unsuitable","in","poor","weather","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","weather","poor","in","unsuitable","but",",","walkers","prepared","for","rewarding","is","route","the",":","experience","first-hand","on","based","is","recommendation","qualified","My"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fab69f3a-8836-5f17-8f97-e6fda5977ac8', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('739546c6-ad0b-570f-9c14-577bbd9c901d', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Моя рекомендация с оговоркой основана на личном опыте: маршрут прекрасен для подготовленных туристов, но непригоден в плохую погоду. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99c7a85f-bbdd-5cc1-ab3a-60de51a5b9c5', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather.","translation":"Моя рекомендация с оговоркой основана на личном опыте: маршрут прекрасен для подготовленных туристов, но непригоден в плохую погоду.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Giving Qualified Recommendations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('218e378b-14ee-50be-8fe7-e26012e527e0', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“balanced assessment” means a judgement considering strengths and weaknesses.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D11","is_correct":true,"text":"a judgement considering strengths and weaknesses"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D12","is_correct":false,"text":"a circumstance influencing an experience"},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D13","is_correct":false,"text":"advice limited by stated conditions"}],"word":"balanced assessment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbba2103-b194-5dcc-9335-7d1dba8ab34f', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather.","explanation":"The missing travel expression is “balanced assessment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"balanced assessment","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D14","is_correct":true},{"audio_text":"qualified recommendation","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D15","is_correct":false},{"audio_text":"first-hand experience","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D16","is_correct":false}],"sentence_template":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('754a4eb2-ca8c-5b75-bef8-bdfca4c46ba5', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"balanced assessment","explanation":"The complete travel statement uses “balanced assessment” precisely.","hint_prefix":"bala","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7826d859-fb5e-5de4-8654-98a9e2114923', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turning point","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D17","text":"turning point"},{"audio_text":"vivid detail","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D18","text":"vivid detail"},{"audio_text":"balanced assessment","id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D19","text":"balanced assessment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18217cac-83bc-5695-b080-6469931e764e', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Giving Qualified Recommendations”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D20","is_correct":true,"text":"My qualified recommendation is based on first-hand experience: the route is rewarding for prepared walkers, but unsuitable in poor weather."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_TRAVEL_NARRATIVES_CRITICAL_REVIEWS_AND_RECOMMENDATIONS_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', 'a9cb509e-f1ec-516c-8744-df480316d9d9', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14492d82-db30-537e-8961-8f8844105eee', 'en', 'vivid detail', 'яркая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fa28332-dd7f-5faa-9caf-3236138cd5b6', 'en', 'balanced assessment', 'взвешенная оценка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd3afd44-9a6f-56f2-8c3a-7d413d4100cb', 'en', 'contextual factor', 'контекстуальный фактор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('390ef76d-ba4c-5bd5-9ee4-2c3754842150', 'en', 'qualified recommendation', 'рекомендация с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf491e22-bbbc-5d6a-8784-4af6dc2e9dc1', 'en', 'live up to expectations', 'оправдать ожидания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5092327-0264-5187-8bb8-e17605bacd04', 'en', 'first-hand experience', 'личный опыт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14492d82-db30-537e-8961-8f8844105eee', 'en', 'vivid detail', 'яркая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fa28332-dd7f-5faa-9caf-3236138cd5b6', 'en', 'balanced assessment', 'взвешенная оценка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd3afd44-9a6f-56f2-8c3a-7d413d4100cb', 'en', 'contextual factor', 'контекстуальный фактор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('390ef76d-ba4c-5bd5-9ee4-2c3754842150', 'en', 'qualified recommendation', 'рекомендация с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf491e22-bbbc-5d6a-8784-4af6dc2e9dc1', 'en', 'live up to expectations', 'оправдать ожидания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5092327-0264-5187-8bb8-e17605bacd04', 'en', 'first-hand experience', 'личный опыт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14492d82-db30-537e-8961-8f8844105eee', 'en', 'vivid detail', 'яркая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fa28332-dd7f-5faa-9caf-3236138cd5b6', 'en', 'balanced assessment', 'взвешенная оценка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd3afd44-9a6f-56f2-8c3a-7d413d4100cb', 'en', 'contextual factor', 'контекстуальный фактор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('390ef76d-ba4c-5bd5-9ee4-2c3754842150', 'en', 'qualified recommendation', 'рекомендация с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf491e22-bbbc-5d6a-8784-4af6dc2e9dc1', 'en', 'live up to expectations', 'оправдать ожидания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5092327-0264-5187-8bb8-e17605bacd04', 'en', 'first-hand experience', 'личный опыт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '3ff44e18-154d-5ba6-8da9-b91f05c23968', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '3ff44e18-154d-5ba6-8da9-b91f05c23968', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'vivid detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '3ff44e18-154d-5ba6-8da9-b91f05c23968', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '3ff44e18-154d-5ba6-8da9-b91f05c23968', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual factor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '3ff44e18-154d-5ba6-8da9-b91f05c23968', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '3ff44e18-154d-5ba6-8da9-b91f05c23968', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'live up to expectations' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '3ff44e18-154d-5ba6-8da9-b91f05c23968', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'first-hand experience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'vivid detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual factor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'live up to expectations' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, '16b893b3-2a12-5463-83e2-f31b51e7e7c7', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'first-hand experience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, 'a9cb509e-f1ec-516c-8744-df480316d9d9', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, 'a9cb509e-f1ec-516c-8744-df480316d9d9', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'vivid detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, 'a9cb509e-f1ec-516c-8744-df480316d9d9', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, 'a9cb509e-f1ec-516c-8744-df480316d9d9', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual factor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, 'a9cb509e-f1ec-516c-8744-df480316d9d9', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, 'a9cb509e-f1ec-516c-8744-df480316d9d9', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'live up to expectations' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6a7dc734-b9d1-5d18-8f02-a78bdbdc3d62', id, 'a9cb509e-f1ec-516c-8744-df480316d9d9', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'first-hand experience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
