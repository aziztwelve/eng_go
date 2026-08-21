# Track deployment workflow

Track source files and generated speech assets have separate owners:

- `eng_go/tracks/`: versioned `lingoiq.track.v2` JSON and backfill tools.
- MinIO bucket `audio`: generated MP3 objects, not committed to Git.
- `eng_mob`: renderers for every step type used by a track.
- `eng_next`: web renderers only; generated MP3 files do not belong in `public/`.

## Git flow

1. Make one scoped commit per repository and push it to `dev`.
2. Never copy versioned files to production before the commit is available on
   `origin/dev`.
3. Production repositories must be clean before `git pull --ff-only origin dev`.
   Inspect and resolve dirty files explicitly; do not use automatic stash/reset.
4. Deploy backend data from the checked-out JSON under `eng_go/tracks/`.
5. Upload generated audio to object storage and store stable HTTPS URLs in JSON
   before importing the track seed.

## Audio storage

Production uses the dedicated Compose project in
`deploy/compose/audio-storage/`. Its credentials live only in the server-side
`.env`. Caddy proxies `https://api.lingoiq.online/audio/*` to the MinIO S3 API;
the public path includes the `audio` bucket name.

Caddy must be attached to `elearning-net` so it can reach
`audio-minio:9000`; the MinIO host port remains bound to `127.0.0.1` only.

Start or update storage:

```bash
cd deploy/compose/audio-storage
docker compose up -d
```

Generate and upload track speech on the server:

```bash
set -a
. deploy/env/ai.env
. deploy/compose/audio-storage/.env
set +a

TRACK_PACKAGE="$PWD/tracks/A1_EXAM_PREP_TRACKS_01_10_V2" \
S3_ENDPOINT=http://localhost:9010 \
S3_BUCKET=audio \
S3_ACCESS_KEY="$MINIO_ROOT_USER" \
S3_SECRET_KEY="$MINIO_ROOT_PASSWORD" \
PUBLIC_AUDIO_BASE=https://api.lingoiq.online/audio/a1-exam-prep \
python3 scripts/backfill_track_tts.py
```

After generation, validate the JSON schema, generate SQL with
`scripts/import_tracks_from_json.py`, apply it transactionally, and verify a
sample `audio_url` returns HTTP 200 with `Content-Type: audio/mpeg`.
