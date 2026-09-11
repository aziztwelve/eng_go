-- Track: C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2ca89858-f83e-50c7-87e7-d2719e931578', 'C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS', 'Консалтинг, постановка проблем и рекомендации руководству', 'Освойте продвинутый деловой английский уровня C1 по теме «Консалтинг, постановка проблем и рекомендации руководству» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Consulting, Problem Framing and Executive Recommendations","ru":"Консалтинг, постановка проблем и рекомендации руководству"}'::jsonb, '{"en":"Master advanced C1 business English for consulting, problem framing and executive recommendations through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Консалтинг, постановка проблем и рекомендации руководству» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5689ada1-98ef-5cc6-badb-8f6770ef49da', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Defining the Real Business Problem","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed239849-0771-50c2-81f2-9de54e4f8231', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D01","left":"problem statement","right":"формулировка проблемы"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D02","left":"hypothesis-driven analysis","right":"анализ на основе гипотез"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D03","left":"root cause","right":"первопричина"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D04","left":"evidence threshold","right":"порог доказательности"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D05","left":"implementation constraint","right":"ограничение внедрения"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D06","left":"executive recommendation","right":"рекомендация руководству"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D07","left":"critical assumption","right":"критическое допущение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5050483b-7847-54c0-b7ef-d37960b38e70', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D08","is_correct":true,"text":"The problem statement should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d68b7b1b-7ddf-5c60-81af-8ab2aa597b6f', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The problem statement should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Формулировка проблемы должна описывать измеримый разрыв в результатах, не предполагая, что предпочитаемое клиентом объяснение является первопричиной.","target_language":"en","word_bank":["The","problem","statement","should","describe","the","measurable","performance","gap","without","assuming","that","the","client’s","preferred","explanation","is","the","root","cause","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e5b578e-33d8-5890-b9f7-64a244384439', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"problem statement","instruction":"Выберите подходящее слово.","options":["problem statement","evidence threshold","executive recommendation"],"sentence_template":"The ___ should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a999549-966d-5ff0-8315-9abfec42cba7', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","problem","statement","should","describe","the","measurable","performance","gap","without","assuming","that","the","client’s","preferred","explanation","is","the","root","cause","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","cause","root","the","is","explanation","preferred","client’s","the","that","assuming","without","gap","performance","measurable","the","describe","should","statement","problem","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce9595fa-75a7-540e-9ff8-ee608e93c786', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The problem statement should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ea9b934-4621-5c6b-840b-6ed5acaf2057', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The problem statement should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Формулировка проблемы должна описывать измеримый разрыв в результатах, не предполагая, что предпочитаемое клиентом объяснение является первопричиной. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29e59704-5447-5651-aec2-952e1d5cd99c', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The problem statement should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause.","translation":"Формулировка проблемы должна описывать измеримый разрыв в результатах, не предполагая, что предпочитаемое клиентом объяснение является первопричиной.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Defining the Real Business Problem"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d13b127-cb2d-5272-97a2-91cfdfec197f', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“problem statement” means a precise description of the issue to be solved.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D11","is_correct":true,"text":"a precise description of the issue to be solved"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D12","is_correct":false,"text":"investigation organised around propositions that can be tested"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D13","is_correct":false,"text":"the underlying reason a problem exists"}],"word":"problem statement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c92e7844-8934-5a01-bdf7-74b0bb990112', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The problem statement should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause.","explanation":"The missing C1 business expression is “problem statement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"problem statement","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D14","is_correct":true},{"audio_text":"root cause","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D15","is_correct":false},{"audio_text":"implementation constraint","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D16","is_correct":false}],"sentence_template":"The ___ should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17d2bbe2-10ec-5530-bc13-a04d8f4ef8ca', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"problem statement","explanation":"The complete business statement uses “problem statement” accurately in context.","hint_prefix":"prob","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e828084-3f08-559d-b333-8ff4ba4226be', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"problem statement","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D17","text":"problem statement"},{"audio_text":"hypothesis-driven analysis","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D18","text":"hypothesis-driven analysis"},{"audio_text":"root cause","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D19","text":"root cause"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1dd1910-5942-5949-841d-d51b8d066dac', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Defining the Real Business Problem”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D20","is_correct":true,"text":"The problem statement should describe the measurable performance gap without assuming that the client’s preferred explanation is the root cause."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ca89858-f83e-50c7-87e7-d2719e931578', '5689ada1-98ef-5cc6-badb-8f6770ef49da', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bc4b8953-93fb-5808-b31b-a445ca04f593', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Building an Evidence-Based Recommendation","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0551cf39-5577-5a99-8a3b-ba4df142afe5', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D01","left":"problem statement","right":"формулировка проблемы"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D02","left":"hypothesis-driven analysis","right":"анализ на основе гипотез"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D03","left":"root cause","right":"первопричина"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D04","left":"evidence threshold","right":"порог доказательности"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D05","left":"implementation constraint","right":"ограничение внедрения"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D06","left":"executive recommendation","right":"рекомендация руководству"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D07","left":"critical assumption","right":"критическое допущение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f50469c-aef2-5547-a7d5-956e5abefcf2', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D08","is_correct":true,"text":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bc7c8c1-f75f-51ee-a2d9-1f1728b9f95b', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Наша рекомендация руководству соответствует текущему порогу доказательности, хотя по-прежнему зависит от критического допущения о принятии решения клиентами.","target_language":"en","word_bank":["Our","executive","recommendation","meets","the","current","evidence","threshold",",","although","it","remains","dependent","on","a","critical","assumption","about","customer","adoption","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('602e54e0-a340-58eb-b322-72a1bd9049cf', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hypothesis-driven analysis","instruction":"Выберите подходящее слово.","options":["hypothesis-driven analysis","implementation constraint","critical assumption"],"sentence_template":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2150a592-efd0-58f1-9824-ee45ebb66e4f', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Our","executive","recommendation","meets","the","current","evidence","threshold",",","although","it","remains","dependent","on","a","critical","assumption","about","customer","adoption","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","adoption","customer","about","assumption","critical","a","on","dependent","remains","it","although",",","threshold","evidence","current","the","meets","recommendation","executive","Our"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b614dd5-0421-5f98-9fce-818366b621a8', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b0555f0-61de-59e1-8462-f45658e8a560', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Наша рекомендация руководству соответствует текущему порогу доказательности, хотя по-прежнему зависит от критического допущения о принятии решения клиентами. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61a57979-f058-5f2d-96e8-15139a8622e7', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption.","translation":"Наша рекомендация руководству соответствует текущему порогу доказательности, хотя по-прежнему зависит от критического допущения о принятии решения клиентами.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Building an Evidence-Based Recommendation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a80b6243-99d6-592f-9906-38e3a3956246', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hypothesis-driven analysis” means investigation organised around propositions that can be tested.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D11","is_correct":true,"text":"investigation organised around propositions that can be tested"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D12","is_correct":false,"text":"the underlying reason a problem exists"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D13","is_correct":false,"text":"the amount and quality of evidence required for a conclusion"}],"word":"hypothesis-driven analysis"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('318a9141-3663-54f9-be70-3238aa5ca019', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption.","explanation":"The missing C1 business expression is “hypothesis-driven analysis”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hypothesis-driven analysis","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D14","is_correct":true},{"audio_text":"evidence threshold","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D15","is_correct":false},{"audio_text":"executive recommendation","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D16","is_correct":false}],"sentence_template":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83fcad92-4884-533d-8fc6-7b5467e3c488', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hypothesis-driven analysis","explanation":"The complete business statement uses “hypothesis-driven analysis” accurately in context.","hint_prefix":"hypo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a3fdce3-6c48-5eca-9004-137846a41066', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"problem statement","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D17","text":"problem statement"},{"audio_text":"hypothesis-driven analysis","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D18","text":"hypothesis-driven analysis"},{"audio_text":"root cause","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D19","text":"root cause"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('920b3275-e5c4-5843-a000-f48dfd0b0441', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Building an Evidence-Based Recommendation”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D20","is_correct":true,"text":"Our executive recommendation meets the current evidence threshold, although it remains dependent on a critical assumption about customer adoption."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ca89858-f83e-50c7-87e7-d2719e931578', 'bc4b8953-93fb-5808-b31b-a445ca04f593', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('072416c6-24b3-5544-8a38-245759480d0c', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Presenting to a Sceptical Executive Team","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc1c2c61-db2b-5021-a896-ffea63c173f5', '072416c6-24b3-5544-8a38-245759480d0c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D01","left":"problem statement","right":"формулировка проблемы"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D02","left":"hypothesis-driven analysis","right":"анализ на основе гипотез"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D03","left":"root cause","right":"первопричина"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D04","left":"evidence threshold","right":"порог доказательности"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D05","left":"implementation constraint","right":"ограничение внедрения"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D06","left":"executive recommendation","right":"рекомендация руководству"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D07","left":"critical assumption","right":"критическое допущение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d92c757f-92b5-573e-8288-e5e10719a952', '072416c6-24b3-5544-8a38-245759480d0c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D08","is_correct":true,"text":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae1325b8-6dd4-5b26-958c-937cae210640', '072416c6-24b3-5544-8a38-245759480d0c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предложение стратегически привлекательно; однако ограничения внедрения требуют поэтапного пилота с чёткими критериями успеха и прекращения.","target_language":"en","word_bank":["The","proposal","is","strategically","attractive",";","however",",","the","implementation","constraints","require","a","phased","pilot","with","explicit","success","and","termination","criteria","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4136a80-3001-569f-83e9-ef35620c2d8d', '072416c6-24b3-5544-8a38-245759480d0c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"root cause","instruction":"Выберите подходящее слово.","options":["root cause","executive recommendation","problem statement"],"sentence_template":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a3c161d-c1db-5ea5-a006-819a0210e891', '072416c6-24b3-5544-8a38-245759480d0c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","proposal","is","strategically","attractive",";","however",",","the","implementation","constraints","require","a","phased","pilot","with","explicit","success","and","termination","criteria","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","criteria","termination","and","success","explicit","with","pilot","phased","a","require","constraints","implementation","the",",","however",";","attractive","strategically","is","proposal","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82f8df86-f08b-5fe7-b18b-89e745be8e53', '072416c6-24b3-5544-8a38-245759480d0c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('925692e9-3f31-5fd6-8742-b28f63eb4e81', '072416c6-24b3-5544-8a38-245759480d0c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Предложение стратегически привлекательно; однако ограничения внедрения требуют поэтапного пилота с чёткими критериями успеха и прекращения. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('762d14ee-32ca-53ec-89cc-11eca579f666', '072416c6-24b3-5544-8a38-245759480d0c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria.","translation":"Предложение стратегически привлекательно; однако ограничения внедрения требуют поэтапного пилота с чёткими критериями успеха и прекращения.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Presenting to a Sceptical Executive Team"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0d2729c-64f3-549f-9c0d-e64683de5154', '072416c6-24b3-5544-8a38-245759480d0c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“root cause” means the underlying reason a problem exists.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D11","is_correct":true,"text":"the underlying reason a problem exists"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D12","is_correct":false,"text":"the amount and quality of evidence required for a conclusion"},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D13","is_correct":false,"text":"a practical factor restricting execution of a recommendation"}],"word":"root cause"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9222cbc3-9258-55d8-98a6-858247880a44', '072416c6-24b3-5544-8a38-245759480d0c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria.","explanation":"The missing C1 business expression is “root cause”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"root cause","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D14","is_correct":true},{"audio_text":"implementation constraint","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D15","is_correct":false},{"audio_text":"critical assumption","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D16","is_correct":false}],"sentence_template":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38c2e3d2-3886-5ad0-b523-d98d0ec5c699', '072416c6-24b3-5544-8a38-245759480d0c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"root cause","explanation":"The complete business statement uses “root cause” accurately in context.","hint_prefix":"root","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd597578-aeda-51ae-9b28-e26f957fd24b', '072416c6-24b3-5544-8a38-245759480d0c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"problem statement","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D17","text":"problem statement"},{"audio_text":"hypothesis-driven analysis","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D18","text":"hypothesis-driven analysis"},{"audio_text":"root cause","id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D19","text":"root cause"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bb5eb20-4cd9-5191-9d04-91b99c865825', '072416c6-24b3-5544-8a38-245759480d0c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Presenting to a Sceptical Executive Team”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D20","is_correct":true,"text":"The proposal is strategically attractive; however, the implementation constraints require a phased pilot with explicit success and termination criteria."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CONSULTING_PROBLEM_FRAMING_AND_EXECUTIVE_RECOMMENDATIONS_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ca89858-f83e-50c7-87e7-d2719e931578', '072416c6-24b3-5544-8a38-245759480d0c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f55116cb-aea3-5d9f-9245-76c51e2aae63', 'en', 'problem statement', 'формулировка проблемы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6ec59d5-6635-5f6b-bd13-a55b348727fe', 'en', 'hypothesis-driven analysis', 'анализ на основе гипотез', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'первопричина', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('180f132f-dd96-55d5-a4d8-38e7078ed8f9', 'en', 'evidence threshold', 'порог доказательности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3156a893-2dc7-5dfa-979e-8a87b2701b25', 'en', 'implementation constraint', 'ограничение внедрения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3ca3c1a-3f90-5b7f-beb6-0c1057db4dff', 'en', 'executive recommendation', 'рекомендация руководству', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3337ba35-0de3-5182-8fb4-231c71cd332a', 'en', 'critical assumption', 'критическое допущение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f55116cb-aea3-5d9f-9245-76c51e2aae63', 'en', 'problem statement', 'формулировка проблемы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6ec59d5-6635-5f6b-bd13-a55b348727fe', 'en', 'hypothesis-driven analysis', 'анализ на основе гипотез', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'первопричина', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('180f132f-dd96-55d5-a4d8-38e7078ed8f9', 'en', 'evidence threshold', 'порог доказательности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3156a893-2dc7-5dfa-979e-8a87b2701b25', 'en', 'implementation constraint', 'ограничение внедрения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3ca3c1a-3f90-5b7f-beb6-0c1057db4dff', 'en', 'executive recommendation', 'рекомендация руководству', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3337ba35-0de3-5182-8fb4-231c71cd332a', 'en', 'critical assumption', 'критическое допущение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f55116cb-aea3-5d9f-9245-76c51e2aae63', 'en', 'problem statement', 'формулировка проблемы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6ec59d5-6635-5f6b-bd13-a55b348727fe', 'en', 'hypothesis-driven analysis', 'анализ на основе гипотез', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'первопричина', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('180f132f-dd96-55d5-a4d8-38e7078ed8f9', 'en', 'evidence threshold', 'порог доказательности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3156a893-2dc7-5dfa-979e-8a87b2701b25', 'en', 'implementation constraint', 'ограничение внедрения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3ca3c1a-3f90-5b7f-beb6-0c1057db4dff', 'en', 'executive recommendation', 'рекомендация руководству', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3337ba35-0de3-5182-8fb4-231c71cd332a', 'en', 'critical assumption', 'критическое допущение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '5689ada1-98ef-5cc6-badb-8f6770ef49da', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'problem statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '5689ada1-98ef-5cc6-badb-8f6770ef49da', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'hypothesis-driven analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '5689ada1-98ef-5cc6-badb-8f6770ef49da', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '5689ada1-98ef-5cc6-badb-8f6770ef49da', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '5689ada1-98ef-5cc6-badb-8f6770ef49da', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'implementation constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '5689ada1-98ef-5cc6-badb-8f6770ef49da', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '5689ada1-98ef-5cc6-badb-8f6770ef49da', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, 'bc4b8953-93fb-5808-b31b-a445ca04f593', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'problem statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, 'bc4b8953-93fb-5808-b31b-a445ca04f593', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hypothesis-driven analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, 'bc4b8953-93fb-5808-b31b-a445ca04f593', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, 'bc4b8953-93fb-5808-b31b-a445ca04f593', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, 'bc4b8953-93fb-5808-b31b-a445ca04f593', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'implementation constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, 'bc4b8953-93fb-5808-b31b-a445ca04f593', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, 'bc4b8953-93fb-5808-b31b-a445ca04f593', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '072416c6-24b3-5544-8a38-245759480d0c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'problem statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '072416c6-24b3-5544-8a38-245759480d0c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hypothesis-driven analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '072416c6-24b3-5544-8a38-245759480d0c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '072416c6-24b3-5544-8a38-245759480d0c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '072416c6-24b3-5544-8a38-245759480d0c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'implementation constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '072416c6-24b3-5544-8a38-245759480d0c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca89858-f83e-50c7-87e7-d2719e931578', id, '072416c6-24b3-5544-8a38-245759480d0c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
