-- Track: C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('61a4724e-4344-53e4-a21e-96a07829108b', 'C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS', 'Продвинутые лекции, концептуальные карты и синтез', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Продвинутые лекции, концептуальные карты и синтез», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Advanced Lectures, Conceptual Mapping and Synthesis","ru":"Продвинутые лекции, концептуальные карты и синтез"}'::jsonb, '{"en":"Develop advanced C1 academic competence for advanced lectures, conceptual mapping and synthesis by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Продвинутые лекции, концептуальные карты и синтез», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0021fa12-0e07-5512-ba3a-b581cdb80b82', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Tracking Conceptual Architecture","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc2abc1d-a9ac-5caf-8a65-6bedfbb28cc8', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D01","left":"conceptual architecture","right":"концептуальная архитектура"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D02","left":"analytical distinction","right":"аналитическое различие"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D03","left":"nested argument","right":"вложенный аргумент"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D04","left":"conceptual map","right":"концептуальная карта"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D05","left":"synthesising proposition","right":"синтезирующее положение"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D06","left":"qualifying condition","right":"уточняющее условие"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D07","left":"lecture trajectory","right":"траектория лекции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0bf883c-2e0a-55db-88b8-e7cf6e75c7e2', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D08","is_correct":true,"text":"The lecture’s conceptual architecture becomes visible once the analytical distinction between mechanism and outcome is recognised."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f154f355-e838-57a8-872d-51d8c4556ce5', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The lecture’s conceptual architecture becomes visible once the analytical distinction between mechanism and outcome is recognised.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Концептуальная архитектура лекции становится видимой после распознавания аналитического различия между механизмом и результатом.","target_language":"en","word_bank":["The","lecture’s","conceptual","architecture","becomes","visible","once","the","analytical","distinction","between","mechanism","and","outcome","is","recognised","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc5ab54c-9db8-534a-bb4d-b4eae7d2a34e', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"conceptual architecture","instruction":"Выберите подходящее слово.","options":["conceptual architecture","conceptual map","qualifying condition"],"sentence_template":"The lecture’s ___ becomes visible once the analytical distinction between mechanism and outcome is recognised."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb8dc36a-b0b2-5165-a1f2-eb38684a3c14', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","lecture’s","conceptual","architecture","becomes","visible","once","the","analytical","distinction","between","mechanism","and","outcome","is","recognised","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","recognised","is","outcome","and","mechanism","between","distinction","analytical","the","once","visible","becomes","architecture","conceptual","lecture’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e3b9ca2-d6e5-5bf9-bf53-11c9778c3775', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The lecture’s conceptual architecture becomes visible once the analytical distinction between mechanism and outcome is recognised. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('497e4288-f392-5e89-a9a9-007392d4f90b', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The lecture’s conceptual architecture becomes visible once the analytical distinction between mechanism and outcome is recognised. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Концептуальная архитектура лекции становится видимой после распознавания аналитического различия между механизмом и результатом. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90b51e6f-5d09-52d1-9851-beee32d80c93', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"The lecture’s conceptual architecture becomes visible once the analytical distinction between mechanism and outcome is recognised.","translation":"Концептуальная архитектура лекции становится видимой после распознавания аналитического различия между механизмом и результатом.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Tracking Conceptual Architecture"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16418b52-cfdc-5ad7-bd42-8e7921662a6f', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“conceptual architecture” means the organisation and relation of theoretical ideas.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D11","is_correct":true,"text":"the organisation and relation of theoretical ideas"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D12","is_correct":false,"text":"a separation introduced to clarify reasoning"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D13","is_correct":false,"text":"a supporting argument contained within a larger one"}],"word":"conceptual architecture"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b4a646f-8049-5b77-b931-d7b2716d8870', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The lecture’s conceptual architecture becomes visible once the analytical distinction between mechanism and outcome is recognised.","explanation":"The missing C1 academic expression is “conceptual architecture”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"conceptual architecture","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D14","is_correct":true},{"audio_text":"nested argument","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D15","is_correct":false},{"audio_text":"synthesising proposition","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D16","is_correct":false}],"sentence_template":"The lecture’s ___ becomes visible once the analytical distinction between mechanism and outcome is recognised."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e78f3090-4f6f-5405-bf5b-d11c410bd04d', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"conceptual architecture","explanation":"The complete academic argument uses “conceptual architecture” with conceptual precision.","hint_prefix":"conc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The lecture’s ___ becomes visible once the analytical distinction between mechanism and outcome is recognised."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3740f563-fba7-5715-bc9b-26f299b63152', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conceptual architecture","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D17","text":"conceptual architecture"},{"audio_text":"analytical distinction","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D18","text":"analytical distinction"},{"audio_text":"nested argument","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D19","text":"nested argument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('962f86bc-3cb1-54f5-a2ae-22aa652eda99', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Tracking Conceptual Architecture”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D20","is_correct":true,"text":"The lecture’s conceptual architecture becomes visible once the analytical distinction between mechanism and outcome is recognised."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61a4724e-4344-53e4-a21e-96a07829108b', '0021fa12-0e07-5512-ba3a-b581cdb80b82', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4487f2ca-1ea3-552c-b3f7-85b9c12df125', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Mapping Competing Frameworks","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01568b05-809e-537b-9060-aa8351c90916', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D01","left":"conceptual architecture","right":"концептуальная архитектура"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D02","left":"analytical distinction","right":"аналитическое различие"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D03","left":"nested argument","right":"вложенный аргумент"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D04","left":"conceptual map","right":"концептуальная карта"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D05","left":"synthesising proposition","right":"синтезирующее положение"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D06","left":"qualifying condition","right":"уточняющее условие"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D07","left":"lecture trajectory","right":"траектория лекции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('885fdf78-a649-5f96-ab86-5df4a1f1a985', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D08","is_correct":true,"text":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('730d2840-e407-5b41-b2a3-0e0207362058', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Концептуальная карта должна отражать вложенный аргумент и его уточняющие условия, а не воспроизводить лекцию хронологически.","target_language":"en","word_bank":["A","conceptual","map","should","represent","the","nested","argument","and","its","qualifying","conditions","rather","than","reproduce","the","lecture","chronologically","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8939545e-5a38-5dd5-8aa6-bb457bd18377', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"analytical distinction","instruction":"Выберите подходящее слово.","options":["analytical distinction","synthesising proposition","lecture trajectory"],"sentence_template":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26138d1c-abe9-5d8b-8513-8e212019b863', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","conceptual","map","should","represent","the","nested","argument","and","its","qualifying","conditions","rather","than","reproduce","the","lecture","chronologically","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","chronologically","lecture","the","reproduce","than","rather","conditions","qualifying","its","and","argument","nested","the","represent","should","map","conceptual","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bf8b9f4-5326-59bb-b9b6-09466dfdae1e', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('477d66be-a82a-5a4d-b3d0-4d879334293b', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Концептуальная карта должна отражать вложенный аргумент и его уточняющие условия, а не воспроизводить лекцию хронологически. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd5c9ccd-af49-5214-904c-ed235e715639', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically.","translation":"Концептуальная карта должна отражать вложенный аргумент и его уточняющие условия, а не воспроизводить лекцию хронологически.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Mapping Competing Frameworks"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1cc1841-32d0-5e94-90bc-c72daecf0e3d', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“analytical distinction” means a separation introduced to clarify reasoning.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D11","is_correct":true,"text":"a separation introduced to clarify reasoning"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D12","is_correct":false,"text":"a supporting argument contained within a larger one"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D13","is_correct":false,"text":"a representation of relationships among ideas"}],"word":"analytical distinction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ded032b2-1500-53dc-8c6e-08086ad2be42', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically.","explanation":"The missing C1 academic expression is “analytical distinction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"analytical distinction","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D14","is_correct":true},{"audio_text":"conceptual map","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D15","is_correct":false},{"audio_text":"qualifying condition","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D16","is_correct":false}],"sentence_template":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee66faed-5465-5d73-bdd5-ffad81a1989f', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"analytical distinction","explanation":"The complete academic argument uses “analytical distinction” with conceptual precision.","hint_prefix":"anal","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc14ec06-b04e-529c-a7e0-19952624fd5d', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conceptual architecture","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D17","text":"conceptual architecture"},{"audio_text":"analytical distinction","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D18","text":"analytical distinction"},{"audio_text":"nested argument","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D19","text":"nested argument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd25e810-2c46-51a5-a92b-03be41a765ef', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Mapping Competing Frameworks”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D20","is_correct":true,"text":"A conceptual map should represent the nested argument and its qualifying conditions rather than reproduce the lecture chronologically."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61a4724e-4344-53e4-a21e-96a07829108b', '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('830b341b-1685-53dd-a2be-8d7d79badf6f', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Producing an Analytical Synthesis","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('188d5d48-cd48-5eaa-82ce-f72dd10da2fb', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D01","left":"conceptual architecture","right":"концептуальная архитектура"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D02","left":"analytical distinction","right":"аналитическое различие"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D03","left":"nested argument","right":"вложенный аргумент"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D04","left":"conceptual map","right":"концептуальная карта"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D05","left":"synthesising proposition","right":"синтезирующее положение"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D06","left":"qualifying condition","right":"уточняющее условие"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D07","left":"lecture trajectory","right":"траектория лекции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91045a12-67d2-5a43-a970-1b345ab59463', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D08","is_correct":true,"text":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9abb2eb8-0dea-58f3-8e7e-cdf85ed7603f', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Аналитический синтез следует траектории лекции, формулируя синтезирующее положение, которое не было высказано дословно.","target_language":"en","word_bank":["An","analytical","synthesis","follows","the","lecture","trajectory","while","formulating","a","synthesising","proposition","that","was","not","stated","verbatim","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04f02d4f-cb5b-530a-ad03-bc5396ecfe97', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"nested argument","instruction":"Выберите подходящее слово.","options":["nested argument","qualifying condition","conceptual architecture"],"sentence_template":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56f27c10-03b1-53e1-a4ce-f733c0d6afa5', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","analytical","synthesis","follows","the","lecture","trajectory","while","formulating","a","synthesising","proposition","that","was","not","stated","verbatim","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","verbatim","stated","not","was","that","proposition","synthesising","a","formulating","while","trajectory","lecture","the","follows","synthesis","analytical","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83d4fb9c-403a-5359-9d1b-ce70119c4c23', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12ee12bd-857b-5ca0-b2eb-4e30d9001c98', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Аналитический синтез следует траектории лекции, формулируя синтезирующее положение, которое не было высказано дословно. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21a9177c-b70d-5289-9483-73a65340a56a', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim.","translation":"Аналитический синтез следует траектории лекции, формулируя синтезирующее положение, которое не было высказано дословно.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Producing an Analytical Synthesis"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d809c449-c213-5f5a-a97f-c3dc0faf62fd', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“nested argument” means a supporting argument contained within a larger one.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D11","is_correct":true,"text":"a supporting argument contained within a larger one"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D12","is_correct":false,"text":"a representation of relationships among ideas"},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D13","is_correct":false,"text":"a statement integrating several strands of reasoning"}],"word":"nested argument"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('939ad2d4-1d0b-59f2-b994-d5adb799aba7', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim.","explanation":"The missing C1 academic expression is “nested argument”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"nested argument","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D14","is_correct":true},{"audio_text":"synthesising proposition","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D15","is_correct":false},{"audio_text":"lecture trajectory","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D16","is_correct":false}],"sentence_template":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bb2b144-4c76-50ff-bd3b-152f0e60452b', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"nested argument","explanation":"The complete academic argument uses “nested argument” with conceptual precision.","hint_prefix":"nest","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a349c32-f9c4-5200-91cf-acd210d2b64a', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conceptual architecture","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D17","text":"conceptual architecture"},{"audio_text":"analytical distinction","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D18","text":"analytical distinction"},{"audio_text":"nested argument","id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D19","text":"nested argument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d69b834d-c564-5807-b49b-ead2f2d3cc3f', '830b341b-1685-53dd-a2be-8d7d79badf6f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Producing an Analytical Synthesis”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D20","is_correct":true,"text":"An analytical synthesis follows the lecture trajectory while formulating a synthesising proposition that was not stated verbatim."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ADVANCED_LECTURES_CONCEPTUAL_MAPPING_AND_SYNTHESIS_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61a4724e-4344-53e4-a21e-96a07829108b', '830b341b-1685-53dd-a2be-8d7d79badf6f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('965d0827-660f-5a7c-ac33-500177090b70', 'en', 'conceptual architecture', 'концептуальная архитектура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00a71554-158b-5923-ab8d-3c48943ef587', 'en', 'analytical distinction', 'аналитическое различие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d0254dd3-a024-5bf4-9a06-a0822c01e1fb', 'en', 'nested argument', 'вложенный аргумент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a144b832-c2ec-5f49-95c5-81407db96e6b', 'en', 'conceptual map', 'концептуальная карта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e31bb9b-57d2-535e-882b-41cd5724fdbf', 'en', 'synthesising proposition', 'синтезирующее положение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d1bcdf6-6369-5578-ae32-44e6bee9e831', 'en', 'qualifying condition', 'уточняющее условие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('648b0db0-cf28-57e8-8a9e-5191bf15fca5', 'en', 'lecture trajectory', 'траектория лекции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('965d0827-660f-5a7c-ac33-500177090b70', 'en', 'conceptual architecture', 'концептуальная архитектура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00a71554-158b-5923-ab8d-3c48943ef587', 'en', 'analytical distinction', 'аналитическое различие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d0254dd3-a024-5bf4-9a06-a0822c01e1fb', 'en', 'nested argument', 'вложенный аргумент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a144b832-c2ec-5f49-95c5-81407db96e6b', 'en', 'conceptual map', 'концептуальная карта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e31bb9b-57d2-535e-882b-41cd5724fdbf', 'en', 'synthesising proposition', 'синтезирующее положение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d1bcdf6-6369-5578-ae32-44e6bee9e831', 'en', 'qualifying condition', 'уточняющее условие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('648b0db0-cf28-57e8-8a9e-5191bf15fca5', 'en', 'lecture trajectory', 'траектория лекции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('965d0827-660f-5a7c-ac33-500177090b70', 'en', 'conceptual architecture', 'концептуальная архитектура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00a71554-158b-5923-ab8d-3c48943ef587', 'en', 'analytical distinction', 'аналитическое различие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d0254dd3-a024-5bf4-9a06-a0822c01e1fb', 'en', 'nested argument', 'вложенный аргумент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a144b832-c2ec-5f49-95c5-81407db96e6b', 'en', 'conceptual map', 'концептуальная карта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e31bb9b-57d2-535e-882b-41cd5724fdbf', 'en', 'synthesising proposition', 'синтезирующее положение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d1bcdf6-6369-5578-ae32-44e6bee9e831', 'en', 'qualifying condition', 'уточняющее условие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('648b0db0-cf28-57e8-8a9e-5191bf15fca5', 'en', 'lecture trajectory', 'траектория лекции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '0021fa12-0e07-5512-ba3a-b581cdb80b82', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual architecture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '0021fa12-0e07-5512-ba3a-b581cdb80b82', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'analytical distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '0021fa12-0e07-5512-ba3a-b581cdb80b82', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'nested argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '0021fa12-0e07-5512-ba3a-b581cdb80b82', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual map' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '0021fa12-0e07-5512-ba3a-b581cdb80b82', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesising proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '0021fa12-0e07-5512-ba3a-b581cdb80b82', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualifying condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '0021fa12-0e07-5512-ba3a-b581cdb80b82', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'lecture trajectory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual architecture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'analytical distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'nested argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual map' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesising proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualifying condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '4487f2ca-1ea3-552c-b3f7-85b9c12df125', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'lecture trajectory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '830b341b-1685-53dd-a2be-8d7d79badf6f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual architecture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '830b341b-1685-53dd-a2be-8d7d79badf6f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'analytical distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '830b341b-1685-53dd-a2be-8d7d79badf6f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'nested argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '830b341b-1685-53dd-a2be-8d7d79badf6f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual map' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '830b341b-1685-53dd-a2be-8d7d79badf6f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesising proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '830b341b-1685-53dd-a2be-8d7d79badf6f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualifying condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61a4724e-4344-53e4-a21e-96a07829108b', id, '830b341b-1685-53dd-a2be-8d7d79badf6f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'lecture trajectory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
