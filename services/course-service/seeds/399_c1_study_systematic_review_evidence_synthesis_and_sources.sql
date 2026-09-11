-- Track: C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('bc5e6811-4298-5276-b9d1-58156b8e307c', 'C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES', 'Систематический обзор, синтез доказательств и источники', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Систематический обзор, синтез доказательств и источники», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Systematic Review, Evidence Synthesis and Sources","ru":"Систематический обзор, синтез доказательств и источники"}'::jsonb, '{"en":"Develop advanced C1 academic competence for systematic review, evidence synthesis and sources by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Систематический обзор, синтез доказательств и источники», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e8cb6137-e198-5ccc-9382-1194fca920a3', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Developing a Search Strategy","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96cd510f-a451-5470-9be1-4616e8e7c7ce', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D01","left":"inclusion criterion","right":"критерий включения"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D02","left":"publication bias","right":"публикационная предвзятость"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D03","left":"heterogeneity","right":"неоднородность"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D04","left":"risk of bias","right":"риск систематической ошибки"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D05","left":"evidence synthesis","right":"синтез доказательств"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D06","left":"sensitivity analysis","right":"анализ чувствительности"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D07","left":"weight of evidence","right":"совокупная сила доказательств"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90a1057d-9d79-54e8-9834-93bf62328ecb', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D08","is_correct":true,"text":"An inclusion criterion must be specified before screening so that study selection does not drift toward preferred findings."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c6bae41-f592-504b-b9a1-c975ee6b30d3', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An inclusion criterion must be specified before screening so that study selection does not drift toward preferred findings.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Критерий включения необходимо определить до отбора, чтобы выбор исследований не смещался к предпочтительным результатам.","target_language":"en","word_bank":["An","inclusion","criterion","must","be","specified","before","screening","so","that","study","selection","does","not","drift","toward","preferred","findings","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71d4d3b1-cf28-5361-a049-ac33ba7965df', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"inclusion criterion","instruction":"Выберите подходящее слово.","options":["inclusion criterion","risk of bias","sensitivity analysis"],"sentence_template":"An ___ must be specified before screening so that study selection does not drift toward preferred findings."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f641f3b-f8b2-587e-9a1a-980fb819a4d7', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","inclusion","criterion","must","be","specified","before","screening","so","that","study","selection","does","not","drift","toward","preferred","findings","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","findings","preferred","toward","drift","not","does","selection","study","that","so","screening","before","specified","be","must","criterion","inclusion","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('558bb277-1cb9-550d-b79f-6013bd2cb46b', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An inclusion criterion must be specified before screening so that study selection does not drift toward preferred findings. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8ecc0b7-412a-5f1a-ab0d-0cb01146bc38', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An inclusion criterion must be specified before screening so that study selection does not drift toward preferred findings. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Критерий включения необходимо определить до отбора, чтобы выбор исследований не смещался к предпочтительным результатам. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('521baca3-a821-588d-b9fe-17164d62e756', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"An inclusion criterion must be specified before screening so that study selection does not drift toward preferred findings.","translation":"Критерий включения необходимо определить до отбора, чтобы выбор исследований не смещался к предпочтительным результатам.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Developing a Search Strategy"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92df9dba-bf34-5c7a-ba8f-2f9ce66d5c11', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“inclusion criterion” means a rule determining which studies enter a review.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D11","is_correct":true,"text":"a rule determining which studies enter a review"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D12","is_correct":false,"text":"distortion caused by selective publication of findings"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D13","is_correct":false,"text":"meaningful variation among studies or results"}],"word":"inclusion criterion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb62529d-6773-5859-9d94-128d05d2f1fd', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An inclusion criterion must be specified before screening so that study selection does not drift toward preferred findings.","explanation":"The missing C1 academic expression is “inclusion criterion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"inclusion criterion","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D14","is_correct":true},{"audio_text":"heterogeneity","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D15","is_correct":false},{"audio_text":"evidence synthesis","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D16","is_correct":false}],"sentence_template":"An ___ must be specified before screening so that study selection does not drift toward preferred findings."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('824d3cee-e37d-5533-8462-0a1d5a1ad990', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"inclusion criterion","explanation":"The complete academic argument uses “inclusion criterion” with conceptual precision.","hint_prefix":"incl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An ___ must be specified before screening so that study selection does not drift toward preferred findings."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('865b5d38-eae6-5dea-a17b-4104a7d488d2', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"inclusion criterion","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D17","text":"inclusion criterion"},{"audio_text":"publication bias","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D18","text":"publication bias"},{"audio_text":"heterogeneity","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D19","text":"heterogeneity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebfcaa97-b399-56bb-865a-4efb544d3dc0', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Developing a Search Strategy”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D20","is_correct":true,"text":"An inclusion criterion must be specified before screening so that study selection does not drift toward preferred findings."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc5e6811-4298-5276-b9d1-58156b8e307c', 'e8cb6137-e198-5ccc-9382-1194fca920a3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('17e9fb1c-8bd1-5578-98ea-4d77bca2d188', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Appraising Evidence Quality","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed64279f-e1a9-548e-8c11-362880a161e1', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D01","left":"inclusion criterion","right":"критерий включения"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D02","left":"publication bias","right":"публикационная предвзятость"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D03","left":"heterogeneity","right":"неоднородность"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D04","left":"risk of bias","right":"риск систематической ошибки"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D05","left":"evidence synthesis","right":"синтез доказательств"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D06","left":"sensitivity analysis","right":"анализ чувствительности"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D07","left":"weight of evidence","right":"совокупная сила доказательств"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87d95d6d-0c65-532d-af43-c86155e78e06', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D08","is_correct":true,"text":"Publication bias and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1e50115-a297-5b89-9713-bfb4169e9232', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Publication bias and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Публикационная предвзятость и методологическая неоднородность могут объяснить, почему внешне согласованная литература даёт нестабильную оценку эффекта.","target_language":"en","word_bank":["Publication","bias","and","methodological","heterogeneity","may","explain","why","an","apparently","consistent","literature","produces","an","unstable","effect","estimate","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a04add48-cc31-501b-97fd-30a06e188753', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"publication bias","instruction":"Выберите подходящее слово.","options":["publication bias","evidence synthesis","weight of evidence"],"sentence_template":"___ and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3d9d252-73b0-5f7d-b0ee-5856be6ad896', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Publication","bias","and","methodological","heterogeneity","may","explain","why","an","apparently","consistent","literature","produces","an","unstable","effect","estimate","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","estimate","effect","unstable","an","produces","literature","consistent","apparently","an","why","explain","may","heterogeneity","methodological","and","bias","Publication"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70463a90-5f57-5c43-bff7-587e945e8d92', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Publication bias and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a71eaa6e-15e0-5793-8aee-cf68df09ac29', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Publication bias and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Публикационная предвзятость и методологическая неоднородность могут объяснить, почему внешне согласованная литература даёт нестабильную оценку эффекта. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cae574e7-0fb1-55e9-948e-ff559f1c6b90', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Publication bias and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate.","translation":"Публикационная предвзятость и методологическая неоднородность могут объяснить, почему внешне согласованная литература даёт нестабильную оценку эффекта.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Appraising Evidence Quality"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9b5d687-31ee-5f78-9584-1f987a7a0e6a', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“publication bias” means distortion caused by selective publication of findings.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D11","is_correct":true,"text":"distortion caused by selective publication of findings"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D12","is_correct":false,"text":"meaningful variation among studies or results"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D13","is_correct":false,"text":"the likelihood that study design distorts findings"}],"word":"publication bias"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64d73769-cd25-5653-9975-06f3d1e8a5c2', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Publication bias and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate.","explanation":"The missing C1 academic expression is “publication bias”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"publication bias","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D14","is_correct":true},{"audio_text":"risk of bias","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D15","is_correct":false},{"audio_text":"sensitivity analysis","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D16","is_correct":false}],"sentence_template":"___ and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72caf7f3-4f83-5d33-8870-24337a170425', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"publication bias","explanation":"The complete academic argument uses “publication bias” with conceptual precision.","hint_prefix":"publ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31845d32-de91-5ac2-b4d2-57ceec03d6a4', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"inclusion criterion","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D17","text":"inclusion criterion"},{"audio_text":"publication bias","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D18","text":"publication bias"},{"audio_text":"heterogeneity","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D19","text":"heterogeneity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd015d6d-989c-5bb1-8df9-1ad7b7e66798', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Appraising Evidence Quality”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D20","is_correct":true,"text":"Publication bias and methodological heterogeneity may explain why an apparently consistent literature produces an unstable effect estimate."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc5e6811-4298-5276-b9d1-58156b8e307c', '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('71494e8a-0e90-5531-8039-d2e4991db8a8', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Synthesising Conflicting Findings","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79d55afc-f2f2-598a-9df0-4bfbb3cc854f', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D01","left":"inclusion criterion","right":"критерий включения"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D02","left":"publication bias","right":"публикационная предвзятость"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D03","left":"heterogeneity","right":"неоднородность"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D04","left":"risk of bias","right":"риск систематической ошибки"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D05","left":"evidence synthesis","right":"синтез доказательств"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D06","left":"sensitivity analysis","right":"анализ чувствительности"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D07","left":"weight of evidence","right":"совокупная сила доказательств"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b9677fc-c6b0-519c-bc30-99788c8a9a1a', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D08","is_correct":true,"text":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cc3956f-8d40-5e7e-8dab-12acfa97dfa2', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обоснованный синтез доказательств сообщает о риске систематической ошибки и анализе чувствительности до характеристики совокупной силы доказательств.","target_language":"en","word_bank":["A","defensible","evidence","synthesis","reports","risk","of","bias","and","sensitivity","analysis","before","characterising","the","overall","weight","of","evidence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ac67f2f-e25c-5372-a7cb-a3c4739b5c29', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"heterogeneity","instruction":"Выберите подходящее слово.","options":["heterogeneity","sensitivity analysis","inclusion criterion"],"sentence_template":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d47f2e90-acd9-5ea4-93f9-a8c012718168', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","defensible","evidence","synthesis","reports","risk","of","bias","and","sensitivity","analysis","before","characterising","the","overall","weight","of","evidence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","evidence","of","weight","overall","the","characterising","before","analysis","sensitivity","and","bias","of","risk","reports","synthesis","evidence","defensible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dca6f512-dd08-5e93-b67f-072bd747335c', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24cfad45-b6a2-5632-b3cb-cf1ef2c8ff5f', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Обоснованный синтез доказательств сообщает о риске систематической ошибки и анализе чувствительности до характеристики совокупной силы доказательств. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('339e9eb1-1ca0-5347-981b-dd605ea2e172', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence.","translation":"Обоснованный синтез доказательств сообщает о риске систематической ошибки и анализе чувствительности до характеристики совокупной силы доказательств.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Synthesising Conflicting Findings"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecb7eef6-0389-5f8a-8a25-d97b470f8f21', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“heterogeneity” means meaningful variation among studies or results.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D11","is_correct":true,"text":"meaningful variation among studies or results"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D12","is_correct":false,"text":"the likelihood that study design distorts findings"},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D13","is_correct":false,"text":"systematic integration of findings across sources"}],"word":"heterogeneity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('621953d3-c573-5423-953f-04a20f69b311', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence.","explanation":"The missing C1 academic expression is “heterogeneity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"heterogeneity","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D14","is_correct":true},{"audio_text":"evidence synthesis","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D15","is_correct":false},{"audio_text":"weight of evidence","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D16","is_correct":false}],"sentence_template":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7cf45758-5857-5b6f-8eaf-7ef2a50de8da', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"heterogeneity","explanation":"The complete academic argument uses “heterogeneity” with conceptual precision.","hint_prefix":"hete","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('141f57eb-fdfa-565d-ae5e-8d89d1eb74f2', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"inclusion criterion","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D17","text":"inclusion criterion"},{"audio_text":"publication bias","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D18","text":"publication bias"},{"audio_text":"heterogeneity","id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D19","text":"heterogeneity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3e6ed31-8637-58ca-ba2f-bc44a559055f', '71494e8a-0e90-5531-8039-d2e4991db8a8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Synthesising Conflicting Findings”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D20","is_correct":true,"text":"A defensible evidence synthesis reports risk of bias and sensitivity analysis before characterising the overall weight of evidence."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_SYSTEMATIC_REVIEW_EVIDENCE_SYNTHESIS_AND_SOURCES_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc5e6811-4298-5276-b9d1-58156b8e307c', '71494e8a-0e90-5531-8039-d2e4991db8a8', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9ccaa20-669f-5d4c-b590-c9b90cd9b99d', 'en', 'inclusion criterion', 'критерий включения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59bc39b0-a5c0-5376-84ca-484713479b88', 'en', 'publication bias', 'публикационная предвзятость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb97f055-c3fa-5867-aa85-8ed523d6d39a', 'en', 'heterogeneity', 'неоднородность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f445df0-5416-50d7-b969-ffc845dc4fc6', 'en', 'risk of bias', 'риск систематической ошибки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa96d10f-c311-5cce-89b7-f3e6d55d9814', 'en', 'evidence synthesis', 'синтез доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9ec8a6e-65ee-5f6e-9385-9719a1aeee7c', 'en', 'sensitivity analysis', 'анализ чувствительности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8da77b7-b937-5897-ac46-c592bfd4c263', 'en', 'weight of evidence', 'совокупная сила доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9ccaa20-669f-5d4c-b590-c9b90cd9b99d', 'en', 'inclusion criterion', 'критерий включения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59bc39b0-a5c0-5376-84ca-484713479b88', 'en', 'publication bias', 'публикационная предвзятость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb97f055-c3fa-5867-aa85-8ed523d6d39a', 'en', 'heterogeneity', 'неоднородность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f445df0-5416-50d7-b969-ffc845dc4fc6', 'en', 'risk of bias', 'риск систематической ошибки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa96d10f-c311-5cce-89b7-f3e6d55d9814', 'en', 'evidence synthesis', 'синтез доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9ec8a6e-65ee-5f6e-9385-9719a1aeee7c', 'en', 'sensitivity analysis', 'анализ чувствительности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8da77b7-b937-5897-ac46-c592bfd4c263', 'en', 'weight of evidence', 'совокупная сила доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9ccaa20-669f-5d4c-b590-c9b90cd9b99d', 'en', 'inclusion criterion', 'критерий включения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59bc39b0-a5c0-5376-84ca-484713479b88', 'en', 'publication bias', 'публикационная предвзятость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb97f055-c3fa-5867-aa85-8ed523d6d39a', 'en', 'heterogeneity', 'неоднородность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f445df0-5416-50d7-b969-ffc845dc4fc6', 'en', 'risk of bias', 'риск систематической ошибки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa96d10f-c311-5cce-89b7-f3e6d55d9814', 'en', 'evidence synthesis', 'синтез доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9ec8a6e-65ee-5f6e-9385-9719a1aeee7c', 'en', 'sensitivity analysis', 'анализ чувствительности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8da77b7-b937-5897-ac46-c592bfd4c263', 'en', 'weight of evidence', 'совокупная сила доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, 'e8cb6137-e198-5ccc-9382-1194fca920a3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'inclusion criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, 'e8cb6137-e198-5ccc-9382-1194fca920a3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'publication bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, 'e8cb6137-e198-5ccc-9382-1194fca920a3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'heterogeneity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, 'e8cb6137-e198-5ccc-9382-1194fca920a3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk of bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, 'e8cb6137-e198-5ccc-9382-1194fca920a3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence synthesis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, 'e8cb6137-e198-5ccc-9382-1194fca920a3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'sensitivity analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, 'e8cb6137-e198-5ccc-9382-1194fca920a3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'weight of evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'inclusion criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'publication bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'heterogeneity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk of bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence synthesis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'sensitivity analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '17e9fb1c-8bd1-5578-98ea-4d77bca2d188', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'weight of evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '71494e8a-0e90-5531-8039-d2e4991db8a8', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'inclusion criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '71494e8a-0e90-5531-8039-d2e4991db8a8', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'publication bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '71494e8a-0e90-5531-8039-d2e4991db8a8', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'heterogeneity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '71494e8a-0e90-5531-8039-d2e4991db8a8', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk of bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '71494e8a-0e90-5531-8039-d2e4991db8a8', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence synthesis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '71494e8a-0e90-5531-8039-d2e4991db8a8', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'sensitivity analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc5e6811-4298-5276-b9d1-58156b8e307c', id, '71494e8a-0e90-5531-8039-d2e4991db8a8', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'weight of evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
