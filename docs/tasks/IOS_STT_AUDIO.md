# iOS voice recording support — 2026-10-23

Google Speech-to-Text v1 rejects Expo's iOS HIGH_QUALITY M4A/AAC input with `Invalid recognition 'config': bad encoding`. Historical gateway logs contained HTTP 500 responses for this format.

`GoogleSTTProvider` now decodes audio/m4a, audio/x-m4a, audio/mp4, video/mp4 and AAC inputs to mono 16 kHz signed 16-bit little-endian PCM, then requests LINEAR16 recognition at 16000 Hz. Other formats, including Android 3GP/AMR, keep their existing path. Both pronunciation checks and voice transcription use this provider.

## Runtime prerequisite

Install FFmpeg on the machine running ai-service (and include it in any future container image):

```bash
sudo apt-get install --no-install-recommends ffmpeg
ffmpeg -version
```

FFmpeg is invoked directly without a shell. Input is a private temporary file to allow M4A seeking; it is removed on success and failure. Decoding uses a 15-second context timeout, one decoder thread, file/pipe protocols only, and at most 60 seconds of output, matching the mobile recording limit. No user audio is committed or logged.

## Validation

```bash
cd services/ai-service
go test ./...
go build ./...
```

`internal/providers/testdata/ios-aac.m4a` is a synthetic one-second, 44.1 kHz stereo tone generated with FFmpeg, not a user's recording. Tests decode it and inspect the Google request's actual PCM bytes, encoding and sample rate. They also check temporary-file cleanup on success/failure, cancellation, and MIME routing for existing Android/web formats.

For a deployment smoke test, synthesize a short English sentence, encode it as M4A/AAC, and send it to `/api/v1/ai/pronunciation/check`. Confirm HTTP 200 and a nonempty transcript. This checks the iPhone audio format end to end; recording on the physical iPhone is a separate device check.
