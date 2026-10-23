package postgres

import (
	"context"
	"encoding/json"
	"errors"
	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
)

func (r *srsItemRepo) RecordReviewAtomic(ctx context.Context, in repository.ReviewOperation, apply func(*model.SRSItem) *model.ReviewHistory) (*model.SRSItem, *model.ReviewHistory, error) {
	tx, err := r.pool.Begin(ctx)
	if err != nil {
		return nil, nil, err
	}
	defer tx.Rollback(ctx)
	if in.AttemptID != "" {
		if _, err = tx.Exec(ctx, `SELECT pg_advisory_xact_lock(hashtextextended($1,0))`, in.UserID+"|review|"+in.AttemptID); err != nil {
			return nil, nil, err
		}
		var same bool
		var raw []byte
		err = tx.QueryRow(ctx, `SELECT item_type=$3 AND item_id=$4 AND quality=$5 AND response_time_ms=$6 AND used_hint=$7, response
   FROM review_receipts WHERE user_id=$1 AND attempt_id=$2::uuid`, in.UserID, in.AttemptID, string(in.ItemType), in.ItemID, in.Quality, in.ResponseTimeMs, in.UsedHint).Scan(&same, &raw)
		if err == nil {
			if !same {
				return nil, nil, repository.ErrReviewConflict
			}
			var saved struct {
				Item    *model.SRSItem
				History *model.ReviewHistory
			}
			if err = json.Unmarshal(raw, &saved); err != nil {
				return nil, nil, err
			}
			return saved.Item, saved.History, tx.Commit(ctx)
		}
		if !errors.Is(err, pgx.ErrNoRows) {
			return nil, nil, err
		}
	}
	if _, err = tx.Exec(ctx, `INSERT INTO user_srs_items(user_id,item_type,item_id) VALUES($1,$2,$3) ON CONFLICT(user_id,item_type,item_id) DO NOTHING`, in.UserID, string(in.ItemType), in.ItemID); err != nil {
		return nil, nil, err
	}
	item, err := scanSRSItem(tx.QueryRow(ctx, `SELECT `+srsItemCols+` FROM user_srs_items WHERE user_id=$1 AND item_type=$2 AND item_id=$3 FOR UPDATE`, in.UserID, string(in.ItemType), in.ItemID).Scan)
	if err != nil {
		return nil, nil, err
	}
	hist := apply(item)
	hist.ID = uuid.NewString()
	err = tx.QueryRow(ctx, `UPDATE user_srs_items SET easiness_factor=$1,interval_days=$2,repetitions=$3,next_review_at=$4,last_reviewed_at=$5,total_reviews=$6,correct_reviews=$7,incorrect_reviews=$8,avg_response_time_ms=$9,strength=$10,updated_at=NOW() WHERE id=$11 RETURNING updated_at`, item.EasinessFactor, item.IntervalDays, item.Repetitions, item.NextReviewAt, item.LastReviewedAt, item.TotalReviews, item.CorrectReviews, item.IncorrectReviews, item.AvgResponseTimeMs, item.Strength, item.ID).Scan(&item.UpdatedAt)
	if err != nil {
		return nil, nil, err
	}
	err = tx.QueryRow(ctx, `INSERT INTO srs_review_history(id,srs_item_id,user_id,quality,response_time_ms,used_hint,new_interval_days,new_easiness_factor,new_repetitions) VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9) RETURNING reviewed_at`, hist.ID, hist.SRSItemID, hist.UserID, hist.Quality, hist.ResponseTimeMs, hist.UsedHint, hist.NewIntervalDays, hist.NewEasinessFactor, hist.NewRepetitions).Scan(&hist.ReviewedAt)
	if err != nil {
		return nil, nil, err
	}
	if in.AttemptID != "" {
		raw, err := json.Marshal(struct {
			Item    *model.SRSItem
			History *model.ReviewHistory
		}{item, hist})
		if err != nil {
			return nil, nil, err
		}
		if _, err = tx.Exec(ctx, `INSERT INTO review_receipts(user_id,attempt_id,item_type,item_id,quality,response_time_ms,used_hint,response) VALUES($1,$2::uuid,$3,$4,$5,$6,$7,$8::jsonb)`, in.UserID, in.AttemptID, string(in.ItemType), in.ItemID, in.Quality, in.ResponseTimeMs, in.UsedHint, raw); err != nil {
			return nil, nil, err
		}
	}
	return item, hist, tx.Commit(ctx)
}
