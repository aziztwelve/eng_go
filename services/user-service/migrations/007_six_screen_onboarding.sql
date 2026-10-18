-- Retire answers belonging to removed onboarding screens. Keep nullable wire
-- columns for installed clients; never retain or resurrect their old answers.
-- Profile preferences (daily_goal_xp), accounts and learning progress remain.
CREATE OR REPLACE FUNCTION public.clear_retired_onboarding_answers()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
    NEW := jsonb_populate_record(NEW, '{
        "placement_score": null, "daily_commit_minutes": null,
        "pain_point": null, "speaking_situation": null,
        "past_blocker": null, "future_regret": null,
        "emotional_reaction": null, "paywall_seen_at": null,
        "paywall_choice": null
    }'::jsonb);
    RETURN NEW;
END;
$$;

DO $$
DECLARE
    profile_table record;
    assignments text;
    predicate text;
BEGIN
    -- Some installations also have the original public.profiles table.
    FOR profile_table IN
        SELECT table_schema, table_name FROM information_schema.tables
        WHERE table_name = 'profiles' AND table_schema IN ('users', 'public')
          AND table_type = 'BASE TABLE'
    LOOP
        SELECT string_agg(format('%I = NULL', column_name), ', '),
               string_agg(format('%I IS NOT NULL', column_name), ' OR ')
          INTO assignments, predicate
          FROM information_schema.columns
         WHERE table_schema = profile_table.table_schema AND table_name = 'profiles'
           AND column_name IN ('placement_score', 'daily_commit_minutes', 'pain_point',
               'speaking_situation', 'past_blocker', 'future_regret',
               'emotional_reaction', 'paywall_seen_at', 'paywall_choice');
        IF assignments IS NOT NULL THEN
            EXECUTE format('UPDATE %I.%I SET %s WHERE %s',
                profile_table.table_schema, profile_table.table_name, assignments, predicate);
            EXECUTE format('DROP TRIGGER IF EXISTS clear_retired_onboarding_answers ON %I.%I',
                profile_table.table_schema, profile_table.table_name);
            EXECUTE format('CREATE TRIGGER clear_retired_onboarding_answers BEFORE INSERT OR UPDATE ON %I.%I FOR EACH ROW EXECUTE FUNCTION public.clear_retired_onboarding_answers()',
                profile_table.table_schema, profile_table.table_name);
        END IF;
    END LOOP;
END;
$$;
