-- Keep user profiles valid after removing the “fun” onboarding goal.
UPDATE profiles
SET motivation = array_remove(motivation, 'fun')
WHERE motivation @> ARRAY['fun']::text[];
