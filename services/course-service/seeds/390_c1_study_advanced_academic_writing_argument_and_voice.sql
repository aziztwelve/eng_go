-- Track: C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8c199457-a981-5164-87d3-c20181b8e9b3', 'C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE', 'Продвинутое академическое письмо, аргументация и авторский голос', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Продвинутое академическое письмо, аргументация и авторский голос», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Advanced Academic Writing, Argument and Voice","ru":"Продвинутое академическое письмо, аргументация и авторский голос"}'::jsonb, '{"en":"Develop advanced C1 academic competence for advanced academic writing, argument and voice by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Продвинутое академическое письмо, аргументация и авторский голос», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('928a24ed-0b5f-5bf1-afba-542635e7ea78', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Establishing a Scholarly Position","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e6e7390-f7df-516c-aa8e-26db39703d44', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D01","left":"argument architecture","right":"архитектура аргумента"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D02","left":"authorial voice","right":"авторский голос"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D03","left":"metadiscourse","right":"метадискурс"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D04","left":"warrant","right":"основание аргумента"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D05","left":"rhetorical move","right":"риторический ход"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D06","left":"hedged assertion","right":"осторожное утверждение"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D07","left":"conceptual precision","right":"концептуальная точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15d95282-31e6-55c7-baa4-7a9767c22165', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D08","is_correct":true,"text":"Argument architecture should make each warrant visible enough for readers to assess how the evidence supports the central claim."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04133db4-cbe8-54af-961f-300a82d6d70e', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Argument architecture should make each warrant visible enough for readers to assess how the evidence supports the central claim.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Архитектура аргумента должна делать каждое основание достаточно явным, чтобы читатели могли оценить связь доказательств с основным тезисом.","target_language":"en","word_bank":["Argument","architecture","should","make","each","warrant","visible","enough","for","readers","to","assess","how","the","evidence","supports","the","central","claim","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9081c4af-1857-5d61-a33c-59f9e5163074', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"argument architecture","instruction":"Выберите подходящее слово.","options":["argument architecture","warrant","hedged assertion"],"sentence_template":"___ should make each warrant visible enough for readers to assess how the evidence supports the central claim."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('163d12a5-f820-54b1-8611-a95a8aa28171', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Argument","architecture","should","make","each","warrant","visible","enough","for","readers","to","assess","how","the","evidence","supports","the","central","claim","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","claim","central","the","supports","evidence","the","how","assess","to","readers","for","enough","visible","warrant","each","make","should","architecture","Argument"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be623d2b-1483-50c6-b51b-81fe6c08bba7', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Argument architecture should make each warrant visible enough for readers to assess how the evidence supports the central claim. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('daba1bc3-7e44-5e63-b639-0a1deb465f02', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Argument architecture should make each warrant visible enough for readers to assess how the evidence supports the central claim. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Архитектура аргумента должна делать каждое основание достаточно явным, чтобы читатели могли оценить связь доказательств с основным тезисом. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72cddc34-648d-54f1-b084-ebb8749815cb', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Argument architecture should make each warrant visible enough for readers to assess how the evidence supports the central claim.","translation":"Архитектура аргумента должна делать каждое основание достаточно явным, чтобы читатели могли оценить связь доказательств с основным тезисом.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Establishing a Scholarly Position"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61dce2d0-31ff-50b6-9833-350f919f061a', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“argument architecture” means the planned structure linking claims and evidence.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D11","is_correct":true,"text":"the planned structure linking claims and evidence"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D12","is_correct":false,"text":"a writer’s distinctive scholarly presence and stance"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D13","is_correct":false,"text":"language guiding readers through a text and position"}],"word":"argument architecture"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce4cefa1-2b76-5361-a489-850598ce0177', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Argument architecture should make each warrant visible enough for readers to assess how the evidence supports the central claim.","explanation":"The missing C1 academic expression is “argument architecture”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"argument architecture","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D14","is_correct":true},{"audio_text":"metadiscourse","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D15","is_correct":false},{"audio_text":"rhetorical move","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D16","is_correct":false}],"sentence_template":"___ should make each warrant visible enough for readers to assess how the evidence supports the central claim."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('122eaa2b-b996-5817-9220-5c05f1dc9f89', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"argument architecture","explanation":"The complete academic argument uses “argument architecture” with conceptual precision.","hint_prefix":"argu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ should make each warrant visible enough for readers to assess how the evidence supports the central claim."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01bccff6-8db9-5e8d-8461-83b7a7e3178c', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"argument architecture","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D17","text":"argument architecture"},{"audio_text":"authorial voice","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D18","text":"authorial voice"},{"audio_text":"metadiscourse","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D19","text":"metadiscourse"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3397ad5-1afd-5c0f-824c-c9ae703f694d', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Establishing a Scholarly Position”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D20","is_correct":true,"text":"Argument architecture should make each warrant visible enough for readers to assess how the evidence supports the central claim."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8c199457-a981-5164-87d3-c20181b8e9b3', '928a24ed-0b5f-5bf1-afba-542635e7ea78', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('584f1f64-ad43-5cb0-b0b9-dd197b864479', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Controlling Argument Architecture","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a979cc3a-7512-5643-8a09-15b8a42cea93', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D01","left":"argument architecture","right":"архитектура аргумента"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D02","left":"authorial voice","right":"авторский голос"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D03","left":"metadiscourse","right":"метадискурс"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D04","left":"warrant","right":"основание аргумента"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D05","left":"rhetorical move","right":"риторический ход"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D06","left":"hedged assertion","right":"осторожное утверждение"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D07","left":"conceptual precision","right":"концептуальная точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6971fef0-fa40-5512-9cab-4fbb6c2107f2', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D08","is_correct":true,"text":"A credible authorial voice emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4e508fc-e77e-5ccd-887e-f9dd3ab6b9e7', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A credible authorial voice emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедительный авторский голос возникает благодаря концептуальной точности и ответственному суждению, а не устранению всех осторожных утверждений.","target_language":"en","word_bank":["A","credible","authorial","voice","emerges","through","conceptual","precision","and","responsible","judgement",",","not","through","eliminating","every","hedged","assertion","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('681248d3-1fbb-55fd-a779-ec07fa89cc05', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"authorial voice","instruction":"Выберите подходящее слово.","options":["authorial voice","rhetorical move","conceptual precision"],"sentence_template":"A credible ___ emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f826875-433f-5a22-98d6-ac15fc9b3471', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","credible","authorial","voice","emerges","through","conceptual","precision","and","responsible","judgement",",","not","through","eliminating","every","hedged","assertion","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","assertion","hedged","every","eliminating","through","not",",","judgement","responsible","and","precision","conceptual","through","emerges","voice","authorial","credible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ac6e4c3-13eb-5405-b4fc-9ba286c21016', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A credible authorial voice emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92d2c9bd-bbe9-56eb-94cc-4b1be3676b56', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A credible authorial voice emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Убедительный авторский голос возникает благодаря концептуальной точности и ответственному суждению, а не устранению всех осторожных утверждений. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('150b5ca3-e185-5f21-a7e4-8b062d804487', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A credible authorial voice emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion.","translation":"Убедительный авторский голос возникает благодаря концептуальной точности и ответственному суждению, а не устранению всех осторожных утверждений.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Controlling Argument Architecture"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0649db1-9786-5802-a404-72d2a1c58172', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“authorial voice” means a writer’s distinctive scholarly presence and stance.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D11","is_correct":true,"text":"a writer’s distinctive scholarly presence and stance"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D12","is_correct":false,"text":"language guiding readers through a text and position"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D13","is_correct":false,"text":"reasoning connecting evidence to a claim"}],"word":"authorial voice"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e5f53c1-15b9-5134-a811-e5206bffa925', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A credible authorial voice emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion.","explanation":"The missing C1 academic expression is “authorial voice”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"authorial voice","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D14","is_correct":true},{"audio_text":"warrant","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D15","is_correct":false},{"audio_text":"hedged assertion","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D16","is_correct":false}],"sentence_template":"A credible ___ emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa15788e-9c2e-57e2-9250-19415b651167', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"authorial voice","explanation":"The complete academic argument uses “authorial voice” with conceptual precision.","hint_prefix":"auth","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A credible ___ emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b037ec27-96ba-591f-b439-f35e02dc8956', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"argument architecture","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D17","text":"argument architecture"},{"audio_text":"authorial voice","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D18","text":"authorial voice"},{"audio_text":"metadiscourse","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D19","text":"metadiscourse"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cdb2903-2b42-5c2c-bce5-04e3fbeab75d', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Controlling Argument Architecture”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D20","is_correct":true,"text":"A credible authorial voice emerges through conceptual precision and responsible judgement, not through eliminating every hedged assertion."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8c199457-a981-5164-87d3-c20181b8e9b3', '584f1f64-ad43-5cb0-b0b9-dd197b864479', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f5b884a8-a992-5816-8852-e3c6cc4fc5d0', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Developing an Authorial Voice","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2db7616a-0266-5032-abf6-1b80d5abf65b', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D01","left":"argument architecture","right":"архитектура аргумента"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D02","left":"authorial voice","right":"авторский голос"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D03","left":"metadiscourse","right":"метадискурс"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D04","left":"warrant","right":"основание аргумента"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D05","left":"rhetorical move","right":"риторический ход"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D06","left":"hedged assertion","right":"осторожное утверждение"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D07","left":"conceptual precision","right":"концептуальная точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9548605-71fa-54d2-9524-1888f4388b12', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D08","is_correct":true,"text":"Metadiscourse is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d3e04eb-c3c1-5be9-a73a-fb7d88e8f6ad', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Metadiscourse is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Метадискурс эффективен, когда каждый риторический ход проясняет аргумент, а не просто объявляет содержание абзаца.","target_language":"en","word_bank":["Metadiscourse","is","effective","when","each","rhetorical","move","clarifies","the","argument","rather","than","merely","announcing","what","the","paragraph","will","do","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f2eb4c7-9a77-5e85-b708-1d9eb0ef67eb', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"metadiscourse","instruction":"Выберите подходящее слово.","options":["metadiscourse","hedged assertion","argument architecture"],"sentence_template":"___ is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ff34962-496b-51fb-8513-2c12dd1aca49', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Metadiscourse","is","effective","when","each","rhetorical","move","clarifies","the","argument","rather","than","merely","announcing","what","the","paragraph","will","do","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","do","will","paragraph","the","what","announcing","merely","than","rather","argument","the","clarifies","move","rhetorical","each","when","effective","is","Metadiscourse"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c3941f3-1f68-57f3-bb58-0d1d4a42b22a', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Metadiscourse is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59878f48-9645-5fb4-b2b0-b00c3830cbc3', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Metadiscourse is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Метадискурс эффективен, когда каждый риторический ход проясняет аргумент, а не просто объявляет содержание абзаца. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b48383a-3d21-5039-91f2-194f9619ebd2', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Metadiscourse is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do.","translation":"Метадискурс эффективен, когда каждый риторический ход проясняет аргумент, а не просто объявляет содержание абзаца.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Developing an Authorial Voice"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db36a318-5564-5c5a-ae8c-2acabc54d9d7', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“metadiscourse” means language guiding readers through a text and position.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D11","is_correct":true,"text":"language guiding readers through a text and position"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D12","is_correct":false,"text":"reasoning connecting evidence to a claim"},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D13","is_correct":false,"text":"a functional step in scholarly argumentation"}],"word":"metadiscourse"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('449736de-02f1-5806-bafb-d367f54285d0', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Metadiscourse is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do.","explanation":"The missing C1 academic expression is “metadiscourse”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"metadiscourse","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D14","is_correct":true},{"audio_text":"rhetorical move","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D15","is_correct":false},{"audio_text":"conceptual precision","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D16","is_correct":false}],"sentence_template":"___ is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a1ddbfc-83cd-5baf-a580-afa432cb1357', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"metadiscourse","explanation":"The complete academic argument uses “metadiscourse” with conceptual precision.","hint_prefix":"meta","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f88830b5-76c0-5dfe-9a2f-69689f287c51', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"argument architecture","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D17","text":"argument architecture"},{"audio_text":"authorial voice","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D18","text":"authorial voice"},{"audio_text":"metadiscourse","id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D19","text":"metadiscourse"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be6ee047-ba8f-50f5-b50e-f1b1387ce6d3', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Developing an Authorial Voice”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D20","is_correct":true,"text":"Metadiscourse is effective when each rhetorical move clarifies the argument rather than merely announcing what the paragraph will do."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_ADVANCED_ACADEMIC_WRITING_ARGUMENT_AND_VOICE_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8c199457-a981-5164-87d3-c20181b8e9b3', 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cdf7735-262a-57fb-bbdf-5a4efc7e0455', 'en', 'argument architecture', 'архитектура аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9c6ab01-e75d-5d1e-b941-a7294aa939b5', 'en', 'authorial voice', 'авторский голос', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14047ae2-9e6a-5cfe-8874-614a1c798d50', 'en', 'metadiscourse', 'метадискурс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91d9f337-4e74-5b79-9597-29c6516f07a5', 'en', 'warrant', 'основание аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea368e0d-6ec4-5092-bb87-7d3180101735', 'en', 'rhetorical move', 'риторический ход', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c8f5a78-bfe1-5eff-a9f1-8e005f27e67d', 'en', 'hedged assertion', 'осторожное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c124e2ad-d79b-58d3-ba49-1a7c8ccc6127', 'en', 'conceptual precision', 'концептуальная точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cdf7735-262a-57fb-bbdf-5a4efc7e0455', 'en', 'argument architecture', 'архитектура аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9c6ab01-e75d-5d1e-b941-a7294aa939b5', 'en', 'authorial voice', 'авторский голос', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14047ae2-9e6a-5cfe-8874-614a1c798d50', 'en', 'metadiscourse', 'метадискурс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91d9f337-4e74-5b79-9597-29c6516f07a5', 'en', 'warrant', 'основание аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea368e0d-6ec4-5092-bb87-7d3180101735', 'en', 'rhetorical move', 'риторический ход', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c8f5a78-bfe1-5eff-a9f1-8e005f27e67d', 'en', 'hedged assertion', 'осторожное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c124e2ad-d79b-58d3-ba49-1a7c8ccc6127', 'en', 'conceptual precision', 'концептуальная точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cdf7735-262a-57fb-bbdf-5a4efc7e0455', 'en', 'argument architecture', 'архитектура аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9c6ab01-e75d-5d1e-b941-a7294aa939b5', 'en', 'authorial voice', 'авторский голос', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14047ae2-9e6a-5cfe-8874-614a1c798d50', 'en', 'metadiscourse', 'метадискурс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91d9f337-4e74-5b79-9597-29c6516f07a5', 'en', 'warrant', 'основание аргумента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea368e0d-6ec4-5092-bb87-7d3180101735', 'en', 'rhetorical move', 'риторический ход', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c8f5a78-bfe1-5eff-a9f1-8e005f27e67d', 'en', 'hedged assertion', 'осторожное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c124e2ad-d79b-58d3-ba49-1a7c8ccc6127', 'en', 'conceptual precision', 'концептуальная точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '928a24ed-0b5f-5bf1-afba-542635e7ea78', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'argument architecture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '928a24ed-0b5f-5bf1-afba-542635e7ea78', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial voice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '928a24ed-0b5f-5bf1-afba-542635e7ea78', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'metadiscourse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '928a24ed-0b5f-5bf1-afba-542635e7ea78', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'warrant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '928a24ed-0b5f-5bf1-afba-542635e7ea78', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical move' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '928a24ed-0b5f-5bf1-afba-542635e7ea78', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'hedged assertion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '928a24ed-0b5f-5bf1-afba-542635e7ea78', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '584f1f64-ad43-5cb0-b0b9-dd197b864479', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'argument architecture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '584f1f64-ad43-5cb0-b0b9-dd197b864479', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial voice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '584f1f64-ad43-5cb0-b0b9-dd197b864479', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'metadiscourse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '584f1f64-ad43-5cb0-b0b9-dd197b864479', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'warrant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '584f1f64-ad43-5cb0-b0b9-dd197b864479', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical move' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '584f1f64-ad43-5cb0-b0b9-dd197b864479', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'hedged assertion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, '584f1f64-ad43-5cb0-b0b9-dd197b864479', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'argument architecture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial voice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'metadiscourse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'warrant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical move' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'hedged assertion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8c199457-a981-5164-87d3-c20181b8e9b3', id, 'f5b884a8-a992-5816-8852-e3c6cc4fc5d0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
