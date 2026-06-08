# Guided Clarity — Texoma Chat Prototype

A clickable, self-contained design prototype for the Medefy / Texoma mobile experience: an AI-chat ("Navigator") and benefits-navigation flow with escalation to a human Care Guide.

**Live demo:** https://gunnar116.github.io/Medefy-Mobile-Texoma-app/

## What's here

- `index.html` — the entire prototype in one file (React 18 via UMD + in-browser Babel, no build step). 117 unique member-facing screens organized into pages TX 00–TX 12: chat lifecycle, Benefits / Claims / Rx / Documents / Insurance Card, Find Care, Appointments & Care Tasks, Needs Attention (prior-auth), Help Center, Profile & Settings, and the full auth / signed-out flows.
- `texoma-figma-qa-report.md` — QA reconciliation between the HTML routes and the Figma import (file `xTGfkMrnyjIhb4rbry5laG`).

## Running locally

Just open `index.html` in a browser — no install or server required.

## Notes

- Design tokens (brand blue `#2D8DFD`, etc.) mirror the production app's `src/constants/colors.ts`.
- This is a prototype for review and is not part of the shipping React Native app.
