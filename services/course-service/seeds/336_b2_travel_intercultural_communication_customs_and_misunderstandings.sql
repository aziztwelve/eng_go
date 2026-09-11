-- Track: B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1e150f5c-d2c3-5056-b36f-74328eee4d4d', 'B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS', 'Межкультурное общение, обычаи и недоразумения', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Межкультурное общение, обычаи и недоразумения», оценивая варианты, права, риски и культурный контекст.', '{"en":"Intercultural Communication, Customs and Misunderstandings","ru":"Межкультурное общение, обычаи и недоразумения"}'::jsonb, '{"en":"Develop confident B2 communication for intercultural communication, customs and misunderstandings by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Межкультурное общение, обычаи и недоразумения», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('14dfa0d1-c914-54bc-87d5-922638f6ece5', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Interpreting Local Conventions","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3307a6e-3ca6-509d-9fd3-505244c301db', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D01","left":"cultural convention","right":"культурная норма"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D02","left":"implicit rule","right":"неявное правило"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D03","left":"cause offence","right":"вызвать обиду"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D04","left":"misinterpret","right":"неверно истолковать"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D05","left":"repair a misunderstanding","right":"устранить недоразумение"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D06","left":"show sensitivity","right":"проявить тактичность"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D07","left":"adapt communication","right":"адаптировать общение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e22f4268-b701-5328-82f6-0a841aae1571', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D08","is_correct":true,"text":"A cultural convention may function as an implicit rule, even when local people cannot easily explain why it matters."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd4023fe-27c5-52de-bebf-408f9ef4f5fe', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A cultural convention may function as an implicit rule, even when local people cannot easily explain why it matters.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Культурная норма может действовать как неявное правило, даже если местным жителям трудно объяснить, почему она важна.","target_language":"en","word_bank":["A","cultural","convention","may","function","as","an","implicit","rule",",","even","when","local","people","cannot","easily","explain","why","it","matters","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6b3eb82-31a2-519e-9170-50e6338fd405', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cultural convention","instruction":"Выберите подходящее слово.","options":["cultural convention","misinterpret","show sensitivity"],"sentence_template":"A ___ may function as an implicit rule, even when local people cannot easily explain why it matters."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f5bc540-ec10-5615-9e5f-65eab645a56c', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","cultural","convention","may","function","as","an","implicit","rule",",","even","when","local","people","cannot","easily","explain","why","it","matters","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","matters","it","why","explain","easily","cannot","people","local","when","even",",","rule","implicit","an","as","function","may","convention","cultural","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ee82688-32a7-5728-a092-24868a4ce51a', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A cultural convention may function as an implicit rule, even when local people cannot easily explain why it matters. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bd8f49e-5fb1-570e-a0d0-f478a7b08b5d', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A cultural convention may function as an implicit rule, even when local people cannot easily explain why it matters. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Культурная норма может действовать как неявное правило, даже если местным жителям трудно объяснить, почему она важна. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aae20639-16d2-5d50-a149-37df9ff8d820', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A cultural convention may function as an implicit rule, even when local people cannot easily explain why it matters.","translation":"Культурная норма может действовать как неявное правило, даже если местным жителям трудно объяснить, почему она важна.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Interpreting Local Conventions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a1097d2-1a19-58ac-aff2-073afefedf87', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cultural convention” means a customary way of behaving in a community.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D11","is_correct":true,"text":"a customary way of behaving in a community"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D12","is_correct":false,"text":"an expectation that is not directly stated"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D13","is_correct":false,"text":"upset someone through words or behaviour"}],"word":"cultural convention"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31d073e2-f592-59f3-aad5-856204431e1c', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A cultural convention may function as an implicit rule, even when local people cannot easily explain why it matters.","explanation":"The missing travel expression is “cultural convention”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cultural convention","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D14","is_correct":true},{"audio_text":"cause offence","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D15","is_correct":false},{"audio_text":"repair a misunderstanding","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D16","is_correct":false}],"sentence_template":"A ___ may function as an implicit rule, even when local people cannot easily explain why it matters."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41b39502-8fb2-5b67-874b-837700052bd7', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cultural convention","explanation":"The complete travel statement uses “cultural convention” precisely.","hint_prefix":"cult","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ may function as an implicit rule, even when local people cannot easily explain why it matters."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b9e19f3-7e05-5ce5-800e-876b2a3cb82a', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural convention","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D17","text":"cultural convention"},{"audio_text":"implicit rule","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D18","text":"implicit rule"},{"audio_text":"cause offence","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D19","text":"cause offence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e56a54b8-5353-574a-a402-57e75908041f', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Interpreting Local Conventions”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D20","is_correct":true,"text":"A cultural convention may function as an implicit rule, even when local people cannot easily explain why it matters."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e150f5c-d2c3-5056-b36f-74328eee4d4d', '14dfa0d1-c914-54bc-87d5-922638f6ece5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Repairing a Cultural Misunderstanding","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b4fae18-78cc-5dcb-9936-3fc64ad55d9c', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D01","left":"cultural convention","right":"культурная норма"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D02","left":"implicit rule","right":"неявное правило"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D03","left":"cause offence","right":"вызвать обиду"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D04","left":"misinterpret","right":"неверно истолковать"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D05","left":"repair a misunderstanding","right":"устранить недоразумение"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D06","left":"show sensitivity","right":"проявить тактичность"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D07","left":"adapt communication","right":"адаптировать общение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0115c3ea-c515-5fc5-92ab-e9b5f4fc6480', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D08","is_correct":true,"text":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8834f1e-34f7-599d-b40e-fe2974988d8e', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я неверно истолковал молчание как несогласие, поэтому устранил недоразумение, проверив своё предположение без обвинений.","target_language":"en","word_bank":["I","had","misinterpreted","the","silence","as","disagreement",",","so","I","repaired","the","misunderstanding","by","checking","my","assumption","without","assigning","blame","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4d4ffb3-1e60-5c97-a90f-658986139eeb', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"implicit rule","instruction":"Выберите подходящее слово.","options":["implicit rule","repair a misunderstanding","adapt communication"],"sentence_template":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('254b65fc-7620-561c-ace4-192e8c4fde2e', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","had","misinterpreted","the","silence","as","disagreement",",","so","I","repaired","the","misunderstanding","by","checking","my","assumption","without","assigning","blame","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","blame","assigning","without","assumption","my","checking","by","misunderstanding","the","repaired","I","so",",","disagreement","as","silence","the","misinterpreted","had","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d41a3759-6845-5e64-b56f-c61cb5825091', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e12d6593-5092-5a4e-889b-d852d2cce948', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Я неверно истолковал молчание как несогласие, поэтому устранил недоразумение, проверив своё предположение без обвинений. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c86b52d-f99a-509b-88ba-d5e752a29728', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame.","translation":"Я неверно истолковал молчание как несогласие, поэтому устранил недоразумение, проверив своё предположение без обвинений.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Repairing a Cultural Misunderstanding"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6af586df-0ca1-5832-a6bd-25cddd1ec8c5', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“implicit rule” means an expectation that is not directly stated.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D11","is_correct":true,"text":"an expectation that is not directly stated"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D12","is_correct":false,"text":"upset someone through words or behaviour"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D13","is_correct":false,"text":"understand something incorrectly"}],"word":"implicit rule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20e0f22d-fa8a-53f6-837e-20229a3b1438', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame.","explanation":"The missing travel expression is “implicit rule”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"implicit rule","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D14","is_correct":true},{"audio_text":"misinterpret","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D15","is_correct":false},{"audio_text":"show sensitivity","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D16","is_correct":false}],"sentence_template":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('932e4048-6a6b-50e3-b4ee-b3cf55d82bbc', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"implicit rule","explanation":"The complete travel statement uses “implicit rule” precisely.","hint_prefix":"impl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('520a6d73-bc2a-5b4b-b811-0c9b232c6a88', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural convention","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D17","text":"cultural convention"},{"audio_text":"implicit rule","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D18","text":"implicit rule"},{"audio_text":"cause offence","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D19","text":"cause offence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f963f0d-246b-553d-9e55-0db5cf3d7c62', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Repairing a Cultural Misunderstanding”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D20","is_correct":true,"text":"I had misinterpreted the silence as disagreement, so I repaired the misunderstanding by checking my assumption without assigning blame."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e150f5c-d2c3-5056-b36f-74328eee4d4d', 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('732674a8-e414-5185-8c78-8ee4cd0d7b1d', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Adapting Communication Respectfully","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1490540-01db-54ea-beb0-f567e4325532', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D01","left":"cultural convention","right":"культурная норма"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D02","left":"implicit rule","right":"неявное правило"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D03","left":"cause offence","right":"вызвать обиду"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D04","left":"misinterpret","right":"неверно истолковать"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D05","left":"repair a misunderstanding","right":"устранить недоразумение"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D06","left":"show sensitivity","right":"проявить тактичность"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D07","left":"adapt communication","right":"адаптировать общение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7b8bc31-6c5c-5d8a-9f7a-5db307d20c12', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D08","is_correct":true,"text":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac1f4f05-922d-56c4-a919-7597675fb41b', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Путешественники проявляют тактичность, когда уважительно адаптируют общение, избегая стереотипов обо всех представителях культуры.","target_language":"en","word_bank":["Travellers","show","sensitivity","when","they","adapt","communication","respectfully","while","avoiding","stereotypes","about","every","member","of","a","culture","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77d735c3-e253-5034-9ab8-da667414820d', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cause offence","instruction":"Выберите подходящее слово.","options":["cause offence","show sensitivity","cultural convention"],"sentence_template":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94f15399-1a33-5a6e-9fba-2c688396a9cd', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Travellers","show","sensitivity","when","they","adapt","communication","respectfully","while","avoiding","stereotypes","about","every","member","of","a","culture","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","culture","a","of","member","every","about","stereotypes","avoiding","while","respectfully","communication","adapt","they","when","sensitivity","show","Travellers"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1a7b78c-cf5a-56d3-a056-49a4506ea510', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49852d77-a7e0-5c40-9845-68b3f207a001', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Путешественники проявляют тактичность, когда уважительно адаптируют общение, избегая стереотипов обо всех представителях культуры. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e74e462-426e-5171-8189-0196e999cdc9', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture.","translation":"Путешественники проявляют тактичность, когда уважительно адаптируют общение, избегая стереотипов обо всех представителях культуры.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Adapting Communication Respectfully"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65575e33-cf13-5a5d-8699-fb5f2fd3e6dc', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cause offence” means upset someone through words or behaviour.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D11","is_correct":true,"text":"upset someone through words or behaviour"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D12","is_correct":false,"text":"understand something incorrectly"},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D13","is_correct":false,"text":"clarify meaning after confusion"}],"word":"cause offence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8cf86da-c899-5607-9c93-4edc5aa52356', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture.","explanation":"The missing travel expression is “cause offence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cause offence","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D14","is_correct":true},{"audio_text":"repair a misunderstanding","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D15","is_correct":false},{"audio_text":"adapt communication","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D16","is_correct":false}],"sentence_template":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b307194-127d-557c-acaa-dce51603cc2d', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cause offence","explanation":"The complete travel statement uses “cause offence” precisely.","hint_prefix":"caus","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95bd792a-0e21-50a0-8a05-badfe5783b9e', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural convention","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D17","text":"cultural convention"},{"audio_text":"implicit rule","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D18","text":"implicit rule"},{"audio_text":"cause offence","id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D19","text":"cause offence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb8cf8a8-d9a8-5f18-bbf3-e430580347f8', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Adapting Communication Respectfully”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D20","is_correct":true,"text":"Travellers show sensitivity when they adapt communication respectfully while avoiding stereotypes about every member of a culture."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_INTERCULTURAL_COMMUNICATION_CUSTOMS_AND_MISUNDERSTANDINGS_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e150f5c-d2c3-5056-b36f-74328eee4d4d', '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3714c00f-75f2-505e-93ac-cbb79d00523d', 'en', 'cultural convention', 'культурная норма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffda7c92-ed95-55c3-a307-de84555c870a', 'en', 'implicit rule', 'неявное правило', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('20aa573a-3560-59a8-ae7c-3577fd21bdaa', 'en', 'cause offence', 'вызвать обиду', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c37375e-22d8-571e-be05-ff009a2f9856', 'en', 'misinterpret', 'неверно истолковать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b137aca6-8188-5631-9e8a-0e7181264470', 'en', 'repair a misunderstanding', 'устранить недоразумение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b334baa8-e3fd-5d47-a60a-2e1f0cae18a0', 'en', 'show sensitivity', 'проявить тактичность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66ae3c91-4adb-5698-82c9-c38a50065b4d', 'en', 'adapt communication', 'адаптировать общение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3714c00f-75f2-505e-93ac-cbb79d00523d', 'en', 'cultural convention', 'культурная норма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffda7c92-ed95-55c3-a307-de84555c870a', 'en', 'implicit rule', 'неявное правило', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('20aa573a-3560-59a8-ae7c-3577fd21bdaa', 'en', 'cause offence', 'вызвать обиду', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c37375e-22d8-571e-be05-ff009a2f9856', 'en', 'misinterpret', 'неверно истолковать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b137aca6-8188-5631-9e8a-0e7181264470', 'en', 'repair a misunderstanding', 'устранить недоразумение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b334baa8-e3fd-5d47-a60a-2e1f0cae18a0', 'en', 'show sensitivity', 'проявить тактичность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66ae3c91-4adb-5698-82c9-c38a50065b4d', 'en', 'adapt communication', 'адаптировать общение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3714c00f-75f2-505e-93ac-cbb79d00523d', 'en', 'cultural convention', 'культурная норма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffda7c92-ed95-55c3-a307-de84555c870a', 'en', 'implicit rule', 'неявное правило', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('20aa573a-3560-59a8-ae7c-3577fd21bdaa', 'en', 'cause offence', 'вызвать обиду', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c37375e-22d8-571e-be05-ff009a2f9856', 'en', 'misinterpret', 'неверно истолковать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b137aca6-8188-5631-9e8a-0e7181264470', 'en', 'repair a misunderstanding', 'устранить недоразумение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b334baa8-e3fd-5d47-a60a-2e1f0cae18a0', 'en', 'show sensitivity', 'проявить тактичность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66ae3c91-4adb-5698-82c9-c38a50065b4d', 'en', 'adapt communication', 'адаптировать общение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '14dfa0d1-c914-54bc-87d5-922638f6ece5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '14dfa0d1-c914-54bc-87d5-922638f6ece5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit rule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '14dfa0d1-c914-54bc-87d5-922638f6ece5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'cause offence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '14dfa0d1-c914-54bc-87d5-922638f6ece5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'misinterpret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '14dfa0d1-c914-54bc-87d5-922638f6ece5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'repair a misunderstanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '14dfa0d1-c914-54bc-87d5-922638f6ece5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'show sensitivity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '14dfa0d1-c914-54bc-87d5-922638f6ece5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'adapt communication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit rule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cause offence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'misinterpret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'repair a misunderstanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'show sensitivity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, 'a0bc4a3c-f13f-55c9-9cbc-93c371dcd182', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'adapt communication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit rule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cause offence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'misinterpret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'repair a misunderstanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'show sensitivity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e150f5c-d2c3-5056-b36f-74328eee4d4d', id, '732674a8-e414-5185-8c78-8ee4cd0d7b1d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'adapt communication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
