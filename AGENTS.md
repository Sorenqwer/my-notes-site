# Working on Margins of Rationality

## Purpose

This repository is a personal, public-facing study site built with Quarto. Preserve its identity as **Margins of Rationality**, its calm book-page styling, its existing deployed URL structure, and its role as an evolving knowledge base rather than a generic blog template.

These instructions apply to the whole repository.

## Start here

1. Read `README.md`, `tasks/architecture.md`, and `tasks/backlog.md`.
2. Inspect `git status` before editing. Preserve unrelated user changes and unpublished notes.
3. Use the existing Quarto structure. Do not migrate to another static-site framework.
4. Locate the source `.qmd` file for a page. Never fix generated `docs/*.html` directly.

## Commands

```bash
quarto preview
quarto render
make preview
make build
make check
```

`make check` is a full render. The project has no separate dependency install, lint, typecheck, or automated test command. Render warnings plus focused browser inspection are the current validation workflow.

## Architecture

- `_quarto.yml`: website settings, canonical site URL, navbar, output directory, Mermaid, shared CSS, and post-body include.
- Top-level `.qmd` files: home/about pages.
- `notes/`: game theory, game types, metrics, and equilibrium concepts.
- `foundations/`: mathematical and reasoning foundations.
- `criminology/`: structured criminology notes, mechanisms, institutions, models, topics, and toolkit pages.
- `psychology/`: foundations, topic pages, and cross-disciplinary overlaps.
- `pdfs/` and `posts/`: downloadable reading material and dated posts.
- `styles.css`: typography, paper-panel layout, cards, Mermaid handling, and zoom styling.
- `_includes/diagram-zoom.html`: shared zoom behavior.
- `docs/`: generated GitHub Pages output. It is intentionally tracked; do not hand-edit it.
- `tasks/`: architecture, roadmap, and scoped work briefs for Codex.

## Content conventions

- Write public site content in clear English unless the task explicitly asks for another language.
- Match the surrounding page’s depth, notation, heading style, and use of diagrams/cards.
- Prefer relative `.qmd` links in source. Let Quarto produce final `.html` links.
- Keep filenames lowercase and hyphenated.
- Use Mermaid when it clarifies a real conceptual relationship, not as decoration.
- Keep equations valid for Quarto/Pandoc math rendering.
- Add a page to an existing index or navigation path when it would otherwise be orphaned.
- Preserve deployed paths. Rename or move a published source page only with an explicit redirect/link plan.

## Accuracy and source integrity

- Do not fabricate citations, quotations, theorem names, empirical findings, or bibliographic metadata.
- Distinguish intuition, formal definition, example, and empirical claim.
- When a factual or academic claim needs support, use a real source and update `references.bib` consistently.
- Preserve the author’s original argument and voice unless the task asks for substantive rewriting.
- Treat PDFs and personal notes as user content; never remove or replace them during cleanup.
- If a concept is uncertain or contested, say so in the page rather than presenting a guessed consensus.

## Styling and generated output

- Reuse the variables and component patterns in `styles.css` before adding new styling.
- Check wide and narrow viewport behavior after layout changes.
- Do not force Mermaid text sizes in ways that clip labels; the existing CSS explains this constraint.
- Run `quarto render` after source, configuration, include, bibliography, or style changes.
- Review generated `docs/` changes for unexpected deletions or path changes.
- Keep `.quarto/` and other caches untracked. Keep `docs/` tracked because GitHub Pages serves it.

## Definition of done

- The source content or configuration implements the requested scope without a framework migration.
- `quarto render` completes successfully.
- Changed pages, navbar links, diagrams, and responsive layout receive a focused browser check.
- Generated `docs/` output is refreshed and reviewed.
- The relevant roadmap/task note is updated if status or scope changed.
- `git status` contains only intentional changes. Do not commit or push unless explicitly asked.
