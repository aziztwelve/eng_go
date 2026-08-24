-- Preserve existing users' onboarding goal after renaming it in the client.
UPDATE profiles
SET motivation = array_replace(motivation, 'brain', 'listening_shadowing')
WHERE motivation @> ARRAY['brain']::text[];
