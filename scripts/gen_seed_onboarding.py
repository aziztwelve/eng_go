#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_seed_onboarding.py — генератор seed-данных для онбординга.

Создаёт ~1104 пользователя в 3 слоя:
  L1. Канонические fixtures (~50)  — UUID 'aaaa****-...' — по 1 юзеру на
                                     каждое уникальное значение каждого
                                     enum-поля + edge cases.
  L2. Grid level × goal (54)       — UUID 'bbbb****-...' — все пары
                                     (proficiency_level, motivation).
  L3. Volume random (1000)         — UUID 'cccc****-...' — рандом по
                                     реалистичным весам (seed=42).

Записи по таблицам:
  auth.users                       1104
  users.profiles                   1104
  gamification.user_stats          1104
  gamification.daily_goals         1104
  gamification.daily_goal_progress 1104   (1 запись на сегодня)
  gamification.streak_history      ~6000  (random history per active user)
  gamification.xp_transactions     ~10000 (для распределения по лигам)
  social.cohorts                   10     (по 1 на лигу для seed)
  social.user_leagues              ~200   (топ-200 active users)
  social.friendships               ~600   (граф между fixtures + part of L3)
  srs.user_srs_items               ~2500  (для 100 active users)

Запуск:
  python3 scripts/gen_seed_onboarding.py

Выход (закомиттить):
  services/auth-service/seeds/002_onboarding_users.sql
  services/user-service/seeds/002_onboarding_profiles.sql
  services/gamification-service/seeds/002_onboarding_users.sql
  services/social-service/seeds/001_onboarding_leagues.sql
  services/srs-service/seeds/001_onboarding_items.sql

Накат (после регенерации):
  ./bin/seed.sh
