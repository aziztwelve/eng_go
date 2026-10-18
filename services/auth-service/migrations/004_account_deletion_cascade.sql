-- Account deletion is orchestrated here because all services share the
-- database but intentionally do not have cross-schema foreign keys.
-- The function is SECURITY DEFINER so auth_user can perform the cascade
-- without receiving write access to every service schema.

CREATE OR REPLACE FUNCTION public.delete_account_cascade(p_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = pg_catalog, public
AS $$
DECLARE
    relation_name TEXT;
    deleted_count BIGINT;
BEGIN
    IF p_user_id IS NULL THEN
        RAISE EXCEPTION 'user id is required';
    END IF;

    -- Every user-owned table uses a conventional user_id column. Catalog and
    -- content tables do not, so they are not touched.
    FOR relation_name IN
        SELECT format('%I.%I', n.nspname, c.relname)
        FROM pg_class c
        JOIN pg_namespace n ON n.oid = c.relnamespace
        WHERE c.relkind = 'r'
          AND n.nspname NOT IN ('pg_catalog', 'information_schema')
          AND NOT (n.nspname = 'public' AND c.relname = 'users')
          AND EXISTS (
              SELECT 1
              FROM pg_attribute a
              WHERE a.attrelid = c.oid
                AND a.attname = 'user_id'
                AND NOT a.attisdropped
          )
    LOOP
        EXECUTE format('DELETE FROM %s WHERE user_id = $1', relation_name)
            USING p_user_id;
    END LOOP;

    -- Friendships store the normalized pair as user_id_1/user_id_2.
    FOR relation_name IN
        SELECT format('%I.%I', n.nspname, c.relname)
        FROM pg_class c
        JOIN pg_namespace n ON n.oid = c.relnamespace
        WHERE c.relkind = 'r'
          AND n.nspname NOT IN ('pg_catalog', 'information_schema')
          AND EXISTS (
              SELECT 1 FROM pg_attribute a
              WHERE a.attrelid = c.oid AND a.attname = 'user_id_1' AND NOT a.attisdropped
          )
          AND EXISTS (
              SELECT 1 FROM pg_attribute a
              WHERE a.attrelid = c.oid AND a.attname = 'user_id_2' AND NOT a.attisdropped
          )
    LOOP
        EXECUTE format(
            'DELETE FROM %s WHERE user_id_1 = $1 OR user_id_2 = $1',
            relation_name
        ) USING p_user_id;
    END LOOP;

    DELETE FROM public.users WHERE id = p_user_id;
    GET DIAGNOSTICS deleted_count = ROW_COUNT;
    RETURN deleted_count > 0;
END;
$$;

REVOKE ALL ON FUNCTION public.delete_account_cascade(UUID) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.delete_account_cascade(UUID) TO auth_user;
