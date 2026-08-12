SET search_path TO courses;

ALTER TABLE steps DROP CONSTRAINT IF EXISTS steps_type_check;

ALTER TABLE steps
    ADD CONSTRAINT steps_type_check
    CHECK (type IN (
        'video', 'text', 'quiz', 'task', 'brain_game', 'ai_writing',
        'translate', 'match_pairs', 'match_pairs_voice', 'listening',
        'listening_shadowing', 'fill_blank', 'tap_words', 'story', 'activity',
        'choose_definition', 'listen_choose_word', 'missing_word', 'complete_chat'
    ));
