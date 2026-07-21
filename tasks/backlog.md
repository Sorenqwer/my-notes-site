# Roadmap

This roadmap reflects the current checkout rather than the older conversational plan.

## Implemented and worth preserving

- Quarto website published from tracked `docs/` output.
- Canonical `site-url`, shared styling, Mermaid support, and diagram/image zoom behavior.
- Navbar sections for Home, Notes, Foundations, PDFs, Criminology, and Psychology.
- Substantial criminology and psychology source trees.
- Equilibrium overview plus Nash, Bayesian Nash, subgame perfect, perfect Bayesian, sequential, trembling-hand perfect, proper, correlated, rationalizability, and babbling pages.
- A compact equilibrium cheat sheet.

## Next priorities

### P1 — Information & Beliefs foundation page

Add a standalone bridge page explaining states, signals, information sets, priors/posteriors, Bayes updating, and the role of beliefs in strategic reasoning. Keep it distinct from the existing information-measure and psychology belief-learning pages. See `tasks/first-task.md`.

### P1 — Cross-link the existing refinement sequence

Audit the equilibrium overview, cheat sheet, and individual refinement pages so the progression from Nash through dynamic/incomplete-information refinements is consistent and easy to navigate. Do not recreate pages that already exist.

### P1 — Citation and bibliography audit

Identify formal definitions and empirical claims that need sources, verify bibliographic metadata, and add citations without inventing references. Start with one content cluster rather than attempting the entire site at once.

### P2 — Generated-output hygiene

Keep `.quarto/` untracked, keep `docs/` tracked, and watch for unexpected generated deletions or stale pages after each render.

### P2 — Navigation and orphan-page audit

Check that all substantial pages are reachable from their section index and that links remain valid under the GitHub Pages subpath.

### P2 — Responsive and diagram QA

Review large tables, card grids, math blocks, and Mermaid diagrams on narrow screens. Preserve the existing font-size safeguard that prevents Mermaid label clipping.

## Explicit non-goals

- Migrating away from Quarto.
- Redesigning the visual identity.
- Hand-editing generated HTML in `docs/`.
- Replacing the author’s notes with generic summaries.
- Fabricating citations to make unfinished pages look complete.
