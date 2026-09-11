-- Track: B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('bae6b777-e46c-5580-b54f-839e5a73ee46', 'B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS', 'Амбиции, риск и сложные решения', 'Развивайте свободную и точную устную речь уровня B2 по теме «Амбиции, риск и сложные решения»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Ambition, Risk and Complex Decisions","ru":"Амбиции, риск и сложные решения"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for ambition, risk and complex decisions through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Амбиции, риск и сложные решения»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ab7f9922-bd35-5331-abbc-2e78d3e76fa9', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Long-Term Ambitions","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aea163b0-e1f3-53bd-a09a-c79b979ab72e', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D01","left":"calculated risk","right":"просчитанный риск"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D02","left":"long-term implication","right":"долгосрочное последствие"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D03","left":"weigh up","right":"тщательно взвесить"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D04","left":"setback","right":"неудача"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D05","left":"viable option","right":"осуществимый вариант"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D06","left":"commitment","right":"обязательство"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D07","left":"contingency plan","right":"резервный план"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb31cbf6-30f7-5f18-afb1-1a9f38495278', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D08","is_correct":true,"text":"Taking a calculated risk can accelerate progress, provided that the potential losses are understood and a contingency plan is in place."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bce0562-d89c-59c2-b245-729599266865', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Taking a calculated risk can accelerate progress, provided that the potential losses are understood and a contingency plan is in place.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Просчитанный риск может ускорить прогресс при условии, что возможные потери понятны и существует резервный план.","target_language":"en","word_bank":["Taking","a","calculated","risk","can","accelerate","progress",",","provided","that","the","potential","losses","are","understood","and","a","contingency","plan","is","in","place","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36a15c4b-d461-5c9b-a6a3-011a773fca83', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"calculated risk","instruction":"Выберите подходящее слово.","options":["calculated risk","setback","commitment"],"sentence_template":"Taking a ___ can accelerate progress, provided that the potential losses are understood and a contingency plan is in place."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd3c3408-8940-5a40-afe7-cf41488744c9', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Taking","a","calculated","risk","can","accelerate","progress",",","provided","that","the","potential","losses","are","understood","and","a","contingency","plan","is","in","place","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","place","in","is","plan","contingency","a","and","understood","are","losses","potential","the","that","provided",",","progress","accelerate","can","risk","calculated","a","Taking"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e2ac2cf-7c56-5723-bc62-5f6c9133cc53', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Taking a calculated risk can accelerate progress, provided that the potential losses are understood and a contingency plan is in place. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e807dc6-2418-5cf1-9114-5a0b59873aec', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Taking a calculated risk can accelerate progress, provided that the potential losses are understood and a contingency plan is in place. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Просчитанный риск может ускорить прогресс при условии, что возможные потери понятны и существует резервный план. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f5a218d-a39a-5420-a122-26532a3f62e5', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Taking a calculated risk can accelerate progress, provided that the potential losses are understood and a contingency plan is in place.","translation":"Просчитанный риск может ускорить прогресс при условии, что возможные потери понятны и существует резервный план.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Long-Term Ambitions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('debf4ad8-69b7-5fea-84b3-9efa77308787', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“calculated risk” means a risk taken after carefully assessing likely outcomes.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D11","is_correct":true,"text":"a risk taken after carefully assessing likely outcomes"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D12","is_correct":false,"text":"an effect that may become important over an extended period"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D13","is_correct":false,"text":"consider competing factors before deciding"}],"word":"calculated risk"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38613591-f2e5-5826-80d0-8fc509682a04', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Taking a calculated risk can accelerate progress, provided that the potential losses are understood and a contingency plan is in place.","explanation":"The missing B2 expression is “calculated risk”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"calculated risk","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D14","is_correct":true},{"audio_text":"weigh up","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D15","is_correct":false},{"audio_text":"viable option","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D16","is_correct":false}],"sentence_template":"Taking a ___ can accelerate progress, provided that the potential losses are understood and a contingency plan is in place."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bf81c4a-d6c7-5f99-9cb0-8e4c00afccf8', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"calculated risk","explanation":"The complete argument uses “calculated risk” to express the intended meaning precisely.","hint_prefix":"calc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Taking a ___ can accelerate progress, provided that the potential losses are understood and a contingency plan is in place."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e379cceb-3891-53b0-8400-8c1c291e76dd', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"calculated risk","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D17","text":"calculated risk"},{"audio_text":"long-term implication","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D18","text":"long-term implication"},{"audio_text":"weigh up","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D19","text":"weigh up"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6961b903-2e5b-5565-bd5c-8fe13471ee70', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Long-Term Ambitions”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D20","is_correct":true,"text":"Taking a calculated risk can accelerate progress, provided that the potential losses are understood and a contingency plan is in place."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bae6b777-e46c-5580-b54f-839e5a73ee46', 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c93a4919-5604-581f-b790-af0383a5620d', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Assessing Risk","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1babb634-50a7-5a6f-96eb-aef0fb00813b', 'c93a4919-5604-581f-b790-af0383a5620d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D01","left":"calculated risk","right":"просчитанный риск"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D02","left":"long-term implication","right":"долгосрочное последствие"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D03","left":"weigh up","right":"тщательно взвесить"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D04","left":"setback","right":"неудача"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D05","left":"viable option","right":"осуществимый вариант"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D06","left":"commitment","right":"обязательство"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D07","left":"contingency plan","right":"резервный план"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b20f7ea7-c18c-5134-bd17-89cc5954b7b8', 'c93a4919-5604-581f-b790-af0383a5620d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D08","is_correct":true,"text":"Before making a commitment, I would weigh up not only the immediate benefits but also the long-term implications for everyone involved."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d31b115-06a4-50a4-947b-5ec01d40882a', 'c93a4919-5604-581f-b790-af0383a5620d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before making a commitment, I would weigh up not only the immediate benefits but also the long-term implications for everyone involved.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем брать на себя обязательство, я бы тщательно взвесил не только непосредственные преимущества, но и долгосрочные последствия для всех участников.","target_language":"en","word_bank":["Before","making","a","commitment",",","I","would","weigh","up","not","only","the","immediate","benefits","but","also","the","long-term","implications","for","everyone","involved","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88d2aa60-42db-51df-ae16-4e4aeed8d739', 'c93a4919-5604-581f-b790-af0383a5620d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"long-term implication","instruction":"Выберите подходящее слово.","options":["long-term implication","viable option","contingency plan"],"sentence_template":"Before making a commitment, I would weigh up not only the immediate benefits but also the ___s for everyone involved."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fdb0c01-27c6-5e8e-a3cb-256a96ca6881', 'c93a4919-5604-581f-b790-af0383a5620d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","making","a","commitment",",","I","would","weigh","up","not","only","the","immediate","benefits","but","also","the","long-term","implications","for","everyone","involved","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","involved","everyone","for","implications","long-term","the","also","but","benefits","immediate","the","only","not","up","weigh","would","I",",","commitment","a","making","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('477999e0-0107-5a83-aa76-dfd9769844c1', 'c93a4919-5604-581f-b790-af0383a5620d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before making a commitment, I would weigh up not only the immediate benefits but also the long-term implications for everyone involved. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e22e6a2-888b-59d4-83c0-e01fc53ec6bf', 'c93a4919-5604-581f-b790-af0383a5620d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before making a commitment, I would weigh up not only the immediate benefits but also the long-term implications for everyone involved. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Прежде чем брать на себя обязательство, я бы тщательно взвесил не только непосредственные преимущества, но и долгосрочные последствия для всех участников. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('780e9b4b-77c5-5bb2-80b7-ebf3e4404113', 'c93a4919-5604-581f-b790-af0383a5620d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Before making a commitment, I would weigh up not only the immediate benefits but also the long-term implications for everyone involved.","translation":"Прежде чем брать на себя обязательство, я бы тщательно взвесил не только непосредственные преимущества, но и долгосрочные последствия для всех участников.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Assessing Risk"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4db3a36d-e34c-54ca-91de-ff216cb62db6', 'c93a4919-5604-581f-b790-af0383a5620d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“long-term implication” means an effect that may become important over an extended period.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D11","is_correct":true,"text":"an effect that may become important over an extended period"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D12","is_correct":false,"text":"consider competing factors before deciding"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D13","is_correct":false,"text":"a problem that delays progress"}],"word":"long-term implication"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3d49795-9c50-51f9-a112-e9db904c74a4', 'c93a4919-5604-581f-b790-af0383a5620d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before making a commitment, I would weigh up not only the immediate benefits but also the long-term implications for everyone involved.","explanation":"The missing B2 expression is “long-term implication”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"long-term implication","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D14","is_correct":true},{"audio_text":"setback","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D15","is_correct":false},{"audio_text":"commitment","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D16","is_correct":false}],"sentence_template":"Before making a commitment, I would weigh up not only the immediate benefits but also the ___s for everyone involved."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a49ecb98-0af9-5a31-b072-200d9ca4635c', 'c93a4919-5604-581f-b790-af0383a5620d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"long-term implication","explanation":"The complete argument uses “long-term implication” to express the intended meaning precisely.","hint_prefix":"long","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before making a commitment, I would weigh up not only the immediate benefits but also the ___s for everyone involved."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0d0b37f-cae2-52e2-beee-3eb994c1fb76', 'c93a4919-5604-581f-b790-af0383a5620d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"calculated risk","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D17","text":"calculated risk"},{"audio_text":"long-term implication","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D18","text":"long-term implication"},{"audio_text":"weigh up","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D19","text":"weigh up"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dc18761-cebd-5c66-aeeb-bd95ea702b19', 'c93a4919-5604-581f-b790-af0383a5620d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Assessing Risk”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D20","is_correct":true,"text":"Before making a commitment, I would weigh up not only the immediate benefits but also the long-term implications for everyone involved."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bae6b777-e46c-5580-b54f-839e5a73ee46', 'c93a4919-5604-581f-b790-af0383a5620d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3e834d0c-a853-50b9-b8da-0c498e711f4d', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Justifying Difficult Decisions","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('892a3a6f-3b5b-51e6-afd0-3c2d839b8c2c', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D01","left":"calculated risk","right":"просчитанный риск"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D02","left":"long-term implication","right":"долгосрочное последствие"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D03","left":"weigh up","right":"тщательно взвесить"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D04","left":"setback","right":"неудача"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D05","left":"viable option","right":"осуществимый вариант"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D06","left":"commitment","right":"обязательство"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D07","left":"contingency plan","right":"резервный план"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6cac155-0f47-5eef-b877-0c1a16d50dc7', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D08","is_correct":true,"text":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d86fa2d4-4f3c-5ba2-9a74-db477049d594', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Временная неудача не означает, что цель нереалистична; возможно, нам просто нужно найти более осуществимый вариант.","target_language":"en","word_bank":["A","temporary","setback","does","not","mean","the","goal","is","unrealistic",";","it","may","simply","indicate","that","we","need","to","identify","a","more","viable","option","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c1da811-f0ea-5334-a9e8-d79977ba6a78', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"weigh up","instruction":"Выберите подходящее слово.","options":["weigh up","commitment","calculated risk"],"sentence_template":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17c4fc8f-33ca-5dc7-a4bf-db37dc6afb02', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","temporary","setback","does","not","mean","the","goal","is","unrealistic",";","it","may","simply","indicate","that","we","need","to","identify","a","more","viable","option","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","option","viable","more","a","identify","to","need","we","that","indicate","simply","may","it",";","unrealistic","is","goal","the","mean","not","does","setback","temporary","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb1813ea-4356-5835-b136-73b79557f3fa', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c486d38c-b902-5b77-a4d3-60e90a334164', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Временная неудача не означает, что цель нереалистична; возможно, нам просто нужно найти более осуществимый вариант. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ece2f884-d2e2-5ca4-9bc5-599917c872eb', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option.","translation":"Временная неудача не означает, что цель нереалистична; возможно, нам просто нужно найти более осуществимый вариант.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Justifying Difficult Decisions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eca0952d-3c74-5038-82d4-a8b1b66fe2f1', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“weigh up” means consider competing factors before deciding.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D11","is_correct":true,"text":"consider competing factors before deciding"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D12","is_correct":false,"text":"a problem that delays progress"},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D13","is_correct":false,"text":"a choice capable of working successfully"}],"word":"weigh up"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79df160a-ecdd-5fe1-beb1-f0a52b6b9a84', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option.","explanation":"The missing B2 expression is “weigh up”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"weigh up","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D14","is_correct":true},{"audio_text":"viable option","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D15","is_correct":false},{"audio_text":"contingency plan","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D16","is_correct":false}],"sentence_template":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4ce4f1c-0cb0-5e81-b026-b1896cae4347', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"weigh up","explanation":"The complete argument uses “weigh up” to express the intended meaning precisely.","hint_prefix":"weig","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4edbcbeb-3e8f-55a0-9278-91b0a0de8278', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"calculated risk","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D17","text":"calculated risk"},{"audio_text":"long-term implication","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D18","text":"long-term implication"},{"audio_text":"weigh up","id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D19","text":"weigh up"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f12dcfa-1bb6-5ce9-b6ca-6758d7a54a37', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Justifying Difficult Decisions”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D20","is_correct":true,"text":"A temporary setback does not mean the goal is unrealistic; it may simply indicate that we need to identify a more viable option."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_AMBITION_RISK_AND_COMPLEX_DECISIONS_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bae6b777-e46c-5580-b54f-839e5a73ee46', '3e834d0c-a853-50b9-b8da-0c498e711f4d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c58aa690-54b7-54be-aaed-5d241f785c4e', 'en', 'calculated risk', 'просчитанный риск', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4001e0f-2cf3-51b9-8060-dfba7a198199', 'en', 'long-term implication', 'долгосрочное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d327dbd6-9d92-5924-b6e0-74a81b01a190', 'en', 'weigh up', 'тщательно взвесить', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4888f8a-51ba-5e47-8854-41332c16e132', 'en', 'setback', 'неудача', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccf31c64-f3b0-57cc-a3fc-0e2eb72ec96c', 'en', 'viable option', 'осуществимый вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1349aeb-5d96-51a4-a5f7-7c8e270cb214', 'en', 'commitment', 'обязательство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d1029c0-3196-53ed-a5d2-7e4afdc890ec', 'en', 'contingency plan', 'резервный план', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c58aa690-54b7-54be-aaed-5d241f785c4e', 'en', 'calculated risk', 'просчитанный риск', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4001e0f-2cf3-51b9-8060-dfba7a198199', 'en', 'long-term implication', 'долгосрочное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d327dbd6-9d92-5924-b6e0-74a81b01a190', 'en', 'weigh up', 'тщательно взвесить', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4888f8a-51ba-5e47-8854-41332c16e132', 'en', 'setback', 'неудача', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccf31c64-f3b0-57cc-a3fc-0e2eb72ec96c', 'en', 'viable option', 'осуществимый вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1349aeb-5d96-51a4-a5f7-7c8e270cb214', 'en', 'commitment', 'обязательство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d1029c0-3196-53ed-a5d2-7e4afdc890ec', 'en', 'contingency plan', 'резервный план', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c58aa690-54b7-54be-aaed-5d241f785c4e', 'en', 'calculated risk', 'просчитанный риск', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4001e0f-2cf3-51b9-8060-dfba7a198199', 'en', 'long-term implication', 'долгосрочное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d327dbd6-9d92-5924-b6e0-74a81b01a190', 'en', 'weigh up', 'тщательно взвесить', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4888f8a-51ba-5e47-8854-41332c16e132', 'en', 'setback', 'неудача', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccf31c64-f3b0-57cc-a3fc-0e2eb72ec96c', 'en', 'viable option', 'осуществимый вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1349aeb-5d96-51a4-a5f7-7c8e270cb214', 'en', 'commitment', 'обязательство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d1029c0-3196-53ed-a5d2-7e4afdc890ec', 'en', 'contingency plan', 'резервный план', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'calculated risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'long-term implication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'weigh up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'setback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'viable option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'commitment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'ab7f9922-bd35-5331-abbc-2e78d3e76fa9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'c93a4919-5604-581f-b790-af0383a5620d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'calculated risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'c93a4919-5604-581f-b790-af0383a5620d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'long-term implication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'c93a4919-5604-581f-b790-af0383a5620d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'weigh up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'c93a4919-5604-581f-b790-af0383a5620d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'setback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'c93a4919-5604-581f-b790-af0383a5620d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'viable option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'c93a4919-5604-581f-b790-af0383a5620d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'commitment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, 'c93a4919-5604-581f-b790-af0383a5620d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, '3e834d0c-a853-50b9-b8da-0c498e711f4d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'calculated risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, '3e834d0c-a853-50b9-b8da-0c498e711f4d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'long-term implication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, '3e834d0c-a853-50b9-b8da-0c498e711f4d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'weigh up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, '3e834d0c-a853-50b9-b8da-0c498e711f4d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'setback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, '3e834d0c-a853-50b9-b8da-0c498e711f4d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'viable option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, '3e834d0c-a853-50b9-b8da-0c498e711f4d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'commitment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bae6b777-e46c-5580-b54f-839e5a73ee46', id, '3e834d0c-a853-50b9-b8da-0c498e711f4d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
