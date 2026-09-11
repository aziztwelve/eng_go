-- Track: B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', 'B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE', 'Углублённая подготовка к экзаменам и критический ответ', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Углублённая подготовка к экзаменам и критический ответ»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Advanced Exam Preparation and Critical Response","ru":"Углублённая подготовка к экзаменам и критический ответ"}'::jsonb, '{"en":"Develop independent B2 academic skills for advanced exam preparation and critical response by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Углублённая подготовка к экзаменам и критический ответ»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4a126af5-ba31-521f-8f3f-423b1786dd32', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Strategic Revision","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc928516-530c-5bbe-ae4f-7fbd2a031659', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D01","left":"diagnostic practice","right":"диагностическая практика"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D02","left":"retrieval practice","right":"практика воспроизведения"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D03","left":"command word","right":"командное слово"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D04","left":"allocate marks","right":"распределять баллы"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D05","left":"critical response","right":"критический ответ"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D06","left":"time constraint","right":"ограничение времени"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D07","left":"evaluate performance","right":"оценивать результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c527cbab-c0d5-5bd8-936e-9452bc3b281f', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D08","is_correct":true,"text":"Diagnostic practice is most useful when its results determine which topics require focused revision rather than additional passive reading."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('171cf21d-cf32-5503-98f0-4b7602006376', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Diagnostic practice is most useful when its results determine which topics require focused revision rather than additional passive reading.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Диагностическая практика наиболее полезна, когда её результаты определяют темы для целенаправленного повторения, а не дополнительного пассивного чтения.","target_language":"en","word_bank":["Diagnostic","practice","is","most","useful","when","its","results","determine","which","topics","require","focused","revision","rather","than","additional","passive","reading","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('777a2741-647a-586c-9c3e-2a9d17afcc32', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"diagnostic practice","instruction":"Выберите подходящее слово.","options":["diagnostic practice","allocate marks","time constraint"],"sentence_template":"___ is most useful when its results determine which topics require focused revision rather than additional passive reading."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbda8f2b-1352-5538-a62b-99b6aac75282', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Diagnostic","practice","is","most","useful","when","its","results","determine","which","topics","require","focused","revision","rather","than","additional","passive","reading","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","reading","passive","additional","than","rather","revision","focused","require","topics","which","determine","results","its","when","useful","most","is","practice","Diagnostic"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fe56281-60c0-5938-a249-2b8d2aac0bd4', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Diagnostic practice is most useful when its results determine which topics require focused revision rather than additional passive reading. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13bedc89-f738-5a50-ba39-1c621686b448', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Diagnostic practice is most useful when its results determine which topics require focused revision rather than additional passive reading. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Диагностическая практика наиболее полезна, когда её результаты определяют темы для целенаправленного повторения, а не дополнительного пассивного чтения. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2a6caee-7e46-5eeb-b187-3722acb03263', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Diagnostic practice is most useful when its results determine which topics require focused revision rather than additional passive reading.","translation":"Диагностическая практика наиболее полезна, когда её результаты определяют темы для целенаправленного повторения, а не дополнительного пассивного чтения.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Strategic Revision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc8f26ad-350f-513f-86f5-64e94f1e55f5', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“diagnostic practice” means practice used to identify specific strengths and weaknesses.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D11","is_correct":true,"text":"practice used to identify specific strengths and weaknesses"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D12","is_correct":false,"text":"strengthening memory by recalling information without prompts"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D13","is_correct":false,"text":"a verb indicating what an exam response must do"}],"word":"diagnostic practice"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69cf777f-9734-5837-8eb3-5c616e7131ee', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Diagnostic practice is most useful when its results determine which topics require focused revision rather than additional passive reading.","explanation":"The missing academic expression is “diagnostic practice”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"diagnostic practice","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D14","is_correct":true},{"audio_text":"command word","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D15","is_correct":false},{"audio_text":"critical response","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D16","is_correct":false}],"sentence_template":"___ is most useful when its results determine which topics require focused revision rather than additional passive reading."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1226290-721c-5bfd-8eeb-6e01976131aa', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"diagnostic practice","explanation":"The complete academic statement uses “diagnostic practice” precisely.","hint_prefix":"diag","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is most useful when its results determine which topics require focused revision rather than additional passive reading."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b81d774-e762-506c-8aef-6ce6ab9cfcc6', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"diagnostic practice","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D17","text":"diagnostic practice"},{"audio_text":"retrieval practice","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D18","text":"retrieval practice"},{"audio_text":"command word","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D19","text":"command word"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a261806b-89d0-50b9-8a92-fe5f95ea7381', '4a126af5-ba31-521f-8f3f-423b1786dd32', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Strategic Revision”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D20","is_correct":true,"text":"Diagnostic practice is most useful when its results determine which topics require focused revision rather than additional passive reading."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', '4a126af5-ba31-521f-8f3f-423b1786dd32', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ad7f3baf-36bd-5158-b081-42511225341f', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Analysing Complex Questions","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('136299de-cb70-58b1-9df8-bacdeda5520b', 'ad7f3baf-36bd-5158-b081-42511225341f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D01","left":"diagnostic practice","right":"диагностическая практика"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D02","left":"retrieval practice","right":"практика воспроизведения"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D03","left":"command word","right":"командное слово"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D04","left":"allocate marks","right":"распределять баллы"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D05","left":"critical response","right":"критический ответ"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D06","left":"time constraint","right":"ограничение времени"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D07","left":"evaluate performance","right":"оценивать результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8c64ee6-c064-591a-9520-4be3951424cc', 'ad7f3baf-36bd-5158-b081-42511225341f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D08","is_correct":true,"text":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddbca3f8-987e-52f1-bd76-9845a26b8485', 'ad7f3baf-36bd-5158-b081-42511225341f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Командное слово определяет интеллектуальную задачу, поэтому ответ, описывающий доказательства, может оказаться неудачным, если вопрос требует оценки.","target_language":"en","word_bank":["A","command","word","defines","the","intellectual","task",",","so","an","answer","that","describes","evidence","may","still","fail","when","the","question","requires","evaluation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dc38cb5-4ec4-5398-8953-66e4d0a5e26a', 'ad7f3baf-36bd-5158-b081-42511225341f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"retrieval practice","instruction":"Выберите подходящее слово.","options":["retrieval practice","critical response","evaluate performance"],"sentence_template":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbadcdd8-2c77-5574-a4dc-7f813c23dda9', 'ad7f3baf-36bd-5158-b081-42511225341f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","command","word","defines","the","intellectual","task",",","so","an","answer","that","describes","evidence","may","still","fail","when","the","question","requires","evaluation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","evaluation","requires","question","the","when","fail","still","may","evidence","describes","that","answer","an","so",",","task","intellectual","the","defines","word","command","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ef52263-5c03-5508-b572-0febdaa04338', 'ad7f3baf-36bd-5158-b081-42511225341f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7aaba65d-06b6-5db4-8167-f8361c7ef1cf', 'ad7f3baf-36bd-5158-b081-42511225341f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Командное слово определяет интеллектуальную задачу, поэтому ответ, описывающий доказательства, может оказаться неудачным, если вопрос требует оценки. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a8793f2-fa8d-5a1d-b844-7bd25206d863', 'ad7f3baf-36bd-5158-b081-42511225341f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation.","translation":"Командное слово определяет интеллектуальную задачу, поэтому ответ, описывающий доказательства, может оказаться неудачным, если вопрос требует оценки.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Analysing Complex Questions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('723024bd-f502-5947-b1e1-83c3e1232970', 'ad7f3baf-36bd-5158-b081-42511225341f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“retrieval practice” means strengthening memory by recalling information without prompts.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D11","is_correct":true,"text":"strengthening memory by recalling information without prompts"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D12","is_correct":false,"text":"a verb indicating what an exam response must do"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D13","is_correct":false,"text":"assign points to parts of an assessment"}],"word":"retrieval practice"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f18173f5-842a-513c-8938-6b8e4e93d0bb', 'ad7f3baf-36bd-5158-b081-42511225341f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation.","explanation":"The missing academic expression is “retrieval practice”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"retrieval practice","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D14","is_correct":true},{"audio_text":"allocate marks","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D15","is_correct":false},{"audio_text":"time constraint","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D16","is_correct":false}],"sentence_template":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49a68f7f-28fc-5e3d-88ba-aa8cc73ae704', 'ad7f3baf-36bd-5158-b081-42511225341f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"retrieval practice","explanation":"The complete academic statement uses “retrieval practice” precisely.","hint_prefix":"retr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db77e2d1-0376-5d18-9433-46b287978fe5', 'ad7f3baf-36bd-5158-b081-42511225341f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"diagnostic practice","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D17","text":"diagnostic practice"},{"audio_text":"retrieval practice","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D18","text":"retrieval practice"},{"audio_text":"command word","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D19","text":"command word"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5a17802-e242-514b-b8f6-3bba3663b111', 'ad7f3baf-36bd-5158-b081-42511225341f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Analysing Complex Questions”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D20","is_correct":true,"text":"A command word defines the intellectual task, so an answer that describes evidence may still fail when the question requires evaluation."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', 'ad7f3baf-36bd-5158-b081-42511225341f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Building a Critical Response","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cd2217b-dd0c-55b7-96f8-7e549c587984', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D01","left":"diagnostic practice","right":"диагностическая практика"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D02","left":"retrieval practice","right":"практика воспроизведения"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D03","left":"command word","right":"командное слово"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D04","left":"allocate marks","right":"распределять баллы"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D05","left":"critical response","right":"критический ответ"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D06","left":"time constraint","right":"ограничение времени"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D07","left":"evaluate performance","right":"оценивать результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('855daca8-a4a2-5aea-9d2e-40dcf4d1d242', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D08","is_correct":true,"text":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3effb730-d17c-5163-88cb-05ecf0939bdc', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Критический ответ должен сравнивать интерпретации, оценивать качество подтверждающих доказательств и приходить к обоснованному выводу в условиях ограничения времени.","target_language":"en","word_bank":["A","critical","response","should","compare","interpretations",",","assess","the","quality","of","supporting","evidence",",","and","reach","a","justified","conclusion","within","the","time","constraint","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c92fc1cc-a5c1-5469-a90f-07f42595b6a5', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"command word","instruction":"Выберите подходящее слово.","options":["command word","time constraint","diagnostic practice"],"sentence_template":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f04fce72-300c-5fc1-bba7-fbfd14cffc93', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","critical","response","should","compare","interpretations",",","assess","the","quality","of","supporting","evidence",",","and","reach","a","justified","conclusion","within","the","time","constraint","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","constraint","time","the","within","conclusion","justified","a","reach","and",",","evidence","supporting","of","quality","the","assess",",","interpretations","compare","should","response","critical","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e035286a-5a86-5dc2-bab0-ff77097a9ff2', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0397871f-f464-5006-b0ed-61fa95906950', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Критический ответ должен сравнивать интерпретации, оценивать качество подтверждающих доказательств и приходить к обоснованному выводу в условиях ограничения времени. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f30bce9a-57f3-5bbb-8dc0-bf05f08bce9b', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint.","translation":"Критический ответ должен сравнивать интерпретации, оценивать качество подтверждающих доказательств и приходить к обоснованному выводу в условиях ограничения времени.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Building a Critical Response"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1367f68-65d1-5c77-8cd0-02df32ba61aa', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“command word” means a verb indicating what an exam response must do.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D11","is_correct":true,"text":"a verb indicating what an exam response must do"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D12","is_correct":false,"text":"assign points to parts of an assessment"},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D13","is_correct":false,"text":"an answer that evaluates ideas using evidence and reasoning"}],"word":"command word"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afbe5f8f-ff34-5b55-9a77-b86592c4e341', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint.","explanation":"The missing academic expression is “command word”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"command word","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D14","is_correct":true},{"audio_text":"critical response","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D15","is_correct":false},{"audio_text":"evaluate performance","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D16","is_correct":false}],"sentence_template":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec7a464b-5718-5552-904b-e1beb3bbea82', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"command word","explanation":"The complete academic statement uses “command word” precisely.","hint_prefix":"comm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a8c68f6-9c4d-5f7d-9c71-2a68514a949b', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"diagnostic practice","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D17","text":"diagnostic practice"},{"audio_text":"retrieval practice","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D18","text":"retrieval practice"},{"audio_text":"command word","id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D19","text":"command word"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66195046-5cd0-5a9d-9c1a-ed2d6bde9d26', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Building a Critical Response”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D20","is_correct":true,"text":"A critical response should compare interpretations, assess the quality of supporting evidence, and reach a justified conclusion within the time constraint."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ADVANCED_EXAM_PREPARATION_AND_CRITICAL_RESPONSE_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c991c223-9a95-5f0c-9fab-0ea618e2471b', 'en', 'diagnostic practice', 'диагностическая практика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a180be4-c1ad-5cbc-bb3d-932bd7dfc976', 'en', 'retrieval practice', 'практика воспроизведения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e02591a7-6e05-5452-bbf4-b38bb78f2fe0', 'en', 'command word', 'командное слово', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73c56eb8-0dd9-5b52-a0fb-c5968de723bb', 'en', 'allocate marks', 'распределять баллы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('031af54e-68b1-505c-a211-e7e3cbc2163d', 'en', 'critical response', 'критический ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd8c152a-149e-5ed6-92d8-aac760582f6f', 'en', 'time constraint', 'ограничение времени', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13c15ff4-b64b-56fb-9251-5835596e3802', 'en', 'evaluate performance', 'оценивать результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c991c223-9a95-5f0c-9fab-0ea618e2471b', 'en', 'diagnostic practice', 'диагностическая практика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a180be4-c1ad-5cbc-bb3d-932bd7dfc976', 'en', 'retrieval practice', 'практика воспроизведения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e02591a7-6e05-5452-bbf4-b38bb78f2fe0', 'en', 'command word', 'командное слово', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73c56eb8-0dd9-5b52-a0fb-c5968de723bb', 'en', 'allocate marks', 'распределять баллы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('031af54e-68b1-505c-a211-e7e3cbc2163d', 'en', 'critical response', 'критический ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd8c152a-149e-5ed6-92d8-aac760582f6f', 'en', 'time constraint', 'ограничение времени', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13c15ff4-b64b-56fb-9251-5835596e3802', 'en', 'evaluate performance', 'оценивать результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c991c223-9a95-5f0c-9fab-0ea618e2471b', 'en', 'diagnostic practice', 'диагностическая практика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a180be4-c1ad-5cbc-bb3d-932bd7dfc976', 'en', 'retrieval practice', 'практика воспроизведения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e02591a7-6e05-5452-bbf4-b38bb78f2fe0', 'en', 'command word', 'командное слово', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73c56eb8-0dd9-5b52-a0fb-c5968de723bb', 'en', 'allocate marks', 'распределять баллы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('031af54e-68b1-505c-a211-e7e3cbc2163d', 'en', 'critical response', 'критический ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd8c152a-149e-5ed6-92d8-aac760582f6f', 'en', 'time constraint', 'ограничение времени', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13c15ff4-b64b-56fb-9251-5835596e3802', 'en', 'evaluate performance', 'оценивать результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, '4a126af5-ba31-521f-8f3f-423b1786dd32', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'diagnostic practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, '4a126af5-ba31-521f-8f3f-423b1786dd32', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'retrieval practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, '4a126af5-ba31-521f-8f3f-423b1786dd32', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'command word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, '4a126af5-ba31-521f-8f3f-423b1786dd32', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'allocate marks' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, '4a126af5-ba31-521f-8f3f-423b1786dd32', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, '4a126af5-ba31-521f-8f3f-423b1786dd32', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'time constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, '4a126af5-ba31-521f-8f3f-423b1786dd32', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'ad7f3baf-36bd-5158-b081-42511225341f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'diagnostic practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'ad7f3baf-36bd-5158-b081-42511225341f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'retrieval practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'ad7f3baf-36bd-5158-b081-42511225341f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'command word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'ad7f3baf-36bd-5158-b081-42511225341f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'allocate marks' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'ad7f3baf-36bd-5158-b081-42511225341f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'ad7f3baf-36bd-5158-b081-42511225341f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'time constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'ad7f3baf-36bd-5158-b081-42511225341f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'diagnostic practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'retrieval practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'command word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'allocate marks' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'time constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'add0eb9d-ae31-5a4d-9fe0-2a8461f7b0bb', id, 'f9e9e282-7978-5745-89c3-7f7c7aeb2a8f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
