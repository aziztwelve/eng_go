-- Track: B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e52bedaf-2dfd-52c8-8d6f-cb29b771b941', 'B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE', 'Выбор образа жизни и социальные изменения', 'Развивайте свободную и точную устную речь уровня B2 по теме «Выбор образа жизни и социальные изменения»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Lifestyle Choices and Social Change","ru":"Выбор образа жизни и социальные изменения"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for lifestyle choices and social change through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Выбор образа жизни и социальные изменения»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Modern Lifestyles","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c1c2a25-6b12-5b84-826e-d3cb8a464391', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D01","left":"quality of life","right":"качество жизни"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D02","left":"blur the boundaries","right":"размывать границы"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D03","left":"social trend","right":"общественная тенденция"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D04","left":"prioritise","right":"расставлять приоритеты"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D05","left":"remote working","right":"удалённая работа"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D06","left":"accessible","right":"доступный"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D07","left":"trade-off","right":"компромиссный выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a3cf35b-afff-507a-94c4-93f167f04402', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D08","is_correct":true,"text":"Improving quality of life often involves a trade-off between financial security, personal freedom, and the time available for relationships."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cba251d-5a18-5696-bd98-b1881ebb7031', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Improving quality of life often involves a trade-off between financial security, personal freedom, and the time available for relationships.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Повышение качества жизни часто требует компромиссного выбора между финансовой стабильностью, личной свободой и временем для отношений.","target_language":"en","word_bank":["Improving","quality","of","life","often","involves","a","trade-off","between","financial","security",",","personal","freedom",",","and","the","time","available","for","relationships","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a024a89-89a1-5256-b835-b42e7855f6cd', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"quality of life","instruction":"Выберите подходящее слово.","options":["quality of life","prioritise","accessible"],"sentence_template":"Improving ___ often involves a trade-off between financial security, personal freedom, and the time available for relationships."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2ae5e21-dad1-55a3-a9c2-f5160c8b34a3', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Improving","quality","of","life","often","involves","a","trade-off","between","financial","security",",","personal","freedom",",","and","the","time","available","for","relationships","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","relationships","for","available","time","the","and",",","freedom","personal",",","security","financial","between","trade-off","a","involves","often","life","of","quality","Improving"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14667e7a-8da2-5355-80be-f173e2c5e801', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Improving quality of life often involves a trade-off between financial security, personal freedom, and the time available for relationships. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1dcfc05-803d-518c-bc58-7aa2e096bb3e', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Improving quality of life often involves a trade-off between financial security, personal freedom, and the time available for relationships. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Повышение качества жизни часто требует компромиссного выбора между финансовой стабильностью, личной свободой и временем для отношений. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc813314-0c2f-5752-8e62-257c0f3fd0c8', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Improving quality of life often involves a trade-off between financial security, personal freedom, and the time available for relationships.","translation":"Повышение качества жизни часто требует компромиссного выбора между финансовой стабильностью, личной свободой и временем для отношений.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Modern Lifestyles"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d28f427-fd94-5b35-b4ef-d9b89e9a58ff', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“quality of life” means the level of comfort, health, and satisfaction in someone’s life.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D11","is_correct":true,"text":"the level of comfort, health, and satisfaction in someone’s life"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D12","is_correct":false,"text":"make the separation between two areas less clear"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D13","is_correct":false,"text":"a general direction in how society is changing"}],"word":"quality of life"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7521a34-44fd-5a43-a7f0-b8dd86453a24', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Improving quality of life often involves a trade-off between financial security, personal freedom, and the time available for relationships.","explanation":"The missing B2 expression is “quality of life”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"quality of life","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D14","is_correct":true},{"audio_text":"social trend","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D15","is_correct":false},{"audio_text":"remote working","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D16","is_correct":false}],"sentence_template":"Improving ___ often involves a trade-off between financial security, personal freedom, and the time available for relationships."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('226e486f-bb4e-5978-ba97-dcac0b1f7e1c', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"quality of life","explanation":"The complete argument uses “quality of life” to express the intended meaning precisely.","hint_prefix":"qual","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Improving ___ often involves a trade-off between financial security, personal freedom, and the time available for relationships."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82964a3e-71e4-5cd3-844a-38b03a6f71fe', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"quality of life","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D17","text":"quality of life"},{"audio_text":"blur the boundaries","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D18","text":"blur the boundaries"},{"audio_text":"social trend","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D19","text":"social trend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6323076-a0cf-518b-bf11-d8d029bb592f', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Modern Lifestyles”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D20","is_correct":true,"text":"Improving quality of life often involves a trade-off between financial security, personal freedom, and the time available for relationships."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e52bedaf-2dfd-52c8-8d6f-cb29b771b941', 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fb317bb7-4e33-5f41-b8fc-b0bf0e657252', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Work-Life Boundaries","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89717e6a-17ce-5401-a1e5-905d75a0a313', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D01","left":"quality of life","right":"качество жизни"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D02","left":"blur the boundaries","right":"размывать границы"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D03","left":"social trend","right":"общественная тенденция"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D04","left":"prioritise","right":"расставлять приоритеты"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D05","left":"remote working","right":"удалённая работа"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D06","left":"accessible","right":"доступный"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D07","left":"trade-off","right":"компромиссный выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5003ac5-27c2-52ff-bb9c-9375de449239', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D08","is_correct":true,"text":"Although remote working offers flexibility, it can blur the boundaries between professional responsibilities and private life."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd9ca980-2362-5636-b447-f3382edcbdd9', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Although remote working offers flexibility, it can blur the boundaries between professional responsibilities and private life.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хотя удалённая работа даёт гибкость, она может размывать границы между профессиональными обязанностями и личной жизнью.","target_language":"en","word_bank":["Although","remote","working","offers","flexibility",",","it","can","blur","the","boundaries","between","professional","responsibilities","and","private","life","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b43d4710-845c-57bb-b452-e32593be4220', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"blur the boundaries","instruction":"Выберите подходящее слово.","options":["blur the boundaries","remote working","trade-off"],"sentence_template":"Although remote working offers flexibility, it can ___ between professional responsibilities and private life."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a01a0eea-1e62-5481-bbf8-5df2880f6b8a', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Although","remote","working","offers","flexibility",",","it","can","blur","the","boundaries","between","professional","responsibilities","and","private","life","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","life","private","and","responsibilities","professional","between","boundaries","the","blur","can","it",",","flexibility","offers","working","remote","Although"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4848bad6-bce6-55cc-8ba0-1f54d4794f7d', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Although remote working offers flexibility, it can blur the boundaries between professional responsibilities and private life. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbe1daf0-b765-5b00-aa9b-105cfa37bac6', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Although remote working offers flexibility, it can blur the boundaries between professional responsibilities and private life. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Хотя удалённая работа даёт гибкость, она может размывать границы между профессиональными обязанностями и личной жизнью. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62181c10-950c-5caa-afb6-3c19803bb6fc', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Although remote working offers flexibility, it can blur the boundaries between professional responsibilities and private life.","translation":"Хотя удалённая работа даёт гибкость, она может размывать границы между профессиональными обязанностями и личной жизнью.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Work-Life Boundaries"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34075f21-de61-528d-b5c1-d85ca3d3ca2c', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“blur the boundaries” means make the separation between two areas less clear.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D11","is_correct":true,"text":"make the separation between two areas less clear"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D12","is_correct":false,"text":"a general direction in how society is changing"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D13","is_correct":false,"text":"decide what deserves attention first"}],"word":"blur the boundaries"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01f7d2a0-f61b-5fd3-8dfc-8dc3d3264923', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Although remote working offers flexibility, it can blur the boundaries between professional responsibilities and private life.","explanation":"The missing B2 expression is “blur the boundaries”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"blur the boundaries","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D14","is_correct":true},{"audio_text":"prioritise","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D15","is_correct":false},{"audio_text":"accessible","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D16","is_correct":false}],"sentence_template":"Although remote working offers flexibility, it can ___ between professional responsibilities and private life."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('150df8f8-6482-52f1-98b1-b41c1ecce649', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"blur the boundaries","explanation":"The complete argument uses “blur the boundaries” to express the intended meaning precisely.","hint_prefix":"blur","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Although remote working offers flexibility, it can ___ between professional responsibilities and private life."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20fdf2bb-827d-59e4-b9f0-4bc6e8a8d0a2', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"quality of life","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D17","text":"quality of life"},{"audio_text":"blur the boundaries","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D18","text":"blur the boundaries"},{"audio_text":"social trend","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D19","text":"social trend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65796e09-e140-5bf7-8f93-9cfc9d30c31a', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Work-Life Boundaries”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D20","is_correct":true,"text":"Although remote working offers flexibility, it can blur the boundaries between professional responsibilities and private life."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e52bedaf-2dfd-52c8-8d6f-cb29b771b941', 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('32228824-95fb-5974-a480-ea0a805945d3', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Changing Social Habits","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b55f234-fe9f-5f5f-bb25-dfd471eb2624', '32228824-95fb-5974-a480-ea0a805945d3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D01","left":"quality of life","right":"качество жизни"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D02","left":"blur the boundaries","right":"размывать границы"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D03","left":"social trend","right":"общественная тенденция"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D04","left":"prioritise","right":"расставлять приоритеты"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D05","left":"remote working","right":"удалённая работа"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D06","left":"accessible","right":"доступный"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D07","left":"trade-off","right":"компромиссный выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8e47210-34d8-535c-9d51-0e1373e95030', '32228824-95fb-5974-a480-ea0a805945d3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D08","is_correct":true,"text":"A social trend becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd307d24-8b96-56c5-b8ad-d7def96ca930', '32228824-95fb-5974-a480-ea0a805945d3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A social trend becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Общественная тенденция становится действительно полезной лишь тогда, когда её преимущества доступны людям с самым разным происхождением.","target_language":"en","word_bank":["A","social","trend","becomes","genuinely","beneficial","only","when","its","advantages","are","accessible","to","people","from","a","wide","range","of","backgrounds","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1362dde7-a7e0-5e24-8ad3-b521cff2a006', '32228824-95fb-5974-a480-ea0a805945d3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"social trend","instruction":"Выберите подходящее слово.","options":["social trend","accessible","quality of life"],"sentence_template":"A ___ becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('474f910c-35de-572f-ae05-9cea7294b3e0', '32228824-95fb-5974-a480-ea0a805945d3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","social","trend","becomes","genuinely","beneficial","only","when","its","advantages","are","accessible","to","people","from","a","wide","range","of","backgrounds","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","backgrounds","of","range","wide","a","from","people","to","accessible","are","advantages","its","when","only","beneficial","genuinely","becomes","trend","social","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a8b7574-31cf-5374-a11e-50f5775c5909', '32228824-95fb-5974-a480-ea0a805945d3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A social trend becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e179e3c-e136-50e9-9209-883f5cbebd15', '32228824-95fb-5974-a480-ea0a805945d3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A social trend becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Общественная тенденция становится действительно полезной лишь тогда, когда её преимущества доступны людям с самым разным происхождением. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08dba0b5-d3aa-5a38-bf55-11456d142993', '32228824-95fb-5974-a480-ea0a805945d3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A social trend becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds.","translation":"Общественная тенденция становится действительно полезной лишь тогда, когда её преимущества доступны людям с самым разным происхождением.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Changing Social Habits"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b41af99-1dcc-5d65-ad85-6fcb1c614668', '32228824-95fb-5974-a480-ea0a805945d3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“social trend” means a general direction in how society is changing.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D11","is_correct":true,"text":"a general direction in how society is changing"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D12","is_correct":false,"text":"decide what deserves attention first"},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D13","is_correct":false,"text":"working away from a shared workplace"}],"word":"social trend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7cd803a-246a-529c-9da1-587f1a42449a', '32228824-95fb-5974-a480-ea0a805945d3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A social trend becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds.","explanation":"The missing B2 expression is “social trend”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"social trend","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D14","is_correct":true},{"audio_text":"remote working","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D15","is_correct":false},{"audio_text":"trade-off","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D16","is_correct":false}],"sentence_template":"A ___ becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4a7575c-d9dc-57c9-9bf3-b9cd69342e64', '32228824-95fb-5974-a480-ea0a805945d3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"social trend","explanation":"The complete argument uses “social trend” to express the intended meaning precisely.","hint_prefix":"soci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b59ee00-38ff-5691-80ef-65fece4c0f95', '32228824-95fb-5974-a480-ea0a805945d3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"quality of life","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D17","text":"quality of life"},{"audio_text":"blur the boundaries","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D18","text":"blur the boundaries"},{"audio_text":"social trend","id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D19","text":"social trend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b23f2bc-f591-53be-b9b7-27f8e64bc99c', '32228824-95fb-5974-a480-ea0a805945d3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Changing Social Habits”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D20","is_correct":true,"text":"A social trend becomes genuinely beneficial only when its advantages are accessible to people from a wide range of backgrounds."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_LIFESTYLE_CHOICES_AND_SOCIAL_CHANGE_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e52bedaf-2dfd-52c8-8d6f-cb29b771b941', '32228824-95fb-5974-a480-ea0a805945d3', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('158b9fc8-0802-5400-9274-ae54f9cabd25', 'en', 'quality of life', 'качество жизни', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19648237-f2da-59d4-8527-13941575ec3d', 'en', 'blur the boundaries', 'размывать границы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7fb0c72-b7fa-5c01-aff8-8a782ca46340', 'en', 'social trend', 'общественная тенденция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2f60d81-0a4c-5017-9f66-8eb58da4b2d2', 'en', 'prioritise', 'расставлять приоритеты', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8bc9c87d-8d12-5d7d-bebf-9c63cbe22456', 'en', 'remote working', 'удалённая работа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f6ef79b-93d6-5005-84a4-bdcbc41a9fff', 'en', 'accessible', 'доступный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09e874b9-5b90-5efe-9ff2-18fdd270e4da', 'en', 'trade-off', 'компромиссный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('158b9fc8-0802-5400-9274-ae54f9cabd25', 'en', 'quality of life', 'качество жизни', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19648237-f2da-59d4-8527-13941575ec3d', 'en', 'blur the boundaries', 'размывать границы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7fb0c72-b7fa-5c01-aff8-8a782ca46340', 'en', 'social trend', 'общественная тенденция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2f60d81-0a4c-5017-9f66-8eb58da4b2d2', 'en', 'prioritise', 'расставлять приоритеты', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8bc9c87d-8d12-5d7d-bebf-9c63cbe22456', 'en', 'remote working', 'удалённая работа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f6ef79b-93d6-5005-84a4-bdcbc41a9fff', 'en', 'accessible', 'доступный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09e874b9-5b90-5efe-9ff2-18fdd270e4da', 'en', 'trade-off', 'компромиссный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('158b9fc8-0802-5400-9274-ae54f9cabd25', 'en', 'quality of life', 'качество жизни', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19648237-f2da-59d4-8527-13941575ec3d', 'en', 'blur the boundaries', 'размывать границы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7fb0c72-b7fa-5c01-aff8-8a782ca46340', 'en', 'social trend', 'общественная тенденция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2f60d81-0a4c-5017-9f66-8eb58da4b2d2', 'en', 'prioritise', 'расставлять приоритеты', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8bc9c87d-8d12-5d7d-bebf-9c63cbe22456', 'en', 'remote working', 'удалённая работа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f6ef79b-93d6-5005-84a4-bdcbc41a9fff', 'en', 'accessible', 'доступный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09e874b9-5b90-5efe-9ff2-18fdd270e4da', 'en', 'trade-off', 'компромиссный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality of life' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'blur the boundaries' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'social trend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'prioritise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote working' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'b5f1f6c2-7159-5f8c-8073-3c95d7eac47d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality of life' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'blur the boundaries' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'social trend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'prioritise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote working' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, 'fb317bb7-4e33-5f41-b8fc-b0bf0e657252', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, '32228824-95fb-5974-a480-ea0a805945d3', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality of life' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, '32228824-95fb-5974-a480-ea0a805945d3', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'blur the boundaries' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, '32228824-95fb-5974-a480-ea0a805945d3', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'social trend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, '32228824-95fb-5974-a480-ea0a805945d3', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'prioritise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, '32228824-95fb-5974-a480-ea0a805945d3', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote working' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, '32228824-95fb-5974-a480-ea0a805945d3', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e52bedaf-2dfd-52c8-8d6f-cb29b771b941', id, '32228824-95fb-5974-a480-ea0a805945d3', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
