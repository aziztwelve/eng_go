// Command backfill-tts — разовый бэкафилл озвучки.
//
// Проходит по system-словарю (vocabulary) и личным карточкам
// (user_flashcards), у которых пустой audio_url, синтезирует аудио через
// ai-service RPC AIService.SynthesizeTTS (с пустым user_id → без расхода
// квоты) и проставляет полученный публичный URL в БД.
//
// Запуск (из services/course-service):
//
//	go run ./cmd/backfill-tts \
//	    --env ../../deploy/env/.env \
//	    --ai-addr localhost:50063 \
//	    --target all \
//	    --dry-run
//
// Флаги:
//
//	--env       путь к .env (POSTGRES_*); пусто → берём из окружения
//	--dsn       полный DSN (переопределяет --env / POSTGRES_*)
//	--ai-addr   адрес gRPC ai-service (default env AI_SERVICE_ADDR или localhost:50063)
//	--voice     TTS-голос (пусто → провайдерский default)
//	--target    vocab | flashcards | all (default all)
//	--limit     максимум синтезов на каждую группу (0 = без лимита)
//	--dry-run   ничего не синтезировать/писать, только показать план
package main

import (
	"context"
	"flag"
	"fmt"
	"os"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	"github.com/elearning/course-service/internal/config"
	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
)

func main() {
	var (
		envPath  = flag.String("env", "", "path to .env with POSTGRES_* (optional)")
		dsn      = flag.String("dsn", "", "full Postgres DSN (overrides --env/POSTGRES_*)")
		aiAddr   = flag.String("ai-addr", "", "ai-service gRPC addr (default $AI_SERVICE_ADDR or localhost:50063)")
		voice    = flag.String("voice", "", "TTS voice (empty → provider default)")
		target   = flag.String("target", "all", "vocab | flashcards | all")
		limit    = flag.Int("limit", 0, "max syntheses per group (0 = no limit)")
		dryRun   = flag.Bool("dry-run", false, "plan only, no synth/writes")
	)
	flag.Parse()

	if err := run(*envPath, *dsn, *aiAddr, *voice, *target, *limit, *dryRun); err != nil {
		fmt.Fprintf(os.Stderr, "❌ backfill-tts: %v\n", err)
		os.Exit(1)
	}
}

func run(envPath, dsn, aiAddr, voice, target string, limit int, dryRun bool) error {
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	// --- Config / DSN ---
	if envPath != "" {
		if err := config.Load(envPath); err != nil {
			return fmt.Errorf("load env %q: %w", envPath, err)
		}
	}
	if dsn == "" {
		dsn = config.Get().PostgresDSN()
	}
	if aiAddr == "" {
		aiAddr = os.Getenv("AI_SERVICE_ADDR")
	}
	if aiAddr == "" {
		aiAddr = "localhost:50063"
	}

	// --- DB ---
	pool, err := pgxpool.New(ctx, dsn)
	if err != nil {
		return fmt.Errorf("pg connect: %w", err)
	}
	defer pool.Close()
	if err := pool.Ping(ctx); err != nil {
		return fmt.Errorf("pg ping: %w", err)
	}

	// --- ai-service client ---
	conn, err := grpc.NewClient(aiAddr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return fmt.Errorf("dial ai-service %q: %w", aiAddr, err)
	}
	defer conn.Close()
	ai := aiv1.NewAIServiceClient(conn)

	fmt.Printf("▶ backfill-tts  target=%s  ai=%s  voice=%q  dry_run=%v  limit=%d\n",
		target, aiAddr, voice, dryRun, limit)

	doVocab := target == "all" || target == "vocab"
	doCards := target == "all" || target == "flashcards"

	if doVocab {
		if err := backfillVocabulary(ctx, pool, ai, voice, limit, dryRun); err != nil {
			return fmt.Errorf("vocabulary: %w", err)
		}
	}
	if doCards {
		if err := backfillFlashcards(ctx, pool, ai, voice, limit, dryRun); err != nil {
			return fmt.Errorf("flashcards: %w", err)
		}
	}

	fmt.Println("✅ done")
	return nil
}

// row — общая мини-структура «что озвучить».
type row struct {
	id       string
	word     string
	language string
}

// synth — синтез одной строки. user_id пустой → ai-service не списывает квоту.
func synth(ctx context.Context, ai aiv1.AIServiceClient, word, language, voice string) (string, error) {
	resp, err := ai.SynthesizeTTS(ctx, &aiv1.SynthesizeTTSRequest{
		Text:     word,
		Language: language,
		Voice:    voice,
		// UserId намеренно пустой — backfill/admin path без квоты.
	})
	if err != nil {
		return "", err
	}
	return resp.GetAudioUrl(), nil
}

