# Tracks and vocabulary reliability — 2026-10-23

The mobile review identified request loops, account-independent local progress,
unacknowledged saves, poison vocabulary attempts, trusted legacy grades,
stub SRS counters, duplicate selection cards, failed conflict handling,
legacy lesson advances before save, and incorrect translation-language labels.

## Implemented behavior

- Mobile selects a track once per mounted track ID. Mutation completion no longer
  invalidates the immutable track catalog.
- Completion storage and its query key belong to the authenticated account.
  The unowned `lesson_completed_v1` data is not assigned to any account; server
  track progress remains available.
- Legacy lesson transitions and personal-card review transitions await successful
  persistence. Flashcard review intents survive restart and retain their retry ID.
- Word-bank permanent 400/404/409/422 failures retain the answer, block only that
  word, and show explicit recovery. Reload fetches saved progress first, then
  discards the rejected local answer after user confirmation. Temporary failures
  remain retryable. Other words can synchronize.
- Legacy score-only APK requests remain exposure/self-practice. The old UI
  completion boolean is retained, but persisted verified correctness is false and
  score is zero; `assessment_mode=practice` makes this explicit. Legacy requests
  carrying actual text are checked on the server. All protocols enforce step
  ordering, including requests without an attempt ID.
- Bulk card creation accepts authored non-UUID selection keys from existing APKs
  without treating them as vocabulary foreign keys. Non-manual inline cards are
  deduplicated by normalized word, translation, language pair and definition;
  different meanings remain distinct. Per-owner advisory locking serializes
  competing batches. `ON CONFLICT DO NOTHING` avoids aborted transactions.
- Personal-card schedules and real learning/mastered/reviewed-today counters use
  a read-only PostgreSQL projection of SRS. This deployment shares a database;
  SRS remains the only writer. The view is granted to `course_user` explicitly.
- Existing pinned-today semantics are preserved: pinning a card is an explicit
  request to practice it independently of its next review date. `today_due`
  continues to count this queue; it is not a count of every overdue SRS item.
- Bank selections carry the actual translation locale. English definitions in
  bank cards may use en/en; manual translation cards retain the different-language
  validation rule.
- SRS schedule updates, history and optional retry receipts commit atomically.
  Same attempt ID and payload return the original snapshot; conflicting payloads
  are rejected. Existing clients may omit the ID. The gateway verifies card owner
  and active status before recording a personal-card review.
- Canonical vocabulary references such as `A1-VOC-001-001` are supported by widening
  the internal SRS item reference from UUID to text. Existing UUID strings and the
  JSON/protobuf string contract are unchanged.

## Compatibility and deployment order

No route or existing field/tag was removed. The only wire extension is optional
`RecordReviewRequest.attempt_id` (tag 7) and its optional REST field. Android/iOS
binaries without it continue to use the same review endpoint. Native dependencies,
application IDs and app versions were not changed.

1. Back up PostgreSQL before migration.
2. Apply SRS migrations `000007_review_receipts` and
   `000008_expand_item_reference` with the migration owner.
3. Apply course migration `000037_flashcard_srs_projection` with the migration
   owner, which must be able to read the SRS schema. This creates a read-only view
   rather than granting the course service direct write access to SRS tables.
4. Rebuild/restart services, then test public API health and old/new payloads.
5. Deliver mobile TypeScript changes via development Metro; distribution binaries
   need their normal next release to receive mobile-only UX changes. Server fixes
   do not force an APK/iOS rebuild.

For code rollback, retain the expanded schema. Migration 8's down conversion to
UUID deliberately fails if textual word references exist, rather than deleting
those references. Migration 37 is independent of the old binary's CRUD paths.
Do not automatically erase existing duplicate cards or unknown-account local data.

## Verification

- Mobile `npx tsc --noEmit` and ESLint on changed TypeScript.
- `node --test scripts/test-vocabulary-queue.cjs scripts/test-flashcard-review-queue.cjs scripts/test-lesson-progress.cjs`
  from eng_mob (10 cases).
- Go tests/build for course, gateway, SRS and step-validation; all service builds.
- `python3 scripts/test-track-word-regressions.py` creates and removes a dedicated
  local PostgreSQL database. Real database checks cover competing bulk batches,
  inline duplicate retries, different meanings, SRS projection/counts, archived
  filtering, pinned-queue compatibility, concurrent review retries, payload
  conflicts, old requests without retry IDs, canonical word references and rollback
  when history persistence fails. It never targets production.

Deployment and device smoke results are recorded after rollout below.
