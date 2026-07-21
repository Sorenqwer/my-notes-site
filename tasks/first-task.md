# First Codex Task: Information & Beliefs

## Objective

Create a foundational page that connects probability and information to strategic beliefs. The page should help a reader move from the existing probability material into Bayesian games, signaling, perfect Bayesian equilibrium, and sequential equilibrium.

## Proposed location

`foundations/information-and-beliefs.qmd`

Link it from `foundations/index.qmd` and from the most relevant existing game-theory index page. Do not add a top-level navbar item for this first iteration.

## Before editing

- Read `AGENTS.md` and `tasks/architecture.md`.
- Inspect `foundations/probability.qmd`, `foundations/information-measure-lite.qmd`, `notes/game-types/bayesian.qmd`, `notes/game-types/signaling.qmd`, and the PBE/sequential-equilibrium pages.
- Search for existing explanations before writing new material; link or synthesize instead of duplicating whole sections.

## Suggested outline

1. States, uncertainty, and what a player knows.
2. Information partitions and information sets.
3. Priors, signals, likelihoods, and posteriors.
4. Bayes’ rule in strategic settings.
5. On-path versus off-path beliefs.
6. How beliefs enter Bayesian Nash, PBE, and sequential equilibrium.
7. A small worked example and a concept map.
8. Links to the existing detailed pages.

## Acceptance criteria

- The page has a clear purpose distinct from information measurement and psychology belief formation.
- Notation matches the surrounding foundations/game-theory pages.
- Formal or historical claims use verified references; no citations are invented.
- At least one compact example shows a prior updated after a signal or action.
- Cross-links use relative `.qmd` paths and no substantial page is left orphaned.
- The existing style and deployed URL structure remain intact.
- `quarto render` succeeds and generated `docs/` output is reviewed.
- The new page is visually checked at desktop and mobile widths, including any Mermaid diagram.

## Non-goals

- Rewriting the existing Bayesian-game, signaling, PBE, or sequential-equilibrium pages.
- Expanding the navbar.
- Adding a new framework or interactive application.
- Completing the entire citation audit in the same change.

## Suggested handoff note

When complete, update `tasks/backlog.md` with the new page path, cross-links added, sources used, render result, and any duplication or citation follow-up discovered.
