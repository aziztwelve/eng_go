-- Track: C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e53361c8-3ffe-5c69-9995-e779180acfee', 'C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE', 'Корпоративное управление, этика и комплаенс', 'Освойте продвинутый деловой английский уровня C1 по теме «Корпоративное управление, этика и комплаенс» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Corporate Governance, Ethics and Compliance","ru":"Корпоративное управление, этика и комплаенс"}'::jsonb, '{"en":"Master advanced C1 business English for corporate governance, ethics and compliance through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Корпоративное управление, этика и комплаенс» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e934c95b-657d-5293-b9ac-aa5a2b34c140', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Recognising an Ethical Conflict","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2596ef2-6430-58b0-835a-0d1e4f48aded', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D01","left":"conflict of interest","right":"конфликт интересов"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D02","left":"whistleblowing channel","right":"канал информирования о нарушениях"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D03","left":"regulatory obligation","right":"нормативное обязательство"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D04","left":"ethical blind spot","right":"этическая слепая зона"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D05","left":"non-retaliation policy","right":"политика защиты от преследования"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D06","left":"control environment","right":"контрольная среда"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D07","left":"board oversight","right":"надзор совета директоров"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7cce1a3-6f0b-55b7-b07e-dfa8b795c831', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D08","is_correct":true,"text":"A conflict of interest should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5df77342-829b-5fd0-a737-880f02db0f9d', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A conflict of interest should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Конфликт интересов следует раскрывать даже при отсутствии неправомерного решения, поскольку неконтролируемое восприятие может подорвать доверие к законному суждению.","target_language":"en","word_bank":["A","conflict","of","interest","should","be","disclosed","even","when","no","improper","decision","has","occurred",",","because","unmanaged","perception","can","undermine","legitimate","judgement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0dff2cd-e304-5d30-b99b-197b69ba0ff4', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"conflict of interest","instruction":"Выберите подходящее слово.","options":["conflict of interest","ethical blind spot","control environment"],"sentence_template":"A ___ should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc66d9f2-038a-568b-93b6-6a74c0dda369', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","conflict","of","interest","should","be","disclosed","even","when","no","improper","decision","has","occurred",",","because","unmanaged","perception","can","undermine","legitimate","judgement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","judgement","legitimate","undermine","can","perception","unmanaged","because",",","occurred","has","decision","improper","no","when","even","disclosed","be","should","interest","of","conflict","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fbc9fb9-16e1-5e76-b9a1-d079ff9cec8d', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A conflict of interest should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78bab555-0846-5595-bfda-9ed5aef26987', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A conflict of interest should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Конфликт интересов следует раскрывать даже при отсутствии неправомерного решения, поскольку неконтролируемое восприятие может подорвать доверие к законному суждению. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b554ad9-92a7-5f8f-9532-26ff5cb3fb22', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A conflict of interest should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement.","translation":"Конфликт интересов следует раскрывать даже при отсутствии неправомерного решения, поскольку неконтролируемое восприятие может подорвать доверие к законному суждению.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Recognising an Ethical Conflict"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7953c90-aa50-59d2-8fa3-ee162de9b525', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“conflict of interest” means a personal interest capable of influencing professional judgement.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D11","is_correct":true,"text":"a personal interest capable of influencing professional judgement"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D12","is_correct":false,"text":"a protected process for reporting suspected wrongdoing"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D13","is_correct":false,"text":"a duty imposed by law or an authorised regulator"}],"word":"conflict of interest"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d8db838-901c-57f0-8041-4210c4efee03', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A conflict of interest should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement.","explanation":"The missing C1 business expression is “conflict of interest”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"conflict of interest","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D14","is_correct":true},{"audio_text":"regulatory obligation","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D15","is_correct":false},{"audio_text":"non-retaliation policy","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D16","is_correct":false}],"sentence_template":"A ___ should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19880330-9bca-513c-b33d-ddc0801e04ee', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"conflict of interest","explanation":"The complete business statement uses “conflict of interest” accurately in context.","hint_prefix":"conf","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9ed7781-8031-59e5-bd26-5717f80a13de', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conflict of interest","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D17","text":"conflict of interest"},{"audio_text":"whistleblowing channel","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D18","text":"whistleblowing channel"},{"audio_text":"regulatory obligation","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D19","text":"regulatory obligation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f4eb6b2-abcb-5dd2-a307-589b2146a27b', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Recognising an Ethical Conflict”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D20","is_correct":true,"text":"A conflict of interest should be disclosed even when no improper decision has occurred, because unmanaged perception can undermine legitimate judgement."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e53361c8-3ffe-5c69-9995-e779180acfee', 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('292c341c-0037-5ec3-b7cd-3289dad7dea3', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Escalating a Compliance Concern","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('979f2cd4-f6ce-54b9-bf66-8f75777af2f5', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D01","left":"conflict of interest","right":"конфликт интересов"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D02","left":"whistleblowing channel","right":"канал информирования о нарушениях"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D03","left":"regulatory obligation","right":"нормативное обязательство"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D04","left":"ethical blind spot","right":"этическая слепая зона"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D05","left":"non-retaliation policy","right":"политика защиты от преследования"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D06","left":"control environment","right":"контрольная среда"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D07","left":"board oversight","right":"надзор совета директоров"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccedc9ef-8e90-5290-b2ba-0d34165ea71f', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D08","is_correct":true,"text":"The concern should be raised through the protected whistleblowing channel, with factual documentation and reference to the relevant regulatory obligation."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93346bae-ce92-5552-b801-491bc793a7cf', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The concern should be raised through the protected whistleblowing channel, with factual documentation and reference to the relevant regulatory obligation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Проблему следует сообщить через защищённый канал информирования о нарушениях, приложив фактическую документацию и ссылку на соответствующее нормативное обязательство.","target_language":"en","word_bank":["The","concern","should","be","raised","through","the","protected","whistleblowing","channel",",","with","factual","documentation","and","reference","to","the","relevant","regulatory","obligation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2330bf3c-cc31-5779-b8db-33578a3591ef', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"whistleblowing channel","instruction":"Выберите подходящее слово.","options":["whistleblowing channel","non-retaliation policy","board oversight"],"sentence_template":"The concern should be raised through the protected ___, with factual documentation and reference to the relevant regulatory obligation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd86d1a2-b3ba-58c5-b8b4-be0043b80309', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","concern","should","be","raised","through","the","protected","whistleblowing","channel",",","with","factual","documentation","and","reference","to","the","relevant","regulatory","obligation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","obligation","regulatory","relevant","the","to","reference","and","documentation","factual","with",",","channel","whistleblowing","protected","the","through","raised","be","should","concern","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9def00c8-8573-5f49-8b93-cd9f62aa3f91', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The concern should be raised through the protected whistleblowing channel, with factual documentation and reference to the relevant regulatory obligation. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e4f64e7-4937-55ca-85ce-1bad2294d456', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The concern should be raised through the protected whistleblowing channel, with factual documentation and reference to the relevant regulatory obligation. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Проблему следует сообщить через защищённый канал информирования о нарушениях, приложив фактическую документацию и ссылку на соответствующее нормативное обязательство. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b09f75c-a7cc-510a-9422-6e3d5a8910f5', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The concern should be raised through the protected whistleblowing channel, with factual documentation and reference to the relevant regulatory obligation.","translation":"Проблему следует сообщить через защищённый канал информирования о нарушениях, приложив фактическую документацию и ссылку на соответствующее нормативное обязательство.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Escalating a Compliance Concern"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4966acc4-aa37-5e80-996f-aece210915b4', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“whistleblowing channel” means a protected process for reporting suspected wrongdoing.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D11","is_correct":true,"text":"a protected process for reporting suspected wrongdoing"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D12","is_correct":false,"text":"a duty imposed by law or an authorised regulator"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D13","is_correct":false,"text":"a risk that decision-makers fail to recognise as ethically significant"}],"word":"whistleblowing channel"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a768d0d0-684c-5a37-9106-6f0912fd98fa', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The concern should be raised through the protected whistleblowing channel, with factual documentation and reference to the relevant regulatory obligation.","explanation":"The missing C1 business expression is “whistleblowing channel”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"whistleblowing channel","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D14","is_correct":true},{"audio_text":"ethical blind spot","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D15","is_correct":false},{"audio_text":"control environment","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D16","is_correct":false}],"sentence_template":"The concern should be raised through the protected ___, with factual documentation and reference to the relevant regulatory obligation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82971d0a-3dd0-5029-9559-eac80cd666ec', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"whistleblowing channel","explanation":"The complete business statement uses “whistleblowing channel” accurately in context.","hint_prefix":"whis","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The concern should be raised through the protected ___, with factual documentation and reference to the relevant regulatory obligation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17f288b9-1226-51b2-b527-c830b5803297', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conflict of interest","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D17","text":"conflict of interest"},{"audio_text":"whistleblowing channel","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D18","text":"whistleblowing channel"},{"audio_text":"regulatory obligation","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D19","text":"regulatory obligation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16a0fa72-7593-5b57-84a2-e666842c4c55', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Escalating a Compliance Concern”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D20","is_correct":true,"text":"The concern should be raised through the protected whistleblowing channel, with factual documentation and reference to the relevant regulatory obligation."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e53361c8-3ffe-5c69-9995-e779180acfee', '292c341c-0037-5ec3-b7cd-3289dad7dea3', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8d09f449-49c3-56e2-b11b-aa03f0381937', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Strengthening Organisational Accountability","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1683ee2a-dce6-5ac1-8aa0-76da72923fa3', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D01","left":"conflict of interest","right":"конфликт интересов"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D02","left":"whistleblowing channel","right":"канал информирования о нарушениях"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D03","left":"regulatory obligation","right":"нормативное обязательство"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D04","left":"ethical blind spot","right":"этическая слепая зона"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D05","left":"non-retaliation policy","right":"политика защиты от преследования"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D06","left":"control environment","right":"контрольная среда"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D07","left":"board oversight","right":"надзор совета директоров"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fae544d4-1971-5fba-8607-cdc4e3f23ac3', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D08","is_correct":true,"text":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('386307d4-cdce-5b5f-bd3f-ee45344cdc9c', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эффективный надзор совета директоров проверяет, поддерживает ли контрольная среда возможность возражать, предотвращает ли преследование и превращает ли уроки в подотчётные действия.","target_language":"en","word_bank":["Effective","board","oversight","tests","whether","the","control","environment","protects","challenge",",","prevents","retaliation",",","and","converts","lessons","into","accountable","action","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ae05407-fa2b-5aa5-84e6-86a580b6d64c', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"regulatory obligation","instruction":"Выберите подходящее слово.","options":["regulatory obligation","control environment","conflict of interest"],"sentence_template":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91c5779b-0683-56e4-93cf-b245cfeab9e3', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Effective","board","oversight","tests","whether","the","control","environment","protects","challenge",",","prevents","retaliation",",","and","converts","lessons","into","accountable","action","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","action","accountable","into","lessons","converts","and",",","retaliation","prevents",",","challenge","protects","environment","control","the","whether","tests","oversight","board","Effective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a74eaf38-7311-582d-a97e-398655e2a3f1', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('380da72d-d9a8-5482-8ed5-197b7855065e', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Эффективный надзор совета директоров проверяет, поддерживает ли контрольная среда возможность возражать, предотвращает ли преследование и превращает ли уроки в подотчётные действия. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('316c59e3-3081-56c5-9db6-7d79f05e9f04', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action.","translation":"Эффективный надзор совета директоров проверяет, поддерживает ли контрольная среда возможность возражать, предотвращает ли преследование и превращает ли уроки в подотчётные действия.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Strengthening Organisational Accountability"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf0eb957-4fc7-57c3-a2f6-6aea46211c92', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“regulatory obligation” means a duty imposed by law or an authorised regulator.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D11","is_correct":true,"text":"a duty imposed by law or an authorised regulator"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D12","is_correct":false,"text":"a risk that decision-makers fail to recognise as ethically significant"},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D13","is_correct":false,"text":"a rule protecting people who report concerns in good faith"}],"word":"regulatory obligation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d67840f-f319-5be9-a0ec-6e273280450f', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action.","explanation":"The missing C1 business expression is “regulatory obligation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"regulatory obligation","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D14","is_correct":true},{"audio_text":"non-retaliation policy","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D15","is_correct":false},{"audio_text":"board oversight","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D16","is_correct":false}],"sentence_template":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6704a930-fa08-5b69-aebe-4a822ac7d29d', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"regulatory obligation","explanation":"The complete business statement uses “regulatory obligation” accurately in context.","hint_prefix":"regu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97f990eb-795e-5e8a-a290-e22e6f54f89a', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conflict of interest","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D17","text":"conflict of interest"},{"audio_text":"whistleblowing channel","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D18","text":"whistleblowing channel"},{"audio_text":"regulatory obligation","id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D19","text":"regulatory obligation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07ad229a-dc6e-5cc5-8b35-787ffddeef5c', '8d09f449-49c3-56e2-b11b-aa03f0381937', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Strengthening Organisational Accountability”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D20","is_correct":true,"text":"Effective board oversight tests whether the control environment protects challenge, prevents retaliation, and converts lessons into accountable action."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CORPORATE_GOVERNANCE_ETHICS_AND_COMPLIANCE_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e53361c8-3ffe-5c69-9995-e779180acfee', '8d09f449-49c3-56e2-b11b-aa03f0381937', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c8f63f1-6b6a-57c6-8de6-42963368e974', 'en', 'whistleblowing channel', 'канал информирования о нарушениях', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6565e77a-1fe2-50f9-905f-b63d0778de87', 'en', 'regulatory obligation', 'нормативное обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e834543c-0fb5-5012-9633-e67d99821895', 'en', 'ethical blind spot', 'этическая слепая зона', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6529d0a-33f5-53a6-ba17-52f7a9f87a07', 'en', 'non-retaliation policy', 'политика защиты от преследования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9b475dd-f5c1-51e6-98c6-647520213162', 'en', 'control environment', 'контрольная среда', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10ec5a0c-17b5-5422-89b7-31a49958d99a', 'en', 'board oversight', 'надзор совета директоров', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c8f63f1-6b6a-57c6-8de6-42963368e974', 'en', 'whistleblowing channel', 'канал информирования о нарушениях', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6565e77a-1fe2-50f9-905f-b63d0778de87', 'en', 'regulatory obligation', 'нормативное обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e834543c-0fb5-5012-9633-e67d99821895', 'en', 'ethical blind spot', 'этическая слепая зона', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6529d0a-33f5-53a6-ba17-52f7a9f87a07', 'en', 'non-retaliation policy', 'политика защиты от преследования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9b475dd-f5c1-51e6-98c6-647520213162', 'en', 'control environment', 'контрольная среда', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10ec5a0c-17b5-5422-89b7-31a49958d99a', 'en', 'board oversight', 'надзор совета директоров', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c8f63f1-6b6a-57c6-8de6-42963368e974', 'en', 'whistleblowing channel', 'канал информирования о нарушениях', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6565e77a-1fe2-50f9-905f-b63d0778de87', 'en', 'regulatory obligation', 'нормативное обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e834543c-0fb5-5012-9633-e67d99821895', 'en', 'ethical blind spot', 'этическая слепая зона', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6529d0a-33f5-53a6-ba17-52f7a9f87a07', 'en', 'non-retaliation policy', 'политика защиты от преследования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9b475dd-f5c1-51e6-98c6-647520213162', 'en', 'control environment', 'контрольная среда', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10ec5a0c-17b5-5422-89b7-31a49958d99a', 'en', 'board oversight', 'надзор совета директоров', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'whistleblowing channel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory obligation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical blind spot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-retaliation policy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'control environment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, 'e934c95b-657d-5293-b9ac-aa5a2b34c140', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'board oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '292c341c-0037-5ec3-b7cd-3289dad7dea3', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '292c341c-0037-5ec3-b7cd-3289dad7dea3', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'whistleblowing channel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '292c341c-0037-5ec3-b7cd-3289dad7dea3', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory obligation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '292c341c-0037-5ec3-b7cd-3289dad7dea3', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical blind spot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '292c341c-0037-5ec3-b7cd-3289dad7dea3', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-retaliation policy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '292c341c-0037-5ec3-b7cd-3289dad7dea3', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'control environment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '292c341c-0037-5ec3-b7cd-3289dad7dea3', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'board oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '8d09f449-49c3-56e2-b11b-aa03f0381937', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '8d09f449-49c3-56e2-b11b-aa03f0381937', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'whistleblowing channel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '8d09f449-49c3-56e2-b11b-aa03f0381937', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory obligation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '8d09f449-49c3-56e2-b11b-aa03f0381937', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical blind spot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '8d09f449-49c3-56e2-b11b-aa03f0381937', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-retaliation policy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '8d09f449-49c3-56e2-b11b-aa03f0381937', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'control environment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e53361c8-3ffe-5c69-9995-e779180acfee', id, '8d09f449-49c3-56e2-b11b-aa03f0381937', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'board oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
