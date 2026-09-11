-- Track: B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3efcd7da-b1fc-500d-94a3-2e62f178b0fe', 'B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS', 'Споры с объектами размещения, восстановление сервиса и права', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Споры с объектами размещения, восстановление сервиса и права», оценивая варианты, права, риски и культурный контекст.', '{"en":"Accommodation Disputes, Service Recovery and Rights","ru":"Споры с объектами размещения, восстановление сервиса и права"}'::jsonb, '{"en":"Develop confident B2 communication for accommodation disputes, service recovery and rights by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Споры с объектами размещения, восстановление сервиса и права», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5339fc28-c5a0-5cd9-bec3-95c35c218283', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Documenting a Service Failure","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abb5e3be-02e8-579c-840c-98e7b7b60ca4', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D01","left":"material discrepancy","right":"существенное несоответствие"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D02","left":"service failure","right":"сбой обслуживания"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D03","left":"document the condition","right":"зафиксировать состояние"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D04","left":"appropriate remedy","right":"соразмерное решение"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D05","left":"partial refund","right":"частичный возврат"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D06","left":"formal escalation","right":"официальная эскалация"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D07","left":"booking platform","right":"платформа бронирования"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d05cb500-9a1e-5b52-8f93-80b7b46b6b0d', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D08","is_correct":true,"text":"The unavailable facilities constitute a material discrepancy because they were central to the published description and our booking decision."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5940416-2268-52ef-8506-cd3c79132074', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The unavailable facilities constitute a material discrepancy because they were central to the published description and our booking decision.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Недоступные удобства представляют собой существенное несоответствие, поскольку они были центральной частью описания и нашего решения о бронировании.","target_language":"en","word_bank":["The","unavailable","facilities","constitute","a","material","discrepancy","because","they","were","central","to","the","published","description","and","our","booking","decision","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac3a5860-e114-554f-b282-82944d05ee13', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"material discrepancy","instruction":"Выберите подходящее слово.","options":["material discrepancy","appropriate remedy","formal escalation"],"sentence_template":"The unavailable facilities constitute a ___ because they were central to the published description and our booking decision."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce28af38-ca3b-565f-a6ad-b93b14c4ff6a', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","unavailable","facilities","constitute","a","material","discrepancy","because","they","were","central","to","the","published","description","and","our","booking","decision","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","decision","booking","our","and","description","published","the","to","central","were","they","because","discrepancy","material","a","constitute","facilities","unavailable","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17e58990-81bd-54ea-b381-7ef6648e02b0', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The unavailable facilities constitute a material discrepancy because they were central to the published description and our booking decision. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5a3860b-5812-5f45-9075-dbc99a10308b', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The unavailable facilities constitute a material discrepancy because they were central to the published description and our booking decision. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Недоступные удобства представляют собой существенное несоответствие, поскольку они были центральной частью описания и нашего решения о бронировании. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f88e3d3b-745d-5280-9d51-4b958711d25a', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The unavailable facilities constitute a material discrepancy because they were central to the published description and our booking decision.","translation":"Недоступные удобства представляют собой существенное несоответствие, поскольку они были центральной частью описания и нашего решения о бронировании.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Documenting a Service Failure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7e606c6-894c-59de-9d17-8e45d716c7e4', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“material discrepancy” means an important difference between what was promised and provided.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D11","is_correct":true,"text":"an important difference between what was promised and provided"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D12","is_correct":false,"text":"a failure to deliver an agreed standard"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D13","is_correct":false,"text":"create evidence of a problem"}],"word":"material discrepancy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('591416db-d204-58f7-9f9b-f10976e26778', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The unavailable facilities constitute a material discrepancy because they were central to the published description and our booking decision.","explanation":"The missing travel expression is “material discrepancy”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"material discrepancy","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D14","is_correct":true},{"audio_text":"document the condition","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D15","is_correct":false},{"audio_text":"partial refund","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D16","is_correct":false}],"sentence_template":"The unavailable facilities constitute a ___ because they were central to the published description and our booking decision."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a4852a1-3723-5127-bd36-d766ba1610b8', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"material discrepancy","explanation":"The complete travel statement uses “material discrepancy” precisely.","hint_prefix":"mate","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The unavailable facilities constitute a ___ because they were central to the published description and our booking decision."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a01a9f12-55a0-5166-8e0e-d04ee0e50782', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"material discrepancy","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D17","text":"material discrepancy"},{"audio_text":"service failure","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D18","text":"service failure"},{"audio_text":"document the condition","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D19","text":"document the condition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd039f61-acf9-5576-aa4c-b78ceb327057', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Documenting a Service Failure”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D20","is_correct":true,"text":"The unavailable facilities constitute a material discrepancy because they were central to the published description and our booking decision."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3efcd7da-b1fc-500d-94a3-2e62f178b0fe', '5339fc28-c5a0-5cd9-bec3-95c35c218283', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b605c95d-2380-5b19-8cf3-8fe04951207a', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Negotiating a Remedy","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a794f4d-af13-5ce0-8cef-26688e9975d1', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D01","left":"material discrepancy","right":"существенное несоответствие"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D02","left":"service failure","right":"сбой обслуживания"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D03","left":"document the condition","right":"зафиксировать состояние"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D04","left":"appropriate remedy","right":"соразмерное решение"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D05","left":"partial refund","right":"частичный возврат"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D06","left":"formal escalation","right":"официальная эскалация"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D07","left":"booking platform","right":"платформа бронирования"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50f7514b-dc03-5184-a35b-56e5c0b39378', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D08","is_correct":true,"text":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e7ddb16-04f0-54de-ac62-ae0620a4339b', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund.","instruction":"Соберите перевод.","source_language":"ru","source_text":"После фиксации состояния мы запросили соразмерное решение: другой номер или пропорциональный частичный возврат.","target_language":"en","word_bank":["After","documenting","the","condition",",","we","requested","an","appropriate","remedy","consisting","of","another","room","or","a","proportionate","partial","refund","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0888790-f1e7-51d3-af29-0b3775417361', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"service failure","instruction":"Выберите подходящее слово.","options":["service failure","partial refund","booking platform"],"sentence_template":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12817bec-8e48-5c4f-bcf7-7d8e6d3c20b1', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["After","documenting","the","condition",",","we","requested","an","appropriate","remedy","consisting","of","another","room","or","a","proportionate","partial","refund","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","refund","partial","proportionate","a","or","room","another","of","consisting","remedy","appropriate","an","requested","we",",","condition","the","documenting","After"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f82f6c4b-edfe-5de7-9505-8237661b5e43', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5addb25a-d764-534d-b18d-fbad590c7315', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"После фиксации состояния мы запросили соразмерное решение: другой номер или пропорциональный частичный возврат. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23a202a6-dd63-51a0-a982-561845bf7f2c', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund.","translation":"После фиксации состояния мы запросили соразмерное решение: другой номер или пропорциональный частичный возврат.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Negotiating a Remedy"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99b8e66c-1909-5cf5-b257-5579fd92d956', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“service failure” means a failure to deliver an agreed standard.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D11","is_correct":true,"text":"a failure to deliver an agreed standard"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D12","is_correct":false,"text":"create evidence of a problem"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D13","is_correct":false,"text":"a fair action correcting a failure"}],"word":"service failure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cde9d389-dd89-5508-aeda-a8f28aee53c2', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund.","explanation":"The missing travel expression is “service failure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"service failure","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D14","is_correct":true},{"audio_text":"appropriate remedy","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D15","is_correct":false},{"audio_text":"formal escalation","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D16","is_correct":false}],"sentence_template":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ef504dc-7c7a-58d6-948d-8a9e74dd7e0d', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"service failure","explanation":"The complete travel statement uses “service failure” precisely.","hint_prefix":"serv","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42b8a747-e052-5005-a81e-3b5e986600ad', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"material discrepancy","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D17","text":"material discrepancy"},{"audio_text":"service failure","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D18","text":"service failure"},{"audio_text":"document the condition","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D19","text":"document the condition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9874059a-6a47-51db-8145-42b787ee60c9', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Negotiating a Remedy”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D20","is_correct":true,"text":"After documenting the condition, we requested an appropriate remedy consisting of another room or a proportionate partial refund."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3efcd7da-b1fc-500d-94a3-2e62f178b0fe', 'b605c95d-2380-5b19-8cf3-8fe04951207a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b8d96fed-e0e2-5e1b-94b2-6951b297c09a', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Escalating a Formal Complaint","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9957149a-905d-509d-8025-85c48411d2c5', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D01","left":"material discrepancy","right":"существенное несоответствие"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D02","left":"service failure","right":"сбой обслуживания"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D03","left":"document the condition","right":"зафиксировать состояние"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D04","left":"appropriate remedy","right":"соразмерное решение"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D05","left":"partial refund","right":"частичный возврат"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D06","left":"formal escalation","right":"официальная эскалация"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D07","left":"booking platform","right":"платформа бронирования"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b6d74b7-a6be-5353-b5aa-c3dc8ee6c207', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D08","is_correct":true,"text":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56f7dbf2-d3b1-54d2-a8b8-24854e0f699a', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Если объект размещения отказывается устранить сбой обслуживания, жалобу следует официально передать через платформу бронирования, приложив доказательства.","target_language":"en","word_bank":["If","the","property","refuses","to","address","the","service","failure",",","the","complaint","should","be","formally","escalated","through","the","booking","platform","with","evidence","attached","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7097e67-d01b-5785-87da-6be53765d4d4', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"document the condition","instruction":"Выберите подходящее слово.","options":["document the condition","formal escalation","material discrepancy"],"sentence_template":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27646e49-2cd3-538d-b6b8-a84d6e1bbb36', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["If","the","property","refuses","to","address","the","service","failure",",","the","complaint","should","be","formally","escalated","through","the","booking","platform","with","evidence","attached","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","attached","evidence","with","platform","booking","the","through","escalated","formally","be","should","complaint","the",",","failure","service","the","address","to","refuses","property","the","If"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3568be1c-604f-569c-91ae-34e383129a32', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dca8907-3ae3-5182-80c1-395d56e409bd', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Если объект размещения отказывается устранить сбой обслуживания, жалобу следует официально передать через платформу бронирования, приложив доказательства. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c444d81-ed21-5b61-85c4-851ab47972f3', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached.","translation":"Если объект размещения отказывается устранить сбой обслуживания, жалобу следует официально передать через платформу бронирования, приложив доказательства.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Escalating a Formal Complaint"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd323902-636a-5d71-ba96-a53bf8e2b081', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“document the condition” means create evidence of a problem.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D11","is_correct":true,"text":"create evidence of a problem"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D12","is_correct":false,"text":"a fair action correcting a failure"},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D13","is_correct":false,"text":"repayment of part of the price"}],"word":"document the condition"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a68ab9f3-f36e-5409-8415-588e2a400ca8', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached.","explanation":"The missing travel expression is “document the condition”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"document the condition","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D14","is_correct":true},{"audio_text":"partial refund","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D15","is_correct":false},{"audio_text":"booking platform","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D16","is_correct":false}],"sentence_template":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11820997-6ef7-53cd-ac80-1fd4521ba3dd', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"document the condition","explanation":"The complete travel statement uses “document the condition” precisely.","hint_prefix":"docu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7105fb8-5952-5d49-ba31-4bb6a5c56985', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"material discrepancy","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D17","text":"material discrepancy"},{"audio_text":"service failure","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D18","text":"service failure"},{"audio_text":"document the condition","id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D19","text":"document the condition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a77a569f-30d2-5793-9c31-634347acbd5a', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Escalating a Formal Complaint”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D20","is_correct":true,"text":"If the property refuses to address the service failure, the complaint should be formally escalated through the booking platform with evidence attached."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_ACCOMMODATION_DISPUTES_SERVICE_RECOVERY_AND_RIGHTS_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3efcd7da-b1fc-500d-94a3-2e62f178b0fe', 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf524f89-6ccc-5b1e-aac6-9156bf72fca5', 'en', 'material discrepancy', 'существенное несоответствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48094f93-6ab2-54cb-bc8e-8a346410759e', 'en', 'service failure', 'сбой обслуживания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2d72a51-24ae-5717-a93d-41bd425589ba', 'en', 'document the condition', 'зафиксировать состояние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2091b984-8c45-528b-8d00-9e8b42940de9', 'en', 'appropriate remedy', 'соразмерное решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4584070-7cc4-5097-8151-13755b22cb96', 'en', 'partial refund', 'частичный возврат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7e9acf6-b88b-5f54-9ba1-b5d5a7589e2a', 'en', 'formal escalation', 'официальная эскалация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dfaa7246-2e57-51eb-9acc-f4af7a61f49f', 'en', 'booking platform', 'платформа бронирования', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf524f89-6ccc-5b1e-aac6-9156bf72fca5', 'en', 'material discrepancy', 'существенное несоответствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48094f93-6ab2-54cb-bc8e-8a346410759e', 'en', 'service failure', 'сбой обслуживания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2d72a51-24ae-5717-a93d-41bd425589ba', 'en', 'document the condition', 'зафиксировать состояние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2091b984-8c45-528b-8d00-9e8b42940de9', 'en', 'appropriate remedy', 'соразмерное решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4584070-7cc4-5097-8151-13755b22cb96', 'en', 'partial refund', 'частичный возврат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7e9acf6-b88b-5f54-9ba1-b5d5a7589e2a', 'en', 'formal escalation', 'официальная эскалация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dfaa7246-2e57-51eb-9acc-f4af7a61f49f', 'en', 'booking platform', 'платформа бронирования', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf524f89-6ccc-5b1e-aac6-9156bf72fca5', 'en', 'material discrepancy', 'существенное несоответствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48094f93-6ab2-54cb-bc8e-8a346410759e', 'en', 'service failure', 'сбой обслуживания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2d72a51-24ae-5717-a93d-41bd425589ba', 'en', 'document the condition', 'зафиксировать состояние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2091b984-8c45-528b-8d00-9e8b42940de9', 'en', 'appropriate remedy', 'соразмерное решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4584070-7cc4-5097-8151-13755b22cb96', 'en', 'partial refund', 'частичный возврат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7e9acf6-b88b-5f54-9ba1-b5d5a7589e2a', 'en', 'formal escalation', 'официальная эскалация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dfaa7246-2e57-51eb-9acc-f4af7a61f49f', 'en', 'booking platform', 'платформа бронирования', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, '5339fc28-c5a0-5cd9-bec3-95c35c218283', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'material discrepancy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, '5339fc28-c5a0-5cd9-bec3-95c35c218283', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'service failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, '5339fc28-c5a0-5cd9-bec3-95c35c218283', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'document the condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, '5339fc28-c5a0-5cd9-bec3-95c35c218283', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'appropriate remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, '5339fc28-c5a0-5cd9-bec3-95c35c218283', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'partial refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, '5339fc28-c5a0-5cd9-bec3-95c35c218283', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, '5339fc28-c5a0-5cd9-bec3-95c35c218283', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'booking platform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b605c95d-2380-5b19-8cf3-8fe04951207a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'material discrepancy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b605c95d-2380-5b19-8cf3-8fe04951207a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'service failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b605c95d-2380-5b19-8cf3-8fe04951207a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'document the condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b605c95d-2380-5b19-8cf3-8fe04951207a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'appropriate remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b605c95d-2380-5b19-8cf3-8fe04951207a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'partial refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b605c95d-2380-5b19-8cf3-8fe04951207a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b605c95d-2380-5b19-8cf3-8fe04951207a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'booking platform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'material discrepancy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'service failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'document the condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'appropriate remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'partial refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3efcd7da-b1fc-500d-94a3-2e62f178b0fe', id, 'b8d96fed-e0e2-5e1b-94b2-6951b297c09a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'booking platform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