"""

from __future__ import annotations

import os
import random
from dataclasses import dataclass, field
from datetime import date, datetime, timedelta, timezone
from pathlib import Path
from typing import Any

# =============================================================================
# Константы (должны соответствовать CHECK constraints в БД)
# =============================================================================

PROFICIENCY_LEVELS = ["beginner", "a1", "a2", "b1", "b2", "just_for_fun"]
DAILY_GOAL_XP_VALUES = [10, 20, 30, 50]
MOTIVATIONS = [
    "work", "business_english", "exam", "travel", "speaking", "study",
    "listening_shadowing",
]
AGE_BRACKETS = ["7-12", "13-17", "18-24", "25-34", "35-44", "45-54", "55+"]
DAILY_COMMIT_MINUTES = [5, 10, 15, 25]
PAIN_POINTS = ["fear_speaking", "lack_vocab", "listening", "grammar", "consistency"]
SPEAKING_SITUATIONS = ["freeze", "translate_in_head", "too_short", "avoid"]
PAST_BLOCKERS = ["boring", "too_hard", "no_progress", "no_fit", "no_support"]
FUTURE_REGRETS = ["stay_same", "limit_self", "pressure", "postpone"]
EMOTIONAL_REACTIONS = ["lose_confidence", "upset", "burnout", "lost"]
REMINDER_SLOTS = ["morning", "day", "evening", "flex"]
PAYWALL_CHOICES = ["annual", "monthly", "dismissed", "special_offer"]
SIGNUP_SOURCES = ["welcome_screen", "oauth_google", "oauth_apple"]
NATIVE_LANGS = ["ru", "en", "kk"]

# Веса для Layer 3 random (реалистичные распределения).
LEVEL_WEIGHTS = {"beginner": 5, "a1": 25, "a2": 30, "b1": 25, "b2": 10, "just_for_fun": 5}
DAILY_GOAL_WEIGHTS = {10: 20, 20: 50, 30: 20, 50: 10}
MOTIVATION_WEIGHTS = {
    "work": 24, "business_english": 10, "travel": 19, "exam": 12,
    "study": 10, "speaking": 12, "listening_shadowing": 13,
}
AGE_WEIGHTS = {"7-12": 3, "13-17": 12, "18-24": 25, "25-34": 35, "35-44": 15, "45-54": 7, "55+": 3}
COMMIT_WEIGHTS = {5: 20, 10: 40, 15: 25, 25: 15}
PAIN_WEIGHTS = {"fear_speaking": 30, "lack_vocab": 25, "listening": 15, "grammar": 20, "consistency": 10}
SPEAKING_WEIGHTS = {"freeze": 30, "translate_in_head": 30, "too_short": 25, "avoid": 15}
PAST_BLOCKER_WEIGHTS = {"boring": 25, "too_hard": 25, "no_progress": 20, "no_fit": 15, "no_support": 15}
FUTURE_REGRET_WEIGHTS = {"stay_same": 35, "limit_self": 30, "pressure": 20, "postpone": 15}
EMOTION_WEIGHTS = {"lose_confidence": 35, "upset": 25, "burnout": 25, "lost": 15}
REMINDER_WEIGHTS = {"morning": 30, "day": 15, "evening": 40, "flex": 15}
PAYWALL_WEIGHTS = {"dismissed": 50, "monthly": 18, "annual": 27, "special_offer": 5}
NATIVE_LANG_WEIGHTS = {"ru": 70, "en": 25, "kk": 5}

# bcrypt('password123') — тот же хеш, что в services/auth-service/seeds/001_users.sql.
PASSWORD_HASH = "$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy"

# Лиги (id, code) из migrations/000001_create_leagues.up.sql.
LEAGUES = [
    (1, "bronze"), (2, "silver"), (3, "gold"), (4, "sapphire"), (5, "ruby"),
    (6, "emerald"), (7, "amethyst"), (8, "pearl"), (9, "obsidian"), (10, "diamond"),
]

# Cohort id для каждой лиги — фиксированные UUID для seed (детерминизм).
COHORT_UUIDS = {
    league_id: f"c0500001-0000-0000-0000-{league_id:012d}"
    for league_id, _ in LEAGUES
}

REPO_ROOT = Path(__file__).resolve().parent.parent

# =============================================================================
# Модели
# =============================================================================

@dataclass
class User:
    user_id: str
    email: str | None
    username: str
    is_guest: bool
    guest_device_id: str | None
    created_at: datetime
    # Profile fields
    native_lang: str
    target_lang: str
    proficiency_level: str | None
    daily_goal_xp: int | None
    motivation: list[str]
    age_bracket: str | None
    daily_commit_minutes: int | None
    pain_point: str | None
    speaking_situation: str | None
    past_blocker: str | None
    future_regret: str | None
    emotional_reaction: str | None
    reminder_slot: str | None
    paywall_seen_at: datetime | None
    paywall_choice: str | None
    signup_source: str | None
    placement_score: int | None
    onboarded_at: datetime | None
    date_of_birth: date | None
    timezone_str: str = "UTC"
    # Cosmetic
    first_name: str = ""
    last_name: str = ""
    bio: str = ""
    avatar_url: str = ""
    # Gamification scaffold
    total_xp: int = 0
    weekly_xp: int = 0
    streak: int = 0
    league_id: int | None = None
    layer: str = "L3"  # L1 | L2 | L3

# =============================================================================
# Утилиты
# =============================================================================

def w_choice(rng: random.Random, weights: dict[Any, int]) -> Any:
    keys = list(weights.keys())
    ws = [weights[k] for k in keys]
    return rng.choices(keys, weights=ws, k=1)[0]

def sql_str(s: str | None) -> str:
    if s is None:
        return "NULL"
    return "'" + s.replace("'", "''") + "'"

def sql_ts(t: datetime | None) -> str:
    if t is None:
        return "NULL"
    if t.tzinfo is None:
        t = t.replace(tzinfo=timezone.utc)
    return "'" + t.strftime("%Y-%m-%d %H:%M:%S+00") + "'"

def sql_date(d: date | None) -> str:
    if d is None:
        return "NULL"
    return "'" + d.strftime("%Y-%m-%d") + "'"

def sql_int(n: int | None) -> str:
    return "NULL" if n is None else str(n)

def sql_bool(b: bool) -> str:
    return "TRUE" if b else "FALSE"

def sql_text_array(items: list[str]) -> str:
    if not items:
        return "'{}'"
    inner = ",".join('"' + s.replace('"', '\\"') + '"' for s in items)
    return "'{" + inner + "}'"

def fmt_uuid(prefix: str, idx: int) -> str:
    """prefix='aaaa', idx=1 → 'aaaa0001-0000-0000-0000-000000000001'."""
    return f"{prefix}{idx:04d}-0000-0000-0000-{idx:012d}"

# =============================================================================
# Layer 1 — Canonical fixtures (~50)
# =============================================================================

def _default_profile_kwargs() -> dict[str, Any]:
    """Дефолтные значения для fixture'ов — заполняем поле, которое варьируем."""
    return dict(
        native_lang="ru",
        target_lang="en",
        proficiency_level="b1",
        daily_goal_xp=20,
        motivation=["work"],
        age_bracket="25-34",
        daily_commit_minutes=10,
        pain_point="lack_vocab",
        speaking_situation="freeze",
        past_blocker="boring",
        future_regret="stay_same",
        emotional_reaction="upset",
        reminder_slot="evening",
        paywall_choice="dismissed",
        signup_source="welcome_screen",
        placement_score=2,
    )

