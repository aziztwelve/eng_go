// Package service содержит бизнес-логику social-service: lig-rotation,
// cohort assignment, leaderboard composition.
package service

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"sort"
	"time"

	"github.com/google/uuid"
	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
	"github.com/elearning/social-service/internal/client/notifications"
	"github.com/elearning/social-service/internal/client/users"
	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

// Sentinel errors.
var (
	ErrNotFound        = errors.New("social: not found")
	ErrInvalidArgument = errors.New("social: invalid argument")
)

// BronzeLeagueID — стартовая лига для новых юзеров.
const BronzeLeagueID = 1

// Service — фасад поверх репозиториев.
type Service struct {
	leagues repository.LeagueRepo
	cohorts repository.CohortRepo
	userLg  repository.UserLeagueRepo
	history repository.LeagueHistoryRepo
	board   repository.LeaderboardRepo
	users   users.Client
	notif   notifications.Client

	clock func() time.Time
}

// New создаёт сервис. Notifications-клиент — noop по умолчанию;
// заменяется через WithNotifications.
func New(
	leagues repository.LeagueRepo,
	cohorts repository.CohortRepo,
	userLg repository.UserLeagueRepo,
	history repository.LeagueHistoryRepo,
	board repository.LeaderboardRepo,
	users users.Client,
) *Service {
	return &Service{
		leagues: leagues,
		cohorts: cohorts,
		userLg:  userLg,
		history: history,
		board:   board,
		users:   users,
		notif:   notifications.NewNoop(),
		clock:   func() time.Time { return time.Now().UTC() },
	}
}

// WithNotifications подменяет noop-клиент на реальный (для promotion-пушей).
func (s *Service) WithNotifications(c notifications.Client) *Service {
	if c != nil {
		s.notif = c
	}
	return s
}

// SetClock — для тестов.
func (s *Service) SetClock(f func() time.Time) {
	s.clock = f
}

// ----------------------------------------------------------------------------
// Listing
// ----------------------------------------------------------------------------

// ListLeagues — каталог 10 лиг.
func (s *Service) ListLeagues(ctx context.Context) ([]*model.League, error) {
	return s.leagues.List(ctx)
}

// ----------------------------------------------------------------------------
// User attach
// ----------------------------------------------------------------------------

// EnsureUserInLeague — гарантирует что юзер привязан к когорте текущей недели.
// Если уже есть и cohort-cycle актуальный — возвращает (existing, false).
// Если нет — Bronze + новая когорта (или существующая с member_count<30).
func (s *Service) EnsureUserInLeague(ctx context.Context, userID uuid.UUID) (*model.UserLeague, bool, error) {
	if userID == uuid.Nil {
		return nil, false, fmt.Errorf("%w: empty user_id", ErrInvalidArgument)
	}

	existing, err := s.userLg.Get(ctx, userID)
	if err != nil && !errors.Is(err, repository.ErrNotFound) {
		return nil, false, err
	}

	cycleStart, cycleEnd := model.CycleBoundaries(s.clock())

	if existing != nil {
		// Уже в актуальном цикле?
		coh, cerr := s.cohorts.GetByID(ctx, existing.CohortID)
		if cerr == nil && coh.CycleStartAt.Equal(cycleStart) && !coh.IsFinished {
			return existing, false, nil
		}
		// Истёкший цикл / закрытая когорта — переназначим (на ту же лигу).
		ul, err := s.assignToCohort(ctx, userID, existing.LeagueID, cycleStart, cycleEnd, existing.WeeklyXP)
		if err != nil {
			return nil, false, err
		}
		return ul, false, nil
	}

	ul, err := s.assignToCohort(ctx, userID, BronzeLeagueID, cycleStart, cycleEnd, 0)
	if err != nil {
		return nil, false, err
	}
	return ul, true, nil
}

