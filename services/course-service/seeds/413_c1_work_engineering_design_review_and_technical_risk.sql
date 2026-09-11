-- Track: C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('36b46ee8-5b43-5491-809d-98f55fb4aa60', 'C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK', 'Инженерное проектирование и технические риски', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Инженерное проектирование и технические риски» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Engineering Design Review and Technical Risk","ru":"Инженерное проектирование и технические риски"}'::jsonb, '{"en":"Develop advanced C1 professional communication for engineering design review and technical risk through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Инженерное проектирование и технические риски» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c379d7e9-1105-51e6-a7f1-14b8700ab23f', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Presenting Design Assumptions","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea4348f1-3fe9-55a9-a68f-b32aee3956ef', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D01","left":"design specification","right":"техническое задание"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D02","left":"safety factor","right":"коэффициент запаса"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D03","left":"failure mode","right":"режим отказа"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D04","left":"load-bearing capacity","right":"несущая способность"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D05","left":"design tolerance","right":"допуск конструкции"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D06","left":"root-cause analysis","right":"анализ первопричины"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D07","left":"technical sign-off","right":"техническое утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f1dd4db-621e-5f7f-82ec-c84fdc88a4d5', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D08","is_correct":true,"text":"The design specification should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4cc24e3-d321-5494-bc1f-671d7129ca69', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The design specification should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Техническое задание должно явно указывать все рабочие предположения, особенно влияющие на несущую способность и коэффициент запаса.","target_language":"en","word_bank":["The","design","specification","should","make","every","operating","assumption","explicit",",","particularly","those","affecting","load-bearing","capacity","and","the","safety","factor","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a13f490-7b94-5831-95b0-994b44a39ac7', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"design specification","instruction":"Выберите подходящее слово.","options":["design specification","load-bearing capacity","root-cause analysis"],"sentence_template":"The ___ should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69cc0c4e-0a67-56db-8686-1b35310ce312', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","design","specification","should","make","every","operating","assumption","explicit",",","particularly","those","affecting","load-bearing","capacity","and","the","safety","factor","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","factor","safety","the","and","capacity","load-bearing","affecting","those","particularly",",","explicit","assumption","operating","every","make","should","specification","design","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('795b84c7-e5f0-5b85-9eae-97fcf9742cab', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The design specification should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c859d7f9-3823-532b-8b64-fac6cb41db18', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The design specification should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Техническое задание должно явно указывать все рабочие предположения, особенно влияющие на несущую способность и коэффициент запаса. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f334e36-1b97-59ea-b537-d08a23dd3dbd', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The design specification should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor.","translation":"Техническое задание должно явно указывать все рабочие предположения, особенно влияющие на несущую способность и коэффициент запаса.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Presenting Design Assumptions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f54b1588-5f3e-5db7-9b19-720c444095b9', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“design specification” means the documented requirements a design must satisfy.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D11","is_correct":true,"text":"the documented requirements a design must satisfy"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D12","is_correct":false,"text":"additional capacity included to account for uncertainty"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D13","is_correct":false,"text":"a specific way in which a component may fail"}],"word":"design specification"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a500d2f-2e98-5370-9498-5b4d74ed1ca5', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The design specification should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor.","explanation":"The missing professional term is “design specification”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"design specification","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D14","is_correct":true},{"audio_text":"failure mode","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D15","is_correct":false},{"audio_text":"design tolerance","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D16","is_correct":false}],"sentence_template":"The ___ should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a872e13-f48f-54ea-9732-ec174acd811d', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"design specification","explanation":"The complete professional statement uses “design specification” precisely.","hint_prefix":"desi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bae9cb79-b0f2-5e1a-90de-bf7ef2fb633f', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"design specification","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D17","text":"design specification"},{"audio_text":"safety factor","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D18","text":"safety factor"},{"audio_text":"failure mode","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D19","text":"failure mode"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edb0478a-df51-58aa-88fe-d07e8825d71e', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Presenting Design Assumptions”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D20","is_correct":true,"text":"The design specification should make every operating assumption explicit, particularly those affecting load-bearing capacity and the safety factor."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36b46ee8-5b43-5491-809d-98f55fb4aa60', 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2388c69f-cdeb-5126-898c-0831893d84c1', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Challenging Technical Risk","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b3f7e81-b57b-533b-a210-36566eac4b96', '2388c69f-cdeb-5126-898c-0831893d84c1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D01","left":"design specification","right":"техническое задание"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D02","left":"safety factor","right":"коэффициент запаса"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D03","left":"failure mode","right":"режим отказа"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D04","left":"load-bearing capacity","right":"несущая способность"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D05","left":"design tolerance","right":"допуск конструкции"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D06","left":"root-cause analysis","right":"анализ первопричины"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D07","left":"technical sign-off","right":"техническое утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddee249d-4b7e-5840-96a5-d70bd01ac96f', '2388c69f-cdeb-5126-898c-0831893d84c1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D08","is_correct":true,"text":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('288b999a-1669-5416-bcd5-6c5198ec5f9b', '2388c69f-cdeb-5126-898c-0831893d84c1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Этот режим отказа остаётся маловероятным, но последствия достаточно серьёзны, чтобы оправдать более строгий допуск и независимую проверку.","target_language":"en","word_bank":["This","failure","mode","remains","unlikely",",","but","the","consequence","is","severe","enough","to","justify","a","tighter","design","tolerance","and","independent","verification","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4deedfd2-90eb-584c-836f-2bbbaa547685', '2388c69f-cdeb-5126-898c-0831893d84c1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"safety factor","instruction":"Выберите подходящее слово.","options":["safety factor","design tolerance","technical sign-off"],"sentence_template":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f352e64-5472-5ead-bc85-f1f73964f69b', '2388c69f-cdeb-5126-898c-0831893d84c1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["This","failure","mode","remains","unlikely",",","but","the","consequence","is","severe","enough","to","justify","a","tighter","design","tolerance","and","independent","verification","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","verification","independent","and","tolerance","design","tighter","a","justify","to","enough","severe","is","consequence","the","but",",","unlikely","remains","mode","failure","This"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09b02f2b-f3aa-5a08-807c-5c94f6030860', '2388c69f-cdeb-5126-898c-0831893d84c1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2363ac13-dbe0-5ad0-8c1c-efc38ff77c58', '2388c69f-cdeb-5126-898c-0831893d84c1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Этот режим отказа остаётся маловероятным, но последствия достаточно серьёзны, чтобы оправдать более строгий допуск и независимую проверку. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c56a3383-641a-53a5-95c8-1ee783711fe7', '2388c69f-cdeb-5126-898c-0831893d84c1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification.","translation":"Этот режим отказа остаётся маловероятным, но последствия достаточно серьёзны, чтобы оправдать более строгий допуск и независимую проверку.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Challenging Technical Risk"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f407090-bb1f-53e7-9e18-a1ddf182796d', '2388c69f-cdeb-5126-898c-0831893d84c1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“safety factor” means additional capacity included to account for uncertainty.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D11","is_correct":true,"text":"additional capacity included to account for uncertainty"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D12","is_correct":false,"text":"a specific way in which a component may fail"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D13","is_correct":false,"text":"the maximum load a structure can support"}],"word":"safety factor"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cfd0666-f03d-53eb-ad55-640793558381', '2388c69f-cdeb-5126-898c-0831893d84c1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification.","explanation":"The missing professional term is “safety factor”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"safety factor","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D14","is_correct":true},{"audio_text":"load-bearing capacity","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D15","is_correct":false},{"audio_text":"root-cause analysis","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D16","is_correct":false}],"sentence_template":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dda395c-4618-5470-82a5-4220cf395777', '2388c69f-cdeb-5126-898c-0831893d84c1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"safety factor","explanation":"The complete professional statement uses “safety factor” precisely.","hint_prefix":"safe","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0112f958-721b-571b-a966-572d3e187003', '2388c69f-cdeb-5126-898c-0831893d84c1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"design specification","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D17","text":"design specification"},{"audio_text":"safety factor","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D18","text":"safety factor"},{"audio_text":"failure mode","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D19","text":"failure mode"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('951c9f56-f28b-5b1c-a491-6a18e8a8e28d', '2388c69f-cdeb-5126-898c-0831893d84c1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Challenging Technical Risk”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D20","is_correct":true,"text":"This failure mode remains unlikely, but the consequence is severe enough to justify a tighter design tolerance and independent verification."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36b46ee8-5b43-5491-809d-98f55fb4aa60', '2388c69f-cdeb-5126-898c-0831893d84c1', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Approving a Revised Design","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4680d5a-052c-5d9b-91ad-854ac55733ed', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D01","left":"design specification","right":"техническое задание"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D02","left":"safety factor","right":"коэффициент запаса"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D03","left":"failure mode","right":"режим отказа"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D04","left":"load-bearing capacity","right":"несущая способность"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D05","left":"design tolerance","right":"допуск конструкции"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D06","left":"root-cause analysis","right":"анализ первопричины"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D07","left":"technical sign-off","right":"техническое утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f8eef1a-bb85-50e7-9cd1-7c58fd8c7f18', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D08","is_correct":true,"text":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4ca6b57-933b-566c-86b3-5de96c2b143c', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Техническое утверждение должно следовать за анализом первопричины и подтверждением того, что пересмотренная конструкция контролирует исходный риск, не создавая нового.","target_language":"en","word_bank":["Technical","sign-off","should","follow","root-cause","analysis","and","confirmation","that","the","revised","design","controls","the","original","risk","without","introducing","another","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d1e9a5a-7953-54f1-b971-730d67117513', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"failure mode","instruction":"Выберите подходящее слово.","options":["failure mode","root-cause analysis","design specification"],"sentence_template":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84a3d521-2920-5613-bb51-ac78426b5b99', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Technical","sign-off","should","follow","root-cause","analysis","and","confirmation","that","the","revised","design","controls","the","original","risk","without","introducing","another","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","another","introducing","without","risk","original","the","controls","design","revised","the","that","confirmation","and","analysis","root-cause","follow","should","sign-off","Technical"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a55e4f1-1ef1-5649-acf6-e02a94124066', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7c53d19-974a-5d83-9590-ecf03f4fc6a6', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Техническое утверждение должно следовать за анализом первопричины и подтверждением того, что пересмотренная конструкция контролирует исходный риск, не создавая нового. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6b6462d-9780-5050-a7f4-c65c9d7a3daa', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another.","translation":"Техническое утверждение должно следовать за анализом первопричины и подтверждением того, что пересмотренная конструкция контролирует исходный риск, не создавая нового.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Approving a Revised Design"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39345c27-5d85-5c04-8ef8-c771cbd80eba', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“failure mode” means a specific way in which a component may fail.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D11","is_correct":true,"text":"a specific way in which a component may fail"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D12","is_correct":false,"text":"the maximum load a structure can support"},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D13","is_correct":false,"text":"the permitted variation in a measurement or component"}],"word":"failure mode"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4403aecf-f2a4-5e4d-aae9-60f1a05b2068', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another.","explanation":"The missing professional term is “failure mode”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"failure mode","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D14","is_correct":true},{"audio_text":"design tolerance","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D15","is_correct":false},{"audio_text":"technical sign-off","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D16","is_correct":false}],"sentence_template":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8668b4f6-e205-5cbc-8bf7-aeabb562e564', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"failure mode","explanation":"The complete professional statement uses “failure mode” precisely.","hint_prefix":"fail","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62e8650b-4f2c-57a6-ae4c-3abc8ea71cf0', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"design specification","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D17","text":"design specification"},{"audio_text":"safety factor","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D18","text":"safety factor"},{"audio_text":"failure mode","id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D19","text":"failure mode"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07089aa3-e607-539a-88b8-ae156ce4d708', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Approving a Revised Design”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D20","is_correct":true,"text":"Technical sign-off should follow root-cause analysis and confirmation that the revised design controls the original risk without introducing another."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_ENGINEERING_DESIGN_REVIEW_AND_TECHNICAL_RISK_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36b46ee8-5b43-5491-809d-98f55fb4aa60', 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66c97576-7e23-5d79-b231-bf54ec473381', 'en', 'design specification', 'техническое задание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40fbc261-c44e-5faa-ac1d-13001c107617', 'en', 'safety factor', 'коэффициент запаса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96433920-fb41-58dd-b782-dbe9ce16c3b6', 'en', 'failure mode', 'режим отказа', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('64018514-0341-522e-8268-f67f0d411515', 'en', 'load-bearing capacity', 'несущая способность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d88759a8-8165-5a55-a2da-02f212599365', 'en', 'design tolerance', 'допуск конструкции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7df9690c-f34f-5b60-a702-83f4908f5b6e', 'en', 'root-cause analysis', 'анализ первопричины', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e668994-7a6e-59e0-b3a0-054dc38d4d9e', 'en', 'technical sign-off', 'техническое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66c97576-7e23-5d79-b231-bf54ec473381', 'en', 'design specification', 'техническое задание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40fbc261-c44e-5faa-ac1d-13001c107617', 'en', 'safety factor', 'коэффициент запаса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96433920-fb41-58dd-b782-dbe9ce16c3b6', 'en', 'failure mode', 'режим отказа', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('64018514-0341-522e-8268-f67f0d411515', 'en', 'load-bearing capacity', 'несущая способность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d88759a8-8165-5a55-a2da-02f212599365', 'en', 'design tolerance', 'допуск конструкции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7df9690c-f34f-5b60-a702-83f4908f5b6e', 'en', 'root-cause analysis', 'анализ первопричины', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e668994-7a6e-59e0-b3a0-054dc38d4d9e', 'en', 'technical sign-off', 'техническое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66c97576-7e23-5d79-b231-bf54ec473381', 'en', 'design specification', 'техническое задание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40fbc261-c44e-5faa-ac1d-13001c107617', 'en', 'safety factor', 'коэффициент запаса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96433920-fb41-58dd-b782-dbe9ce16c3b6', 'en', 'failure mode', 'режим отказа', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('64018514-0341-522e-8268-f67f0d411515', 'en', 'load-bearing capacity', 'несущая способность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d88759a8-8165-5a55-a2da-02f212599365', 'en', 'design tolerance', 'допуск конструкции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7df9690c-f34f-5b60-a702-83f4908f5b6e', 'en', 'root-cause analysis', 'анализ первопричины', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e668994-7a6e-59e0-b3a0-054dc38d4d9e', 'en', 'technical sign-off', 'техническое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'design specification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'safety factor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'failure mode' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'load-bearing capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'design tolerance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'root-cause analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'c379d7e9-1105-51e6-a7f1-14b8700ab23f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, '2388c69f-cdeb-5126-898c-0831893d84c1', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'design specification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, '2388c69f-cdeb-5126-898c-0831893d84c1', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'safety factor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, '2388c69f-cdeb-5126-898c-0831893d84c1', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'failure mode' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, '2388c69f-cdeb-5126-898c-0831893d84c1', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'load-bearing capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, '2388c69f-cdeb-5126-898c-0831893d84c1', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'design tolerance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, '2388c69f-cdeb-5126-898c-0831893d84c1', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'root-cause analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, '2388c69f-cdeb-5126-898c-0831893d84c1', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'design specification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'safety factor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'failure mode' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'load-bearing capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'design tolerance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'root-cause analysis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36b46ee8-5b43-5491-809d-98f55fb4aa60', id, 'f8fadb81-1c12-5e6c-bdbd-c072c585b1f8', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
