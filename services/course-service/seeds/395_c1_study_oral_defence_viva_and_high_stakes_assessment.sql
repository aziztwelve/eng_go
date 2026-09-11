-- Track: C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f9b7520f-ebef-5090-a50a-0f178c63fa47', 'C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT', 'Устная защита, viva и итоговая аттестация', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Устная защита, viva и итоговая аттестация», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Oral Defence, Viva and High-Stakes Assessment","ru":"Устная защита, viva и итоговая аттестация"}'::jsonb, '{"en":"Develop advanced C1 academic competence for oral defence, viva and high-stakes assessment by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Устная защита, viva и итоговая аттестация», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('26e3a5eb-e6db-5689-91a2-768bc68c0a8a', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Anticipating Expert Questions","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87bafdb5-3362-5a0d-8520-2dccc640154a', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D01","left":"defend a premise","right":"защитить предпосылку"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D02","left":"methodological rationale","right":"методологическое обоснование"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D03","left":"scope limitation","right":"ограничение области"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D04","left":"hostile question","right":"враждебный вопрос"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D05","left":"intellectual composure","right":"интеллектуальное самообладание"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D06","left":"concede appropriately","right":"уместно признать"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D07","left":"reformulate a claim","right":"переформулировать утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0aac64cc-c0dd-50b5-8330-49ce9159e6ab', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D08","is_correct":true,"text":"To defend a premise effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d0858aa-a6a3-5b97-a96e-e47191a45736', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To defend a premise effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы эффективно защитить предпосылку, отделите методологическое обоснование от предположений, являющихся лишь общепринятыми в данной области.","target_language":"en","word_bank":["To","defend","a","premise","effectively",",","distinguish","the","methodological","rationale","from","assumptions","that","are","merely","conventional","within","the","field","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2a0a416-de30-507d-9d77-8c1ee54a3fda', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"defend a premise","instruction":"Выберите подходящее слово.","options":["defend a premise","hostile question","concede appropriately"],"sentence_template":"To ___ effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f19f0bfb-9acc-5161-915a-e93728ebff0c', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","defend","a","premise","effectively",",","distinguish","the","methodological","rationale","from","assumptions","that","are","merely","conventional","within","the","field","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","field","the","within","conventional","merely","are","that","assumptions","from","rationale","methodological","the","distinguish",",","effectively","premise","a","defend","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fabe1917-4e35-5276-9795-041887d8844b', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To defend a premise effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('523e077e-ad1f-53fe-8cbe-2a37abbdba1e', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To defend a premise effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Чтобы эффективно защитить предпосылку, отделите методологическое обоснование от предположений, являющихся лишь общепринятыми в данной области. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a988d09-fc1b-5a2d-b15c-4a8201cd3dfe', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"To defend a premise effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field.","translation":"Чтобы эффективно защитить предпосылку, отделите методологическое обоснование от предположений, являющихся лишь общепринятыми в данной области.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Anticipating Expert Questions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b70f2d6-dd63-54ae-9b3a-e66185ab494a', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“defend a premise” means justify a foundational element of an argument.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D11","is_correct":true,"text":"justify a foundational element of an argument"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D12","is_correct":false,"text":"reasoned justification for research methods"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D13","is_correct":false,"text":"a boundary restricting where conclusions apply"}],"word":"defend a premise"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6655fbb8-e986-5a85-bfec-f9b22f1d4584', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To defend a premise effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field.","explanation":"The missing C1 academic expression is “defend a premise”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"defend a premise","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D14","is_correct":true},{"audio_text":"scope limitation","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D15","is_correct":false},{"audio_text":"intellectual composure","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D16","is_correct":false}],"sentence_template":"To ___ effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b095e63-a774-5bbb-8956-66cc2b2adb7d', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"defend a premise","explanation":"The complete academic argument uses “defend a premise” with conceptual precision.","hint_prefix":"defe","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To ___ effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f2f4be4-c8fd-5823-9ba8-c51b761dc327', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"defend a premise","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D17","text":"defend a premise"},{"audio_text":"methodological rationale","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D18","text":"methodological rationale"},{"audio_text":"scope limitation","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D19","text":"scope limitation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38e38514-23fe-5dc0-89ba-df279e66f780', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Anticipating Expert Questions”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D20","is_correct":true,"text":"To defend a premise effectively, distinguish the methodological rationale from assumptions that are merely conventional within the field."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f9b7520f-ebef-5090-a50a-0f178c63fa47', '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('74a556b9-9928-5a2d-8c4c-0389be210fb5', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Defending Methodological Choices","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce4f7ee1-3105-577a-ac91-f528c4bd8d09', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D01","left":"defend a premise","right":"защитить предпосылку"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D02","left":"methodological rationale","right":"методологическое обоснование"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D03","left":"scope limitation","right":"ограничение области"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D04","left":"hostile question","right":"враждебный вопрос"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D05","left":"intellectual composure","right":"интеллектуальное самообладание"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D06","left":"concede appropriately","right":"уместно признать"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D07","left":"reformulate a claim","right":"переформулировать утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92a61b55-964b-5167-81f1-ebe7fdf86198', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D08","is_correct":true,"text":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9984a03-d007-5e48-8e10-1ded497890f0', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Кандидату следует признать уместное ограничение области, объяснив, почему оно не подрывает основной вклад исследования.","target_language":"en","word_bank":["A","candidate","should","concede","an","appropriate","scope","limitation","while","explaining","why","it","does","not","undermine","the","study’s","central","contribution","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77f3ad87-e4d2-50ff-94e2-c7fbb8a5ce1a', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"methodological rationale","instruction":"Выберите подходящее слово.","options":["methodological rationale","intellectual composure","reformulate a claim"],"sentence_template":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b12e33cd-b20f-5956-b2de-0375316d3a1d', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","candidate","should","concede","an","appropriate","scope","limitation","while","explaining","why","it","does","not","undermine","the","study’s","central","contribution","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","contribution","central","study’s","the","undermine","not","does","it","why","explaining","while","limitation","scope","appropriate","an","concede","should","candidate","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('557ae6d0-a409-5052-9078-522c505a3497', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0c08f09-9e17-588a-b14f-41eec13a61d1', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Кандидату следует признать уместное ограничение области, объяснив, почему оно не подрывает основной вклад исследования. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40a186d1-5094-5aa7-84fd-3529cafb1f43', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution.","translation":"Кандидату следует признать уместное ограничение области, объяснив, почему оно не подрывает основной вклад исследования.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Defending Methodological Choices"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97dae953-d1d7-540b-8dfd-65c30733131a', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“methodological rationale” means reasoned justification for research methods.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D11","is_correct":true,"text":"reasoned justification for research methods"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D12","is_correct":false,"text":"a boundary restricting where conclusions apply"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D13","is_correct":false,"text":"a challenge framed aggressively or unfairly"}],"word":"methodological rationale"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3466ecc7-1089-5659-a004-4f5affc96fb5', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution.","explanation":"The missing C1 academic expression is “methodological rationale”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"methodological rationale","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D14","is_correct":true},{"audio_text":"hostile question","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D15","is_correct":false},{"audio_text":"concede appropriately","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D16","is_correct":false}],"sentence_template":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcea3413-9cc0-55b8-8d18-e14e470bb92f', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"methodological rationale","explanation":"The complete academic argument uses “methodological rationale” with conceptual precision.","hint_prefix":"meth","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c0e4765-2846-5102-b898-c1006164bbc7', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"defend a premise","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D17","text":"defend a premise"},{"audio_text":"methodological rationale","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D18","text":"methodological rationale"},{"audio_text":"scope limitation","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D19","text":"scope limitation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fecce5d-4244-57df-a26a-8f0910f43f88', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Defending Methodological Choices”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D20","is_correct":true,"text":"A candidate should concede an appropriate scope limitation while explaining why it does not undermine the study’s central contribution."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f9b7520f-ebef-5090-a50a-0f178c63fa47', '74a556b9-9928-5a2d-8c4c-0389be210fb5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3abbf8cb-2068-52ed-990d-a9d6b3539cf3', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Responding Under Pressure","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1769167-38f5-58df-82c2-b28ddae377ad', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D01","left":"defend a premise","right":"защитить предпосылку"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D02","left":"methodological rationale","right":"методологическое обоснование"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D03","left":"scope limitation","right":"ограничение области"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D04","left":"hostile question","right":"враждебный вопрос"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D05","left":"intellectual composure","right":"интеллектуальное самообладание"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D06","left":"concede appropriately","right":"уместно признать"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D07","left":"reformulate a claim","right":"переформулировать утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57b57886-66a1-599c-b5e0-3b22cbe6534d', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D08","is_correct":true,"text":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b90d7bf4-03ac-582c-b4aa-72f3283cb836', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Интеллектуальное самообладание при враждебном вопросе предполагает справедливую переформулировку тезиса до ответа на сильнейшее обоснованное возражение.","target_language":"en","word_bank":["Intellectual","composure","under","a","hostile","question","involves","reformulating","the","claim","fairly","before","responding","to","the","strongest","defensible","challenge","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8dbbfef-6e27-55af-9330-ffff3421feee', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"scope limitation","instruction":"Выберите подходящее слово.","options":["scope limitation","concede appropriately","defend a premise"],"sentence_template":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67335ba5-7435-5a96-accb-3b0b4a43c32c', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Intellectual","composure","under","a","hostile","question","involves","reformulating","the","claim","fairly","before","responding","to","the","strongest","defensible","challenge","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","challenge","defensible","strongest","the","to","responding","before","fairly","claim","the","reformulating","involves","question","hostile","a","under","composure","Intellectual"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cef6be3-f702-5771-9a5e-8c29e8adce0a', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ebb036f-4798-53a1-8b2f-48d4c2e1f301', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Интеллектуальное самообладание при враждебном вопросе предполагает справедливую переформулировку тезиса до ответа на сильнейшее обоснованное возражение. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04a78ff8-e438-5955-abce-94612b44e133', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge.","translation":"Интеллектуальное самообладание при враждебном вопросе предполагает справедливую переформулировку тезиса до ответа на сильнейшее обоснованное возражение.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Responding Under Pressure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9392cc9-cead-5adb-ad37-da8692d230c6', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“scope limitation” means a boundary restricting where conclusions apply.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D11","is_correct":true,"text":"a boundary restricting where conclusions apply"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D12","is_correct":false,"text":"a challenge framed aggressively or unfairly"},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D13","is_correct":false,"text":"calm and reasoned performance under challenge"}],"word":"scope limitation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13a87e45-f9b5-5803-9faa-150e9d729469', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge.","explanation":"The missing C1 academic expression is “scope limitation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"scope limitation","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D14","is_correct":true},{"audio_text":"intellectual composure","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D15","is_correct":false},{"audio_text":"reformulate a claim","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D16","is_correct":false}],"sentence_template":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9876f96d-e373-586f-b0db-3b4b6678df86', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"scope limitation","explanation":"The complete academic argument uses “scope limitation” with conceptual precision.","hint_prefix":"scop","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b4d13ca-9dcb-522a-9aba-cc412f3ca5f2', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"defend a premise","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D17","text":"defend a premise"},{"audio_text":"methodological rationale","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D18","text":"methodological rationale"},{"audio_text":"scope limitation","id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D19","text":"scope limitation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98576bc1-f3b7-59c6-9a7a-eb1389709f7f', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Responding Under Pressure”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D20","is_correct":true,"text":"Intellectual composure under a hostile question involves reformulating the claim fairly before responding to the strongest defensible challenge."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ORAL_DEFENCE_VIVA_AND_HIGH_STAKES_ASSESSMENT_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f9b7520f-ebef-5090-a50a-0f178c63fa47', '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09912096-679c-558c-bbe2-38aed3290ef3', 'en', 'defend a premise', 'защитить предпосылку', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3106f1c-3887-51bd-881f-7774af5871e2', 'en', 'methodological rationale', 'методологическое обоснование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('170a5ee3-6975-55a6-acfb-3b969f4c8a26', 'en', 'scope limitation', 'ограничение области', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aea77237-5cfa-5fdf-96ac-e2e6c7f9dd1d', 'en', 'hostile question', 'враждебный вопрос', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba32d46e-ebe2-55fc-bc7e-b025be25c159', 'en', 'intellectual composure', 'интеллектуальное самообладание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88651fcd-8ebf-5368-852b-5376793206f3', 'en', 'concede appropriately', 'уместно признать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6df05460-d459-56e1-bea1-57b311766fce', 'en', 'reformulate a claim', 'переформулировать утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09912096-679c-558c-bbe2-38aed3290ef3', 'en', 'defend a premise', 'защитить предпосылку', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3106f1c-3887-51bd-881f-7774af5871e2', 'en', 'methodological rationale', 'методологическое обоснование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('170a5ee3-6975-55a6-acfb-3b969f4c8a26', 'en', 'scope limitation', 'ограничение области', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aea77237-5cfa-5fdf-96ac-e2e6c7f9dd1d', 'en', 'hostile question', 'враждебный вопрос', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba32d46e-ebe2-55fc-bc7e-b025be25c159', 'en', 'intellectual composure', 'интеллектуальное самообладание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88651fcd-8ebf-5368-852b-5376793206f3', 'en', 'concede appropriately', 'уместно признать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6df05460-d459-56e1-bea1-57b311766fce', 'en', 'reformulate a claim', 'переформулировать утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09912096-679c-558c-bbe2-38aed3290ef3', 'en', 'defend a premise', 'защитить предпосылку', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3106f1c-3887-51bd-881f-7774af5871e2', 'en', 'methodological rationale', 'методологическое обоснование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('170a5ee3-6975-55a6-acfb-3b969f4c8a26', 'en', 'scope limitation', 'ограничение области', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aea77237-5cfa-5fdf-96ac-e2e6c7f9dd1d', 'en', 'hostile question', 'враждебный вопрос', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba32d46e-ebe2-55fc-bc7e-b025be25c159', 'en', 'intellectual composure', 'интеллектуальное самообладание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88651fcd-8ebf-5368-852b-5376793206f3', 'en', 'concede appropriately', 'уместно признать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6df05460-d459-56e1-bea1-57b311766fce', 'en', 'reformulate a claim', 'переформулировать утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'defend a premise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'hostile question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual composure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede appropriately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '26e3a5eb-e6db-5689-91a2-768bc68c0a8a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'reformulate a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '74a556b9-9928-5a2d-8c4c-0389be210fb5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'defend a premise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '74a556b9-9928-5a2d-8c4c-0389be210fb5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '74a556b9-9928-5a2d-8c4c-0389be210fb5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '74a556b9-9928-5a2d-8c4c-0389be210fb5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'hostile question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '74a556b9-9928-5a2d-8c4c-0389be210fb5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual composure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '74a556b9-9928-5a2d-8c4c-0389be210fb5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede appropriately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '74a556b9-9928-5a2d-8c4c-0389be210fb5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reformulate a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'defend a premise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'hostile question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual composure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede appropriately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f9b7520f-ebef-5090-a50a-0f178c63fa47', id, '3abbf8cb-2068-52ed-990d-a9d6b3539cf3', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reformulate a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
