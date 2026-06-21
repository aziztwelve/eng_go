// Command seed-today — выдаёт конкретному юзеру набор слов «на сегодня».
//
// Реплицирует логику gateway SeedStarter, но для произвольного user_id
// (admin-операция): берёт N слов из system-словаря, добавляет их как
// user_flashcards (source=ai_suggestion, идемпотентно) и пинит на сегодня
// (flashcard_today_queue). Ходит в course-service по gRPC — никаких прямых
// SQL-инсертов, вся бизнес-логика и SRS-интеграция остаются на сервисе.
//
// Запуск (из services/course-service):
//
//	go run ./cmd/seed-today --user <uuid> --language en --count 20 \
//	    --course-addr localhost:50053
package main

import (
	"context"
	"flag"
	"fmt"
	"os"
	"time"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/wrapperspb"

	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

func main() {
	var (
		user        = flag.String("user", "", "user_id (uuid) — обязателен")
		language    = flag.String("language", "en", "язык слов (target language юзера)")
		count       = flag.Int("count", 20, "сколько слов выдать")
		courseAddr  = flag.String("course-addr", "localhost:50053", "course-service gRPC addr")
	)
	flag.Parse()

	if *user == "" {
		fmt.Fprintln(os.Stderr, "❌ --user is required")
		os.Exit(1)
	}
	if err := run(*user, *language, *count, *courseAddr); err != nil {
		fmt.Fprintf(os.Stderr, "❌ seed-today: %v\n", err)
		os.Exit(1)
	}
}

func run(userID, language string, count int, courseAddr string) error {
	ctx, cancel := context.WithTimeout(context.Background(), 60*time.Second)
	defer cancel()

	conn, err := grpc.NewClient(courseAddr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return fmt.Errorf("dial course-service %q: %w", courseAddr, err)
	}
	defer conn.Close()
	c := coursev1.NewCourseServiceClient(conn)

	fmt.Printf("▶ seed-today  user=%s  language=%s  count=%d\n", userID, language, count)

	vocab, err := c.ListVocabulary(ctx, &coursev1.ListVocabularyRequest{
		Language: wrapperspb.String(language),
		Limit:    int32(count),
	})
	if err != nil {
		return fmt.Errorf("list vocabulary: %w", err)
	}
	fmt.Printf("• словарь: %d записей для language=%s\n", len(vocab.GetEntries()), language)

	added, pinned, skipped := 0, 0, 0
	for _, v := range vocab.GetEntries() {
		addResp, err := c.AddVocabularyAsFlashcard(ctx, &coursev1.AddVocabularyAsFlashcardRequest{
			UserId:       userID,
			VocabularyId: v.GetId(),
			Source:       "ai_suggestion",
		})
		if err != nil {
			skipped++
			fmt.Printf("  ✗ add %q: %v\n", v.GetWord(), err)
			continue
		}
		if addResp.GetCreated() {
			added++
		}
		card := addResp.GetFlashcard()
		if card == nil {
			continue
		}
		if _, err := c.PinForToday(ctx, &coursev1.PinForTodayRequest{
			UserId:      userID,
			FlashcardId: card.GetId(),
		}); err != nil {
			fmt.Printf("  ! pin %q: %v\n", v.GetWord(), err)
			continue
		}
		pinned++
	}

	fmt.Printf("✅ готово: добавлено новых=%d, запинено на сегодня=%d, пропущено=%d\n", added, pinned, skipped)
	return nil
}
