-- Track: C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('fbf1e295-98f8-5ee4-9f37-258aaa1a440c', 'C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING', 'Этические дилеммы, ценности и моральное рассуждение', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Этические дилеммы, ценности и моральное рассуждение», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Ethical Dilemmas, Values and Moral Reasoning","ru":"Этические дилеммы, ценности и моральное рассуждение"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for ethical dilemmas, values and moral reasoning by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Этические дилеммы, ценности и моральное рассуждение», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a59de295-a992-5486-95b6-3367661e2096', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Competing Ethical Principles","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba694f97-1afa-57ad-9482-a93479101686', 'a59de295-a992-5486-95b6-3367661e2096', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D01","left":"competing principle","right":"конкурирующий принцип"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D02","left":"moral intuition","right":"моральная интуиция"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D03","left":"distributive justice","right":"распределительная справедливость"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D04","left":"unintended harm","right":"непреднамеренный вред"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D05","left":"ethical consistency","right":"этическая последовательность"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D06","left":"mitigating circumstance","right":"смягчающее обстоятельство"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D07","left":"defensible judgement","right":"обоснованное суждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d79c4e75-28a0-5b06-a178-3b1b9a999f0f', 'a59de295-a992-5486-95b6-3367661e2096', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D08","is_correct":true,"text":"When competing principles cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37ecd918-f2a1-5ad4-ac47-c9db6b1ed813', 'a59de295-a992-5486-95b6-3367661e2096', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When competing principles cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда конкурирующие принципы невозможно полностью соблюсти одновременно, моральное рассуждение должно открыто назвать жертву, а не скрывать её за простым решением.","target_language":"en","word_bank":["When","competing","principles","cannot","both","be","honoured","fully",",","moral","reasoning","should","make","the","sacrifice","explicit","rather","than","disguise","it","as","an","easy","solution","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b479f9f6-1038-5c27-b12c-9f89feede49d', 'a59de295-a992-5486-95b6-3367661e2096', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"competing principle","instruction":"Выберите подходящее слово.","options":["competing principle","unintended harm","mitigating circumstance"],"sentence_template":"When ___s cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1be1e03b-e05c-5d55-bcbb-e658c2cac90f', 'a59de295-a992-5486-95b6-3367661e2096', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","competing","principles","cannot","both","be","honoured","fully",",","moral","reasoning","should","make","the","sacrifice","explicit","rather","than","disguise","it","as","an","easy","solution","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","solution","easy","an","as","it","disguise","than","rather","explicit","sacrifice","the","make","should","reasoning","moral",",","fully","honoured","be","both","cannot","principles","competing","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a29a188b-5944-51c7-8b71-a5bfadb413b0', 'a59de295-a992-5486-95b6-3367661e2096', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When competing principles cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3855f0a1-46b6-54e6-b6bb-156586a0876e', 'a59de295-a992-5486-95b6-3367661e2096', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When competing principles cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Когда конкурирующие принципы невозможно полностью соблюсти одновременно, моральное рассуждение должно открыто назвать жертву, а не скрывать её за простым решением. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d85b268c-0233-5a93-8c46-974e9ccd5577', 'a59de295-a992-5486-95b6-3367661e2096', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"When competing principles cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution.","translation":"Когда конкурирующие принципы невозможно полностью соблюсти одновременно, моральное рассуждение должно открыто назвать жертву, а не скрывать её за простым решением.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Competing Ethical Principles"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc2f1804-2df4-5881-b546-c7cbffa7275f', 'a59de295-a992-5486-95b6-3367661e2096', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“competing principle” means one ethical value conflicting with another.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D11","is_correct":true,"text":"one ethical value conflicting with another"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D12","is_correct":false,"text":"an immediate ethical judgement not based on explicit reasoning"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D13","is_correct":false,"text":"fair allocation of benefits and burdens"}],"word":"competing principle"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1783b135-c165-55c8-ab4f-c789345c9c86', 'a59de295-a992-5486-95b6-3367661e2096', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When competing principles cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution.","explanation":"The missing C1 expression is “competing principle”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"competing principle","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D14","is_correct":true},{"audio_text":"distributive justice","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D15","is_correct":false},{"audio_text":"ethical consistency","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D16","is_correct":false}],"sentence_template":"When ___s cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b2d21bb-48c7-5c8d-bdd6-b848d5a2591d', 'a59de295-a992-5486-95b6-3367661e2096', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"competing principle","explanation":"The complete argument uses “competing principle” with conceptual precision.","hint_prefix":"comp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When ___s cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac19a6f5-b859-5f08-824d-992c498cce77', 'a59de295-a992-5486-95b6-3367661e2096', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competing principle","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D17","text":"competing principle"},{"audio_text":"moral intuition","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D18","text":"moral intuition"},{"audio_text":"distributive justice","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D19","text":"distributive justice"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbb8ee77-f604-5a9a-b961-859f68dc6ef6', 'a59de295-a992-5486-95b6-3367661e2096', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Competing Ethical Principles”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D20","is_correct":true,"text":"When competing principles cannot both be honoured fully, moral reasoning should make the sacrifice explicit rather than disguise it as an easy solution."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fbf1e295-98f8-5ee4-9f37-258aaa1a440c', 'a59de295-a992-5486-95b6-3367661e2096', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('12b5d81f-efab-58a1-9c08-3869a0b30bcd', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Reasoning Through a Dilemma","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bf5f0e4-08d4-50c8-83bc-dcca27be8309', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D01","left":"competing principle","right":"конкурирующий принцип"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D02","left":"moral intuition","right":"моральная интуиция"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D03","left":"distributive justice","right":"распределительная справедливость"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D04","left":"unintended harm","right":"непреднамеренный вред"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D05","left":"ethical consistency","right":"этическая последовательность"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D06","left":"mitigating circumstance","right":"смягчающее обстоятельство"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D07","left":"defensible judgement","right":"обоснованное суждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b997ee11-d8c9-5980-92df-1500ebc33f74', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D08","is_correct":true,"text":"Moral intuition may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2427ca1-497e-5c14-a300-e83d4dffd2e1', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Moral intuition may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Моральная интуиция может указать на непреднамеренный вред, но распределительная справедливость требует изучить, как выгоды и бремя распределяются между группами.","target_language":"en","word_bank":["Moral","intuition","may","alert","us","to","unintended","harm",",","but","distributive","justice","requires","examining","how","benefits","and","burdens","are","allocated","across","groups","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b53ccc5-79ac-58a7-acf9-eaaa1bd2ac83', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"moral intuition","instruction":"Выберите подходящее слово.","options":["moral intuition","ethical consistency","defensible judgement"],"sentence_template":"___ may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b66be452-1335-5d2f-8d80-e49de77d2edf', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Moral","intuition","may","alert","us","to","unintended","harm",",","but","distributive","justice","requires","examining","how","benefits","and","burdens","are","allocated","across","groups","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","groups","across","allocated","are","burdens","and","benefits","how","examining","requires","justice","distributive","but",",","harm","unintended","to","us","alert","may","intuition","Moral"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fddfa2e6-a501-5242-aba2-c9a475a49c00', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Moral intuition may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('300be74f-cea2-5e7f-ba58-e4803606b49c', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Moral intuition may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Моральная интуиция может указать на непреднамеренный вред, но распределительная справедливость требует изучить, как выгоды и бремя распределяются между группами. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a80796b9-0fe3-5ba2-b507-2fe3b05b410c', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Moral intuition may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups.","translation":"Моральная интуиция может указать на непреднамеренный вред, но распределительная справедливость требует изучить, как выгоды и бремя распределяются между группами.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Reasoning Through a Dilemma"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32655c4f-8cc3-5224-b437-38612e308887', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“moral intuition” means an immediate ethical judgement not based on explicit reasoning.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D11","is_correct":true,"text":"an immediate ethical judgement not based on explicit reasoning"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D12","is_correct":false,"text":"fair allocation of benefits and burdens"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D13","is_correct":false,"text":"damage caused without being intended"}],"word":"moral intuition"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb5ebca8-ce81-52fb-90e7-618a8c928136', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Moral intuition may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups.","explanation":"The missing C1 expression is “moral intuition”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"moral intuition","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D14","is_correct":true},{"audio_text":"unintended harm","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D15","is_correct":false},{"audio_text":"mitigating circumstance","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D16","is_correct":false}],"sentence_template":"___ may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1303d755-c9bf-5ee7-a2d0-6b0e99004dd6', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"moral intuition","explanation":"The complete argument uses “moral intuition” with conceptual precision.","hint_prefix":"mora","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb5d34ba-eb4f-57c7-a96e-9031d4a92d58', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competing principle","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D17","text":"competing principle"},{"audio_text":"moral intuition","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D18","text":"moral intuition"},{"audio_text":"distributive justice","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D19","text":"distributive justice"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd7b369e-04e3-5d71-aeb6-964be9125a76', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Reasoning Through a Dilemma”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D20","is_correct":true,"text":"Moral intuition may alert us to unintended harm, but distributive justice requires examining how benefits and burdens are allocated across groups."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fbf1e295-98f8-5ee4-9f37-258aaa1a440c', '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Defending a Qualified Judgement","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e4f2cad-f9e2-58d7-85a0-6350730dde8c', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D01","left":"competing principle","right":"конкурирующий принцип"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D02","left":"moral intuition","right":"моральная интуиция"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D03","left":"distributive justice","right":"распределительная справедливость"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D04","left":"unintended harm","right":"непреднамеренный вред"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D05","left":"ethical consistency","right":"этическая последовательность"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D06","left":"mitigating circumstance","right":"смягчающее обстоятельство"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D07","left":"defensible judgement","right":"обоснованное суждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5d59e59-2c99-5a15-8aa2-3ce8b54288af', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D08","is_correct":true,"text":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23fd1b87-6ea9-5f13-86b9-8c2acf33d33e', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обоснованное суждение признаёт смягчающие обстоятельства, сохраняя этическую последовательность в сопоставимых случаях.","target_language":"en","word_bank":["A","defensible","judgement","acknowledges","mitigating","circumstances","while","preserving","ethical","consistency","across","comparable","cases","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0cdce79-4869-583d-af0f-3b737b65ee66', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"distributive justice","instruction":"Выберите подходящее слово.","options":["distributive justice","mitigating circumstance","competing principle"],"sentence_template":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0156f8d7-e4a8-5b45-8973-723932c4f5ac', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","defensible","judgement","acknowledges","mitigating","circumstances","while","preserving","ethical","consistency","across","comparable","cases","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","cases","comparable","across","consistency","ethical","preserving","while","circumstances","mitigating","acknowledges","judgement","defensible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0096a04c-501f-5603-92f1-1513e019a86f', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9928d3b-12d3-5e23-be01-2e837a00b27c', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Обоснованное суждение признаёт смягчающие обстоятельства, сохраняя этическую последовательность в сопоставимых случаях. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1aa4fe1e-2753-5e51-b76e-55064dd4fc55', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases.","translation":"Обоснованное суждение признаёт смягчающие обстоятельства, сохраняя этическую последовательность в сопоставимых случаях.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Defending a Qualified Judgement"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a4ca30b-0def-5384-818d-94d8c662da4d', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“distributive justice” means fair allocation of benefits and burdens.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D11","is_correct":true,"text":"fair allocation of benefits and burdens"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D12","is_correct":false,"text":"damage caused without being intended"},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D13","is_correct":false,"text":"application of principles without convenient exceptions"}],"word":"distributive justice"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0028f86-954e-59a5-8475-06f9ffefc64b', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases.","explanation":"The missing C1 expression is “distributive justice”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"distributive justice","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D14","is_correct":true},{"audio_text":"ethical consistency","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D15","is_correct":false},{"audio_text":"defensible judgement","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D16","is_correct":false}],"sentence_template":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fc14bf1-9f6b-5590-b339-d6fc58b6856a', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"distributive justice","explanation":"The complete argument uses “distributive justice” with conceptual precision.","hint_prefix":"dist","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bc200d3-90f1-59e7-8000-9615eb94d738', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competing principle","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D17","text":"competing principle"},{"audio_text":"moral intuition","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D18","text":"moral intuition"},{"audio_text":"distributive justice","id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D19","text":"distributive justice"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e158e2d2-2d8f-559b-b4e3-c1f8549f33e4', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Defending a Qualified Judgement”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D20","is_correct":true,"text":"A defensible judgement acknowledges mitigating circumstances while preserving ethical consistency across comparable cases."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_ETHICAL_DILEMMAS_VALUES_AND_MORAL_REASONING_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fbf1e295-98f8-5ee4-9f37-258aaa1a440c', '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45d19d85-a51e-5010-828d-18e4103de18c', 'en', 'competing principle', 'конкурирующий принцип', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80e139b1-d681-5bbe-a262-a64015f50f0d', 'en', 'moral intuition', 'моральная интуиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dceb6bb1-d6db-5d18-8c41-24ac6bcf9806', 'en', 'distributive justice', 'распределительная справедливость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4e9b905-7124-597f-9419-c3c178027261', 'en', 'unintended harm', 'непреднамеренный вред', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1b5a8b7-2318-55cb-9fdb-b00599991a20', 'en', 'ethical consistency', 'этическая последовательность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9252e0e-1c88-5a9b-b5a4-ff43082f11e2', 'en', 'mitigating circumstance', 'смягчающее обстоятельство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8749426-77b8-53eb-9565-eff40a5f4c26', 'en', 'defensible judgement', 'обоснованное суждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45d19d85-a51e-5010-828d-18e4103de18c', 'en', 'competing principle', 'конкурирующий принцип', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80e139b1-d681-5bbe-a262-a64015f50f0d', 'en', 'moral intuition', 'моральная интуиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dceb6bb1-d6db-5d18-8c41-24ac6bcf9806', 'en', 'distributive justice', 'распределительная справедливость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4e9b905-7124-597f-9419-c3c178027261', 'en', 'unintended harm', 'непреднамеренный вред', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1b5a8b7-2318-55cb-9fdb-b00599991a20', 'en', 'ethical consistency', 'этическая последовательность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9252e0e-1c88-5a9b-b5a4-ff43082f11e2', 'en', 'mitigating circumstance', 'смягчающее обстоятельство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8749426-77b8-53eb-9565-eff40a5f4c26', 'en', 'defensible judgement', 'обоснованное суждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45d19d85-a51e-5010-828d-18e4103de18c', 'en', 'competing principle', 'конкурирующий принцип', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80e139b1-d681-5bbe-a262-a64015f50f0d', 'en', 'moral intuition', 'моральная интуиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dceb6bb1-d6db-5d18-8c41-24ac6bcf9806', 'en', 'distributive justice', 'распределительная справедливость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4e9b905-7124-597f-9419-c3c178027261', 'en', 'unintended harm', 'непреднамеренный вред', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1b5a8b7-2318-55cb-9fdb-b00599991a20', 'en', 'ethical consistency', 'этическая последовательность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9252e0e-1c88-5a9b-b5a4-ff43082f11e2', 'en', 'mitigating circumstance', 'смягчающее обстоятельство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8749426-77b8-53eb-9565-eff40a5f4c26', 'en', 'defensible judgement', 'обоснованное суждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, 'a59de295-a992-5486-95b6-3367661e2096', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing principle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, 'a59de295-a992-5486-95b6-3367661e2096', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'moral intuition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, 'a59de295-a992-5486-95b6-3367661e2096', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'distributive justice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, 'a59de295-a992-5486-95b6-3367661e2096', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended harm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, 'a59de295-a992-5486-95b6-3367661e2096', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical consistency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, 'a59de295-a992-5486-95b6-3367661e2096', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'mitigating circumstance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, 'a59de295-a992-5486-95b6-3367661e2096', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'defensible judgement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing principle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'moral intuition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'distributive justice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended harm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical consistency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'mitigating circumstance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '12b5d81f-efab-58a1-9c08-3869a0b30bcd', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'defensible judgement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing principle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'moral intuition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'distributive justice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended harm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical consistency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'mitigating circumstance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fbf1e295-98f8-5ee4-9f37-258aaa1a440c', id, '8f8f2ea8-1c65-5c11-aab7-b3ebafa9b346', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'defensible judgement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
