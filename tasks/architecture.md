# Architecture

## Publishing model

This is a Quarto website whose editable sources live in the repository and whose generated output is written to `docs/`. The configured `site-url` is `https://sorenqwer.github.io/my-notes-site/`, so the `docs/` directory is intentionally versioned for GitHub Pages.

The central rule is:

> Edit source and shared assets, render with Quarto, then review generated output. Never treat generated HTML as the source of truth.

## Content map

| Source area | Purpose |
| --- | --- |
| `index.qmd`, `about.qmd` | Entry and author/context pages. |
| `notes/` | Game theory, equilibrium concepts, game types, and metrics. |
| `foundations/` | Probability, optimization, linear algebra, convexity, fixed points, dynamic reasoning, and information foundations. |
| `criminology/` | Study guide, stylized facts, foundations, mechanisms, institutions, models, topics, and toolkit material. |
| `psychology/` | Psychology foundations, topic notes, and overlaps with neighboring disciplines. |
| `pdfs/` | Index and downloadable PDF material. |
| `posts/` | Dated posts and listing feed. |

The navbar currently exposes Home, Notes, Foundations, PDFs, Criminology, and Psychology. Psychology is implemented, not merely planned.

## Shared presentation

`_quarto.yml` enables Mermaid, applies `styles.css`, and injects `_includes/diagram-zoom.html` after the body. The stylesheet owns the script/serif typography, background image, book-page panel, card layouts, Mermaid font safeguards, zoom affordances, and responsive behavior.

Prefer extending these shared patterns instead of embedding per-page CSS. Page-specific classes are acceptable when the page has a real layout need and the shared stylesheet remains understandable.

## Links and assets

Source pages should link to other sources with relative `.qmd` paths. Assets should use repository-relative paths that work both in preview and under the configured GitHub Pages subpath. A full render is the authoritative check for cross-page links, bibliography resolution, Mermaid syntax, and asset copying.

## Generated and cached files

- `docs/` is generated but intentionally tracked for deployment.
- `.quarto/` is a disposable local cache and must remain ignored/untracked.
- `_site/` is ignored because this project’s configured output is `docs/`.
- `tasks/` contains repository guidance, not public site content.

## Environment and dependencies

The only required build tool is the Quarto CLI. There is no Node, Python, or R dependency declared by the current source, and no environment variables are required. External Google Fonts are imported at page load; the serif/cursive fallback stack preserves readability when they are unavailable.

## Validation strategy

1. Run `quarto render` (or `make check`).
2. Treat warnings as actionable until understood.
3. Inspect the source diff and the corresponding `docs/` diff.
4. Preview changed pages at desktop and mobile widths.
5. Exercise navbar links, local cross-links, Mermaid zoom, math, citations, and downloads affected by the change.
