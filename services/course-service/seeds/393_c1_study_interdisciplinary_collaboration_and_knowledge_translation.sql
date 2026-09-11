-- Track: C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', 'C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION', 'Междисциплинарное сотрудничество и передача знаний', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Междисциплинарное сотрудничество и передача знаний», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Interdisciplinary Collaboration and Knowledge Translation","ru":"Междисциплинарное сотрудничество и передача знаний"}'::jsonb, '{"en":"Develop advanced C1 academic competence for interdisciplinary collaboration and knowledge translation by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Междисциплинарное сотрудничество и передача знаний», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3a41587e-9148-53c1-9158-43b806304218', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Reconciling Disciplinary Assumptions","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fc8d6cf-3f56-5fcf-bd5d-0d532fb12fe9', '3a41587e-9148-53c1-9158-43b806304218', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D01","left":"disciplinary assumption","right":"дисциплинарное предположение"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D02","left":"conceptual equivalence","right":"концептуальная эквивалентность"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D03","left":"boundary object","right":"пограничный объект"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D04","left":"epistemic culture","right":"эпистемическая культура"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D05","left":"integrative framework","right":"интегративная структура"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D06","left":"knowledge translation","right":"передача знаний"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D07","left":"audience calibration","right":"адаптация к аудитории"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8bd7d92-a86d-5604-8f2e-2b0bd0db10e8', '3a41587e-9148-53c1-9158-43b806304218', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D08","is_correct":true,"text":"A disciplinary assumption may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f5d78f4-50f5-57a3-859b-993f29a7c45d', '3a41587e-9148-53c1-9158-43b806304218', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A disciplinary assumption may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Дисциплинарное предположение может оставаться невидимым, пока сотрудники не обнаружат, что кажущиеся эквивалентными термины выполняют разные аналитические функции.","target_language":"en","word_bank":["A","disciplinary","assumption","may","remain","invisible","until","collaborators","discover","that","apparently","equivalent","terms","perform","different","analytical","functions","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5ca95b3-bd41-5241-8495-019485bfc170', '3a41587e-9148-53c1-9158-43b806304218', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"disciplinary assumption","instruction":"Выберите подходящее слово.","options":["disciplinary assumption","epistemic culture","knowledge translation"],"sentence_template":"A ___ may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('050b9811-5d89-5fbe-9d77-fe0cd6301418', '3a41587e-9148-53c1-9158-43b806304218', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","disciplinary","assumption","may","remain","invisible","until","collaborators","discover","that","apparently","equivalent","terms","perform","different","analytical","functions","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","functions","analytical","different","perform","terms","equivalent","apparently","that","discover","collaborators","until","invisible","remain","may","assumption","disciplinary","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05a1e67b-d13b-5412-b5d0-803da91b5252', '3a41587e-9148-53c1-9158-43b806304218', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A disciplinary assumption may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a669aa58-7bb9-525f-a89d-24ad4f05fde1', '3a41587e-9148-53c1-9158-43b806304218', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A disciplinary assumption may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Дисциплинарное предположение может оставаться невидимым, пока сотрудники не обнаружат, что кажущиеся эквивалентными термины выполняют разные аналитические функции. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9ac928a-6668-5d1f-ba0c-39ed015a0edb', '3a41587e-9148-53c1-9158-43b806304218', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A disciplinary assumption may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions.","translation":"Дисциплинарное предположение может оставаться невидимым, пока сотрудники не обнаружат, что кажущиеся эквивалентными термины выполняют разные аналитические функции.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Reconciling Disciplinary Assumptions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad1931fc-dbf2-5eef-8243-b208bd86852c', '3a41587e-9148-53c1-9158-43b806304218', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“disciplinary assumption” means a premise conventional within one academic field.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D11","is_correct":true,"text":"a premise conventional within one academic field"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D12","is_correct":false,"text":"similarity of meaning across different frameworks"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D13","is_correct":false,"text":"a shared representation usable by different disciplines"}],"word":"disciplinary assumption"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c36ccea9-be81-5ccc-be4e-198ba91719bf', '3a41587e-9148-53c1-9158-43b806304218', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A disciplinary assumption may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions.","explanation":"The missing C1 academic expression is “disciplinary assumption”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"disciplinary assumption","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D14","is_correct":true},{"audio_text":"boundary object","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D15","is_correct":false},{"audio_text":"integrative framework","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D16","is_correct":false}],"sentence_template":"A ___ may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('889e4467-b5d6-56ad-a876-e7c8f6dfc298', '3a41587e-9148-53c1-9158-43b806304218', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"disciplinary assumption","explanation":"The complete academic argument uses “disciplinary assumption” with conceptual precision.","hint_prefix":"disc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2ca56e6-8345-57a5-8657-a43ed0422e79', '3a41587e-9148-53c1-9158-43b806304218', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"disciplinary assumption","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D17","text":"disciplinary assumption"},{"audio_text":"conceptual equivalence","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D18","text":"conceptual equivalence"},{"audio_text":"boundary object","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D19","text":"boundary object"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09c74202-13b8-5a4f-8ed5-f6b5979ffd39', '3a41587e-9148-53c1-9158-43b806304218', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Reconciling Disciplinary Assumptions”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D20","is_correct":true,"text":"A disciplinary assumption may remain invisible until collaborators discover that apparently equivalent terms perform different analytical functions."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', '3a41587e-9148-53c1-9158-43b806304218', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9205ad42-80f9-5475-93d0-fcedf580cb7f', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Integrating Specialist Contributions","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9cc6da7-8350-5b3c-9bcb-5d401cc22142', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D01","left":"disciplinary assumption","right":"дисциплинарное предположение"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D02","left":"conceptual equivalence","right":"концептуальная эквивалентность"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D03","left":"boundary object","right":"пограничный объект"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D04","left":"epistemic culture","right":"эпистемическая культура"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D05","left":"integrative framework","right":"интегративная структура"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D06","left":"knowledge translation","right":"передача знаний"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D07","left":"audience calibration","right":"адаптация к аудитории"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60ebc623-a851-5f57-9306-b827084ef6a5', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D08","is_correct":true,"text":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6df983ce-93b8-517b-a67c-19710e662300', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пограничный объект позволяет сотрудничать между эпистемическими культурами без полного согласия по теории или методу.","target_language":"en","word_bank":["A","boundary","object","enables","cooperation","across","epistemic","cultures","without","requiring","complete","agreement","on","theory","or","method","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bf75f10-fd0c-50ed-b60d-ef65945dd016', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"conceptual equivalence","instruction":"Выберите подходящее слово.","options":["conceptual equivalence","integrative framework","audience calibration"],"sentence_template":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7b68256-003c-5377-a0b8-c1d71d060bde', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","boundary","object","enables","cooperation","across","epistemic","cultures","without","requiring","complete","agreement","on","theory","or","method","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","method","or","theory","on","agreement","complete","requiring","without","cultures","epistemic","across","cooperation","enables","object","boundary","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7736639a-2be7-5602-a6c3-fc244a6ccef3', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b2cc188-33c4-50f5-99cd-dd78f09d0e2d', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Пограничный объект позволяет сотрудничать между эпистемическими культурами без полного согласия по теории или методу. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0c32e30-c48c-5af3-8023-d3d6fc06a7af', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method.","translation":"Пограничный объект позволяет сотрудничать между эпистемическими культурами без полного согласия по теории или методу.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Integrating Specialist Contributions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a8039a6-8c1b-5055-87c6-93bf7dbac21d', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“conceptual equivalence” means similarity of meaning across different frameworks.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D11","is_correct":true,"text":"similarity of meaning across different frameworks"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D12","is_correct":false,"text":"a shared representation usable by different disciplines"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D13","is_correct":false,"text":"a field’s practices for producing credible knowledge"}],"word":"conceptual equivalence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f9108e6-3481-58e4-b0d8-aa61862e8e9d', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method.","explanation":"The missing C1 academic expression is “conceptual equivalence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"conceptual equivalence","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D14","is_correct":true},{"audio_text":"epistemic culture","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D15","is_correct":false},{"audio_text":"knowledge translation","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D16","is_correct":false}],"sentence_template":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0938d792-fce7-5e61-b765-6c1998bdf3a0', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"conceptual equivalence","explanation":"The complete academic argument uses “conceptual equivalence” with conceptual precision.","hint_prefix":"conc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da4f4d56-0c9d-59ec-b9e1-b8264da4b07c', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"disciplinary assumption","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D17","text":"disciplinary assumption"},{"audio_text":"conceptual equivalence","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D18","text":"conceptual equivalence"},{"audio_text":"boundary object","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D19","text":"boundary object"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('417513f9-9cea-57c4-bbd8-3213f9de0339', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Integrating Specialist Contributions”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D20","is_correct":true,"text":"A boundary object enables cooperation across epistemic cultures without requiring complete agreement on theory or method."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', '9205ad42-80f9-5475-93d0-fcedf580cb7f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b83d8f6a-4aba-5a6a-a6de-90daf61cf808', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Translating Knowledge for Audiences","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7b2c93a-2611-581d-8c45-fae6f23a6e82', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D01","left":"disciplinary assumption","right":"дисциплинарное предположение"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D02","left":"conceptual equivalence","right":"концептуальная эквивалентность"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D03","left":"boundary object","right":"пограничный объект"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D04","left":"epistemic culture","right":"эпистемическая культура"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D05","left":"integrative framework","right":"интегративная структура"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D06","left":"knowledge translation","right":"передача знаний"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D07","left":"audience calibration","right":"адаптация к аудитории"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d20a0248-32b0-5614-9a23-9c2d3bb772f4', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D08","is_correct":true,"text":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a3b58f2-896a-577f-8a59-aaca2aa80b07', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Передача знаний требует адаптации к аудитории, но интегративная структура не должна упрощать результаты за пределами доказательных ограничений.","target_language":"en","word_bank":["Knowledge","translation","requires","audience","calibration",",","yet","an","integrative","framework","must","not","simplify","findings","beyond","their","evidential","limits","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36fc87c9-0122-5871-9612-cdeccfb9a45d', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"boundary object","instruction":"Выберите подходящее слово.","options":["boundary object","knowledge translation","disciplinary assumption"],"sentence_template":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97e42d85-2192-5156-843c-cd771d1323fd', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Knowledge","translation","requires","audience","calibration",",","yet","an","integrative","framework","must","not","simplify","findings","beyond","their","evidential","limits","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","limits","evidential","their","beyond","findings","simplify","not","must","framework","integrative","an","yet",",","calibration","audience","requires","translation","Knowledge"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41cd950a-43de-5736-a7cd-0d75149b5ce5', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c0d582f-4761-51d1-a229-0863b3f63b90', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Передача знаний требует адаптации к аудитории, но интегративная структура не должна упрощать результаты за пределами доказательных ограничений. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ca949d5-9c90-55a2-bfa5-3debe8686b06', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits.","translation":"Передача знаний требует адаптации к аудитории, но интегративная структура не должна упрощать результаты за пределами доказательных ограничений.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Translating Knowledge for Audiences"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('904559be-2ba7-5aa7-ab8b-e96eeeb55dd0', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“boundary object” means a shared representation usable by different disciplines.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D11","is_correct":true,"text":"a shared representation usable by different disciplines"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D12","is_correct":false,"text":"a field’s practices for producing credible knowledge"},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D13","is_correct":false,"text":"a model combining insights across fields"}],"word":"boundary object"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efda99e6-fb07-5ae5-9891-a469d482710e', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits.","explanation":"The missing C1 academic expression is “boundary object”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"boundary object","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D14","is_correct":true},{"audio_text":"integrative framework","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D15","is_correct":false},{"audio_text":"audience calibration","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D16","is_correct":false}],"sentence_template":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('028b8119-6169-56e6-bde1-0036ab40ae27', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"boundary object","explanation":"The complete academic argument uses “boundary object” with conceptual precision.","hint_prefix":"boun","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37a76cc4-d6c8-589c-b2a2-db4180442959', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"disciplinary assumption","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D17","text":"disciplinary assumption"},{"audio_text":"conceptual equivalence","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D18","text":"conceptual equivalence"},{"audio_text":"boundary object","id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D19","text":"boundary object"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('601afe75-5821-5085-8394-cde2ef7e4c98', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Translating Knowledge for Audiences”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D20","is_correct":true,"text":"Knowledge translation requires audience calibration, yet an integrative framework must not simplify findings beyond their evidential limits."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_INTERDISCIPLINARY_COLLABORATION_AND_KNOWLEDGE_TRANSLATION_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f2b49a7-2b33-50a4-bd5e-1ac48f07d939', 'en', 'disciplinary assumption', 'дисциплинарное предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('15d3c542-ebac-56e6-9e73-dc3f72e13e13', 'en', 'conceptual equivalence', 'концептуальная эквивалентность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2beb8fb5-551e-5727-9dbb-8b498919fc2b', 'en', 'boundary object', 'пограничный объект', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b91bb80-7298-5593-a922-17ce176b50c6', 'en', 'epistemic culture', 'эпистемическая культура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7dafa7b8-0256-5b38-a8aa-1bb367b014f5', 'en', 'integrative framework', 'интегративная структура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3398679-a94b-5b06-bcde-5b93b5d52f62', 'en', 'knowledge translation', 'передача знаний', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f6b25bb-eead-55ce-859f-3eab728ac15d', 'en', 'audience calibration', 'адаптация к аудитории', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f2b49a7-2b33-50a4-bd5e-1ac48f07d939', 'en', 'disciplinary assumption', 'дисциплинарное предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('15d3c542-ebac-56e6-9e73-dc3f72e13e13', 'en', 'conceptual equivalence', 'концептуальная эквивалентность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2beb8fb5-551e-5727-9dbb-8b498919fc2b', 'en', 'boundary object', 'пограничный объект', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b91bb80-7298-5593-a922-17ce176b50c6', 'en', 'epistemic culture', 'эпистемическая культура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7dafa7b8-0256-5b38-a8aa-1bb367b014f5', 'en', 'integrative framework', 'интегративная структура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3398679-a94b-5b06-bcde-5b93b5d52f62', 'en', 'knowledge translation', 'передача знаний', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f6b25bb-eead-55ce-859f-3eab728ac15d', 'en', 'audience calibration', 'адаптация к аудитории', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f2b49a7-2b33-50a4-bd5e-1ac48f07d939', 'en', 'disciplinary assumption', 'дисциплинарное предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('15d3c542-ebac-56e6-9e73-dc3f72e13e13', 'en', 'conceptual equivalence', 'концептуальная эквивалентность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2beb8fb5-551e-5727-9dbb-8b498919fc2b', 'en', 'boundary object', 'пограничный объект', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b91bb80-7298-5593-a922-17ce176b50c6', 'en', 'epistemic culture', 'эпистемическая культура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7dafa7b8-0256-5b38-a8aa-1bb367b014f5', 'en', 'integrative framework', 'интегративная структура', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3398679-a94b-5b06-bcde-5b93b5d52f62', 'en', 'knowledge translation', 'передача знаний', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f6b25bb-eead-55ce-859f-3eab728ac15d', 'en', 'audience calibration', 'адаптация к аудитории', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '3a41587e-9148-53c1-9158-43b806304218', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'disciplinary assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '3a41587e-9148-53c1-9158-43b806304218', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '3a41587e-9148-53c1-9158-43b806304218', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'boundary object' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '3a41587e-9148-53c1-9158-43b806304218', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic culture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '3a41587e-9148-53c1-9158-43b806304218', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'integrative framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '3a41587e-9148-53c1-9158-43b806304218', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'knowledge translation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '3a41587e-9148-53c1-9158-43b806304218', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'audience calibration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '9205ad42-80f9-5475-93d0-fcedf580cb7f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'disciplinary assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '9205ad42-80f9-5475-93d0-fcedf580cb7f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '9205ad42-80f9-5475-93d0-fcedf580cb7f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'boundary object' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '9205ad42-80f9-5475-93d0-fcedf580cb7f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic culture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '9205ad42-80f9-5475-93d0-fcedf580cb7f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'integrative framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '9205ad42-80f9-5475-93d0-fcedf580cb7f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'knowledge translation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, '9205ad42-80f9-5475-93d0-fcedf580cb7f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'audience calibration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'disciplinary assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'boundary object' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic culture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'integrative framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'knowledge translation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dfa68ae6-c1fa-5b06-97b7-36a3fa9eb438', id, 'b83d8f6a-4aba-5a6a-a6de-90daf61cf808', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'audience calibration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
