-- Track: C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3800f005-8a00-5fc7-b409-dad1f54fc8a4', 'C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN', 'Исследовательские парадигмы, вопросы и дизайн', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Исследовательские парадигмы, вопросы и дизайн», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Research Paradigms, Questions and Design","ru":"Исследовательские парадигмы, вопросы и дизайн"}'::jsonb, '{"en":"Develop advanced C1 academic competence for research paradigms, questions and design by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Исследовательские парадигмы, вопросы и дизайн», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1a367bb5-8f97-5647-baf6-96d9dc088d29', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Positioning a Research Paradigm","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adf4c741-85b9-520c-9c2b-04aaa6e5d7ab', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D01","left":"ontological assumption","right":"онтологическое предположение"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D02","left":"epistemological stance","right":"эпистемологическая позиция"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D03","left":"research paradigm","right":"исследовательская парадигма"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D04","left":"operationalise a construct","right":"операционализировать конструкт"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D05","left":"methodological coherence","right":"методологическая согласованность"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D06","left":"scope condition","right":"условие применимости"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D07","left":"inferential claim","right":"выводное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66fcca14-07b5-52ed-80be-c056d6fbafb7', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D08","is_correct":true,"text":"An ontological assumption shapes what counts as a meaningful object of inquiry before any method is selected."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f255615-11b8-5379-b1d1-febc643afad5', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An ontological assumption shapes what counts as a meaningful object of inquiry before any method is selected.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Онтологическое предположение определяет, что считается значимым объектом исследования, ещё до выбора метода.","target_language":"en","word_bank":["An","ontological","assumption","shapes","what","counts","as","a","meaningful","object","of","inquiry","before","any","method","is","selected","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9d76ec6-ddc4-5b4a-955b-e2adacf66ef9', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ontological assumption","instruction":"Выберите подходящее слово.","options":["ontological assumption","operationalise a construct","scope condition"],"sentence_template":"An ___ shapes what counts as a meaningful object of inquiry before any method is selected."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('273f269d-d0e2-5006-9178-9fe32d68d635', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","ontological","assumption","shapes","what","counts","as","a","meaningful","object","of","inquiry","before","any","method","is","selected","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","selected","is","method","any","before","inquiry","of","object","meaningful","a","as","counts","what","shapes","assumption","ontological","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3822108d-9261-546a-a679-173ffae38a62', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An ontological assumption shapes what counts as a meaningful object of inquiry before any method is selected. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a9ea6da-c66c-5069-bd5a-53a2114d5966', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An ontological assumption shapes what counts as a meaningful object of inquiry before any method is selected. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Онтологическое предположение определяет, что считается значимым объектом исследования, ещё до выбора метода. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee02b24e-b81f-579b-96ee-d05299e2422c', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"An ontological assumption shapes what counts as a meaningful object of inquiry before any method is selected.","translation":"Онтологическое предположение определяет, что считается значимым объектом исследования, ещё до выбора метода.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Positioning a Research Paradigm"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84c3c3e4-abe2-58c2-9306-d6381eb8b59f', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“ontological assumption” means a belief about what kind of reality exists.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D11","is_correct":true,"text":"a belief about what kind of reality exists"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D12","is_correct":false,"text":"a view of how knowledge can be established"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D13","is_correct":false,"text":"a framework linking assumptions, questions, and methods"}],"word":"ontological assumption"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8cc47d9-721b-579e-a8d8-9d256bef2b46', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An ontological assumption shapes what counts as a meaningful object of inquiry before any method is selected.","explanation":"The missing C1 academic expression is “ontological assumption”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"ontological assumption","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D14","is_correct":true},{"audio_text":"research paradigm","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D15","is_correct":false},{"audio_text":"methodological coherence","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D16","is_correct":false}],"sentence_template":"An ___ shapes what counts as a meaningful object of inquiry before any method is selected."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eef03d6a-2be7-5760-baf1-b318f915c367', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ontological assumption","explanation":"The complete academic argument uses “ontological assumption” with conceptual precision.","hint_prefix":"onto","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An ___ shapes what counts as a meaningful object of inquiry before any method is selected."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fba1d793-22e7-5b31-9317-3559105ed18f', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"ontological assumption","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D17","text":"ontological assumption"},{"audio_text":"epistemological stance","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D18","text":"epistemological stance"},{"audio_text":"research paradigm","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D19","text":"research paradigm"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8da5b54-39c8-5893-9794-4e57193cec68', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Positioning a Research Paradigm”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D20","is_correct":true,"text":"An ontological assumption shapes what counts as a meaningful object of inquiry before any method is selected."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3800f005-8a00-5fc7-b409-dad1f54fc8a4', '1a367bb5-8f97-5647-baf6-96d9dc088d29', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7c3f79d5-d570-53bd-b689-e749cf1a2472', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Refining a Research Question","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22ce17ef-ec5d-5754-bc4f-3cf972a7703f', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D01","left":"ontological assumption","right":"онтологическое предположение"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D02","left":"epistemological stance","right":"эпистемологическая позиция"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D03","left":"research paradigm","right":"исследовательская парадигма"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D04","left":"operationalise a construct","right":"операционализировать конструкт"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D05","left":"methodological coherence","right":"методологическая согласованность"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D06","left":"scope condition","right":"условие применимости"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D07","left":"inferential claim","right":"выводное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c656ac9b-51e7-54cc-9ebd-8897bbfb8dac', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D08","is_correct":true,"text":"An epistemological stance should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0493b57-f0bb-5026-8001-e157157c4b03', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An epistemological stance should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эпистемологическая позиция должна отражаться в исследовательском вопросе, обращении с доказательствами и статусе свидетельств участников.","target_language":"en","word_bank":["An","epistemological","stance","should","be","reflected","in","the","research","question",",","the","treatment","of","evidence",",","and","the","authority","granted","to","participants","’","accounts","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a9243fe-d057-5a88-8d8e-c6759beef52a', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"epistemological stance","instruction":"Выберите подходящее слово.","options":["epistemological stance","methodological coherence","inferential claim"],"sentence_template":"An ___ should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9227143a-3153-567c-bd38-03fe9e04096e', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","epistemological","stance","should","be","reflected","in","the","research","question",",","the","treatment","of","evidence",",","and","the","authority","granted","to","participants","’","accounts","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","accounts","’","participants","to","granted","authority","the","and",",","evidence","of","treatment","the",",","question","research","the","in","reflected","be","should","stance","epistemological","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e0a671d-a5d4-5c68-ba12-d060044dd30b', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An epistemological stance should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91fa5eb2-2a71-522e-a6fd-dfd93058c15b', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An epistemological stance should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Эпистемологическая позиция должна отражаться в исследовательском вопросе, обращении с доказательствами и статусе свидетельств участников. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7ed3f66-1350-52de-b3e0-1d25f8177cbb', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"An epistemological stance should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts.","translation":"Эпистемологическая позиция должна отражаться в исследовательском вопросе, обращении с доказательствами и статусе свидетельств участников.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Refining a Research Question"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fc02aa5-12f2-5890-ab46-cb87c4f4f1c2', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“epistemological stance” means a view of how knowledge can be established.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D11","is_correct":true,"text":"a view of how knowledge can be established"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D12","is_correct":false,"text":"a framework linking assumptions, questions, and methods"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D13","is_correct":false,"text":"define how an abstract concept will be measured"}],"word":"epistemological stance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('979972cf-f7fa-5654-9b92-0fb3e5af8f5b', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An epistemological stance should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts.","explanation":"The missing C1 academic expression is “epistemological stance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"epistemological stance","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D14","is_correct":true},{"audio_text":"operationalise a construct","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D15","is_correct":false},{"audio_text":"scope condition","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D16","is_correct":false}],"sentence_template":"An ___ should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('deb07a6a-9b92-5a07-8777-78c48e8172b4', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"epistemological stance","explanation":"The complete academic argument uses “epistemological stance” with conceptual precision.","hint_prefix":"epis","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An ___ should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a13e39b-9eea-56f3-a367-999469b631fe', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"ontological assumption","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D17","text":"ontological assumption"},{"audio_text":"epistemological stance","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D18","text":"epistemological stance"},{"audio_text":"research paradigm","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D19","text":"research paradigm"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1cb71fa-8b22-5aef-b0b6-acc7b9c4d76a', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Refining a Research Question”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D20","is_correct":true,"text":"An epistemological stance should be reflected in the research question, the treatment of evidence, and the authority granted to participants’ accounts."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3800f005-8a00-5fc7-b409-dad1f54fc8a4', '7c3f79d5-d570-53bd-b689-e749cf1a2472', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('08803563-b250-5b09-95ac-ffbdd19fdc18', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Aligning Design and Claims","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d00f8dea-3b14-54b5-a506-1bd907e0654a', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D01","left":"ontological assumption","right":"онтологическое предположение"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D02","left":"epistemological stance","right":"эпистемологическая позиция"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D03","left":"research paradigm","right":"исследовательская парадигма"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D04","left":"operationalise a construct","right":"операционализировать конструкт"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D05","left":"methodological coherence","right":"методологическая согласованность"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D06","left":"scope condition","right":"условие применимости"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D07","left":"inferential claim","right":"выводное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('575d73d4-6bc0-5901-8035-bf6c29d570d6', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D08","is_correct":true,"text":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e23b483a-5264-529b-bcda-06ef281da491', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Методологическая согласованность требует, чтобы каждое выводное утверждение оставалось в пределах условий применимости, обоснованных дизайном.","target_language":"en","word_bank":["Methodological","coherence","requires","every","inferential","claim","to","remain","within","the","scope","conditions","justified","by","the","design","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2176ef1-7a6d-57a8-b807-4a60af7c324a', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"research paradigm","instruction":"Выберите подходящее слово.","options":["research paradigm","scope condition","ontological assumption"],"sentence_template":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fe793de-1ea9-5e51-9dc2-0e1458d8e907', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Methodological","coherence","requires","every","inferential","claim","to","remain","within","the","scope","conditions","justified","by","the","design","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","design","the","by","justified","conditions","scope","the","within","remain","to","claim","inferential","every","requires","coherence","Methodological"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7379cd64-8ea4-57a3-8111-51352dc31c58', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b842d305-5d02-5e55-82a9-789486239dcd', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Методологическая согласованность требует, чтобы каждое выводное утверждение оставалось в пределах условий применимости, обоснованных дизайном. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fb6c6a7-f9b9-5a25-be84-37e2b1f658d5', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design.","translation":"Методологическая согласованность требует, чтобы каждое выводное утверждение оставалось в пределах условий применимости, обоснованных дизайном.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Aligning Design and Claims"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ce0ddd8-1428-5b69-992f-7ac596b447d7', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“research paradigm” means a framework linking assumptions, questions, and methods.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D11","is_correct":true,"text":"a framework linking assumptions, questions, and methods"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D12","is_correct":false,"text":"define how an abstract concept will be measured"},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D13","is_correct":false,"text":"alignment among questions, methods, and claims"}],"word":"research paradigm"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('862bb1e1-1d66-58df-9eb4-f30371d968d1', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design.","explanation":"The missing C1 academic expression is “research paradigm”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"research paradigm","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D14","is_correct":true},{"audio_text":"methodological coherence","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D15","is_correct":false},{"audio_text":"inferential claim","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D16","is_correct":false}],"sentence_template":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d686047d-227e-5630-9475-afff34a1f582', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"research paradigm","explanation":"The complete academic argument uses “research paradigm” with conceptual precision.","hint_prefix":"rese","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52bfe3a3-14ef-52a1-8a7c-b03d26323010', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"ontological assumption","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D17","text":"ontological assumption"},{"audio_text":"epistemological stance","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D18","text":"epistemological stance"},{"audio_text":"research paradigm","id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D19","text":"research paradigm"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7692eea-80c9-5971-a240-b6059eb1fe20', '08803563-b250-5b09-95ac-ffbdd19fdc18', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Aligning Design and Claims”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D20","is_correct":true,"text":"Methodological coherence requires every inferential claim to remain within the scope conditions justified by the design."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_RESEARCH_PARADIGMS_QUESTIONS_AND_DESIGN_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3800f005-8a00-5fc7-b409-dad1f54fc8a4', '08803563-b250-5b09-95ac-ffbdd19fdc18', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bbbdb896-17bb-59c2-9f3f-f69d67c4b3d3', 'en', 'ontological assumption', 'онтологическое предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b8483b3-a416-5476-8aed-92336eb997a4', 'en', 'epistemological stance', 'эпистемологическая позиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bcb81061-fde4-50f3-81fa-e1f017131b8d', 'en', 'research paradigm', 'исследовательская парадигма', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d51c68c4-4cfc-5316-a3ba-b1b2b48e7943', 'en', 'operationalise a construct', 'операционализировать конструкт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf67e566-c132-534f-8800-fe649a3a609a', 'en', 'methodological coherence', 'методологическая согласованность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58dfe165-6764-5328-86aa-81f90099465c', 'en', 'scope condition', 'условие применимости', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c9aee-f6e7-5425-9c66-1f6c49053893', 'en', 'inferential claim', 'выводное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bbbdb896-17bb-59c2-9f3f-f69d67c4b3d3', 'en', 'ontological assumption', 'онтологическое предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b8483b3-a416-5476-8aed-92336eb997a4', 'en', 'epistemological stance', 'эпистемологическая позиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bcb81061-fde4-50f3-81fa-e1f017131b8d', 'en', 'research paradigm', 'исследовательская парадигма', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d51c68c4-4cfc-5316-a3ba-b1b2b48e7943', 'en', 'operationalise a construct', 'операционализировать конструкт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf67e566-c132-534f-8800-fe649a3a609a', 'en', 'methodological coherence', 'методологическая согласованность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58dfe165-6764-5328-86aa-81f90099465c', 'en', 'scope condition', 'условие применимости', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c9aee-f6e7-5425-9c66-1f6c49053893', 'en', 'inferential claim', 'выводное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bbbdb896-17bb-59c2-9f3f-f69d67c4b3d3', 'en', 'ontological assumption', 'онтологическое предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b8483b3-a416-5476-8aed-92336eb997a4', 'en', 'epistemological stance', 'эпистемологическая позиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bcb81061-fde4-50f3-81fa-e1f017131b8d', 'en', 'research paradigm', 'исследовательская парадигма', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d51c68c4-4cfc-5316-a3ba-b1b2b48e7943', 'en', 'operationalise a construct', 'операционализировать конструкт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf67e566-c132-534f-8800-fe649a3a609a', 'en', 'methodological coherence', 'методологическая согласованность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58dfe165-6764-5328-86aa-81f90099465c', 'en', 'scope condition', 'условие применимости', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c9aee-f6e7-5425-9c66-1f6c49053893', 'en', 'inferential claim', 'выводное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '1a367bb5-8f97-5647-baf6-96d9dc088d29', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'ontological assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '1a367bb5-8f97-5647-baf6-96d9dc088d29', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemological stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '1a367bb5-8f97-5647-baf6-96d9dc088d29', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'research paradigm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '1a367bb5-8f97-5647-baf6-96d9dc088d29', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'operationalise a construct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '1a367bb5-8f97-5647-baf6-96d9dc088d29', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological coherence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '1a367bb5-8f97-5647-baf6-96d9dc088d29', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '1a367bb5-8f97-5647-baf6-96d9dc088d29', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'inferential claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '7c3f79d5-d570-53bd-b689-e749cf1a2472', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'ontological assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '7c3f79d5-d570-53bd-b689-e749cf1a2472', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemological stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '7c3f79d5-d570-53bd-b689-e749cf1a2472', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'research paradigm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '7c3f79d5-d570-53bd-b689-e749cf1a2472', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'operationalise a construct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '7c3f79d5-d570-53bd-b689-e749cf1a2472', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological coherence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '7c3f79d5-d570-53bd-b689-e749cf1a2472', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '7c3f79d5-d570-53bd-b689-e749cf1a2472', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'inferential claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '08803563-b250-5b09-95ac-ffbdd19fdc18', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'ontological assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '08803563-b250-5b09-95ac-ffbdd19fdc18', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemological stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '08803563-b250-5b09-95ac-ffbdd19fdc18', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'research paradigm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '08803563-b250-5b09-95ac-ffbdd19fdc18', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'operationalise a construct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '08803563-b250-5b09-95ac-ffbdd19fdc18', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological coherence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '08803563-b250-5b09-95ac-ffbdd19fdc18', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3800f005-8a00-5fc7-b409-dad1f54fc8a4', id, '08803563-b250-5b09-95ac-ffbdd19fdc18', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'inferential claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