def gen_layer1() -> list[User]:
    users: list[User] = []
    idx = 0
    now = datetime(2026, 5, 28, 12, 0, 0, tzinfo=timezone.utc)

    # Обходим каждое enum-поле и создаём по 1 fixture на каждое значение.
    enum_fields: list[tuple[str, list[Any]]] = [
        ("proficiency_level", PROFICIENCY_LEVELS),
        ("daily_goal_xp", DAILY_GOAL_XP_VALUES),
        ("age_bracket", AGE_BRACKETS),
        ("daily_commit_minutes", DAILY_COMMIT_MINUTES),
        ("pain_point", PAIN_POINTS),
        ("speaking_situation", SPEAKING_SITUATIONS),
        ("past_blocker", PAST_BLOCKERS),
        ("future_regret", FUTURE_REGRETS),
        ("emotional_reaction", EMOTIONAL_REACTIONS),
        ("reminder_slot", REMINDER_SLOTS),
        ("paywall_choice", PAYWALL_CHOICES),
    ]

    for field_name, values in enum_fields:
        for val in values:
            idx += 1
            kwargs = _default_profile_kwargs()
            if field_name == "motivation":
                kwargs["motivation"] = [val]
            else:
                kwargs[field_name] = val
            uid = fmt_uuid("aaaa", idx)
            users.append(User(
                user_id=uid,
                email=f"l1-{idx:03d}@test.com",
                username=f"L1 fixture {field_name}={val}",
                is_guest=False,
                guest_device_id=None,
                created_at=now - timedelta(days=30),
                paywall_seen_at=now - timedelta(days=29),
                onboarded_at=now - timedelta(days=29),
                date_of_birth=date(2000, 1, 1),
                first_name=f"Fix{idx}",
                last_name=field_name.replace("_", "").title()[:20],
                bio=f"L1 fixture: {field_name}={val}",
                avatar_url=f"https://i.pravatar.cc/150?img={(idx % 70) + 1}",
                total_xp=200,
                weekly_xp=50,
                streak=3,
                league_id=2,
                layer="L1",
                **kwargs,
            ))

    # Edge cases (5).
    edges: list[tuple[str, dict[str, Any]]] = [
        # (1) Все опциональные поля NULL — минимальный профиль.
        ("all_null", dict(
            proficiency_level=None, daily_goal_xp=None, motivation=[],
            age_bracket=None, daily_commit_minutes=None, pain_point=None,
            speaking_situation=None, past_blocker=None, future_regret=None,
            emotional_reaction=None, reminder_slot=None, paywall_choice=None,
            signup_source=None, placement_score=None, native_lang="ru",
            target_lang="en",
        )),
        # (2) Онбординг в процессе (onboarded_at = NULL).
        ("in_progress", _default_profile_kwargs()),
        # (3) Гость без email + device_id.
        ("guest_unclaimed", _default_profile_kwargs()),
        # (4) Гость, который claim'нулся (есть email + is_guest=false).
        ("guest_claimed", _default_profile_kwargs()),
        # (5) Multi-language: native=en, target=es (хоть в проде только en).
        ("multilang", {**_default_profile_kwargs(), "native_lang": "en", "target_lang": "es"}),
    ]

    for label, kwargs in edges:
        idx += 1
        uid = fmt_uuid("aaaa", idx)
        is_guest = label.startswith("guest_unclaimed")
        email = None if is_guest else f"l1-{idx:03d}@test.com"
        device_id = f"device-{uid}" if is_guest else None
        onboarded = None if label == "in_progress" else (now - timedelta(days=29))
        users.append(User(
            user_id=uid,
            email=email,
            username=f"L1 edge {label}",
            is_guest=is_guest,
            guest_device_id=device_id,
            created_at=now - timedelta(days=30),
            paywall_seen_at=None if label in ("all_null", "in_progress") else (now - timedelta(days=29)),
            onboarded_at=onboarded,
            date_of_birth=None if label == "all_null" else date(2000, 1, 1),
            first_name=f"Edge{idx}",
            last_name=label[:20],
            bio=f"L1 edge case: {label}",
            avatar_url=f"https://i.pravatar.cc/150?img={(idx % 70) + 1}",
            total_xp=0 if label == "in_progress" else 100,
            weekly_xp=0,
            streak=0,
            league_id=None,
            layer="L1",
            **kwargs,
        ))

    return users

