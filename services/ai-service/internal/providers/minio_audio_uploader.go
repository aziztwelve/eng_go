package providers

import (
	"bytes"
	"context"
	"crypto/md5"
	"encoding/hex"
	"errors"
	"fmt"
	"net/url"
	"strings"
	"time"

	"github.com/minio/minio-go/v7"
	"github.com/minio/minio-go/v7/pkg/credentials"
)

// MinIOAudioUploader — заливает TTS-аудио в MinIO/S3 bucket и возвращает
// публичный URL. Реализует AudioUploader (Phase 5.X-storage).
//
// Стратегия URL'ов:
//   - Если задан PublicEndpoint — public URL строим вручную как
//     "<scheme>://<public_endpoint>/<bucket>/<key>". Используется когда
//     bucket настроен как public (`anonymous get`) — типично для prod.
//   - Иначе делаем PresignedGetObject (TTL = PresignTTL, default 24ч).
//     URL действителен только на время TTL; caller должен либо хранить
//     короткое время, либо переподписывать. Для phase-5 мы кладём URL
//     в ai_pronunciation_attempts.audio_url — этого хватит для отладки;
//     для долгоживущих audio (TTS-кэш) рекомендуется public bucket.
//
// Идемпотентность: одинаковый key не пересохраняется (Stat → если объект
// есть, сразу возвращаем URL без PutObject). Это экономит трафик при
// повторных TTS-запросах одного и того же текста.
type MinIOAudioUploader struct {
	client         *minio.Client
	publicClient   *minio.Client
	bucket         string
	prefix         string // например "ai/tts/" — без leading slash
	publicEndpoint string
	useSSL         bool
	presignTTL     time.Duration
	usePresign     bool // true если PublicEndpoint == "" → presigned URL
}

// MinIOConfig — параметры для NewMinIOAudioUploader.
type MinIOConfig struct {
	Endpoint       string        // host:port для PutObject (внутренний)
	PublicEndpoint string        // host[:port] для GET (внешний, опционально)
	AccessKey      string
	SecretKey      string
	UseSSL         bool
	Region         string
	Bucket         string
	Prefix         string        // префикс ключа, def "ai/tts/"
	PresignTTL     time.Duration // TTL presigned URL, default 24h
}

// NewMinIOAudioUploader — конструктор. Возвращает ошибку если креды/bucket
// невалидны или MinIO недоступен (ping через BucketExists).
func NewMinIOAudioUploader(ctx context.Context, cfg MinIOConfig) (*MinIOAudioUploader, error) {
	if cfg.Endpoint == "" {
		return nil, errors.New("minio: endpoint required")
	}
	if cfg.Bucket == "" {
		return nil, errors.New("minio: bucket required")
	}
	if cfg.AccessKey == "" || cfg.SecretKey == "" {
		return nil, errors.New("minio: access/secret key required")
	}
	prefix := strings.TrimPrefix(cfg.Prefix, "/")
	if prefix == "" {
		prefix = "ai/tts/"
	}
	if !strings.HasSuffix(prefix, "/") {
		prefix += "/"
	}

	client, err := minio.New(cfg.Endpoint, &minio.Options{
		Creds:  credentials.NewStaticV4(cfg.AccessKey, cfg.SecretKey, ""),
		Secure: cfg.UseSSL,
		Region: cfg.Region,
	})
	if err != nil {
		return nil, fmt.Errorf("minio: new client: %w", err)
	}

	// Подтверждаем доступность bucket.
	exists, err := client.BucketExists(ctx, cfg.Bucket)
	if err != nil {
		return nil, fmt.Errorf("minio: bucket exists: %w", err)
	}
	if !exists {
		return nil, fmt.Errorf("minio: bucket %q does not exist", cfg.Bucket)
	}

	publicEndpoint := cfg.PublicEndpoint
	usePresign := publicEndpoint == ""
	publicClient := client
	if !usePresign {
		publicClient, err = minio.New(publicEndpoint, &minio.Options{
			Creds:  credentials.NewStaticV4(cfg.AccessKey, cfg.SecretKey, ""),
			Secure: cfg.UseSSL,
			Region: cfg.Region,
		})
		if err != nil {
			return nil, fmt.Errorf("minio: new public client: %w", err)
		}
	}

	ttl := cfg.PresignTTL
	if ttl <= 0 {
		ttl = 24 * time.Hour
	}

	return &MinIOAudioUploader{
		client:         client,
		publicClient:   publicClient,
		bucket:         cfg.Bucket,
		prefix:         prefix,
		publicEndpoint: publicEndpoint,
		useSSL:         cfg.UseSSL,
		presignTTL:     ttl,
		usePresign:     usePresign,
	}, nil
}

// Upload — реализация AudioUploader. Возвращает (url, error).
//
// key — стабильный ID; если пуст, считается md5 от audio bytes. mime
// маппится в file extension (см. mimeToExt).
func (u *MinIOAudioUploader) Upload(ctx context.Context, key string, audio []byte, mime string) (string, error) {
	if len(audio) == 0 {
		return "", errors.New("minio uploader: empty audio")
	}
	if key == "" {
		h := md5.Sum(audio)
		key = hex.EncodeToString(h[:])
	}
	ext := mimeToExt(mime)
	objectKey := u.prefix + key + "." + ext

	// Идемпотентность: если объект уже есть — пропускаем put.
	_, err := u.client.StatObject(ctx, u.bucket, objectKey, minio.StatObjectOptions{})
	if err != nil {
		if !isMinioNotFound(err) {
			return "", fmt.Errorf("minio: stat: %w", err)
		}
		// Залить.
		_, err = u.client.PutObject(ctx, u.bucket, objectKey,
			bytes.NewReader(audio), int64(len(audio)),
			minio.PutObjectOptions{ContentType: mime},
		)
		if err != nil {
			return "", fmt.Errorf("minio: put: %w", err)
		}
	}

	if u.usePresign {
		urlObj, err := u.publicClient.PresignedGetObject(ctx, u.bucket, objectKey, u.presignTTL, url.Values{})
		if err != nil {
			return "", fmt.Errorf("minio: presign: %w", err)
		}
		return urlObj.String(), nil
	}

	scheme := "http"
	if u.useSSL {
		scheme = "https"
	}
	return fmt.Sprintf("%s://%s/%s/%s", scheme, u.publicEndpoint, u.bucket, objectKey), nil
}

// isMinioNotFound — true для NoSuchKey / NotFound от MinIO.
func isMinioNotFound(err error) bool {
	if err == nil {
		return false
	}
	resp := minio.ToErrorResponse(err)
	return resp.Code == "NoSuchKey" || resp.Code == "NoSuchBucket" || resp.StatusCode == 404
}

// KeyFromText — helper: стабильный key из произвольного текста. Удобен
// caller'ам когда они хотят контроль над key (например md5(text|voice|lang)).
func KeyFromText(parts ...string) string {
	joined := strings.Join(parts, "|")
	h := md5.Sum([]byte(joined))
	return hex.EncodeToString(h[:])
}