func backfillVocabulary(ctx context.Context, pool *pgxpool.Pool, ai aiv1.AIServiceClient, voice string, limit int, dryRun bool) error {
	q := `SELECT id, word, language FROM vocabulary
	      WHERE COALESCE(audio_url, '') = ''
	      ORDER BY language, word`
	rows, err := queryRows(ctx, pool, q, limit)
	if err != nil {
		return err
	}
	fmt.Printf("• vocabulary: %d слов без audio_url\n", len(rows))

	ok, fail := 0, 0
	for i, r := range rows {
		if dryRun {
			fmt.Printf("  [dry] %s/%s\n", r.language, r.word)
			continue
		}
		url, err := synth(ctx, ai, r.word, r.language, voice)
		if err != nil || url == "" {
			fail++
			fmt.Printf("  ✗ %s/%s: %v\n", r.language, r.word, err)
			continue
		}
		if _, err := pool.Exec(ctx,
			`UPDATE vocabulary SET audio_url = $1, updated_at = NOW() WHERE id = $2`,
			url, r.id); err != nil {
			fail++
			fmt.Printf("  ✗ update %s: %v\n", r.id, err)
			continue
		}
		ok++
		if (i+1)%25 == 0 {
			fmt.Printf("  …%d/%d\n", i+1, len(rows))
		}
	}
	fmt.Printf("• vocabulary: ok=%d fail=%d\n", ok, fail)
	return nil
}

func backfillFlashcards(ctx context.Context, pool *pgxpool.Pool, ai aiv1.AIServiceClient, voice string, limit int, dryRun bool) error {
	// 1. Inherit: карточки со ссылкой на vocabulary берут audio_url из него
	//    одним SQL (без синтеза). Делаем ПОСЛЕ vocab-бэкафилла.
	if !dryRun {
		tag, err := pool.Exec(ctx, `
			UPDATE user_flashcards uf
			SET audio_url = v.audio_url, updated_at = NOW()
			FROM vocabulary v
			WHERE uf.vocabulary_id = v.id
			  AND COALESCE(uf.audio_url, '') = ''
			  AND COALESCE(v.audio_url, '') <> ''
			  AND uf.archived_at IS NULL`)
		if err != nil {
			return fmt.Errorf("inherit from vocabulary: %w", err)
		}
		fmt.Printf("• flashcards: унаследовано из vocabulary — %d\n", tag.RowsAffected())
	} else {
		fmt.Println("• flashcards: [dry] пропускаем inherit-update")
	}

	// 2. Manual-карточки (без vocabulary_id) — синтезируем напрямую.
	q := `SELECT id, word, language FROM user_flashcards
	      WHERE COALESCE(audio_url, '') = ''
	        AND vocabulary_id IS NULL
	        AND archived_at IS NULL
	      ORDER BY created_at`
	rows, err := queryRows(ctx, pool, q, limit)
	if err != nil {
		return err
	}
	fmt.Printf("• flashcards (manual): %d без audio_url\n", len(rows))

	ok, fail := 0, 0
	for _, r := range rows {
		if dryRun {
			fmt.Printf("  [dry] %s/%s\n", r.language, r.word)
			continue
		}
		url, err := synth(ctx, ai, r.word, r.language, voice)
		if err != nil || url == "" {
			fail++
			fmt.Printf("  ✗ %s/%s: %v\n", r.language, r.word, err)
			continue
		}
		if _, err := pool.Exec(ctx,
			`UPDATE user_flashcards SET audio_url = $1, updated_at = NOW() WHERE id = $2`,
			url, r.id); err != nil {
			fail++
			fmt.Printf("  ✗ update %s: %v\n", r.id, err)
			continue
		}
		ok++
	}
	fmt.Printf("• flashcards (manual): ok=%d fail=%d\n", ok, fail)
	return nil
}

// queryRows — общий SELECT с опциональным LIMIT.
func queryRows(ctx context.Context, pool *pgxpool.Pool, q string, limit int) ([]row, error) {
	if limit > 0 {
		q = fmt.Sprintf("%s LIMIT %d", q, limit)
	}
	qctx, cancel := context.WithTimeout(ctx, 30*time.Second)
	defer cancel()
	rs, err := pool.Query(qctx, q)
	if err != nil {
		return nil, err
	}
	defer rs.Close()

	var out []row
	for rs.Next() {
		var r row
		if err := rs.Scan(&r.id, &r.word, &r.language); err != nil {
			return nil, err
		}
		out = append(out, r)
	}
	return out, rs.Err()
}