# =============================================================================
# Layer 2 — level × goal grid (54)
# =============================================================================

def gen_layer2(rng: random.Random) -> list[User]:
    users: list[User] = []
    idx = 0
    now = datetime(2026, 5, 28, 12, 0, 0, tzinfo=timezone.utc)

    for level in PROFICIENCY_LEVELS:
        for goal in MOTIVATIONS:
            idx += 1
            uid = fmt_uuid("bbbb", idx)
            total_xp = rng.randint(0, 5000)
            users.append(User(
                user_id=uid,
                email=f"l2-{idx:03d}@test.com",
                username=f"L2 {level}/{goal}",
                is_guest=False,
                guest_device_id=None,
                created_at=now - timedelta(days=rng.randint(7, 90)),
                native_lang=w_choice(rng, NATIVE_LANG_WEIGHTS),
                target_lang="en",
                proficiency_level=level,
                daily_goal_xp=w_choice(rng, DAILY_GOAL_WEIGHTS),
                motivation=[goal],
                age_bracket=w_choice(rng, AGE_WEIGHTS),
                daily_commit_minutes=w_choice(rng, COMMIT_WEIGHTS),
                pain_point=w_choice(rng, PAIN_WEIGHTS),
                speaking_situation=w_choice(rng, SPEAKING_WEIGHTS),
                past_blocker=w_choice(rng, PAST_BLOCKER_WEIGHTS),
                future_regret=w_choice(rng, FUTURE_REGRET_WEIGHTS),
                emotional_reaction=w_choice(rng, EMOTION_WEIGHTS),
                reminder_slot=w_choice(rng, REMINDER_WEIGHTS),
                paywall_seen_at=now - timedelta(days=rng.randint(1, 30)),
                paywall_choice=w_choice(rng, PAYWALL_WEIGHTS),
                signup_source=rng.choice(SIGNUP_SOURCES),
                placement_score=rng.randint(0, 5),
                onboarded_at=now - timedelta(days=rng.randint(1, 30)),
                date_of_birth=date(rng.randint(1970, 2010), rng.randint(1, 12), rng.randint(1, 28)),
                first_name=f"L2u{idx}",
                last_name=f"{level}_{goal}"[:20],
                bio=f"L2 grid: level={level}, goal={goal}",
                avatar_url=f"https://i.pravatar.cc/150?img={(idx % 70) + 1}",
                total_xp=total_xp,
                weekly_xp=rng.randint(0, min(total_xp, 1000)),
                streak=rng.randint(0, 30),
                league_id=min(10, max(1, total_xp // 500 + 1)),
                layer="L2",
            ))
    return users

# =============================================================================
# Layer 3 — random volume (1000)
# =============================================================================

def gen_layer3(rng: random.Random, n: int = 1000) -> list[User]:
    users: list[User] = []
    now = datetime(2026, 5, 28, 12, 0, 0, tzinfo=timezone.utc)

    for idx in range(1, n + 1):
        uid = fmt_uuid("cccc", idx)
        is_guest = rng.random() < 0.10
        in_progress = rng.random() < 0.05  # 5% не завершили онбординг
        total_xp = rng.randint(0, 10000) if not in_progress else rng.randint(0, 100)
        paywall_seen = not in_progress and rng.random() < 0.85

        email = None if is_guest else f"l3-{idx:04d}@test.com"
        device_id = f"device-{uid}" if is_guest else None
        username = f"L3 user {idx:04d}" if not is_guest else f"L3 guest {idx:04d}"

        users.append(User(
            user_id=uid,
            email=email,
            username=username,
            is_guest=is_guest,
            guest_device_id=device_id,
            created_at=now - timedelta(days=rng.randint(1, 180)),
            native_lang=w_choice(rng, NATIVE_LANG_WEIGHTS),
            target_lang="en",
            proficiency_level=None if in_progress and rng.random() < 0.5 else w_choice(rng, LEVEL_WEIGHTS),
            daily_goal_xp=None if in_progress and rng.random() < 0.3 else w_choice(rng, DAILY_GOAL_WEIGHTS),
            motivation=[w_choice(rng, MOTIVATION_WEIGHTS)] if not in_progress or rng.random() > 0.4 else [],
            age_bracket=None if in_progress and rng.random() < 0.3 else w_choice(rng, AGE_WEIGHTS),
            daily_commit_minutes=None if in_progress and rng.random() < 0.3 else w_choice(rng, COMMIT_WEIGHTS),
            pain_point=None if in_progress and rng.random() < 0.5 else w_choice(rng, PAIN_WEIGHTS),
            speaking_situation=None if in_progress and rng.random() < 0.5 else w_choice(rng, SPEAKING_WEIGHTS),
            past_blocker=None if in_progress and rng.random() < 0.5 else w_choice(rng, PAST_BLOCKER_WEIGHTS),
            future_regret=None if in_progress and rng.random() < 0.5 else w_choice(rng, FUTURE_REGRET_WEIGHTS),
            emotional_reaction=None if in_progress and rng.random() < 0.5 else w_choice(rng, EMOTION_WEIGHTS),
            reminder_slot=None if in_progress and rng.random() < 0.5 else w_choice(rng, REMINDER_WEIGHTS),
            paywall_seen_at=(now - timedelta(days=rng.randint(0, 30))) if paywall_seen else None,
            paywall_choice=w_choice(rng, PAYWALL_WEIGHTS) if paywall_seen else None,
            signup_source=rng.choice(SIGNUP_SOURCES),
            placement_score=None if rng.random() < 0.3 else rng.randint(0, 5),
            onboarded_at=None if in_progress else (now - timedelta(days=rng.randint(0, 30))),
            date_of_birth=date(rng.randint(1965, 2015), rng.randint(1, 12), rng.randint(1, 28)) if rng.random() > 0.3 else None,
            first_name=f"L3u{idx}",
            last_name="random",
            bio="",
            avatar_url=f"https://i.pravatar.cc/150?img={(idx % 70) + 1}",
            total_xp=total_xp,
            weekly_xp=rng.randint(0, min(total_xp, 1500)),
            streak=rng.randint(0, 60),
            league_id=min(10, max(1, total_xp // 1000 + 1)) if total_xp > 0 else None,
            layer="L3",
        ))

    return users

# =============================================================================
# SQL emitters
# =============================================================================

HEADER = """\
-- Сгенерировано scripts/gen_seed_onboarding.py — НЕ редактировать вручную.
-- Layer 1 (canonical fixtures) — UUID 'aaaa****-...'
-- Layer 2 (level × goal grid)  — UUID 'bbbb****-...'
-- Layer 3 (random volume)      — UUID 'cccc****-...'
--
-- Все юзеры детерминистичны (random.seed(42)). Регенерация:
--   python3 scripts/gen_seed_onboarding.py
"""

def emit_auth(users: list[User]) -> str:
    out = [HEADER, ""]
    out.append("-- auth.users: 1104 rows.")
    out.append("INSERT INTO public.users")
    out.append("    (id, email, username, password_hash, role, is_guest, guest_device_id, created_at)")
    out.append("VALUES")
    rows = []
    for u in users:
        password = "NULL" if u.is_guest else sql_str(PASSWORD_HASH)
        rows.append(
            f"    ({sql_str(u.user_id)}, {sql_str(u.email)}, {sql_str(u.username)}, "
            f"{password}, 'student', {sql_bool(u.is_guest)}, "
            f"{sql_str(u.guest_device_id)}, {sql_ts(u.created_at)})"
        )
    out.append(",\n".join(rows))
    out.append("ON CONFLICT (id) DO NOTHING;")
    out.append("")
    return "\n".join(out)

def emit_profiles(users: list[User]) -> str:
    out = [HEADER, ""]
    out.append("-- users.profiles: 1104 rows.")
    out.append("INSERT INTO profiles")
    out.append("    (user_id, first_name, last_name, native_lang, target_lang,")
    out.append("     bio, avatar_url, date_of_birth, timezone,")
    out.append("     proficiency_level, daily_goal_xp, motivation, signup_source,")
    out.append("     placement_score, onboarded_at, age_bracket, daily_commit_minutes,")
    out.append("     pain_point, speaking_situation, past_blocker, future_regret,")
    out.append("     emotional_reaction, reminder_slot, paywall_seen_at, paywall_choice,")
    out.append("     created_at, updated_at)")
    out.append("VALUES")
    rows = []
    for u in users:
        rows.append(
            "    ("
            + sql_str(u.user_id) + ", "
            + sql_str(u.first_name) + ", " + sql_str(u.last_name) + ", "
            + sql_str(u.native_lang) + ", " + sql_str(u.target_lang) + ", "
            + sql_str(u.bio) + ", " + sql_str(u.avatar_url) + ", "
            + sql_date(u.date_of_birth) + ", " + sql_str(u.timezone_str) + ", "
            + sql_str(u.proficiency_level) + ", " + sql_int(u.daily_goal_xp) + ", "
            + sql_text_array(u.motivation) + ", " + sql_str(u.signup_source) + ", "
            + sql_int(u.placement_score) + ", " + sql_ts(u.onboarded_at) + ", "
            + sql_str(u.age_bracket) + ", " + sql_int(u.daily_commit_minutes) + ", "
            + sql_str(u.pain_point) + ", " + sql_str(u.speaking_situation) + ", "
            + sql_str(u.past_blocker) + ", " + sql_str(u.future_regret) + ", "
            + sql_str(u.emotional_reaction) + ", " + sql_str(u.reminder_slot) + ", "
            + sql_ts(u.paywall_seen_at) + ", " + sql_str(u.paywall_choice) + ", "
            + sql_ts(u.created_at) + ", " + sql_ts(u.created_at)
            + ")"
        )
    out.append(",\n".join(rows))
    out.append("ON CONFLICT (user_id) DO NOTHING;")
    out.append("")
    return "\n".join(out)

def emit_gamification(users: list[User], rng: random.Random) -> str:
    out = [HEADER, "", "SET search_path TO gamification;", ""]
    out.append("-- user_stats: 1 per user (1104).")
    out.append("INSERT INTO user_stats")
    out.append("    (user_id, level, total_xp, weekly_xp, current_streak, max_streak,")
    out.append("     hearts, max_hearts, gems, streak_freezes, created_at, updated_at)")
    out.append("VALUES")
    stat_rows = []
    for u in users:
        level = max(1, u.total_xp // 100 + 1)
        stat_rows.append(
            f"    ({sql_str(u.user_id)}, {level}, {u.total_xp}, {u.weekly_xp}, "
            f"{u.streak}, {u.streak}, 5, 5, {u.total_xp // 100}, 0, "
            f"{sql_ts(u.created_at)}, {sql_ts(u.created_at)})"
        )
    out.append(",\n".join(stat_rows))
    out.append("ON CONFLICT (user_id) DO NOTHING;")
    out.append("")

    out.append("-- daily_goals: target из profiles.daily_goal_xp (или 20 default).")
    out.append("INSERT INTO daily_goals (user_id, target_xp, updated_at)")
    out.append("VALUES")
    goal_rows = []
    for u in users:
        target = u.daily_goal_xp or 20
        goal_rows.append(f"    ({sql_str(u.user_id)}, {target}, {sql_ts(u.created_at)})")
    out.append(",\n".join(goal_rows))
    out.append("ON CONFLICT (user_id) DO NOTHING;")
    out.append("")

    out.append("-- daily_goal_progress: текущий день для всех завершивших онбординг.")
    out.append("INSERT INTO daily_goal_progress (user_id, date, xp_earned, goal, completed, completed_at)")
    out.append("VALUES")
    today = date(2026, 5, 28)
    progress_rows = []
    for u in users:
        if u.onboarded_at is None:
            # незавершённые — нет progress записи
            continue
        target = u.daily_goal_xp or 20
        earned = rng.randint(0, target * 2)
        completed = earned >= target
        completed_at = sql_ts(datetime.combine(today, datetime.min.time(), tzinfo=timezone.utc) + timedelta(hours=rng.randint(8, 22))) if completed else "NULL"
        progress_rows.append(
            f"    ({sql_str(u.user_id)}, {sql_date(today)}, {earned}, {target}, "
            f"{sql_bool(completed)}, {completed_at})"
        )
    if progress_rows:
        out.append(",\n".join(progress_rows))
        out.append("ON CONFLICT (user_id, date) DO NOTHING;")
    out.append("")

    out.append("-- streak_history: последние N дней для активных юзеров (streak > 0).")
    streak_rows = []
    for u in users:
        if u.streak <= 0:
            continue
        # генерим streak дней назад от today
        for d_back in range(1, min(u.streak, 14) + 1):
            d = today - timedelta(days=d_back)
            streak_rows.append(
                f"    ({sql_str(u.user_id)}, {sql_date(d)}, TRUE, FALSE)"
            )
    if streak_rows:
        out.append("INSERT INTO streak_history (user_id, date, completed, used_freeze)")
        out.append("VALUES")
        out.append(",\n".join(streak_rows))
        out.append("ON CONFLICT (user_id, date) DO NOTHING;")
    out.append("")

    out.append("-- xp_transactions: распределяем total_xp на 1-5 транзакций per user.")
    xp_rows = []
    for u in users:
        if u.total_xp <= 0:
            continue
        n_tx = rng.randint(1, 5)
        per = max(1, u.total_xp // n_tx)
        remainder = u.total_xp - per * n_tx
        for i in range(n_tx):
            amount = per + (remainder if i == 0 else 0)
            reason = rng.choice(["step_completed", "lesson_completed", "quiz_completed", "daily_goal", "practice"])
            ts = u.created_at + timedelta(days=rng.randint(0, 30), hours=rng.randint(0, 23))
            xp_rows.append(
                f"    ({sql_str(u.user_id)}, {amount}, {sql_str(reason)}, {sql_ts(ts)})"
            )
    if xp_rows:
        out.append("INSERT INTO xp_transactions (user_id, amount, reason, created_at)")
        out.append("VALUES")
        out.append(",\n".join(xp_rows))
        out.append("ON CONFLICT DO NOTHING;")
    out.append("")
    return "\n".join(out)

def emit_social(users: list[User], rng: random.Random) -> str:
    out = [HEADER, "", "SET search_path TO social;", ""]

    # cohorts — по 1 на лигу.
    out.append("-- cohorts: 1 cohort per league (10 total).")
    cycle_start = "2026-05-25 00:00:00+00"
    cycle_end = "2026-05-31 23:59:59+00"
    out.append("INSERT INTO cohorts (id, league_id, cycle_start_at, cycle_end_at, is_finished, member_count)")
    out.append("VALUES")
    cohort_rows = []
    for league_id, _ in LEAGUES:
        cohort_rows.append(
            f"    ({sql_str(COHORT_UUIDS[league_id])}, {league_id}, "
            f"'{cycle_start}', '{cycle_end}', FALSE, 0)"
        )
    out.append(",\n".join(cohort_rows))
    out.append("ON CONFLICT (id) DO NOTHING;")
    out.append("")

    # user_leagues — топ-200 по weekly_xp, кто завершил онбординг.
    eligible = [u for u in users if u.league_id is not None and u.onboarded_at is not None]
    eligible.sort(key=lambda u: u.weekly_xp, reverse=True)
    top = eligible[:200]
    if top:
        out.append("-- user_leagues: топ-200 active users по weekly_xp.")
        out.append("INSERT INTO user_leagues (user_id, league_id, cohort_id, weekly_xp, joined_at)")
        out.append("VALUES")
        ul_rows = []
        for u in top:
            ul_rows.append(
                f"    ({sql_str(u.user_id)}, {u.league_id}, "
                f"{sql_str(COHORT_UUIDS[u.league_id])}, {u.weekly_xp}, "
                f"{sql_ts(u.created_at)})"
            )
        out.append(",\n".join(ul_rows))
        out.append("ON CONFLICT (user_id) DO NOTHING;")
        out.append("")

    # friendships — небольшой граф между fixtures L1/L2 + part of L3.
    fixtures = [u for u in users if u.layer in ("L1", "L2") and not u.is_guest]
    rng.shuffle(fixtures)
    pairs: set[tuple[str, str]] = set()
    target_pairs = 600
    attempts = 0
    while len(pairs) < target_pairs and attempts < target_pairs * 5:
        a, b = rng.sample(fixtures, 2)
        u1, u2 = sorted([a.user_id, b.user_id])
        pairs.add((u1, u2))
        attempts += 1

    if pairs:
        out.append("-- friendships: ~600 пар между fixtures (L1+L2).")
        out.append("INSERT INTO friendships (user_id_1, user_id_2, status, requested_by, created_at)")
        out.append("VALUES")
        f_rows = []
        for u1, u2 in pairs:
            status = w_choice(rng, {"accepted": 70, "pending": 20, "blocked": 10})
            requested_by = u1 if rng.random() < 0.5 else u2
            f_rows.append(
                f"    ({sql_str(u1)}, {sql_str(u2)}, {sql_str(status)}, "
                f"{sql_str(requested_by)}, NOW())"
            )
        out.append(",\n".join(f_rows))
        out.append("ON CONFLICT (user_id_1, user_id_2) DO NOTHING;")
        out.append("")

    return "\n".join(out)

def emit_srs(users: list[User], rng: random.Random) -> str:
    out = [HEADER, "", "SET search_path TO srs;", ""]
    # 100 active users получают SRS-карточки (реалистично — практика нужна не всем).
    active = [u for u in users if u.onboarded_at is not None and u.total_xp > 100]
    rng.shuffle(active)
    targets = active[:100]

    if not targets:
        out.append("-- (no eligible users for SRS seed)")
        return "\n".join(out)

    out.append(f"-- user_srs_items: ~25 карточек на каждого из {len(targets)} active users.")
    out.append("INSERT INTO user_srs_items")
    out.append("    (user_id, item_type, item_id, easiness_factor, interval_days,")
    out.append("     repetitions, next_review_at, total_reviews, correct_reviews,")
    out.append("     incorrect_reviews, strength, created_at, updated_at)")
    out.append("VALUES")
    rows = []
    item_seq = 0
    now = datetime(2026, 5, 28, 12, 0, 0, tzinfo=timezone.utc)
    for u in targets:
        n = rng.randint(10, 40)
        for _ in range(n):
            item_seq += 1
            item_type = rng.choices(["vocabulary", "step", "phrase"], weights=[60, 30, 10], k=1)[0]
            item_id = f"deadbeef-0000-0000-0000-{item_seq:012d}"
            ef = round(rng.uniform(1.3, 3.0), 2)
            reps = rng.randint(0, 10)
            interval = 0 if reps == 0 else min(180, int(reps * ef))
            total = rng.randint(reps, reps + 5)
            correct = reps
            incorrect = total - correct
            strength = round((correct / max(total, 1)) * min(1.0, reps / 10.0), 4)
            next_review = now + timedelta(days=rng.randint(-5, 30))
            rows.append(
                f"    ({sql_str(u.user_id)}, {sql_str(item_type)}, {sql_str(item_id)}, "
                f"{ef}, {interval}, {reps}, {sql_ts(next_review)}, "
                f"{total}, {correct}, {incorrect}, {strength}, "
                f"{sql_ts(u.created_at)}, {sql_ts(now)})"
            )
    out.append(",\n".join(rows))
    out.append("ON CONFLICT (user_id, item_type, item_id) DO NOTHING;")
    out.append("")
    return "\n".join(out)

# =============================================================================
# Main
# =============================================================================

def main() -> None:
    rng = random.Random(42)
    print("Generating Layer 1 (canonical fixtures)...")
    l1 = gen_layer1()
    print(f"  → {len(l1)} users")

    print("Generating Layer 2 (level × goal grid)...")
    l2 = gen_layer2(rng)
    print(f"  → {len(l2)} users")

    print("Generating Layer 3 (volume random)...")
    l3 = gen_layer3(rng, n=1000)
    print(f"  → {len(l3)} users")

    users = l1 + l2 + l3
    print(f"Total: {len(users)} users")

    targets = {
        "services/auth-service/seeds/002_onboarding_users.sql": emit_auth(users),
        "services/user-service/seeds/002_onboarding_profiles.sql": emit_profiles(users),
        "services/gamification-service/seeds/002_onboarding_users.sql": emit_gamification(users, rng),
        "services/social-service/seeds/001_onboarding_leagues.sql": emit_social(users, rng),
        "services/srs-service/seeds/001_onboarding_items.sql": emit_srs(users, rng),
    }

    for rel, content in targets.items():
        path = REPO_ROOT / rel
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content, encoding="utf-8")
        size_kb = len(content) / 1024
        n_lines = content.count("\n")
        print(f"  wrote {rel}: {n_lines} lines, {size_kb:.1f} KB")

    print("\nDone. Run ./bin/seed.sh to apply.")

if __name__ == "__main__":
    main()