// assignToCohort — найти открытую когорту лиги или создать новую, привязать юзера.
// Также инициализирует Redis ZSet entry с initialXP (для bootstrap при rotation).
func (s *Service) assignToCohort(ctx context.Context, userID uuid.UUID, leagueID int, cycleStart, cycleEnd time.Time, initialXP int) (*model.UserLeague, error) {
	cohort, err := s.cohorts.FindOpen(ctx, leagueID, cycleStart, cycleEnd)
	if errors.Is(err, repository.ErrNotFound) {
		cohort = &model.Cohort{
			LeagueID:     leagueID,
			CycleStartAt: cycleStart,
			CycleEndAt:   cycleEnd,
		}
		if cerr := s.cohorts.Create(ctx, cohort); cerr != nil {
			return nil, cerr
		}
	} else if err != nil {
		return nil, err
	}

	ul := &model.UserLeague{
		UserID:   userID,
		LeagueID: leagueID,
		CohortID: cohort.ID,
		WeeklyXP: initialXP,
	}
	if err := s.userLg.Upsert(ctx, ul); err != nil {
		return nil, err
	}

	if err := s.cohorts.IncrementMemberCount(ctx, cohort.ID); err != nil {
		// Не критично, но залогируем.
		logger.Warn(ctx, "failed to increment cohort member count",
			zap.String("cohort_id", cohort.ID.String()), zap.Error(err))
	}

	// Redis bootstrap.
	if err := s.board.SetXP(ctx, cohort.ID, userID, initialXP); err != nil {
		logger.Warn(ctx, "failed to bootstrap leaderboard",
			zap.String("cohort_id", cohort.ID.String()), zap.Error(err))
	}

	return ul, nil
}

// ----------------------------------------------------------------------------
// XP gained
// ----------------------------------------------------------------------------

// OnXPGained вызывается Kafka consumer'ом при xp.gained событии.
// Idempotent: если юзер не в лиге — атомарно EnsureUserInLeague + AddXP.
// При успехе обновляет Postgres.weekly_xp + Redis ZIncrBy.
func (s *Service) OnXPGained(ctx context.Context, userID uuid.UUID, amount int) error {
	if amount <= 0 {
		return nil
	}

	ul, _, err := s.EnsureUserInLeague(ctx, userID)
	if err != nil {
		return fmt.Errorf("ensure user in league: %w", err)
	}

	// Postgres сначала (durable); Redis вторым (cache).
	if err := s.userLg.IncrementWeeklyXP(ctx, userID, amount); err != nil {
		return fmt.Errorf("increment weekly xp: %w", err)
	}
	if err := s.board.AddXP(ctx, ul.CohortID, userID, amount); err != nil {
		// Redis отвалился — не критично, snapshot cron восстановит.
		logger.Warn(ctx, "redis AddXP failed (will recover via snapshot)",
			zap.String("user_id", userID.String()), zap.Error(err))
	}
	return nil
}

// ----------------------------------------------------------------------------
// Read paths
// ----------------------------------------------------------------------------

// MyLeagueResult — ответ GetMyLeague.
type MyLeagueResult struct {
	UserLeague *model.UserLeague
	League     *model.League
	CycleEndAt time.Time
}

func (s *Service) GetMyLeague(ctx context.Context, userID uuid.UUID) (*MyLeagueResult, error) {
	ul, err := s.userLg.Get(ctx, userID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, ErrNotFound
		}
		return nil, err
	}
	league, err := s.leagues.GetByID(ctx, ul.LeagueID)
	if err != nil {
		return nil, fmt.Errorf("get league: %w", err)
	}
	cohort, err := s.cohorts.GetByID(ctx, ul.CohortID)
	if err != nil {
		return nil, fmt.Errorf("get cohort: %w", err)
	}

	// Update rank-in-cohort hot from Redis для свежести (не пишем обратно — это делает snapshot).
	if rank, rerr := s.board.GetRank(ctx, ul.CohortID, userID); rerr == nil {
		ul.RankInCohort = &rank
	}

	return &MyLeagueResult{
		UserLeague: ul,
		League:     league,
		CycleEndAt: cohort.CycleEndAt,
	}, nil
}

