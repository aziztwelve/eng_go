-- Track: B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a572b864-4754-5f44-b21c-029774943a38', 'B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS', 'Культура, медиа и критические обзоры', 'Развивайте свободную и точную устную речь уровня B2 по теме «Культура, медиа и критические обзоры»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Culture, Media and Critical Reviews","ru":"Культура, медиа и критические обзоры"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for culture, media and critical reviews through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Культура, медиа и критические обзоры»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e4a385f7-58e1-554b-b09d-2072908a48e7', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Cultural Influence","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('407b6449-f96a-5d11-a247-3034537716f2', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D01","left":"cultural representation","right":"культурная репрезентация"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D02","left":"editorial bias","right":"редакционная предвзятость"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D03","left":"thought-provoking","right":"заставляющий задуматься"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D04","left":"subtle","right":"тонкий"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D05","left":"target audience","right":"целевая аудитория"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D06","left":"credible","right":"достоверный"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D07","left":"critical acclaim","right":"признание критиков"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a9406bd-aad0-5f37-942e-b73167b8ac0d', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D08","is_correct":true,"text":"Cultural representation feels credible when characters are complex individuals rather than convenient symbols or stereotypes."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41bc470b-29b6-52f3-b75f-b52db6d44a11', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Cultural representation feels credible when characters are complex individuals rather than convenient symbols or stereotypes.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Культурная репрезентация кажется достоверной, когда персонажи являются сложными личностями, а не удобными символами или стереотипами.","target_language":"en","word_bank":["Cultural","representation","feels","credible","when","characters","are","complex","individuals","rather","than","convenient","symbols","or","stereotypes","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93fece78-6523-5a46-8d14-3e536def81bc', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cultural representation","instruction":"Выберите подходящее слово.","options":["cultural representation","subtle","credible"],"sentence_template":"___ feels credible when characters are complex individuals rather than convenient symbols or stereotypes."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0d3c122-29dd-5deb-ac8c-a35b3e479d1a', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Cultural","representation","feels","credible","when","characters","are","complex","individuals","rather","than","convenient","symbols","or","stereotypes","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","stereotypes","or","symbols","convenient","than","rather","individuals","complex","are","characters","when","credible","feels","representation","Cultural"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e9c3090-d3a2-5dbf-b714-b0aadf43b14d', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Cultural representation feels credible when characters are complex individuals rather than convenient symbols or stereotypes. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58b83550-6b85-552e-ba10-87536872b64d', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Cultural representation feels credible when characters are complex individuals rather than convenient symbols or stereotypes. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Культурная репрезентация кажется достоверной, когда персонажи являются сложными личностями, а не удобными символами или стереотипами. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26bceb67-b336-5d72-aa79-7d043fcff214', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Cultural representation feels credible when characters are complex individuals rather than convenient symbols or stereotypes.","translation":"Культурная репрезентация кажется достоверной, когда персонажи являются сложными личностями, а не удобными символами или стереотипами.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Cultural Influence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a97618ad-aa09-5652-a1ea-128248890c52', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cultural representation” means the way cultures or groups are portrayed.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D11","is_correct":true,"text":"the way cultures or groups are portrayed"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D12","is_correct":false,"text":"a systematic preference influencing published content"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D13","is_correct":false,"text":"stimulating careful reflection or discussion"}],"word":"cultural representation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18228e80-7ecf-5a67-8690-7e92539da6c7', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Cultural representation feels credible when characters are complex individuals rather than convenient symbols or stereotypes.","explanation":"The missing B2 expression is “cultural representation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cultural representation","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D14","is_correct":true},{"audio_text":"thought-provoking","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D15","is_correct":false},{"audio_text":"target audience","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D16","is_correct":false}],"sentence_template":"___ feels credible when characters are complex individuals rather than convenient symbols or stereotypes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66548a85-3ea3-5adc-bfd0-a52799863f57', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cultural representation","explanation":"The complete argument uses “cultural representation” to express the intended meaning precisely.","hint_prefix":"cult","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ feels credible when characters are complex individuals rather than convenient symbols or stereotypes."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8af8bb9b-bd7c-53a8-a861-655316ad3e54', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural representation","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D17","text":"cultural representation"},{"audio_text":"editorial bias","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D18","text":"editorial bias"},{"audio_text":"thought-provoking","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D19","text":"thought-provoking"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('248bf18a-89eb-5757-8ba6-488d9a4627ba', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Cultural Influence”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D20","is_correct":true,"text":"Cultural representation feels credible when characters are complex individuals rather than convenient symbols or stereotypes."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a572b864-4754-5f44-b21c-029774943a38', 'e4a385f7-58e1-554b-b09d-2072908a48e7', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('87c254f9-d279-5b2d-9f53-66cbcb72b36e', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Media Analysis","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6f52be5-15bb-5379-aedc-fb09d3d851e6', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D01","left":"cultural representation","right":"культурная репрезентация"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D02","left":"editorial bias","right":"редакционная предвзятость"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D03","left":"thought-provoking","right":"заставляющий задуматься"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D04","left":"subtle","right":"тонкий"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D05","left":"target audience","right":"целевая аудитория"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D06","left":"credible","right":"достоверный"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D07","left":"critical acclaim","right":"признание критиков"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81d1c6d1-c761-5257-9796-c62891c94720', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D08","is_correct":true,"text":"Editorial bias is not always obvious, so audiences should compare how different sources frame the same event and select evidence."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8d52fbb-9601-54ba-8c12-924bfe1bef8b', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Editorial bias is not always obvious, so audiences should compare how different sources frame the same event and select evidence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Редакционная предвзятость не всегда очевидна, поэтому аудитории следует сравнивать, как разные источники представляют одно событие и отбирают доказательства.","target_language":"en","word_bank":["Editorial","bias","is","not","always","obvious",",","so","audiences","should","compare","how","different","sources","frame","the","same","event","and","select","evidence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('daa3edde-c6e3-5f4b-acc9-1e9b0c00e3e5', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"editorial bias","instruction":"Выберите подходящее слово.","options":["editorial bias","target audience","critical acclaim"],"sentence_template":"___ is not always obvious, so audiences should compare how different sources frame the same event and select evidence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04813429-5fd2-513f-8085-972312fc4929', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Editorial","bias","is","not","always","obvious",",","so","audiences","should","compare","how","different","sources","frame","the","same","event","and","select","evidence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","evidence","select","and","event","same","the","frame","sources","different","how","compare","should","audiences","so",",","obvious","always","not","is","bias","Editorial"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d165dd71-6f7e-5926-99f2-ed8f8ceccd90', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Editorial bias is not always obvious, so audiences should compare how different sources frame the same event and select evidence. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('687025d6-802e-5335-98bb-3ce727505da3', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Editorial bias is not always obvious, so audiences should compare how different sources frame the same event and select evidence. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Редакционная предвзятость не всегда очевидна, поэтому аудитории следует сравнивать, как разные источники представляют одно событие и отбирают доказательства. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c261e9bf-c5ec-5bbd-8d75-ea8b162d42ea', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Editorial bias is not always obvious, so audiences should compare how different sources frame the same event and select evidence.","translation":"Редакционная предвзятость не всегда очевидна, поэтому аудитории следует сравнивать, как разные источники представляют одно событие и отбирают доказательства.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Media Analysis"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0eeee4ea-7d25-54fb-9c50-2d20ad892e82', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“editorial bias” means a systematic preference influencing published content.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D11","is_correct":true,"text":"a systematic preference influencing published content"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D12","is_correct":false,"text":"stimulating careful reflection or discussion"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D13","is_correct":false,"text":"expressed indirectly or with fine distinctions"}],"word":"editorial bias"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f5af1cf-59e0-542f-98a5-f6f7cec6901a', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Editorial bias is not always obvious, so audiences should compare how different sources frame the same event and select evidence.","explanation":"The missing B2 expression is “editorial bias”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"editorial bias","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D14","is_correct":true},{"audio_text":"subtle","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D15","is_correct":false},{"audio_text":"credible","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D16","is_correct":false}],"sentence_template":"___ is not always obvious, so audiences should compare how different sources frame the same event and select evidence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8343c5cf-9e2f-5a16-9190-7240382f641e', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"editorial bias","explanation":"The complete argument uses “editorial bias” to express the intended meaning precisely.","hint_prefix":"edit","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is not always obvious, so audiences should compare how different sources frame the same event and select evidence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('045b6778-3ea9-5e0a-b4eb-f8f148805738', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural representation","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D17","text":"cultural representation"},{"audio_text":"editorial bias","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D18","text":"editorial bias"},{"audio_text":"thought-provoking","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D19","text":"thought-provoking"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ea03a1d-4837-563a-bb12-c8273dc08ae3', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Media Analysis”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D20","is_correct":true,"text":"Editorial bias is not always obvious, so audiences should compare how different sources frame the same event and select evidence."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a572b864-4754-5f44-b21c-029774943a38', '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2dde690b-2c79-5d41-b0fd-42b8ffd34217', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Balanced Reviews","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d780a22-fdd9-5d3c-b8e6-c6f146716dc3', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D01","left":"cultural representation","right":"культурная репрезентация"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D02","left":"editorial bias","right":"редакционная предвзятость"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D03","left":"thought-provoking","right":"заставляющий задуматься"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D04","left":"subtle","right":"тонкий"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D05","left":"target audience","right":"целевая аудитория"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D06","left":"credible","right":"достоверный"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D07","left":"critical acclaim","right":"признание критиков"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('254e0348-1bf3-5f64-8b7a-e78333014e22', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D08","is_correct":true,"text":"A thought-provoking review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2d63f0a-5d3d-5800-bdbe-f9600fb4c080', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A thought-provoking review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Заставляющий задуматься обзор должен объяснять как достоинства произведения, так и его ограничения, а не ограничиваться простой рекомендацией.","target_language":"en","word_bank":["A","thought-provoking","review","should","explain","both","the","work’s","achievements","and","its","limitations","instead","of","relying","on","a","simple","recommendation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cefb3a7-5bdc-538b-b668-4357eb6e6dfb', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"thought-provoking","instruction":"Выберите подходящее слово.","options":["thought-provoking","credible","cultural representation"],"sentence_template":"A ___ review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1176268-9d08-5716-b7e6-56b3b080d42e', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","thought-provoking","review","should","explain","both","the","work’s","achievements","and","its","limitations","instead","of","relying","on","a","simple","recommendation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","recommendation","simple","a","on","relying","of","instead","limitations","its","and","achievements","work’s","the","both","explain","should","review","thought-provoking","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4128e0ff-f31f-5899-8f6f-c324cd3b5b80', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A thought-provoking review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19661ae6-9813-55b4-b5d9-1f0b5bcd61a2', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A thought-provoking review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Заставляющий задуматься обзор должен объяснять как достоинства произведения, так и его ограничения, а не ограничиваться простой рекомендацией. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc77d1af-0c1c-5cc4-bab0-7aa508b6cafa', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A thought-provoking review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation.","translation":"Заставляющий задуматься обзор должен объяснять как достоинства произведения, так и его ограничения, а не ограничиваться простой рекомендацией.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Balanced Reviews"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb06b124-6b37-540a-8854-7e1ee45218d7', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“thought-provoking” means stimulating careful reflection or discussion.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D11","is_correct":true,"text":"stimulating careful reflection or discussion"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D12","is_correct":false,"text":"expressed indirectly or with fine distinctions"},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D13","is_correct":false,"text":"the group for whom content is intended"}],"word":"thought-provoking"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ef0116b-f69f-5884-8d3f-0f7702dc1213', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A thought-provoking review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation.","explanation":"The missing B2 expression is “thought-provoking”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"thought-provoking","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D14","is_correct":true},{"audio_text":"target audience","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D15","is_correct":false},{"audio_text":"critical acclaim","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D16","is_correct":false}],"sentence_template":"A ___ review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee5a259d-38d8-5ca7-a66c-93d70bcc1a41', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"thought-provoking","explanation":"The complete argument uses “thought-provoking” to express the intended meaning precisely.","hint_prefix":"thou","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58c35759-62b8-5091-803a-6e46ead17b79', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural representation","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D17","text":"cultural representation"},{"audio_text":"editorial bias","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D18","text":"editorial bias"},{"audio_text":"thought-provoking","id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D19","text":"thought-provoking"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b4dd3dc-4cf7-5598-a901-69e70299bbbc', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Balanced Reviews”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D20","is_correct":true,"text":"A thought-provoking review should explain both the work’s achievements and its limitations instead of relying on a simple recommendation."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_CULTURE_MEDIA_AND_CRITICAL_REVIEWS_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a572b864-4754-5f44-b21c-029774943a38', '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5974dac9-1018-59fb-9fd1-ee9c568a8ce4', 'en', 'cultural representation', 'культурная репрезентация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a46429a-cd2a-52fe-9e4f-07ff4ed653cd', 'en', 'editorial bias', 'редакционная предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8d346de-49dd-55d8-a7a8-735654df5c0b', 'en', 'thought-provoking', 'заставляющий задуматься', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac70c072-131d-5bcd-adf5-d5e3581e915b', 'en', 'subtle', 'тонкий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a905764-0c85-56ae-8042-eb484e28455e', 'en', 'target audience', 'целевая аудитория', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c39ea872-b7a2-5da8-83e0-d3e9b5de6cad', 'en', 'credible', 'достоверный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4819fc4e-a94f-51bb-8edb-3765baa35ceb', 'en', 'critical acclaim', 'признание критиков', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5974dac9-1018-59fb-9fd1-ee9c568a8ce4', 'en', 'cultural representation', 'культурная репрезентация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a46429a-cd2a-52fe-9e4f-07ff4ed653cd', 'en', 'editorial bias', 'редакционная предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8d346de-49dd-55d8-a7a8-735654df5c0b', 'en', 'thought-provoking', 'заставляющий задуматься', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac70c072-131d-5bcd-adf5-d5e3581e915b', 'en', 'subtle', 'тонкий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a905764-0c85-56ae-8042-eb484e28455e', 'en', 'target audience', 'целевая аудитория', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c39ea872-b7a2-5da8-83e0-d3e9b5de6cad', 'en', 'credible', 'достоверный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4819fc4e-a94f-51bb-8edb-3765baa35ceb', 'en', 'critical acclaim', 'признание критиков', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5974dac9-1018-59fb-9fd1-ee9c568a8ce4', 'en', 'cultural representation', 'культурная репрезентация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a46429a-cd2a-52fe-9e4f-07ff4ed653cd', 'en', 'editorial bias', 'редакционная предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8d346de-49dd-55d8-a7a8-735654df5c0b', 'en', 'thought-provoking', 'заставляющий задуматься', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac70c072-131d-5bcd-adf5-d5e3581e915b', 'en', 'subtle', 'тонкий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a905764-0c85-56ae-8042-eb484e28455e', 'en', 'target audience', 'целевая аудитория', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c39ea872-b7a2-5da8-83e0-d3e9b5de6cad', 'en', 'credible', 'достоверный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4819fc4e-a94f-51bb-8edb-3765baa35ceb', 'en', 'critical acclaim', 'признание критиков', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, 'e4a385f7-58e1-554b-b09d-2072908a48e7', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, 'e4a385f7-58e1-554b-b09d-2072908a48e7', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'editorial bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, 'e4a385f7-58e1-554b-b09d-2072908a48e7', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'thought-provoking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, 'e4a385f7-58e1-554b-b09d-2072908a48e7', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'subtle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, 'e4a385f7-58e1-554b-b09d-2072908a48e7', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'target audience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, 'e4a385f7-58e1-554b-b09d-2072908a48e7', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'credible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, 'e4a385f7-58e1-554b-b09d-2072908a48e7', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical acclaim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'editorial bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'thought-provoking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'subtle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'target audience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'credible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '87c254f9-d279-5b2d-9f53-66cbcb72b36e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical acclaim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'editorial bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'thought-provoking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'subtle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'target audience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'credible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a572b864-4754-5f44-b21c-029774943a38', id, '2dde690b-2c79-5d41-b0fd-42b8ffd34217', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical acclaim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
