-- Track: C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('fc525dc9-a8b9-5801-9ffd-d590dc817131', 'C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE', 'Методология, интерпретация данных и причинный вывод', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Методология, интерпретация данных и причинный вывод», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Methodology, Data Interpretation and Causal Inference","ru":"Методология, интерпретация данных и причинный вывод"}'::jsonb, '{"en":"Develop advanced C1 academic competence for methodology, data interpretation and causal inference by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Методология, интерпретация данных и причинный вывод», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('220affa3-66e2-5e2f-a597-17500e6368da', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Evaluating Methodological Fit","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('138535eb-4bd3-5a10-97d1-2970c85b28ba', '220affa3-66e2-5e2f-a597-17500e6368da', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D01","left":"construct validity","right":"конструктная валидность"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D02","left":"confounding variable","right":"смешивающая переменная"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D03","left":"causal mechanism","right":"причинный механизм"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D04","left":"statistical uncertainty","right":"статистическая неопределённость"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D05","left":"external validity","right":"внешняя валидность"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D06","left":"selection effect","right":"эффект отбора"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D07","left":"inferential restraint","right":"сдержанность выводов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5165762-65fa-5aa5-bbe8-ebcb4cc70a87', '220affa3-66e2-5e2f-a597-17500e6368da', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D08","is_correct":true,"text":"Construct validity is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af7195fc-dadf-5919-a70c-a534c708e633', '220affa3-66e2-5e2f-a597-17500e6368da', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Construct validity is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Конструктная валидность сомнительна, когда выбранный показатель отражает институциональную заметность, а не сам базовый концепт.","target_language":"en","word_bank":["Construct","validity","is","questionable","when","the","chosen","indicator","captures","institutional","visibility","rather","than","the","underlying","concept","itself","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81bd7516-b52a-5128-96c0-7b6a23660e4c', '220affa3-66e2-5e2f-a597-17500e6368da', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"construct validity","instruction":"Выберите подходящее слово.","options":["construct validity","statistical uncertainty","selection effect"],"sentence_template":"___ is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfdacd82-e4c5-5a56-a2e7-3e08c84865fd', '220affa3-66e2-5e2f-a597-17500e6368da', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Construct","validity","is","questionable","when","the","chosen","indicator","captures","institutional","visibility","rather","than","the","underlying","concept","itself","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","itself","concept","underlying","the","than","rather","visibility","institutional","captures","indicator","chosen","the","when","questionable","is","validity","Construct"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f5b767c-b9f8-5879-87d1-625a48950ecd', '220affa3-66e2-5e2f-a597-17500e6368da', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Construct validity is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b327ca9-852a-55ec-872f-fea586c35dbf', '220affa3-66e2-5e2f-a597-17500e6368da', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Construct validity is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Конструктная валидность сомнительна, когда выбранный показатель отражает институциональную заметность, а не сам базовый концепт. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('384e98a9-e511-5969-96d1-98db36a040c0', '220affa3-66e2-5e2f-a597-17500e6368da', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Construct validity is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself.","translation":"Конструктная валидность сомнительна, когда выбранный показатель отражает институциональную заметность, а не сам базовый концепт.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Evaluating Methodological Fit"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aab93e0b-6f32-585d-8c6c-dd7a4835b2c4', '220affa3-66e2-5e2f-a597-17500e6368da', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“construct validity” means how well a measure represents the intended concept.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D11","is_correct":true,"text":"how well a measure represents the intended concept"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D12","is_correct":false,"text":"a factor associated with both cause and outcome"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D13","is_correct":false,"text":"the process through which one factor produces another"}],"word":"construct validity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c5f66bf-18bf-5533-9fe0-6979c29908cd', '220affa3-66e2-5e2f-a597-17500e6368da', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Construct validity is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself.","explanation":"The missing C1 academic expression is “construct validity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"construct validity","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D14","is_correct":true},{"audio_text":"causal mechanism","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D15","is_correct":false},{"audio_text":"external validity","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D16","is_correct":false}],"sentence_template":"___ is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7947d686-4c2f-50e5-804f-d5cb1dfb32be', '220affa3-66e2-5e2f-a597-17500e6368da', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"construct validity","explanation":"The complete academic argument uses “construct validity” with conceptual precision.","hint_prefix":"cons","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5650216-1072-5566-8a83-c25f4df844b7', '220affa3-66e2-5e2f-a597-17500e6368da', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"construct validity","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D17","text":"construct validity"},{"audio_text":"confounding variable","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D18","text":"confounding variable"},{"audio_text":"causal mechanism","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D19","text":"causal mechanism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('032358c2-502b-5737-ae7e-c444071af18a', '220affa3-66e2-5e2f-a597-17500e6368da', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Evaluating Methodological Fit”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D20","is_correct":true,"text":"Construct validity is questionable when the chosen indicator captures institutional visibility rather than the underlying concept itself."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fc525dc9-a8b9-5801-9ffd-d590dc817131', '220affa3-66e2-5e2f-a597-17500e6368da', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5f84d1e1-12c0-56d5-a4fa-b2012db89254', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Interpreting Uncertainty","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cedab5f3-fe50-5483-8c76-5285e48a6a73', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D01","left":"construct validity","right":"конструктная валидность"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D02","left":"confounding variable","right":"смешивающая переменная"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D03","left":"causal mechanism","right":"причинный механизм"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D04","left":"statistical uncertainty","right":"статистическая неопределённость"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D05","left":"external validity","right":"внешняя валидность"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D06","left":"selection effect","right":"эффект отбора"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D07","left":"inferential restraint","right":"сдержанность выводов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('299e6008-1fe2-58ff-800f-6581b4a905c2', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D08","is_correct":true,"text":"A confounding variable may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41e1d9a9-9c40-5fd2-866c-7f367afd56eb', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A confounding variable may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Смешивающая переменная может объяснять связь, а статистическая неопределённость затрудняет точную интерпретацию величины эффекта.","target_language":"en","word_bank":["A","confounding","variable","may","account","for","the","association",",","while","statistical","uncertainty","makes","the","estimated","magnitude","difficult","to","interpret","precisely","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a07eb679-2f3d-57c0-a695-686fe2949f09', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"confounding variable","instruction":"Выберите подходящее слово.","options":["confounding variable","external validity","inferential restraint"],"sentence_template":"A ___ may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89f45fbd-06f3-5a34-bd2c-00377ac91a84', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","confounding","variable","may","account","for","the","association",",","while","statistical","uncertainty","makes","the","estimated","magnitude","difficult","to","interpret","precisely","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","precisely","interpret","to","difficult","magnitude","estimated","the","makes","uncertainty","statistical","while",",","association","the","for","account","may","variable","confounding","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40b81b40-aa8c-57c8-983f-28b5ea4562f7', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A confounding variable may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('191f344c-1a77-5bb9-98f9-df45488ae015', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A confounding variable may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Смешивающая переменная может объяснять связь, а статистическая неопределённость затрудняет точную интерпретацию величины эффекта. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff4dd939-c0fe-5d6a-bdba-8a38fb40bda5', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A confounding variable may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely.","translation":"Смешивающая переменная может объяснять связь, а статистическая неопределённость затрудняет точную интерпретацию величины эффекта.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Interpreting Uncertainty"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('624fd52d-b3f3-50b1-9260-12ee5ff86ebf', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“confounding variable” means a factor associated with both cause and outcome.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D11","is_correct":true,"text":"a factor associated with both cause and outcome"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D12","is_correct":false,"text":"the process through which one factor produces another"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D13","is_correct":false,"text":"imprecision surrounding an estimate"}],"word":"confounding variable"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b16f31fc-39c2-5a9c-abf5-3e241cf00f5d', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A confounding variable may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely.","explanation":"The missing C1 academic expression is “confounding variable”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"confounding variable","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D14","is_correct":true},{"audio_text":"statistical uncertainty","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D15","is_correct":false},{"audio_text":"selection effect","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D16","is_correct":false}],"sentence_template":"A ___ may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8f30555-3d2c-5b2c-a241-dc68937f61ff', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"confounding variable","explanation":"The complete academic argument uses “confounding variable” with conceptual precision.","hint_prefix":"conf","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('579c7318-6f3b-5aba-bebd-8342c88997ad', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"construct validity","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D17","text":"construct validity"},{"audio_text":"confounding variable","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D18","text":"confounding variable"},{"audio_text":"causal mechanism","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D19","text":"causal mechanism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('025a76ab-73da-5934-b2a3-08a77efc7bcc', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Interpreting Uncertainty”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D20","is_correct":true,"text":"A confounding variable may account for the association, while statistical uncertainty makes the estimated magnitude difficult to interpret precisely."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fc525dc9-a8b9-5801-9ffd-d590dc817131', '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8c69be1c-458d-5caa-b796-21c764142eaf', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Assessing Causal Claims","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a32ac9af-3927-5ea2-a925-8c498e5c2bf7', '8c69be1c-458d-5caa-b796-21c764142eaf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D01","left":"construct validity","right":"конструктная валидность"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D02","left":"confounding variable","right":"смешивающая переменная"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D03","left":"causal mechanism","right":"причинный механизм"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D04","left":"statistical uncertainty","right":"статистическая неопределённость"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D05","left":"external validity","right":"внешняя валидность"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D06","left":"selection effect","right":"эффект отбора"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D07","left":"inferential restraint","right":"сдержанность выводов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61bcdf2f-f035-5921-aa66-7b474ec888a2', '8c69be1c-458d-5caa-b796-21c764142eaf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D08","is_correct":true,"text":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec34c20c-5fbf-526c-a0a1-a7d268d9cf34', '8c69be1c-458d-5caa-b796-21c764142eaf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Причинный вывод требует правдоподобного механизма, учёта эффектов отбора и сдержанности выводов относительно внешней валидности.","target_language":"en","word_bank":["Causal","inference","requires","a","plausible","mechanism",",","attention","to","selection","effects",",","and","inferential","restraint","concerning","external","validity","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5286daf-43b6-51d4-8fab-33f108c2e0d1', '8c69be1c-458d-5caa-b796-21c764142eaf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"causal mechanism","instruction":"Выберите подходящее слово.","options":["causal mechanism","selection effect","construct validity"],"sentence_template":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fd7ef9f-9ce3-5bfb-8277-8826f1de7833', '8c69be1c-458d-5caa-b796-21c764142eaf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Causal","inference","requires","a","plausible","mechanism",",","attention","to","selection","effects",",","and","inferential","restraint","concerning","external","validity","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","validity","external","concerning","restraint","inferential","and",",","effects","selection","to","attention",",","mechanism","plausible","a","requires","inference","Causal"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0d68dfb-e3f0-581b-893e-ba8107bb4386', '8c69be1c-458d-5caa-b796-21c764142eaf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbafef9a-d102-5472-a472-709a3e4f9b12', '8c69be1c-458d-5caa-b796-21c764142eaf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Причинный вывод требует правдоподобного механизма, учёта эффектов отбора и сдержанности выводов относительно внешней валидности. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('542635d3-1173-5027-b9bd-a542ef8f1b96', '8c69be1c-458d-5caa-b796-21c764142eaf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity.","translation":"Причинный вывод требует правдоподобного механизма, учёта эффектов отбора и сдержанности выводов относительно внешней валидности.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Assessing Causal Claims"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03955c64-60b7-51ae-bb18-179a8cf9a51e', '8c69be1c-458d-5caa-b796-21c764142eaf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“causal mechanism” means the process through which one factor produces another.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D11","is_correct":true,"text":"the process through which one factor produces another"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D12","is_correct":false,"text":"imprecision surrounding an estimate"},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D13","is_correct":false,"text":"the extent findings apply beyond the study"}],"word":"causal mechanism"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('249d196a-ec92-5883-9413-be442e5acc11', '8c69be1c-458d-5caa-b796-21c764142eaf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity.","explanation":"The missing C1 academic expression is “causal mechanism”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"causal mechanism","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D14","is_correct":true},{"audio_text":"external validity","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D15","is_correct":false},{"audio_text":"inferential restraint","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D16","is_correct":false}],"sentence_template":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc482967-cde4-56c5-9ace-408ba26c68e8', '8c69be1c-458d-5caa-b796-21c764142eaf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"causal mechanism","explanation":"The complete academic argument uses “causal mechanism” with conceptual precision.","hint_prefix":"caus","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc3a2833-df49-5e2c-a188-e986681b4f75', '8c69be1c-458d-5caa-b796-21c764142eaf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"construct validity","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D17","text":"construct validity"},{"audio_text":"confounding variable","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D18","text":"confounding variable"},{"audio_text":"causal mechanism","id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D19","text":"causal mechanism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85437cf3-7740-517a-a621-01e12b54a273', '8c69be1c-458d-5caa-b796-21c764142eaf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Assessing Causal Claims”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D20","is_correct":true,"text":"Causal inference requires a plausible mechanism, attention to selection effects, and inferential restraint concerning external validity."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_METHODOLOGY_DATA_INTERPRETATION_AND_CAUSAL_INFERENCE_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fc525dc9-a8b9-5801-9ffd-d590dc817131', '8c69be1c-458d-5caa-b796-21c764142eaf', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('259e1387-5d99-585a-bbc0-18456bf5b1be', 'en', 'construct validity', 'конструктная валидность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5cb7a1ee-09df-502a-8027-38e3b5ef2fa4', 'en', 'confounding variable', 'смешивающая переменная', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b60c62a6-7bfd-5bb9-bb19-cb0015166b1b', 'en', 'causal mechanism', 'причинный механизм', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42c8b323-e0e5-55fa-91fb-00ecfd9e174b', 'en', 'statistical uncertainty', 'статистическая неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c85b238c-0250-5c01-8405-0a61bf1efea3', 'en', 'external validity', 'внешняя валидность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67f0a0e7-536f-5e07-953f-541a7ae603ff', 'en', 'selection effect', 'эффект отбора', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a72ecf28-306b-50ee-a50c-c3b81243d9f4', 'en', 'inferential restraint', 'сдержанность выводов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('259e1387-5d99-585a-bbc0-18456bf5b1be', 'en', 'construct validity', 'конструктная валидность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5cb7a1ee-09df-502a-8027-38e3b5ef2fa4', 'en', 'confounding variable', 'смешивающая переменная', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b60c62a6-7bfd-5bb9-bb19-cb0015166b1b', 'en', 'causal mechanism', 'причинный механизм', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42c8b323-e0e5-55fa-91fb-00ecfd9e174b', 'en', 'statistical uncertainty', 'статистическая неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c85b238c-0250-5c01-8405-0a61bf1efea3', 'en', 'external validity', 'внешняя валидность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67f0a0e7-536f-5e07-953f-541a7ae603ff', 'en', 'selection effect', 'эффект отбора', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a72ecf28-306b-50ee-a50c-c3b81243d9f4', 'en', 'inferential restraint', 'сдержанность выводов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('259e1387-5d99-585a-bbc0-18456bf5b1be', 'en', 'construct validity', 'конструктная валидность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5cb7a1ee-09df-502a-8027-38e3b5ef2fa4', 'en', 'confounding variable', 'смешивающая переменная', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b60c62a6-7bfd-5bb9-bb19-cb0015166b1b', 'en', 'causal mechanism', 'причинный механизм', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42c8b323-e0e5-55fa-91fb-00ecfd9e174b', 'en', 'statistical uncertainty', 'статистическая неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c85b238c-0250-5c01-8405-0a61bf1efea3', 'en', 'external validity', 'внешняя валидность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67f0a0e7-536f-5e07-953f-541a7ae603ff', 'en', 'selection effect', 'эффект отбора', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a72ecf28-306b-50ee-a50c-c3b81243d9f4', 'en', 'inferential restraint', 'сдержанность выводов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '220affa3-66e2-5e2f-a597-17500e6368da', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'construct validity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '220affa3-66e2-5e2f-a597-17500e6368da', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'confounding variable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '220affa3-66e2-5e2f-a597-17500e6368da', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'causal mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '220affa3-66e2-5e2f-a597-17500e6368da', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'statistical uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '220affa3-66e2-5e2f-a597-17500e6368da', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'external validity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '220affa3-66e2-5e2f-a597-17500e6368da', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'selection effect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '220affa3-66e2-5e2f-a597-17500e6368da', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'inferential restraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'construct validity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'confounding variable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'causal mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'statistical uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'external validity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'selection effect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '5f84d1e1-12c0-56d5-a4fa-b2012db89254', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'inferential restraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '8c69be1c-458d-5caa-b796-21c764142eaf', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'construct validity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '8c69be1c-458d-5caa-b796-21c764142eaf', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'confounding variable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '8c69be1c-458d-5caa-b796-21c764142eaf', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'causal mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '8c69be1c-458d-5caa-b796-21c764142eaf', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'statistical uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '8c69be1c-458d-5caa-b796-21c764142eaf', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'external validity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '8c69be1c-458d-5caa-b796-21c764142eaf', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'selection effect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc525dc9-a8b9-5801-9ffd-d590dc817131', id, '8c69be1c-458d-5caa-b796-21c764142eaf', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'inferential restraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
