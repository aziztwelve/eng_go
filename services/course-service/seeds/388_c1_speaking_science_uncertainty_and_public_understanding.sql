-- Track: C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0c220776-ef6b-56f2-b3d7-e57e467453eb', 'C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING', 'Наука, неопределённость и общественное понимание', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Наука, неопределённость и общественное понимание», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Science, Uncertainty and Public Understanding","ru":"Наука, неопределённость и общественное понимание"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for science, uncertainty and public understanding by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Наука, неопределённость и общественное понимание», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('99a08715-af29-54a8-b695-e6bc4f09332d', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Explaining Scientific Uncertainty","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54a5c7ef-51be-5a7b-b62a-571e51d2b0b0', '99a08715-af29-54a8-b695-e6bc4f09332d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D01","left":"epistemic uncertainty","right":"эпистемическая неопределённость"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D02","left":"confidence interval","right":"доверительный интервал"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D03","left":"provisional consensus","right":"предварительный консенсус"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D04","left":"risk communication","right":"коммуникация риска"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D05","left":"causal inference","right":"причинный вывод"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D06","left":"replication","right":"воспроизводимость"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D07","left":"false certainty","right":"ложная уверенность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c20aef7c-f91b-5341-b976-7f6ba1066ce4', '99a08715-af29-54a8-b695-e6bc4f09332d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D08","is_correct":true,"text":"Epistemic uncertainty does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37e7a161-4baf-58b5-a215-098bfeb30728', '99a08715-af29-54a8-b695-e6bc4f09332d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Epistemic uncertainty does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эпистемическая неопределённость не делает все выводы одинаково вероятными; она определяет пределы, в которых доказательства поддерживают суждение.","target_language":"en","word_bank":["Epistemic","uncertainty","does","not","make","all","conclusions","equally","plausible",";","it","defines","the","limits","within","which","evidence","supports","judgement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8a7229b-81c2-59ce-8591-8c8225b4ad09', '99a08715-af29-54a8-b695-e6bc4f09332d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"epistemic uncertainty","instruction":"Выберите подходящее слово.","options":["epistemic uncertainty","risk communication","replication"],"sentence_template":"___ does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56178fe2-1d3e-5a91-8d81-9ea98af9ef1a', '99a08715-af29-54a8-b695-e6bc4f09332d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Epistemic","uncertainty","does","not","make","all","conclusions","equally","plausible",";","it","defines","the","limits","within","which","evidence","supports","judgement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","judgement","supports","evidence","which","within","limits","the","defines","it",";","plausible","equally","conclusions","all","make","not","does","uncertainty","Epistemic"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c84c9403-8153-5d71-a10a-55b29866f4e9', '99a08715-af29-54a8-b695-e6bc4f09332d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Epistemic uncertainty does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a226404-1c2f-51d7-83ec-62566453bdae', '99a08715-af29-54a8-b695-e6bc4f09332d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Epistemic uncertainty does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Эпистемическая неопределённость не делает все выводы одинаково вероятными; она определяет пределы, в которых доказательства поддерживают суждение. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8c7a080-30e7-56ab-96d5-ec7f9d1ff62a', '99a08715-af29-54a8-b695-e6bc4f09332d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Epistemic uncertainty does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement.","translation":"Эпистемическая неопределённость не делает все выводы одинаково вероятными; она определяет пределы, в которых доказательства поддерживают суждение.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Explaining Scientific Uncertainty"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88453570-1c44-540b-ac5a-cd7f4faf9e1b', '99a08715-af29-54a8-b695-e6bc4f09332d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“epistemic uncertainty” means limits arising from incomplete knowledge.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D11","is_correct":true,"text":"limits arising from incomplete knowledge"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D12","is_correct":false,"text":"a range expressing uncertainty around an estimate"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D13","is_correct":false,"text":"shared expert judgement open to revision"}],"word":"epistemic uncertainty"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2eaf5ef-8fad-5299-976c-fbbb390f5455', '99a08715-af29-54a8-b695-e6bc4f09332d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Epistemic uncertainty does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement.","explanation":"The missing C1 expression is “epistemic uncertainty”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"epistemic uncertainty","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D14","is_correct":true},{"audio_text":"provisional consensus","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D15","is_correct":false},{"audio_text":"causal inference","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D16","is_correct":false}],"sentence_template":"___ does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cab480e0-23ae-5ec7-9b7c-0ba02277dd94', '99a08715-af29-54a8-b695-e6bc4f09332d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"epistemic uncertainty","explanation":"The complete argument uses “epistemic uncertainty” with conceptual precision.","hint_prefix":"epis","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('748197d9-180b-5e57-9ddf-146c5a830d2d', '99a08715-af29-54a8-b695-e6bc4f09332d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"epistemic uncertainty","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D17","text":"epistemic uncertainty"},{"audio_text":"confidence interval","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D18","text":"confidence interval"},{"audio_text":"provisional consensus","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D19","text":"provisional consensus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('088e942d-00f9-5607-9717-b25f1c4e00a8', '99a08715-af29-54a8-b695-e6bc4f09332d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Explaining Scientific Uncertainty”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D20","is_correct":true,"text":"Epistemic uncertainty does not make all conclusions equally plausible; it defines the limits within which evidence supports judgement."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0c220776-ef6b-56f2-b3d7-e57e467453eb', '99a08715-af29-54a8-b695-e6bc4f09332d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e77b88ca-ab3c-546c-8e21-608630bbaca5', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Interpreting Risk and Evidence","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dee15e8d-cf53-58cd-9dba-d75cd6bdf280', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D01","left":"epistemic uncertainty","right":"эпистемическая неопределённость"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D02","left":"confidence interval","right":"доверительный интервал"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D03","left":"provisional consensus","right":"предварительный консенсус"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D04","left":"risk communication","right":"коммуникация риска"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D05","left":"causal inference","right":"причинный вывод"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D06","left":"replication","right":"воспроизводимость"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D07","left":"false certainty","right":"ложная уверенность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96afbed2-2fe2-5ec3-85e6-3c4fd57c181f', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D08","is_correct":true,"text":"Risk communication fails when a confidence interval is presented either as proof of ignorance or as a guarantee of precision."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a1755d7-6baa-57bc-8707-daa74fad5819', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Risk communication fails when a confidence interval is presented either as proof of ignorance or as a guarantee of precision.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Коммуникация риска терпит неудачу, когда доверительный интервал представляют либо как доказательство незнания, либо как гарантию точности.","target_language":"en","word_bank":["Risk","communication","fails","when","a","confidence","interval","is","presented","either","as","proof","of","ignorance","or","as","a","guarantee","of","precision","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b48bfd7b-0879-50f8-8530-eb65f3c07c07', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"confidence interval","instruction":"Выберите подходящее слово.","options":["confidence interval","causal inference","false certainty"],"sentence_template":"Risk communication fails when a ___ is presented either as proof of ignorance or as a guarantee of precision."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ced233ed-adc2-52d2-9e64-183542434235', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Risk","communication","fails","when","a","confidence","interval","is","presented","either","as","proof","of","ignorance","or","as","a","guarantee","of","precision","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","precision","of","guarantee","a","as","or","ignorance","of","proof","as","either","presented","is","interval","confidence","a","when","fails","communication","Risk"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45280ec5-d4ce-5b14-8c4c-f97ca2e65714', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Risk communication fails when a confidence interval is presented either as proof of ignorance or as a guarantee of precision. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('666635b4-ebfe-5f7b-84ee-0bbcf9e30f05', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Risk communication fails when a confidence interval is presented either as proof of ignorance or as a guarantee of precision. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Коммуникация риска терпит неудачу, когда доверительный интервал представляют либо как доказательство незнания, либо как гарантию точности. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ee5c789-eca7-5cde-b53e-40e89d3940d4', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Risk communication fails when a confidence interval is presented either as proof of ignorance or as a guarantee of precision.","translation":"Коммуникация риска терпит неудачу, когда доверительный интервал представляют либо как доказательство незнания, либо как гарантию точности.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Interpreting Risk and Evidence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b03fd3b-3e0c-56b4-b608-07ab0d4ed894', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“confidence interval” means a range expressing uncertainty around an estimate.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D11","is_correct":true,"text":"a range expressing uncertainty around an estimate"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D12","is_correct":false,"text":"shared expert judgement open to revision"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D13","is_correct":false,"text":"explanation of probability, consequence, and uncertainty"}],"word":"confidence interval"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('723864db-3813-5391-9c91-353749321021', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Risk communication fails when a confidence interval is presented either as proof of ignorance or as a guarantee of precision.","explanation":"The missing C1 expression is “confidence interval”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"confidence interval","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D14","is_correct":true},{"audio_text":"risk communication","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D15","is_correct":false},{"audio_text":"replication","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D16","is_correct":false}],"sentence_template":"Risk communication fails when a ___ is presented either as proof of ignorance or as a guarantee of precision."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d388571-2ab1-5542-859c-cd17e6f4c436', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"confidence interval","explanation":"The complete argument uses “confidence interval” with conceptual precision.","hint_prefix":"conf","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Risk communication fails when a ___ is presented either as proof of ignorance or as a guarantee of precision."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cc47e73-28f7-57eb-b1a2-af5e2330f8ad', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"epistemic uncertainty","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D17","text":"epistemic uncertainty"},{"audio_text":"confidence interval","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D18","text":"confidence interval"},{"audio_text":"provisional consensus","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D19","text":"provisional consensus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3590733d-4c74-5b94-9f83-caf25ac411cf', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Interpreting Risk and Evidence”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D20","is_correct":true,"text":"Risk communication fails when a confidence interval is presented either as proof of ignorance or as a guarantee of precision."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0c220776-ef6b-56f2-b3d7-e57e467453eb', 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ed76f35b-59cf-54ac-92fa-6017c096210c', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Communicating a Provisional Consensus","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26830dda-cec0-5d2f-bc07-554797e66fd9', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D01","left":"epistemic uncertainty","right":"эпистемическая неопределённость"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D02","left":"confidence interval","right":"доверительный интервал"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D03","left":"provisional consensus","right":"предварительный консенсус"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D04","left":"risk communication","right":"коммуникация риска"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D05","left":"causal inference","right":"причинный вывод"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D06","left":"replication","right":"воспроизводимость"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D07","left":"false certainty","right":"ложная уверенность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48025884-77cb-59c2-8653-cea69c40c239', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D08","is_correct":true,"text":"A provisional consensus should be communicated without false certainty, while replication and new evidence remain capable of revising it."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9e88e59-934b-5dde-96a0-981622912538', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A provisional consensus should be communicated without false certainty, while replication and new evidence remain capable of revising it.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предварительный консенсус следует сообщать без ложной уверенности, сохраняя возможность его пересмотра благодаря воспроизводимости и новым данным.","target_language":"en","word_bank":["A","provisional","consensus","should","be","communicated","without","false","certainty",",","while","replication","and","new","evidence","remain","capable","of","revising","it","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3460b82-e7ed-5e1b-9cbe-03c2c9bb1fb3', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"provisional consensus","instruction":"Выберите подходящее слово.","options":["provisional consensus","replication","epistemic uncertainty"],"sentence_template":"A ___ should be communicated without false certainty, while replication and new evidence remain capable of revising it."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c32e8df9-6827-5d2d-8a1b-0ce68c3599b2', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","provisional","consensus","should","be","communicated","without","false","certainty",",","while","replication","and","new","evidence","remain","capable","of","revising","it","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","it","revising","of","capable","remain","evidence","new","and","replication","while",",","certainty","false","without","communicated","be","should","consensus","provisional","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84342ba9-ae5c-5110-9a8c-cd54b4867aec', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A provisional consensus should be communicated without false certainty, while replication and new evidence remain capable of revising it. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('970ce541-03a8-5a5b-9e3f-75feef987116', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A provisional consensus should be communicated without false certainty, while replication and new evidence remain capable of revising it. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Предварительный консенсус следует сообщать без ложной уверенности, сохраняя возможность его пересмотра благодаря воспроизводимости и новым данным. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2687f149-db53-5054-8404-e1e8e3e581ca', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A provisional consensus should be communicated without false certainty, while replication and new evidence remain capable of revising it.","translation":"Предварительный консенсус следует сообщать без ложной уверенности, сохраняя возможность его пересмотра благодаря воспроизводимости и новым данным.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Communicating a Provisional Consensus"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29b95a7b-b2ac-5d79-bfb4-f51b9e0767f0', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“provisional consensus” means shared expert judgement open to revision.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D11","is_correct":true,"text":"shared expert judgement open to revision"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D12","is_correct":false,"text":"explanation of probability, consequence, and uncertainty"},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D13","is_correct":false,"text":"reasoning that one factor produces another"}],"word":"provisional consensus"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf103c21-b37e-5cf4-980c-82b2973e9d25', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A provisional consensus should be communicated without false certainty, while replication and new evidence remain capable of revising it.","explanation":"The missing C1 expression is “provisional consensus”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"provisional consensus","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D14","is_correct":true},{"audio_text":"causal inference","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D15","is_correct":false},{"audio_text":"false certainty","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D16","is_correct":false}],"sentence_template":"A ___ should be communicated without false certainty, while replication and new evidence remain capable of revising it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb4cc839-0344-5cd3-8676-0b16ce0e6b86', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"provisional consensus","explanation":"The complete argument uses “provisional consensus” with conceptual precision.","hint_prefix":"prov","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should be communicated without false certainty, while replication and new evidence remain capable of revising it."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb9fdac3-70c3-5543-ba1b-6da2314b536b', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"epistemic uncertainty","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D17","text":"epistemic uncertainty"},{"audio_text":"confidence interval","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D18","text":"confidence interval"},{"audio_text":"provisional consensus","id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D19","text":"provisional consensus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e1990d1-f866-5b8d-95c5-6dec13e4bb4d', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Communicating a Provisional Consensus”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D20","is_correct":true,"text":"A provisional consensus should be communicated without false certainty, while replication and new evidence remain capable of revising it."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_SCIENCE_UNCERTAINTY_AND_PUBLIC_UNDERSTANDING_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0c220776-ef6b-56f2-b3d7-e57e467453eb', 'ed76f35b-59cf-54ac-92fa-6017c096210c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('374c196b-b954-53d3-b4ef-3b0d1f7d1bff', 'en', 'epistemic uncertainty', 'эпистемическая неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9cfe693d-e649-50a7-91de-638c4fdbe20c', 'en', 'confidence interval', 'доверительный интервал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6b3c16a1-5ce4-51ac-87bd-b4d2354cb303', 'en', 'provisional consensus', 'предварительный консенсус', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ecf715c7-090f-5d7a-bdee-de39d0e0a2f8', 'en', 'risk communication', 'коммуникация риска', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eab0330-32f2-5dd8-9397-5347e4d9c483', 'en', 'causal inference', 'причинный вывод', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a6de5af3-a1b6-5efc-b557-23a6eba97fa0', 'en', 'replication', 'воспроизводимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c4fbcc5-8287-5732-b95a-022606c1c48d', 'en', 'false certainty', 'ложная уверенность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('374c196b-b954-53d3-b4ef-3b0d1f7d1bff', 'en', 'epistemic uncertainty', 'эпистемическая неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9cfe693d-e649-50a7-91de-638c4fdbe20c', 'en', 'confidence interval', 'доверительный интервал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6b3c16a1-5ce4-51ac-87bd-b4d2354cb303', 'en', 'provisional consensus', 'предварительный консенсус', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ecf715c7-090f-5d7a-bdee-de39d0e0a2f8', 'en', 'risk communication', 'коммуникация риска', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eab0330-32f2-5dd8-9397-5347e4d9c483', 'en', 'causal inference', 'причинный вывод', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a6de5af3-a1b6-5efc-b557-23a6eba97fa0', 'en', 'replication', 'воспроизводимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c4fbcc5-8287-5732-b95a-022606c1c48d', 'en', 'false certainty', 'ложная уверенность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('374c196b-b954-53d3-b4ef-3b0d1f7d1bff', 'en', 'epistemic uncertainty', 'эпистемическая неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9cfe693d-e649-50a7-91de-638c4fdbe20c', 'en', 'confidence interval', 'доверительный интервал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6b3c16a1-5ce4-51ac-87bd-b4d2354cb303', 'en', 'provisional consensus', 'предварительный консенсус', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ecf715c7-090f-5d7a-bdee-de39d0e0a2f8', 'en', 'risk communication', 'коммуникация риска', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eab0330-32f2-5dd8-9397-5347e4d9c483', 'en', 'causal inference', 'причинный вывод', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a6de5af3-a1b6-5efc-b557-23a6eba97fa0', 'en', 'replication', 'воспроизводимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c4fbcc5-8287-5732-b95a-022606c1c48d', 'en', 'false certainty', 'ложная уверенность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, '99a08715-af29-54a8-b695-e6bc4f09332d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, '99a08715-af29-54a8-b695-e6bc4f09332d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidence interval' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, '99a08715-af29-54a8-b695-e6bc4f09332d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'provisional consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, '99a08715-af29-54a8-b695-e6bc4f09332d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk communication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, '99a08715-af29-54a8-b695-e6bc4f09332d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'causal inference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, '99a08715-af29-54a8-b695-e6bc4f09332d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'replication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, '99a08715-af29-54a8-b695-e6bc4f09332d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'false certainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidence interval' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'provisional consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk communication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'causal inference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'replication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'e77b88ca-ab3c-546c-8e21-608630bbaca5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'false certainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'ed76f35b-59cf-54ac-92fa-6017c096210c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'ed76f35b-59cf-54ac-92fa-6017c096210c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidence interval' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'ed76f35b-59cf-54ac-92fa-6017c096210c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'provisional consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'ed76f35b-59cf-54ac-92fa-6017c096210c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk communication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'ed76f35b-59cf-54ac-92fa-6017c096210c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'causal inference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'ed76f35b-59cf-54ac-92fa-6017c096210c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'replication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c220776-ef6b-56f2-b3d7-e57e467453eb', id, 'ed76f35b-59cf-54ac-92fa-6017c096210c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'false certainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
