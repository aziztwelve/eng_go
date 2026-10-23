package postgres

import (
	"context"
	"github.com/elearning/course-service/internal/model"
	"github.com/jackc/pgx/v5/pgxpool"
)

// Read the schedule in one batch. No SRS item is created by a read.
func hydrateFlashcardSRS(ctx context.Context, pool *pgxpool.Pool, cards []*model.Flashcard) error {
	if len(cards) == 0 {
		return nil
	}
	ids := make([]string, 0, len(cards))
	byID := make(map[string]*model.Flashcard, len(cards))
	for _, card := range cards {
		ids = append(ids, card.ID)
		byID[card.ID] = card
	}
	rows, err := pool.Query(ctx, `SELECT flashcard_id,strength,repetitions,next_review_at FROM flashcard_srs_state WHERE user_id=$1 AND flashcard_id=ANY($2::uuid[])`, cards[0].UserID, ids)
	if err != nil {
		return err
	}
	defer rows.Close()
	for rows.Next() {
		var id string
		var strength float64
		var reps int32
		// Every returned ID was requested for this owner.
		var next model.Flashcard
		if err = rows.Scan(&id, &strength, &reps, &next.NextReviewAt); err != nil {
			return err
		}
		if card := byID[id]; card != nil {
			card.Strength = &strength
			card.Repetitions = &reps
			card.NextReviewAt = next.NextReviewAt
		}
	}
	return rows.Err()
}