// LeaderboardResult — ответ GetMyLeaderboard.
type LeaderboardResult struct {
	League         *model.League
	CohortID       uuid.UUID
	CycleEndAt     time.Time
	MyRank         int
	MyWeeklyXP     int
	Entries        []*model.LeaderboardEntry
	PromotionCount int
	DemotionCount  int
}

func (s *Service) GetMyLeaderboard(ctx context.Context, userID uuid.UUID) (*LeaderboardResult, error) {
	ul, err := s.userLg.Get(ctx, userID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, ErrNotFound
		}
		return nil, err
	}
	league, err := s.leagues.GetByID(ctx, ul.LeagueID)
	if err != nil {
		return nil, err
	}
	cohort, err := s.cohorts.GetByID(ctx, ul.CohortID)
	if err != nil {
		return nil, err
	}

	scores, err := s.board.GetTop(ctx, ul.CohortID, model.CohortSize)
	if err != nil {
		// Fallback: Postgres
		uls, perr := s.userLg.ListByCohort(ctx, ul.CohortID)
		if perr != nil {
			return nil, perr
		}
		scores = make([]repository.LeaderboardScore, 0, len(uls))
		for _, u := range uls {
			scores = append(scores, repository.LeaderboardScore{UserID: u.UserID, WeeklyXP: u.WeeklyXP})
		}
		sort.Slice(scores, func(i, j int) bool { return scores[i].WeeklyXP > scores[j].WeeklyXP })
	}

	// Enrichment через user-service.
	userIDs := make([]uuid.UUID, 0, len(scores))
	for _, sc := range scores {
		userIDs = append(userIDs, sc.UserID)
	}
	profiles, perr := s.users.BatchGetProfiles(ctx, userIDs)
	if perr != nil {
		logger.Warn(ctx, "failed to enrich leaderboard with profiles", zap.Error(perr))
		profiles = nil // fallback: пустые имена
	}

	entries := make([]*model.LeaderboardEntry, 0, len(scores))
	myRank := 0
	myXP := ul.WeeklyXP
	for i, sc := range scores {
		rank := i + 1
		entry := &model.LeaderboardEntry{
			Rank:     rank,
			UserID:   sc.UserID,
			WeeklyXP: sc.WeeklyXP,
		}
		if p, ok := profiles[sc.UserID]; ok && p != nil {
			entry.FullName = p.FullName
			entry.AvatarURL = p.AvatarURL
		}
		if sc.UserID == userID {
			myRank = rank
			myXP = sc.WeeklyXP
		}
		entries = append(entries, entry)
	}

	res := &LeaderboardResult{
		League:     league,
		CohortID:   ul.CohortID,
		CycleEndAt: cohort.CycleEndAt,
		MyRank:     myRank,
		MyWeeklyXP: myXP,
		Entries:    entries,
	}
	// Zone hints.
	if league.Tier < model.MaxLeagueTier {
		res.PromotionCount = model.PromotionTopN
	}
	if league.Tier > model.MinLeagueTier {
		res.DemotionCount = model.DemotionBottomN
	}
	return res, nil
}

func (s *Service) GetHistory(ctx context.Context, userID uuid.UUID, limit, offset int) ([]*model.LeagueHistoryEntry, int, error) {
	return s.history.ListByUser(ctx, userID, limit, offset)
}

// ----------------------------------------------------------------------------
// Cron snapshot
// ----------------------------------------------------------------------------

