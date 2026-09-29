// Command backfill-tts — разовый бэкафилл озвучки.
//
// Проходит по system-словарю (vocabulary), личным карточкам
// (user_flashcards) и content учебных шагов, у которых отсутствует
// audio_url. Синтезирует аудио через ai-service RPC AIService.SynthesizeTTS
// (с пустым user_id → без расхода квоты) и сохраняет публичный URL в БД.
//
// Запуск (из services/course-service):
//
//	go run ./cmd/backfill-tts \
//	    --env ../../deploy/env/.env \
//	    --ai-addr localhost:50063 \
//	    --target steps \
//	    --dry-run
//
// Флаги:
//
//	--env       путь к .env (POSTGRES_*); пусто → берём из окружения
//	--dsn       полный DSN (переопределяет --env / POSTGRES_*)
//	--ai-addr   адрес gRPC ai-service (default env AI_SERVICE_ADDR или localhost:50063)
//	--voice     TTS-голос (пусто → провайдерский default)
//	--target    vocab | flashcards | steps | all (default all)
//	--limit     максимум синтезов на каждую группу (0 = без лимита)
//	--dry-run   ничего не синтезировать/писать, только показать план
package main

import (
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"strings"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	"github.com/elearning/course-service/internal/config"
	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
)

func main() {
	var (
		envPath = flag.String("env", "", "path to .env with POSTGRES_* (optional)")
		dsn     = flag.String("dsn", "", "full Postgres DSN (overrides --env/POSTGRES_*)")
		aiAddr  = flag.String("ai-addr", "", "ai-service gRPC addr (default $AI_SERVICE_ADDR or localhost:50063)")
		voice   = flag.String("voice", "", "TTS voice (empty → provider default)")
		target  = flag.String("target", "all", "vocab | flashcards | steps | all")
		limit   = flag.Int("limit", 0, "max syntheses per group (0 = no limit)")
		dryRun  = flag.Bool("dry-run", false, "plan only, no synth/writes")
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
	if target != "all" && target != "vocab" && target != "flashcards" && target != "steps" {
		return fmt.Errorf("invalid target %q (expected vocab, flashcards, steps, or all)", target)
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
	doSteps := target == "all" || target == "steps"

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
	if doSteps {
		if err := backfillStepAudio(ctx, pool, ai, voice, limit, dryRun); err != nil {
			return fmt.Errorf("steps: %w", err)
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
	if url := strings.TrimSpace(resp.GetAudioUrl()); url != "" {
		return url, nil
	}
	return "", fmt.Errorf("TTS returned no public audio_url; configure persistent audio storage before backfilling")
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

// stepRow is a course step whose JSONB content may contain audio_text fields.
// We deliberately keep it generic: new audio exercise types can add nested
// audio_text values without requiring another migration of this command.
type stepRow struct {
	id      string
	content []byte
}

// backfillStepAudio persists audio_url next to every non-empty audio_text in
// a step's JSONB content. It covers top-level listening/tap_words payloads
// and nested listen_choose_word options / match_pairs_voice pairs alike.
func backfillStepAudio(ctx context.Context, pool *pgxpool.Pool, ai aiv1.AIServiceClient, voice string, limit int, dryRun bool) error {
	rows, err := queryStepRows(ctx, pool, limit)
	if err != nil {
		return err
	}
	fmt.Printf("• steps: %d шагов с audio_text\n", len(rows))

	ok, fail, snippets := 0, 0, 0
	cache := make(map[string]string)
	for _, r := range rows {
		var content map[string]any
		if err := json.Unmarshal(r.content, &content); err != nil {
			fail++
			fmt.Printf("  ✗ decode step %s: %v\n", r.id, err)
			continue
		}
		if dryRun {
			missing := countMissingAudioURLs(content)
			snippets += missing
			if missing > 0 {
				fmt.Printf("  [dry] step %s: %d audio_url update(s)\n", r.id, missing)
				ok += missing
			}
			continue
		}

		changed, attempted, failures := fillMissingAudioURLs(ctx, content, "en", voice, cache,
			func(ctx context.Context, text, language, voice string) (string, error) {
				return synth(ctx, ai, text, language, voice)
			},
		)
		snippets += attempted
		if failures > 0 {
			fail += failures
			fmt.Printf("  ✗ step %s: %d audio fragment(s) not synthesized\n", r.id, failures)
		}
		if !changed {
			continue
		}

		updated, err := json.Marshal(content)
		if err != nil {
			fail++
			fmt.Printf("  ✗ encode step %s: %v\n", r.id, err)
			continue
		}
		if _, err := pool.Exec(ctx,
			`UPDATE steps SET content = $1::jsonb, updated_at = NOW() WHERE id = $2`,
			updated, r.id); err != nil {
			fail++
			fmt.Printf("  ✗ update step %s: %v\n", r.id, err)
			continue
		}
		ok += attempted - failures
	}
	fmt.Printf("• steps: audio fragments=%d ok=%d fail=%d\n", snippets, ok, fail)
	return nil
}

type synthFunc func(ctx context.Context, text, language, voice string) (string, error)

// fillMissingAudioURLs walks arbitrary JSON objects and adds audio_url to a
// map whenever that same map has an audio_text string. Existing URLs remain
// untouched, making the command safe to run repeatedly.
func fillMissingAudioURLs(ctx context.Context, value any, language, voice string, cache map[string]string, synthesize synthFunc) (changed bool, attempted, failures int) {
	switch node := value.(type) {
	case map[string]any:
		if declared, ok := node["language"].(string); ok && strings.TrimSpace(declared) != "" {
			language = strings.TrimSpace(declared)
		}
		if text, ok := node["audio_text"].(string); ok && strings.TrimSpace(text) != "" && emptyAudioURL(node["audio_url"]) {
			attempted++
			key := strings.ToLower(strings.TrimSpace(language)) + "\x00" + strings.TrimSpace(voice) + "\x00" + strings.TrimSpace(text)
			url := cache[key]
			if url == "" {
				var err error
				url, err = synthesize(ctx, strings.TrimSpace(text), language, voice)
				if err != nil || url == "" {
					if err != nil {
						fmt.Printf("  ✗ TTS %q: %v\n", strings.TrimSpace(text), err)
					}
					failures++
				} else {
					cache[key] = url
				}
			}
			if url != "" {
				node["audio_url"] = url
				changed = true
			}
		}
		for _, child := range node {
			childChanged, childAttempted, childFailures := fillMissingAudioURLs(ctx, child, language, voice, cache, synthesize)
			changed = changed || childChanged
			attempted += childAttempted
			failures += childFailures
		}
	case []any:
		for _, child := range node {
			childChanged, childAttempted, childFailures := fillMissingAudioURLs(ctx, child, language, voice, cache, synthesize)
			changed = changed || childChanged
			attempted += childAttempted
			failures += childFailures
		}
	}
	return changed, attempted, failures
}

func emptyAudioURL(value any) bool {
	url, ok := value.(string)
	return !ok || strings.TrimSpace(url) == ""
}

// countMissingAudioURLs mirrors the discovery rules of fillMissingAudioURLs
// without calling a provider. It keeps --dry-run a zero-cost, read-only plan.
func countMissingAudioURLs(value any) int {
	switch node := value.(type) {
	case map[string]any:
		count := 0
		if text, ok := node["audio_text"].(string); ok && strings.TrimSpace(text) != "" && emptyAudioURL(node["audio_url"]) {
			count++
		}
		for _, child := range node {
			count += countMissingAudioURLs(child)
		}
		return count
	case []any:
		count := 0
		for _, child := range node {
			count += countMissingAudioURLs(child)
		}
		return count
	}
	return 0
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

func queryStepRows(ctx context.Context, pool *pgxpool.Pool, limit int) ([]stepRow, error) {
	q := `SELECT id, content
	      FROM steps
	      WHERE content::text LIKE '%"audio_text"%'
	      ORDER BY id`
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

	var out []stepRow
	for rs.Next() {
		var r stepRow
		if err := rs.Scan(&r.id, &r.content); err != nil {
			return nil, err
		}
		out = append(out, r)
	}
	return out, rs.Err()
}
