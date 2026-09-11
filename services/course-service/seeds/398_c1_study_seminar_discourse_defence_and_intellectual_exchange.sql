-- Track: C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('02aad5f0-4ead-5d2e-9194-630772f548e6', 'C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE', 'Семинарский дискурс, защита позиции и интеллектуальный обмен', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Семинарский дискурс, защита позиции и интеллектуальный обмен», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Seminar Discourse, Defence and Intellectual Exchange","ru":"Семинарский дискурс, защита позиции и интеллектуальный обмен"}'::jsonb, '{"en":"Develop advanced C1 academic competence for seminar discourse, defence and intellectual exchange by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Семинарский дискурс, защита позиции и интеллектуальный обмен», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('24acd1e7-b981-561e-8d31-86dfc2a0063a', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Intervening Strategically","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('148b8e38-9b3c-53ac-939f-6a2a90d9627b', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D01","left":"discursive intervention","right":"дискурсивное вмешательство"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D02","left":"conceptual objection","right":"концептуальное возражение"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D03","left":"empirical challenge","right":"эмпирическое возражение"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D04","left":"qualified defence","right":"защита с оговоркой"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D05","left":"intellectual reciprocity","right":"интеллектуальная взаимность"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D06","left":"synthesise positions","right":"синтезировать позиции"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D07","left":"productive disagreement","right":"продуктивное несогласие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0f21fb1-e1af-59ba-b511-017a5d2dc9d2', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D08","is_correct":true,"text":"A discursive intervention should identify the unresolved issue and explain how addressing it would alter the discussion."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6fb59c9-a881-58cc-b05b-4f07ab5b7fae', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A discursive intervention should identify the unresolved issue and explain how addressing it would alter the discussion.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Дискурсивное вмешательство должно обозначить нерешённый вопрос и объяснить, как его рассмотрение изменит обсуждение.","target_language":"en","word_bank":["A","discursive","intervention","should","identify","the","unresolved","issue","and","explain","how","addressing","it","would","alter","the","discussion","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3987c1c1-e4fe-59cb-b23c-a990c5f9df31', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"discursive intervention","instruction":"Выберите подходящее слово.","options":["discursive intervention","qualified defence","synthesise positions"],"sentence_template":"A ___ should identify the unresolved issue and explain how addressing it would alter the discussion."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65da3a60-7a0e-5fc4-837c-d66b7710df4d', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","discursive","intervention","should","identify","the","unresolved","issue","and","explain","how","addressing","it","would","alter","the","discussion","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","discussion","the","alter","would","it","addressing","how","explain","and","issue","unresolved","the","identify","should","intervention","discursive","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bdc0d65-079e-58d3-b283-6b2fb8f0e71f', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A discursive intervention should identify the unresolved issue and explain how addressing it would alter the discussion. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1688078b-000c-57ce-87f9-4a9763a1fb17', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A discursive intervention should identify the unresolved issue and explain how addressing it would alter the discussion. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Дискурсивное вмешательство должно обозначить нерешённый вопрос и объяснить, как его рассмотрение изменит обсуждение. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffb26906-b845-5079-b6a0-c824f4f0afc5', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A discursive intervention should identify the unresolved issue and explain how addressing it would alter the discussion.","translation":"Дискурсивное вмешательство должно обозначить нерешённый вопрос и объяснить, как его рассмотрение изменит обсуждение.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Intervening Strategically"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68e49ac9-ec77-5ce3-abec-236a7bd480d8', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“discursive intervention” means a contribution that redirects or deepens discussion.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D11","is_correct":true,"text":"a contribution that redirects or deepens discussion"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D12","is_correct":false,"text":"a challenge to how an idea is defined or framed"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D13","is_correct":false,"text":"a challenge based on evidence or observation"}],"word":"discursive intervention"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('598749ee-c51b-5d07-9dfe-e0b649c4b652', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A discursive intervention should identify the unresolved issue and explain how addressing it would alter the discussion.","explanation":"The missing C1 academic expression is “discursive intervention”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"discursive intervention","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D14","is_correct":true},{"audio_text":"empirical challenge","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D15","is_correct":false},{"audio_text":"intellectual reciprocity","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D16","is_correct":false}],"sentence_template":"A ___ should identify the unresolved issue and explain how addressing it would alter the discussion."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07055fe7-7cb7-5311-a0eb-9f19e4321cc1', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"discursive intervention","explanation":"The complete academic argument uses “discursive intervention” with conceptual precision.","hint_prefix":"disc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should identify the unresolved issue and explain how addressing it would alter the discussion."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c696e41a-aaa1-5624-97f1-ab07a9160273', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discursive intervention","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D17","text":"discursive intervention"},{"audio_text":"conceptual objection","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D18","text":"conceptual objection"},{"audio_text":"empirical challenge","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D19","text":"empirical challenge"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6667da9d-91ad-5a48-a062-18259679f80e', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Intervening Strategically”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D20","is_correct":true,"text":"A discursive intervention should identify the unresolved issue and explain how addressing it would alter the discussion."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('02aad5f0-4ead-5d2e-9194-630772f548e6', '24acd1e7-b981-561e-8d31-86dfc2a0063a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('639af6c3-c5bc-586d-8630-209c5a4a85a4', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Defending a Contested Claim","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31dc2c37-2997-598b-8a3b-5c541a102c7e', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D01","left":"discursive intervention","right":"дискурсивное вмешательство"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D02","left":"conceptual objection","right":"концептуальное возражение"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D03","left":"empirical challenge","right":"эмпирическое возражение"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D04","left":"qualified defence","right":"защита с оговоркой"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D05","left":"intellectual reciprocity","right":"интеллектуальная взаимность"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D06","left":"synthesise positions","right":"синтезировать позиции"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D07","left":"productive disagreement","right":"продуктивное несогласие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9365678-e157-5e8e-b25c-99be0f148735', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D08","is_correct":true,"text":"A qualified defence may accept an empirical challenge while maintaining that the conceptual objection does not invalidate the narrower claim."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e07d68e-2780-5fd2-b596-8c033119eed3', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A qualified defence may accept an empirical challenge while maintaining that the conceptual objection does not invalidate the narrower claim.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Защита с оговоркой может принять эмпирическое возражение, сохраняя позицию, что концептуальное возражение не опровергает более узкий тезис.","target_language":"en","word_bank":["A","qualified","defence","may","accept","an","empirical","challenge","while","maintaining","that","the","conceptual","objection","does","not","invalidate","the","narrower","claim","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67414813-73dd-5f47-9968-e3dd6b4dcc29', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"conceptual objection","instruction":"Выберите подходящее слово.","options":["conceptual objection","intellectual reciprocity","productive disagreement"],"sentence_template":"A qualified defence may accept an empirical challenge while maintaining that the ___ does not invalidate the narrower claim."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f9aa2bc-6081-5a39-8daa-b14618a3f97e', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","qualified","defence","may","accept","an","empirical","challenge","while","maintaining","that","the","conceptual","objection","does","not","invalidate","the","narrower","claim","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","claim","narrower","the","invalidate","not","does","objection","conceptual","the","that","maintaining","while","challenge","empirical","an","accept","may","defence","qualified","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a59710e-e878-5103-b587-3bd4fa1d67f8', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A qualified defence may accept an empirical challenge while maintaining that the conceptual objection does not invalidate the narrower claim. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b7adaee-b9a7-58ca-8496-8d685bcdb14e', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A qualified defence may accept an empirical challenge while maintaining that the conceptual objection does not invalidate the narrower claim. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Защита с оговоркой может принять эмпирическое возражение, сохраняя позицию, что концептуальное возражение не опровергает более узкий тезис. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1daa626-6c13-5550-af36-89a8cc59c3d9', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A qualified defence may accept an empirical challenge while maintaining that the conceptual objection does not invalidate the narrower claim.","translation":"Защита с оговоркой может принять эмпирическое возражение, сохраняя позицию, что концептуальное возражение не опровергает более узкий тезис.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Defending a Contested Claim"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('015b48a4-9056-50d9-81cd-7ed323c3ad50', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“conceptual objection” means a challenge to how an idea is defined or framed.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D11","is_correct":true,"text":"a challenge to how an idea is defined or framed"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D12","is_correct":false,"text":"a challenge based on evidence or observation"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D13","is_correct":false,"text":"support for a claim whose scope is limited"}],"word":"conceptual objection"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('286a6a96-af8d-55f9-9724-51e30a2a1f57', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A qualified defence may accept an empirical challenge while maintaining that the conceptual objection does not invalidate the narrower claim.","explanation":"The missing C1 academic expression is “conceptual objection”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"conceptual objection","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D14","is_correct":true},{"audio_text":"qualified defence","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D15","is_correct":false},{"audio_text":"synthesise positions","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D16","is_correct":false}],"sentence_template":"A qualified defence may accept an empirical challenge while maintaining that the ___ does not invalidate the narrower claim."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b2ab5c2-5927-5978-ba1e-c4013d669f0b', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"conceptual objection","explanation":"The complete academic argument uses “conceptual objection” with conceptual precision.","hint_prefix":"conc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A qualified defence may accept an empirical challenge while maintaining that the ___ does not invalidate the narrower claim."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85b40274-ac71-5972-af83-816a08b1dc46', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discursive intervention","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D17","text":"discursive intervention"},{"audio_text":"conceptual objection","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D18","text":"conceptual objection"},{"audio_text":"empirical challenge","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D19","text":"empirical challenge"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16cba017-6262-59de-a4c2-9144d283ebc2', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Defending a Contested Claim”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D20","is_correct":true,"text":"A qualified defence may accept an empirical challenge while maintaining that the conceptual objection does not invalidate the narrower claim."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('02aad5f0-4ead-5d2e-9194-630772f548e6', '639af6c3-c5bc-586d-8630-209c5a4a85a4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Synthesising the Exchange","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78dfdb8a-f64d-5c29-a454-7077c431d467', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D01","left":"discursive intervention","right":"дискурсивное вмешательство"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D02","left":"conceptual objection","right":"концептуальное возражение"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D03","left":"empirical challenge","right":"эмпирическое возражение"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D04","left":"qualified defence","right":"защита с оговоркой"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D05","left":"intellectual reciprocity","right":"интеллектуальная взаимность"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D06","left":"synthesise positions","right":"синтезировать позиции"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D07","left":"productive disagreement","right":"продуктивное несогласие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61f08f97-1169-5499-941e-d4d06229a27d', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D08","is_correct":true,"text":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29620515-4fc0-5ba4-8f32-95c81d961c3c', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Интеллектуальная взаимность превращает продуктивное несогласие в синтез, показывая, как конкурирующие позиции освещают разные измерения проблемы.","target_language":"en","word_bank":["Intellectual","reciprocity","turns","productive","disagreement","into","synthesis","by","showing","how","competing","positions","illuminate","different","dimensions","of","the","problem","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd3d44e8-1df6-5a61-8dfd-d5c35ed6fb60', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"empirical challenge","instruction":"Выберите подходящее слово.","options":["empirical challenge","synthesise positions","discursive intervention"],"sentence_template":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('429ecfcb-168c-58e5-9d52-dd3fa6e61c36', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Intellectual","reciprocity","turns","productive","disagreement","into","synthesis","by","showing","how","competing","positions","illuminate","different","dimensions","of","the","problem","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","problem","the","of","dimensions","different","illuminate","positions","competing","how","showing","by","synthesis","into","disagreement","productive","turns","reciprocity","Intellectual"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8d2c637-cb7f-53dd-8a53-dbe59ce0d4ba', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('167fb149-84b3-59ec-a496-0852c69280d0', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Интеллектуальная взаимность превращает продуктивное несогласие в синтез, показывая, как конкурирующие позиции освещают разные измерения проблемы. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e85e3e7-ac5c-5802-9e33-d421d409b61e', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem.","translation":"Интеллектуальная взаимность превращает продуктивное несогласие в синтез, показывая, как конкурирующие позиции освещают разные измерения проблемы.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Synthesising the Exchange"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83995a16-a0bc-5718-b6f6-f906f28aad8e', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“empirical challenge” means a challenge based on evidence or observation.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D11","is_correct":true,"text":"a challenge based on evidence or observation"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D12","is_correct":false,"text":"support for a claim whose scope is limited"},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D13","is_correct":false,"text":"mutual engagement with others’ reasoning"}],"word":"empirical challenge"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20c7af6e-89a3-5355-83ff-5e4eea90e67e', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem.","explanation":"The missing C1 academic expression is “empirical challenge”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"empirical challenge","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D14","is_correct":true},{"audio_text":"intellectual reciprocity","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D15","is_correct":false},{"audio_text":"productive disagreement","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D16","is_correct":false}],"sentence_template":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c296e997-d2c9-545d-869f-86eeed902026', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"empirical challenge","explanation":"The complete academic argument uses “empirical challenge” with conceptual precision.","hint_prefix":"empi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a232fd1c-c734-54f9-9a0f-ef4c09c2ed1a', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discursive intervention","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D17","text":"discursive intervention"},{"audio_text":"conceptual objection","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D18","text":"conceptual objection"},{"audio_text":"empirical challenge","id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D19","text":"empirical challenge"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d151553b-8bb6-5b4e-99ac-7b98265cc67d', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Synthesising the Exchange”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D20","is_correct":true,"text":"Intellectual reciprocity turns productive disagreement into synthesis by showing how competing positions illuminate different dimensions of the problem."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_SEMINAR_DISCOURSE_DEFENCE_AND_INTELLECTUAL_EXCHANGE_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('02aad5f0-4ead-5d2e-9194-630772f548e6', '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148d5287-a98e-5859-8ae6-4950bfb2aa7a', 'en', 'discursive intervention', 'дискурсивное вмешательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b8ca1c08-36a9-54c1-8c3b-02ccd8424f1c', 'en', 'conceptual objection', 'концептуальное возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('883d4c7b-a974-5233-9cdf-0129746249f1', 'en', 'empirical challenge', 'эмпирическое возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1385750-54ff-5685-9338-1b5e20249de9', 'en', 'qualified defence', 'защита с оговоркой', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1100237-fc16-5390-a67e-e09930d36f5c', 'en', 'intellectual reciprocity', 'интеллектуальная взаимность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8783259b-22e0-5e14-90c9-2b6a2445e8f6', 'en', 'synthesise positions', 'синтезировать позиции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71230734-078e-529a-a058-29dd488e7a1d', 'en', 'productive disagreement', 'продуктивное несогласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148d5287-a98e-5859-8ae6-4950bfb2aa7a', 'en', 'discursive intervention', 'дискурсивное вмешательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b8ca1c08-36a9-54c1-8c3b-02ccd8424f1c', 'en', 'conceptual objection', 'концептуальное возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('883d4c7b-a974-5233-9cdf-0129746249f1', 'en', 'empirical challenge', 'эмпирическое возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1385750-54ff-5685-9338-1b5e20249de9', 'en', 'qualified defence', 'защита с оговоркой', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1100237-fc16-5390-a67e-e09930d36f5c', 'en', 'intellectual reciprocity', 'интеллектуальная взаимность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8783259b-22e0-5e14-90c9-2b6a2445e8f6', 'en', 'synthesise positions', 'синтезировать позиции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71230734-078e-529a-a058-29dd488e7a1d', 'en', 'productive disagreement', 'продуктивное несогласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148d5287-a98e-5859-8ae6-4950bfb2aa7a', 'en', 'discursive intervention', 'дискурсивное вмешательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b8ca1c08-36a9-54c1-8c3b-02ccd8424f1c', 'en', 'conceptual objection', 'концептуальное возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('883d4c7b-a974-5233-9cdf-0129746249f1', 'en', 'empirical challenge', 'эмпирическое возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1385750-54ff-5685-9338-1b5e20249de9', 'en', 'qualified defence', 'защита с оговоркой', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1100237-fc16-5390-a67e-e09930d36f5c', 'en', 'intellectual reciprocity', 'интеллектуальная взаимность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8783259b-22e0-5e14-90c9-2b6a2445e8f6', 'en', 'synthesise positions', 'синтезировать позиции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71230734-078e-529a-a058-29dd488e7a1d', 'en', 'productive disagreement', 'продуктивное несогласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '24acd1e7-b981-561e-8d31-86dfc2a0063a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'discursive intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '24acd1e7-b981-561e-8d31-86dfc2a0063a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '24acd1e7-b981-561e-8d31-86dfc2a0063a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'empirical challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '24acd1e7-b981-561e-8d31-86dfc2a0063a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified defence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '24acd1e7-b981-561e-8d31-86dfc2a0063a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual reciprocity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '24acd1e7-b981-561e-8d31-86dfc2a0063a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise positions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '24acd1e7-b981-561e-8d31-86dfc2a0063a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'productive disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '639af6c3-c5bc-586d-8630-209c5a4a85a4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'discursive intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '639af6c3-c5bc-586d-8630-209c5a4a85a4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '639af6c3-c5bc-586d-8630-209c5a4a85a4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'empirical challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '639af6c3-c5bc-586d-8630-209c5a4a85a4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified defence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '639af6c3-c5bc-586d-8630-209c5a4a85a4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual reciprocity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '639af6c3-c5bc-586d-8630-209c5a4a85a4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise positions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '639af6c3-c5bc-586d-8630-209c5a4a85a4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'productive disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'discursive intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'empirical challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified defence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'intellectual reciprocity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise positions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aad5f0-4ead-5d2e-9194-630772f548e6', id, '7cd6e0b4-a6dd-5cb8-8185-efa335ca5f8c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'productive disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