// SnapshotRanks — периодический cron: для каждой активной когорты считывает
// топ из Redis и обновляет user_leagues.rank_in_cohort. Не вызывается на
// горячем пути — отстаёт до 10 мин, что норм для UI.
func (s *Service) SnapshotRanks(ctx context.Context) (int, error) {
	cohorts, err := s.cohorts.ListActiveExpired(ctx, s.clock().Add(7*24*time.Hour))
	// ↑ выбираем когорты с end_at <= now+7d → все активные текущей и предыдущей недели.
	// Для активных is_finished=false, для истекших — будут обработаны WeeklyRotation.
	if err != nil {
		return 0, err
	}

	updated := 0
	for _, c := range cohorts {
		if c.IsFinished {
			continue
		}
		scores, err := s.board.GetTop(ctx, c.ID, model.CohortSize)
		if err != nil {
			logger.Warn(ctx, "snapshot: get top failed",
				zap.String("cohort_id", c.ID.String()), zap.Error(err))
			continue
		}
		for i, sc := range scores {
			if uerr := s.userLg.UpdateRank(ctx, sc.UserID, i+1); uerr != nil {
				logger.Warn(ctx, "snapshot: update rank failed",
					zap.String("user_id", sc.UserID.String()), zap.Error(uerr))
				continue
			}
			updated++
		}
	}
	return updated, nil
}

// ----------------------------------------------------------------------------
// Weekly rotation
// ----------------------------------------------------------------------------

// WeeklyRotationStats — итоги одного запуска rotation.
type WeeklyRotationStats struct {
	CohortsProcessed int
	UsersPromoted    int
	UsersDemoted     int
	UsersSustained   int
}

// RunWeeklyRotation обрабатывает все когорты с cycle_end_at <= now & is_finished=false:
//   1. Фиксирует финальный rank из Redis.
//   2. Создаёт league_history (idempotent).
//   3. Промоушн / демоушн.
//   4. Reassign в новые когорты.
//   5. Reset Redis + weekly_xp.
//   6. Mark cohort finished.
//
// force=true: игнорирует проверку cycle_end_at (для тестов / админ trigger).
func (s *Service) RunWeeklyRotation(ctx context.Context, force bool) (*WeeklyRotationStats, error) {
	now := s.clock()
	cutoff := now
	if force {
		// При force берём всё неактивное, что попадает в "<= now+far_future".
		cutoff = now.AddDate(1, 0, 0)
	}

	cohorts, err := s.cohorts.ListActiveExpired(ctx, cutoff)
	if err != nil {
		return nil, err
	}

	stats := &WeeklyRotationStats{}
	nextCycleStart, nextCycleEnd := model.CycleBoundaries(now)
	// Если now ещё в "старом" цикле и force=true, всё равно стартуем next-week после end текущего:
	if !force {
		nextCycleStart = nextCycleStart.AddDate(0, 0, 7)
		nextCycleEnd = nextCycleEnd.AddDate(0, 0, 7)
	}

	for _, c := range cohorts {
		if c.IsFinished {
			continue
		}
		stats.CohortsProcessed++

		scores, err := s.board.GetTop(ctx, c.ID, model.CohortSize)
		if err != nil {
			logger.Warn(ctx, "rotation: get top failed",
				zap.String("cohort_id", c.ID.String()), zap.Error(err))
			// Fallback на Postgres
			uls, perr := s.userLg.ListByCohort(ctx, c.ID)
			if perr != nil {
				continue
			}
			scores = scoresFromUserLeagues(uls)
		}

		for i, sc := range scores {
			rank := i + 1

			promoted, demoted := false, false
			newLeagueID := c.LeagueID

			if rank <= model.PromotionTopN && c.LeagueID < model.MaxLeagueTier {
				promoted = true
				newLeagueID = c.LeagueID + 1
			} else if rank > model.CohortSize-model.DemotionBottomN && c.LeagueID > model.MinLeagueTier {
				demoted = true
				newLeagueID = c.LeagueID - 1
			}

			gems := 0
			if promoted {
				gems += model.PromotionGems(rank)
			}
			// Top-3 bonus
			switch rank {
			case 1:
				gems += 50
			case 2:
				gems += 30
			case 3:
				gems += 20
			}

			h := &model.LeagueHistoryEntry{
				UserID:       sc.UserID,
				LeagueID:     c.LeagueID,
				CohortID:     c.ID,
				CycleStartAt: c.CycleStartAt,
				CycleEndAt:   c.CycleEndAt,
				FinalXP:      sc.WeeklyXP,
				FinalRank:    rank,
				Promoted:     promoted,
				Demoted:      demoted,
				GemsEarned:   gems,
			}
			if cerr := s.history.Create(ctx, h); cerr != nil {
				logger.Warn(ctx, "rotation: create history failed", zap.Error(cerr))
			}

			// Reassign в новую когорту следующей недели.
			if _, err := s.assignToCohort(ctx, sc.UserID, newLeagueID, nextCycleStart, nextCycleEnd, 0); err != nil {
				logger.Warn(ctx, "rotation: assign to next cohort failed",
					zap.String("user_id", sc.UserID.String()), zap.Error(err))
			}

			// Push promotion-уведомление (non-fatal). Только для promoted.
			// Dedup-key по (cohort_id, user_id) — повторный rotation того же
			// цикла не задублирует push.
			if promoted {
				newLeague, lerr := s.leagues.GetByID(ctx, newLeagueID)
				if lerr == nil && newLeague != nil {
					s.sendPromotionPush(ctx, sc.UserID, c.ID, newLeague, rank, gems)
				}
			}

			switch {
			case promoted:
				stats.UsersPromoted++
			case demoted:
				stats.UsersDemoted++
			default:
				stats.UsersSustained++
			}
		}

		// Reset Redis для этой когорты.
		if rerr := s.board.Reset(ctx, c.ID); rerr != nil {
			logger.Warn(ctx, "rotation: reset redis failed", zap.Error(rerr))
		}
		// Mark finished.
		if merr := s.cohorts.MarkFinished(ctx, c.ID); merr != nil {
			logger.Warn(ctx, "rotation: mark finished failed", zap.Error(merr))
		}
	}

	return stats, nil
}

