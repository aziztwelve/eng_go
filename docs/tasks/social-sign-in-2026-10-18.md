# Native Apple / Google sign-in

Implemented separately from the retired guest OAuth stub. The old RPC now fails closed; `guest_fake` and unverified ID tokens cannot issue credentials.

## Protocol

- `POST /api/v1/auth/social/{google|apple}/challenge` → `{challenge_id, nonce, expires_in:300}`.
- `POST /api/v1/auth/social/google` → `{challenge_id, authorization_code}`.
- `POST /api/v1/auth/social/apple` → `{challenge_id, identity_token, display_name?}`.
- Success returns ordinary LingoIQ `{access_token, refresh_token, expires_at, created}`. Existing refresh/profile API remains unchanged.
- Native Google obtains a fresh one-time serverAuthCode; auth-service exchanges it using a server-only Web client secret. Native Apple binds server nonce and state.
- Both providers: RS256 signature/JWKS, issuer, audience, expiry, issued-at and subject validation. Google authorized-party allowlist; Apple nonce hash. Challenges are shared in Postgres, bound to provider, expire in 5 minutes, and are atomically deleted before issuing a session. Private tokens and provider secrets are never logged.
- Identity lookup uses `(oauth_provider, oauth_sub)`, not a token digest/email. Repeat Apple sign-in may omit email. New accounts require verified provider email; email collisions are 409, never an implicit account merge.
- New signup at onboarding step 6 syncs the retained local choices; existing accounts load their own server profile. A new account started from login returns to the six-screen onboarding.

## Activation (currently pending external setup)

The user confirmed that LingoIQ OAuth clients and Apple capability are not configured. Existing Darda mobile clients belong to `com.aziztwelve.darda`; do not reuse those Android/iOS IDs or accept Darda audiences. Providers intentionally remain disabled until LingoIQ configuration is supplied. No Darda server/application was changed.

Google can use the same Cloud project as Darda, but needs Android client(s) for package `com.aziztwelve.engmob` and the installed/Play signing SHA-1s, plus its own iOS client for bundle `com.aziztwelve.engmob`. Configure an approved Web client/secret pair for server exchange. Server `GOOGLE_SIGN_IN_AUTHORIZED_PARTY_IDS` must contain only the intended LingoIQ authorized parties; do not blindly copy Darda's list.

Apple needs Sign in with Apple enabled for `com.aziztwelve.engmob` in Apple Developer, with an updated provisioning profile/native iOS build. Then set `APPLE_SIGN_IN_CLIENT_IDS=com.aziztwelve.engmob`.

Backend variables are documented in `deploy/env/auth.env.template`; mobile needs `EXPO_PUBLIC_GOOGLE_WEB_CLIENT_ID` and `EXPO_PUBLIC_GOOGLE_IOS_CLIENT_ID`. Client secrets never enter mobile/EAS public env. Apple ID-token verification uses public JWKS, not the Darda private key. Apple refresh-token revocation/server notification handling for App Store account lifecycle is not implemented by this sign-in change; complete that before a production Apple release.

## Verification

- `go -C services/auth-service test -race -p 1 ./...`: passed, signed RSA fixtures and fake Google token endpoint; legacy stub rejection, invalid signatures/claims/audiences/nonce/azp, repeat Apple missing email, replay and existing identity covered.
- `go -C services/gateway test -p 1 ./...`: passed, malformed input/unknown provider and disabled provider status mapping covered.
- Both services `go build -p 1 ./...`: passed.
- `python3 scripts/test_social_auth_database.py --ssh root@167.233.103.233`: passed inside BEGIN/ROLLBACK; identity/email uniqueness and challenge provider/expiry/replay behavior tested against actual schema; no fixture accounts persisted.
- Mobile: TypeScript, scoped ESLint, six OAuth tests with mocked native providers passed. Physical Android has RNGoogleSignin native module; login/signup show only Google. Actual tap safely reports missing configuration without submitting account credentials. Real provider consent/sign-in cannot be exercised until external setup; iOS behavior verified by code/unit tests, not a physical iPhone.

Protocol references: https://developers.google.com/identity/sign-in/android/backend-auth and https://developer.apple.com/documentation/signinwithapple/verifying-a-user
