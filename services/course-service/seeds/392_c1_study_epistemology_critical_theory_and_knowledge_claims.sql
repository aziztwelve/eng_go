-- Track: C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6e9fddc7-82f6-55d2-9565-481d45fb6b67', 'C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS', 'Эпистемология, критическая теория и утверждения о знании', 'Развивайте продвинутую академическую компетентность уровня C1 по теме «Эпистемология, критическая теория и утверждения о знании», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы.', '{"en":"Epistemology, Critical Theory and Knowledge Claims","ru":"Эпистемология, критическая теория и утверждения о знании"}'::jsonb, '{"en":"Develop advanced C1 academic competence for epistemology, critical theory and knowledge claims by critiquing assumptions, synthesising complex sources, and defending warranted conclusions.","ru":"Развивайте продвинутую академическую компетентность уровня C1 по теме «Эпистемология, критическая теория и утверждения о знании», критикуя предпосылки, синтезируя сложные источники и защищая обоснованные выводы."}'::jsonb, 'en', 'C1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('199946d8-c2c4-56d3-a06a-b43d8226da13', NULL, 'Теоретическая точность', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Examining Knowledge Claims","ru":"Теоретическая точность"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a9a8a23-568e-5efa-bf0a-c10c99b7a10f', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D01","left":"epistemic authority","right":"эпистемический авторитет"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D02","left":"situated knowledge","right":"ситуативное знание"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D03","left":"hegemonic assumption","right":"гегемонистское предположение"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D04","left":"reflexivity","right":"рефлексивность"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D05","left":"knowledge claim","right":"утверждение о знании"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D06","left":"interpretive lens","right":"интерпретационная перспектива"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D07","left":"epistemic limitation","right":"эпистемическое ограничение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18bceca3-61be-5165-b327-f489857573cb', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D08","is_correct":true,"text":"Epistemic authority is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e59e931-d2a2-54fa-82e8-0143a9fc0459', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Epistemic authority is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эпистемический авторитет распределяется институционально, поэтому кажущиеся нейтральными стандарты могут отдавать предпочтение одним формам экспертизы.","target_language":"en","word_bank":["Epistemic","authority","is","institutionally","distributed",",","so","apparently","neutral","standards","may","privilege","some","forms","of","expertise","over","others","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a501e17-000e-5c31-9067-41e2d541c4e9', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"epistemic authority","instruction":"Выберите подходящее слово.","options":["epistemic authority","reflexivity","interpretive lens"],"sentence_template":"___ is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab13b6fc-72d7-5074-870f-a56555895d1a', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Epistemic","authority","is","institutionally","distributed",",","so","apparently","neutral","standards","may","privilege","some","forms","of","expertise","over","others","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","others","over","expertise","of","forms","some","privilege","may","standards","neutral","apparently","so",",","distributed","institutionally","is","authority","Epistemic"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fc65cc7-6b16-5bc6-bc5c-2acba3200cac', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Epistemic authority is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f20891c6-cb17-5058-9b58-506f3c2a8d84', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Epistemic authority is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Эпистемический авторитет распределяется институционально, поэтому кажущиеся нейтральными стандарты могут отдавать предпочтение одним формам экспертизы. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3ec9a1a-5a40-5d6b-8e61-ade73206ac65', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Epistemic authority is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others.","translation":"Эпистемический авторитет распределяется институционально, поэтому кажущиеся нейтральными стандарты могут отдавать предпочтение одним формам экспертизы.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Examining Knowledge Claims"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('067ce5c9-87f0-5f1c-abad-980e70124b75', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“epistemic authority” means recognised power to define credible knowledge.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D11","is_correct":true,"text":"recognised power to define credible knowledge"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D12","is_correct":false,"text":"knowledge shaped by the knower’s social position"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D13","is_correct":false,"text":"a dominant belief treated as natural or universal"}],"word":"epistemic authority"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df39a448-275c-5a29-be99-76d13dc52744', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Epistemic authority is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others.","explanation":"The missing C1 academic expression is “epistemic authority”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"epistemic authority","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D14","is_correct":true},{"audio_text":"hegemonic assumption","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D15","is_correct":false},{"audio_text":"knowledge claim","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D16","is_correct":false}],"sentence_template":"___ is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb96509e-8ab4-5507-a1ed-8a56728395aa', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"epistemic authority","explanation":"The complete academic argument uses “epistemic authority” with conceptual precision.","hint_prefix":"epis","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07056fde-fec5-5b3f-96f2-94760a1a5029', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"epistemic authority","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D17","text":"epistemic authority"},{"audio_text":"situated knowledge","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D18","text":"situated knowledge"},{"audio_text":"hegemonic assumption","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D19","text":"hegemonic assumption"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d28bae2-45f9-5644-b91f-0ab0beacfa76', '199946d8-c2c4-56d3-a06a-b43d8226da13', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Examining Knowledge Claims”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D20","is_correct":true,"text":"Epistemic authority is institutionally distributed, so apparently neutral standards may privilege some forms of expertise over others."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L1_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6e9fddc7-82f6-55d2-9565-481d45fb6b67', '199946d8-c2c4-56d3-a06a-b43d8226da13', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('018c0b40-9b65-5f63-bf05-77ff06f98998', NULL, 'Критический анализ и синтез', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Applying a Critical Lens","ru":"Критический анализ и синтез"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7ef0a74-e5f8-5e10-bc6a-b3b3bb876789', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D01","left":"epistemic authority","right":"эпистемический авторитет"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D02","left":"situated knowledge","right":"ситуативное знание"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D03","left":"hegemonic assumption","right":"гегемонистское предположение"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D04","left":"reflexivity","right":"рефлексивность"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D05","left":"knowledge claim","right":"утверждение о знании"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D06","left":"interpretive lens","right":"интерпретационная перспектива"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D07","left":"epistemic limitation","right":"эпистемическое ограничение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('417dcf12-12ea-5bde-8b14-e58fd9cee23c', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D08","is_correct":true,"text":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02fe9003-543f-5f60-9843-ac0898a655ea', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Критическая интерпретационная перспектива спрашивает, какие гегемонистские предположения делают конкретное утверждение о знании самоочевидным.","target_language":"en","word_bank":["A","critical","interpretive","lens","asks","which","hegemonic","assumptions","make","a","particular","knowledge","claim","appear","self-evident","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a16567d-a980-5e03-bddb-46d223c7c8ba', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"situated knowledge","instruction":"Выберите подходящее слово.","options":["situated knowledge","knowledge claim","epistemic limitation"],"sentence_template":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5edf022-2371-541a-8a4b-e0fd82ac454e', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","critical","interpretive","lens","asks","which","hegemonic","assumptions","make","a","particular","knowledge","claim","appear","self-evident","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","self-evident","appear","claim","knowledge","particular","a","make","assumptions","hegemonic","which","asks","lens","interpretive","critical","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34ef8e65-2e53-5f06-a470-25d066f500f1', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('769f9987-d211-53f1-8cd2-06d954c8729f', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Критическая интерпретационная перспектива спрашивает, какие гегемонистские предположения делают конкретное утверждение о знании самоочевидным. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0e5ed77-9eb2-5427-9942-7777f0186847', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident.","translation":"Критическая интерпретационная перспектива спрашивает, какие гегемонистские предположения делают конкретное утверждение о знании самоочевидным.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Applying a Critical Lens"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f96fd94-08cc-500e-8b92-d7da36436ab5', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“situated knowledge” means knowledge shaped by the knower’s social position.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D11","is_correct":true,"text":"knowledge shaped by the knower’s social position"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D12","is_correct":false,"text":"a dominant belief treated as natural or universal"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D13","is_correct":false,"text":"critical examination of one’s influence on research"}],"word":"situated knowledge"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1306085-37a2-5ecf-8baa-95eb5522f993', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident.","explanation":"The missing C1 academic expression is “situated knowledge”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"situated knowledge","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D14","is_correct":true},{"audio_text":"reflexivity","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D15","is_correct":false},{"audio_text":"interpretive lens","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D16","is_correct":false}],"sentence_template":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7424162-86bf-57a1-8e2e-328b7d015ad2', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"situated knowledge","explanation":"The complete academic argument uses “situated knowledge” with conceptual precision.","hint_prefix":"situ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9143597-2ccb-5398-82da-7773721d6ef0', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"epistemic authority","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D17","text":"epistemic authority"},{"audio_text":"situated knowledge","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D18","text":"situated knowledge"},{"audio_text":"hegemonic assumption","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D19","text":"hegemonic assumption"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e2a0cc0-5622-542c-8086-71bd0042a35c', '018c0b40-9b65-5f63-bf05-77ff06f98998', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Applying a Critical Lens”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D20","is_correct":true,"text":"A critical interpretive lens asks which hegemonic assumptions make a particular knowledge claim appear self-evident."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L2_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6e9fddc7-82f6-55d2-9565-481d45fb6b67', '018c0b40-9b65-5f63-bf05-77ff06f98998', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0584c11d-13b7-5f84-b86f-2c7e5cfa8876', NULL, 'Самостоятельная академическая защита', 'Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод.', '{"en":"Recognising Epistemic Limits","ru":"Самостоятельная академическая защита"}'::jsonb, '{"en":"Complete a complex C1 academic task independently by critically evaluating assumptions and methods, synthesising conflicting evidence, and defending a precise conclusion.","ru":"Самостоятельно выполнять сложную академическую задачу уровня C1, критически оценивая предпосылки и методы, синтезируя противоречивые доказательства и защищая точный вывод."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b1b5e1f-a957-560c-adee-79efa6060f6c', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D01","left":"epistemic authority","right":"эпистемический авторитет"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D02","left":"situated knowledge","right":"ситуативное знание"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D03","left":"hegemonic assumption","right":"гегемонистское предположение"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D04","left":"reflexivity","right":"рефлексивность"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D05","left":"knowledge claim","right":"утверждение о знании"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D06","left":"interpretive lens","right":"интерпретационная перспектива"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D07","left":"epistemic limitation","right":"эпистемическое ограничение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45f18106-875d-5c65-a662-09117078f089', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a conceptually precise C1 claim while calibrating inference to method, evidence, and scope.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D08","is_correct":true,"text":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D09","is_correct":false,"text":"The conclusion is self-evident, so methodological limitations and alternative interpretations may be disregarded."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D10","is_correct":false,"text":"Because evidence is always imperfect, no academic claim can be more defensible than any other."}],"question":"Which statement demonstrates the most rigorous C1 academic judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2117937-a1df-53ed-b80d-77ed70a39537', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Рефлексивность усиливает анализ, когда исследователи формулируют свои эпистемические ограничения, а не претендуют на взгляд из ниоткуда.","target_language":"en","word_bank":["Reflexivity","strengthens","analysis","when","researchers","articulate","their","epistemic","limitations","rather","than","claiming","a","view","from","nowhere","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e97b041-7b8a-5fdb-a416-5ab0cfb3f21d', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hegemonic assumption","instruction":"Выберите подходящее слово.","options":["hegemonic assumption","interpretive lens","epistemic authority"],"sentence_template":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d784afe-8873-50a7-b981-849160934535', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Reflexivity","strengthens","analysis","when","researchers","articulate","their","epistemic","limitations","rather","than","claiming","a","view","from","nowhere","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","nowhere","from","view","a","claiming","than","rather","limitations","epistemic","their","articulate","researchers","when","analysis","strengthens","Reflexivity"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8091f80f-a528-5b5a-80c4-616c0e5b38bc', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d31e0e7d-226e-5bd3-8430-21e0112e3ace', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere. The conclusion must therefore be calibrated to the design, the evidential quality, and the conceptual assumptions through which the findings are interpreted. A defensible account should distinguish limitations that qualify the claim from flaws that genuinely undermine its inferential basis.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Рефлексивность усиливает анализ, когда исследователи формулируют свои эпистемические ограничения, а не претендуют на взгляд из ниоткуда. Следовательно, вывод должен соответствовать дизайну, качеству доказательств и концептуальным предпосылкам интерпретации результатов. Обоснованный ответ должен отличать ограничения, уточняющие тезис, от недостатков, действительно подрывающих основу вывода."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1ac0971-12f9-5aff-bf76-7772a5ddf1dd', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Supervisor","text":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere.","translation":"Рефлексивность усиливает анализ, когда исследователи формулируют свои эпистемические ограничения, а не претендуют на взгляд из ниоткуда.","type":"dialogue"},{"character":"Researcher","text":"Which assumption carries the greatest inferential burden, and what evidence would justify retaining it?","translation":"Какое предположение несёт наибольшее бремя вывода и какие доказательства оправдали бы его сохранение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The assumption is provisionally useful, but its scope must be restricted because the available evidence does not adjudicate between the strongest alternatives."},{"is_correct":false,"text":"The assumption is standard in the field, so further justification is unnecessary."}],"text":"Which response demonstrates advanced academic reasoning?","type":"choice"}],"title":"Recognising Epistemic Limits"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12188a6e-e0b1-5320-a921-19967f4a3e10', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hegemonic assumption” means a dominant belief treated as natural or universal.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D11","is_correct":true,"text":"a dominant belief treated as natural or universal"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D12","is_correct":false,"text":"critical examination of one’s influence on research"},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D13","is_correct":false,"text":"a proposition presented as justified understanding"}],"word":"hegemonic assumption"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7f0633d-91bf-52fc-abc3-41349f1dd2a7', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere.","explanation":"The missing C1 academic expression is “hegemonic assumption”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hegemonic assumption","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D14","is_correct":true},{"audio_text":"knowledge claim","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D15","is_correct":false},{"audio_text":"epistemic limitation","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D16","is_correct":false}],"sentence_template":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74a2733e-23a7-55e2-9148-0356c4328046', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hegemonic assumption","explanation":"The complete academic argument uses “hegemonic assumption” with conceptual precision.","hint_prefix":"hege","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fb5798b-1a5a-5153-8dbe-443163e0d853', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced C1 academic expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"epistemic authority","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D17","text":"epistemic authority"},{"audio_text":"situated knowledge","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D18","text":"situated knowledge"},{"audio_text":"hegemonic assumption","id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D19","text":"hegemonic assumption"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b8a8679-db7b-5245-a68d-994a5aea60d2', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"How would you defend your approach to “Recognising Epistemic Limits”?"}],"explanation":"The correct response demonstrates independent C1 scholarship through methodological precision, critical synthesis, and warranted inference.","instruction":"Ответьте.","options":[{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D20","is_correct":true,"text":"Reflexivity strengthens analysis when researchers articulate their epistemic limitations rather than claiming a view from nowhere."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D21","is_correct":false,"text":"The conventional approach is automatically correct and requires no methodological justification."},{"id":"C1_STUDY_EPISTEMOLOGY_CRITICAL_THEORY_AND_KNOWLEDGE_CLAIMS_L3_D22","is_correct":false,"text":"Since all research has limitations, evidence cannot support any meaningful distinction among conclusions."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6e9fddc7-82f6-55d2-9565-481d45fb6b67', '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7eacabb4-0609-510a-a299-97231e723bc3', 'en', 'epistemic authority', 'эпистемический авторитет', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7debd54f-1030-58b1-9257-ec1ea3fc0b26', 'en', 'situated knowledge', 'ситуативное знание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7723fa77-a613-5e4c-9804-32e3b00f2d1d', 'en', 'hegemonic assumption', 'гегемонистское предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e81c13a-702c-50c0-b918-e7c21100518f', 'en', 'reflexivity', 'рефлексивность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c96df1ba-4c8b-5d8f-a5b8-501477a9a3b9', 'en', 'knowledge claim', 'утверждение о знании', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('325eb199-2bfa-5ddb-ad84-62600a2d700b', 'en', 'interpretive lens', 'интерпретационная перспектива', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('940cc7d6-c179-507f-a9bd-6c1ba5f70d17', 'en', 'epistemic limitation', 'эпистемическое ограничение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7eacabb4-0609-510a-a299-97231e723bc3', 'en', 'epistemic authority', 'эпистемический авторитет', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7debd54f-1030-58b1-9257-ec1ea3fc0b26', 'en', 'situated knowledge', 'ситуативное знание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7723fa77-a613-5e4c-9804-32e3b00f2d1d', 'en', 'hegemonic assumption', 'гегемонистское предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e81c13a-702c-50c0-b918-e7c21100518f', 'en', 'reflexivity', 'рефлексивность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c96df1ba-4c8b-5d8f-a5b8-501477a9a3b9', 'en', 'knowledge claim', 'утверждение о знании', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('325eb199-2bfa-5ddb-ad84-62600a2d700b', 'en', 'interpretive lens', 'интерпретационная перспектива', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('940cc7d6-c179-507f-a9bd-6c1ba5f70d17', 'en', 'epistemic limitation', 'эпистемическое ограничение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7eacabb4-0609-510a-a299-97231e723bc3', 'en', 'epistemic authority', 'эпистемический авторитет', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7debd54f-1030-58b1-9257-ec1ea3fc0b26', 'en', 'situated knowledge', 'ситуативное знание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7723fa77-a613-5e4c-9804-32e3b00f2d1d', 'en', 'hegemonic assumption', 'гегемонистское предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e81c13a-702c-50c0-b918-e7c21100518f', 'en', 'reflexivity', 'рефлексивность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c96df1ba-4c8b-5d8f-a5b8-501477a9a3b9', 'en', 'knowledge claim', 'утверждение о знании', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('325eb199-2bfa-5ddb-ad84-62600a2d700b', 'en', 'interpretive lens', 'интерпретационная перспектива', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('940cc7d6-c179-507f-a9bd-6c1ba5f70d17', 'en', 'epistemic limitation', 'эпистемическое ограничение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '199946d8-c2c4-56d3-a06a-b43d8226da13', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic authority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '199946d8-c2c4-56d3-a06a-b43d8226da13', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'situated knowledge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '199946d8-c2c4-56d3-a06a-b43d8226da13', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'hegemonic assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '199946d8-c2c4-56d3-a06a-b43d8226da13', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflexivity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '199946d8-c2c4-56d3-a06a-b43d8226da13', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'knowledge claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '199946d8-c2c4-56d3-a06a-b43d8226da13', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'interpretive lens' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '199946d8-c2c4-56d3-a06a-b43d8226da13', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '018c0b40-9b65-5f63-bf05-77ff06f98998', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic authority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '018c0b40-9b65-5f63-bf05-77ff06f98998', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'situated knowledge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '018c0b40-9b65-5f63-bf05-77ff06f98998', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'hegemonic assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '018c0b40-9b65-5f63-bf05-77ff06f98998', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflexivity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '018c0b40-9b65-5f63-bf05-77ff06f98998', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'knowledge claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '018c0b40-9b65-5f63-bf05-77ff06f98998', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'interpretive lens' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '018c0b40-9b65-5f63-bf05-77ff06f98998', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic authority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'situated knowledge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'hegemonic assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflexivity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'knowledge claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'interpretive lens' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6e9fddc7-82f6-55d2-9565-481d45fb6b67', id, '0584c11d-13b7-5f84-b86f-2c7e5cfa8876', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