// scoresFromUserLeagues — fallback при недоступном Redis: построить отсортированный
// список из user_leagues.weekly_xp (Postgres).
func scoresFromUserLeagues(uls []*model.UserLeague) []repository.LeaderboardScore {
	out := make([]repository.LeaderboardScore, 0, len(uls))
	for _, u := range uls {
		out = append(out, repository.LeaderboardScore{UserID: u.UserID, WeeklyXP: u.WeeklyXP})
	}
	sort.Slice(out, func(i, j int) bool { return out[i].WeeklyXP > out[j].WeeklyXP })
	return out
}

// sendPromotionPush — отправляет push "You promoted to X League!" через
// notifications-service. Non-fatal — отказ доставки не валит rotation.
// Канал = "achievement" (переиспользуем — promotion это разновидность достижения).
func (s *Service) sendPromotionPush(
	ctx context.Context,
	userID uuid.UUID,
	cohortID uuid.UUID,
	newLeague *model.League,
	finalRank int,
	gemsEarned int,
) {
	body := fmt.Sprintf("You finished #%d and promoted to %s. +%d gems!",
		finalRank, newLeague.Name, gemsEarned)

	payload := map[string]any{
		"event":         "league_promotion",
		"new_league_id": newLeague.ID,
		"new_league":    newLeague.Code,
		"final_rank":    finalRank,
		"gems_earned":   gemsEarned,
		"deep_link":     "/leagues",
	}
	data, _ := json.Marshal(payload)

	err := s.notif.Send(ctx, notifications.SendInput{
		UserID:   userID.String(),
		Channel:  "achievement",
		Title:    "🏆 You promoted to " + newLeague.Name + "!",
		Body:     body,
		Data:     data,
		DedupKey: fmt.Sprintf("league_promotion:%s:%s", cohortID.String(), userID.String()),
		// Promotion важен — отправляем независимо от quiet hours.
		IgnoreQuietHours: true,
	})
	if err != nil {
		logger.Warn(ctx, "promotion push failed",
			zap.String("user_id", userID.String()),
			zap.Int("league_id", newLeague.ID),
			zap.Error(err))
	}
}
