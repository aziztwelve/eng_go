-- Track: C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('62ac5e54-ba07-5584-9dae-b95a6609cb96', 'C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS', 'Рецензирование, доработка и публикационная этика', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Рецензирование, доработка и публикационная этика», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Peer Review, Revision and Publication Ethics","ru":"Рецензирование, доработка и публикационная этика"}'::jsonb, '{"en":"Develop advanced C1 academic competence for peer review, revision and publication ethics by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Рецензирование, доработка и публикационная этика», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f9d059f7-9ec2-52f5-903a-e7ef943538b8', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Interpreting Peer Review","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b355fc6b-fc32-5b36-a9de-934d348be3ea', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D01","left":"reviewer concern","right":"замечание рецензента"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D02","left":"revision matrix","right":"матрица доработок"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D03","left":"substantive revision","right":"содержательная доработка"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D04","left":"transparent response","right":"прозрачный ответ"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D05","left":"authorship criterion","right":"критерий авторства"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D06","left":"duplicate publication","right":"дублирующая публикация"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D07","left":"research integrity","right":"исследовательская добросовестность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9c29354-3a07-54fb-8fc4-cb1391798f59', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D08","is_correct":true,"text":"A reviewer concern should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93d760b0-edab-5c2a-9481-9e46e5d23a29', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A reviewer concern should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Замечание рецензента следует интерпретировать на уровне основного аргумента, а не отвечать на него лишь косметическими исправлениями.","target_language":"en","word_bank":["A","reviewer","concern","should","be","interpreted","at","the","level","of","the","underlying","argument",",","not","answered","through","cosmetic","edits","alone","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a26eadaf-9802-513a-8a46-3211c007e20a', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reviewer concern","instruction":"Выберите подходящее слово.","options":["reviewer concern","transparent response","duplicate publication"],"sentence_template":"A ___ should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d32fa3f0-c621-58de-9f90-18b0470548f5', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","reviewer","concern","should","be","interpreted","at","the","level","of","the","underlying","argument",",","not","answered","through","cosmetic","edits","alone","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","alone","edits","cosmetic","through","answered","not",",","argument","underlying","the","of","level","the","at","interpreted","be","should","concern","reviewer","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('355f6662-f073-503b-9eda-ecae489d8f12', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A reviewer concern should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d20db0b-7b3d-5956-b1a7-6e978c385234', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A reviewer concern should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Замечание рецензента следует интерпретировать на уровне основного аргумента, а не отвечать на него лишь косметическими исправлениями. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20486514-726b-50fc-8392-ec4244b1ff23', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A reviewer concern should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone.","translation":"Замечание рецензента следует интерпретировать на уровне основного аргумента, а не отвечать на него лишь косметическими исправлениями.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Interpreting Peer Review"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0647dd57-9bd8-5b84-b1ca-40dd811c28a4', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reviewer concern” means an issue raised during scholarly evaluation.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D11","is_correct":true,"text":"an issue raised during scholarly evaluation"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D12","is_correct":false,"text":"a structured record linking feedback to changes"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D13","is_correct":false,"text":"a change affecting argument, evidence, or analysis"}],"word":"reviewer concern"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('242d2c85-e83d-5b8e-beed-91824c9463be', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A reviewer concern should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone.","explanation":"The missing C1 academic expression is “reviewer concern”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reviewer concern","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D14","is_correct":true},{"audio_text":"substantive revision","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D15","is_correct":false},{"audio_text":"authorship criterion","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D16","is_correct":false}],"sentence_template":"A ___ should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('945d8f26-e3a6-525e-8a5f-5d7161c28a9c', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reviewer concern","explanation":"The complete academic argument uses “reviewer concern” with conceptual precision.","hint_prefix":"revi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61ac593c-ca64-5653-8ba7-4e697fe9480c', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reviewer concern","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D17","text":"reviewer concern"},{"audio_text":"revision matrix","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D18","text":"revision matrix"},{"audio_text":"substantive revision","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D19","text":"substantive revision"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e3fa2a1-f919-5c91-8da4-f418b16337fe', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Interpreting Peer Review”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D20","is_correct":true,"text":"A reviewer concern should be interpreted at the level of the underlying argument, not answered through cosmetic edits alone."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('62ac5e54-ba07-5584-9dae-b95a6609cb96', 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('32f0e51c-5853-5693-a5fc-9b881e51b32c', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Designing a Revision Strategy","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('553ed663-4d52-53cf-81d4-eb019db12f61', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D01","left":"reviewer concern","right":"замечание рецензента"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D02","left":"revision matrix","right":"матрица доработок"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D03","left":"substantive revision","right":"содержательная доработка"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D04","left":"transparent response","right":"прозрачный ответ"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D05","left":"authorship criterion","right":"критерий авторства"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D06","left":"duplicate publication","right":"дублирующая публикация"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D07","left":"research integrity","right":"исследовательская добросовестность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c38cdbf-7883-5aa1-83cb-c33380103f9e', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D08","is_correct":true,"text":"A revision matrix supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05d65546-a56b-5f24-b788-548d85f9faa9', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A revision matrix supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Матрица доработок поддерживает прозрачный ответ, фиксируя каждое содержательное изменение и уважительно объясняя случаи, когда рекомендация не была принята.","target_language":"en","word_bank":["A","revision","matrix","supports","a","transparent","response","by","documenting","each","substantive","revision","and","explaining","respectfully","when","advice","was","not","followed","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c47dcc2f-66c6-59bb-b581-620cd453f881', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"revision matrix","instruction":"Выберите подходящее слово.","options":["revision matrix","authorship criterion","research integrity"],"sentence_template":"A ___ supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b19bc696-cfe9-58ae-904a-d676af7a50e8', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","revision","matrix","supports","a","transparent","response","by","documenting","each","substantive","revision","and","explaining","respectfully","when","advice","was","not","followed","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","followed","not","was","advice","when","respectfully","explaining","and","revision","substantive","each","documenting","by","response","transparent","a","supports","matrix","revision","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab9a36fd-d4ec-5a33-bada-1a3c9578445d', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A revision matrix supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54c1e23e-7f71-5b64-8e30-cf0ba3e30fe6', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A revision matrix supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Матрица доработок поддерживает прозрачный ответ, фиксируя каждое содержательное изменение и уважительно объясняя случаи, когда рекомендация не была принята. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35d382d7-61fa-51dc-b22a-858828e15f84', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A revision matrix supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed.","translation":"Матрица доработок поддерживает прозрачный ответ, фиксируя каждое содержательное изменение и уважительно объясняя случаи, когда рекомендация не была принята.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Designing a Revision Strategy"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d258e413-62a7-53e1-9eb6-dcc53ae8ba69', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“revision matrix” means a structured record linking feedback to changes.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D11","is_correct":true,"text":"a structured record linking feedback to changes"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D12","is_correct":false,"text":"a change affecting argument, evidence, or analysis"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D13","is_correct":false,"text":"a clear account of action taken on feedback"}],"word":"revision matrix"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8296f071-a208-5efb-a748-dba8739c2cd9', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A revision matrix supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed.","explanation":"The missing C1 academic expression is “revision matrix”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"revision matrix","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D14","is_correct":true},{"audio_text":"transparent response","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D15","is_correct":false},{"audio_text":"duplicate publication","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D16","is_correct":false}],"sentence_template":"A ___ supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('929df968-9d9f-5bf7-8f03-6c8475877ec4', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"revision matrix","explanation":"The complete academic argument uses “revision matrix” with conceptual precision.","hint_prefix":"revi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64e9b556-edca-5d44-98ab-0ef0d5e3387e', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reviewer concern","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D17","text":"reviewer concern"},{"audio_text":"revision matrix","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D18","text":"revision matrix"},{"audio_text":"substantive revision","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D19","text":"substantive revision"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8ce3da2-2449-5146-bac0-861d1a899cb5', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Designing a Revision Strategy”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D20","is_correct":true,"text":"A revision matrix supports a transparent response by documenting each substantive revision and explaining respectfully when advice was not followed."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('62ac5e54-ba07-5584-9dae-b95a6609cb96', '32f0e51c-5853-5693-a5fc-9b881e51b32c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('55d98fe5-84e3-5399-8b06-86e8f720762f', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Maintaining Publication Ethics","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aaf33fd4-0cba-5f1d-ac99-a385d1615de1', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D01","left":"reviewer concern","right":"замечание рецензента"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D02","left":"revision matrix","right":"матрица доработок"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D03","left":"substantive revision","right":"содержательная доработка"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D04","left":"transparent response","right":"прозрачный ответ"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D05","left":"authorship criterion","right":"критерий авторства"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D06","left":"duplicate publication","right":"дублирующая публикация"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D07","left":"research integrity","right":"исследовательская добросовестность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b83b7f4a-a1e0-5161-a2f7-20b9c3f58713', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D08","is_correct":true,"text":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc97665d-a077-5c06-b178-cead6f07aeaa', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Исследовательская добросовестность требует ясных критериев авторства, раскрытия конкурирующих интересов и исключения дублирующих публикаций или избирательной отчётности.","target_language":"en","word_bank":["Research","integrity","requires","clear","authorship","criteria",",","disclosure","of","competing","interests",",","and","avoidance","of","duplicate","publication","or","selective","reporting","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21758ae3-b41f-5c0c-9cb1-dbec069c9510', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"substantive revision","instruction":"Выберите подходящее слово.","options":["substantive revision","duplicate publication","reviewer concern"],"sentence_template":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('120f4f9b-db4c-564a-8e1a-79b7a5828255', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Research","integrity","requires","clear","authorship","criteria",",","disclosure","of","competing","interests",",","and","avoidance","of","duplicate","publication","or","selective","reporting","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","reporting","selective","or","publication","duplicate","of","avoidance","and",",","interests","competing","of","disclosure",",","criteria","authorship","clear","requires","integrity","Research"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a2de424-1be0-525a-9356-7ea90c6747ff', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('565fb012-5f4d-50ae-b1a4-2da586e4fa10', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Исследовательская добросовестность требует ясных критериев авторства, раскрытия конкурирующих интересов и исключения дублирующих публикаций или избирательной отчётности. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('284d8ba0-0a69-5a35-ba93-abe6e658fe16', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting.","translation":"Исследовательская добросовестность требует ясных критериев авторства, раскрытия конкурирующих интересов и исключения дублирующих публикаций или избирательной отчётности.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Maintaining Publication Ethics"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9ab62b9-1105-5c8d-8618-aa4b8a1902dc', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“substantive revision” means a change affecting argument, evidence, or analysis.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D11","is_correct":true,"text":"a change affecting argument, evidence, or analysis"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D12","is_correct":false,"text":"a clear account of action taken on feedback"},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D13","is_correct":false,"text":"a standard defining legitimate scholarly authorship"}],"word":"substantive revision"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9803f4a4-bae8-567a-9d8c-40fe0011c991', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting.","explanation":"The missing C1 academic expression is “substantive revision”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"substantive revision","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D14","is_correct":true},{"audio_text":"authorship criterion","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D15","is_correct":false},{"audio_text":"research integrity","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D16","is_correct":false}],"sentence_template":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b921c34f-13af-5afa-bacd-7ff3aecdb10c', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"substantive revision","explanation":"The complete academic argument uses “substantive revision” with conceptual precision.","hint_prefix":"subs","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bf41246-9235-5b53-a837-19b105928c85', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reviewer concern","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D17","text":"reviewer concern"},{"audio_text":"revision matrix","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D18","text":"revision matrix"},{"audio_text":"substantive revision","id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D19","text":"substantive revision"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2777744-3c26-50e1-ad16-932d263c0885', '55d98fe5-84e3-5399-8b06-86e8f720762f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Maintaining Publication Ethics”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D20","is_correct":true,"text":"Research integrity requires clear authorship criteria, disclosure of competing interests, and avoidance of duplicate publication or selective reporting."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_PEER_REVIEW_REVISION_AND_PUBLICATION_ETHICS_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('62ac5e54-ba07-5584-9dae-b95a6609cb96', '55d98fe5-84e3-5399-8b06-86e8f720762f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4eb37ad1-8cbf-5304-89c1-a2c754f61441', 'en', 'reviewer concern', 'замечание рецензента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26dadaa1-17d6-57dc-9de7-cbd630cbce5c', 'en', 'revision matrix', 'матрица доработок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb5af962-da9e-5313-a8a0-cee2cf3ae547', 'en', 'substantive revision', 'содержательная доработка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73c6281c-8e69-5fec-9a85-e74398f418f4', 'en', 'transparent response', 'прозрачный ответ', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2172c0ff-0da1-5a47-9fd4-4b8c6be5fd5a', 'en', 'authorship criterion', 'критерий авторства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c76f298-bded-5388-b678-efc10888d37c', 'en', 'duplicate publication', 'дублирующая публикация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c2cfaba-a2a3-528a-91b2-9d0c7d3383fc', 'en', 'research integrity', 'исследовательская добросовестность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4eb37ad1-8cbf-5304-89c1-a2c754f61441', 'en', 'reviewer concern', 'замечание рецензента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26dadaa1-17d6-57dc-9de7-cbd630cbce5c', 'en', 'revision matrix', 'матрица доработок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb5af962-da9e-5313-a8a0-cee2cf3ae547', 'en', 'substantive revision', 'содержательная доработка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73c6281c-8e69-5fec-9a85-e74398f418f4', 'en', 'transparent response', 'прозрачный ответ', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2172c0ff-0da1-5a47-9fd4-4b8c6be5fd5a', 'en', 'authorship criterion', 'критерий авторства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c76f298-bded-5388-b678-efc10888d37c', 'en', 'duplicate publication', 'дублирующая публикация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c2cfaba-a2a3-528a-91b2-9d0c7d3383fc', 'en', 'research integrity', 'исследовательская добросовестность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4eb37ad1-8cbf-5304-89c1-a2c754f61441', 'en', 'reviewer concern', 'замечание рецензента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26dadaa1-17d6-57dc-9de7-cbd630cbce5c', 'en', 'revision matrix', 'матрица доработок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb5af962-da9e-5313-a8a0-cee2cf3ae547', 'en', 'substantive revision', 'содержательная доработка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73c6281c-8e69-5fec-9a85-e74398f418f4', 'en', 'transparent response', 'прозрачный ответ', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2172c0ff-0da1-5a47-9fd4-4b8c6be5fd5a', 'en', 'authorship criterion', 'критерий авторства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c76f298-bded-5388-b678-efc10888d37c', 'en', 'duplicate publication', 'дублирующая публикация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c2cfaba-a2a3-528a-91b2-9d0c7d3383fc', 'en', 'research integrity', 'исследовательская добросовестность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'reviewer concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'revision matrix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'substantive revision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'transparent response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorship criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'duplicate publication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, 'f9d059f7-9ec2-52f5-903a-e7ef943538b8', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'research integrity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '32f0e51c-5853-5693-a5fc-9b881e51b32c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'reviewer concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '32f0e51c-5853-5693-a5fc-9b881e51b32c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'revision matrix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '32f0e51c-5853-5693-a5fc-9b881e51b32c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'substantive revision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '32f0e51c-5853-5693-a5fc-9b881e51b32c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'transparent response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '32f0e51c-5853-5693-a5fc-9b881e51b32c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorship criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '32f0e51c-5853-5693-a5fc-9b881e51b32c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'duplicate publication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '32f0e51c-5853-5693-a5fc-9b881e51b32c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'research integrity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '55d98fe5-84e3-5399-8b06-86e8f720762f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'reviewer concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '55d98fe5-84e3-5399-8b06-86e8f720762f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'revision matrix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '55d98fe5-84e3-5399-8b06-86e8f720762f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'substantive revision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '55d98fe5-84e3-5399-8b06-86e8f720762f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'transparent response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '55d98fe5-84e3-5399-8b06-86e8f720762f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorship criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '55d98fe5-84e3-5399-8b06-86e8f720762f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'duplicate publication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '62ac5e54-ba07-5584-9dae-b95a6609cb96', id, '55d98fe5-84e3-5399-8b06-86e8f720762f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'research integrity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
