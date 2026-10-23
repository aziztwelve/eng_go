package providers

import (
	"bytes"
	"context"
	"encoding/binary"
	"fmt"
	"mime"
	"os"
	"os/exec"
	"strings"
	"time"
)

func needsSTTConversion(contentType string) bool {
	mediaType, _, err := mime.ParseMediaType(contentType)
	if err != nil {
		return false
	}
	switch strings.ToLower(mediaType) {
	case "audio/m4a", "audio/x-m4a", "audio/mp4", "video/mp4", "audio/aac", "audio/x-aac":
		return true
	default:
		return false
	}
}

// M4A needs a seekable input because its metadata can follow the audio packets.
// A private temporary file is removed on every return, including decode failures.
func decodeSTTAudio(ctx context.Context, audio []byte) ([]byte, error) {
	file, err := os.CreateTemp("", "lingoiq-stt-*")
	if err != nil {
		return nil, err
	}
	defer os.Remove(file.Name())
	if _, err := file.Write(audio); err != nil {
		file.Close()
		return nil, err
	}
	if err := file.Close(); err != nil {
		return nil, err
	}

	ctx, cancel := context.WithTimeout(ctx, 15*time.Second)
	defer cancel()
	// Keep decoding bounded to the synchronous STT API's one-minute input limit.
	cmd := exec.CommandContext(ctx, "ffmpeg", "-nostdin", "-hide_banner", "-loglevel", "error",
		"-protocol_whitelist", "file,pipe", "-threads", "1", "-i", file.Name(),
		"-map", "0:a:0", "-vn", "-t", "60", "-ac", "1", "-ar", "16000",
		"-c:a", "pcm_s16le", "-f", "s16le", "pipe:1")
	var output bytes.Buffer
	cmd.Stdout = &output
	if err := cmd.Run(); err != nil {
		if ctx.Err() != nil {
			return nil, ctx.Err()
		}
		return nil, fmt.Errorf("ffmpeg conversion failed: %w", err)
	}
	if output.Len() == 0 {
		return nil, fmt.Errorf("recording contains no audio samples")
	}
	// Give the recognizer an explicit WAV header, including the actual length.
	// FFmpeg's pipe WAV output uses an unknown data size; construct the header
	// after decoding so Google receives the same format as a finalized WAV file.
	pcm := output.Bytes()
	wav := make([]byte, 44+len(pcm))
	copy(wav, "RIFF")
	binary.LittleEndian.PutUint32(wav[4:8], uint32(36+len(pcm)))
	copy(wav[8:], "WAVEfmt ")
	binary.LittleEndian.PutUint32(wav[16:20], 16)
	binary.LittleEndian.PutUint16(wav[20:22], 1) // PCM
	binary.LittleEndian.PutUint16(wav[22:24], 1) // mono
	binary.LittleEndian.PutUint32(wav[24:28], 16000)
	binary.LittleEndian.PutUint32(wav[28:32], 32000)
	binary.LittleEndian.PutUint16(wav[32:34], 2)
	binary.LittleEndian.PutUint16(wav[34:36], 16)
	copy(wav[36:], "data")
	binary.LittleEndian.PutUint32(wav[40:44], uint32(len(pcm)))
	copy(wav[44:], pcm)
	return wav, nil
}
