# Margins of Rationality

`my-notes-site` is the Quarto source for **Margins of Rationality**, a personal study website covering game theory, mathematical foundations, criminology, psychology, and related notes.

Published site: <https://sorenqwer.github.io/my-notes-site/>

## Requirements

- [Quarto CLI](https://quarto.org/docs/get-started/) (last validated locally with 1.8.27)
- A modern browser for preview and visual checks
- Network access to load the Google Fonts imported by `styles.css`

There is no package-install step, application server, database, or test framework.

## Local development

```bash
quarto preview
```

Quarto prints the local preview address and refreshes it as source files change.

## Build and validation

```bash
quarto render
```

or, using the included shortcuts:

```bash
make preview
make check
```

`make check` performs a full Quarto render. There are no separate lint, typecheck, or automated test commands because this is a content-first Quarto project. Review render warnings and visually inspect changed pages, navigation, Mermaid diagrams, and mobile layout.

## Source and output

- `_quarto.yml`: site URL, navbar, Mermaid support, CSS, and output configuration.
- `index.qmd`, `notes/`, `foundations/`, `criminology/`, `psychology/`, `pdfs/`, `posts/`: editable source content.
- `styles.css`: site-wide visual system.
- `_includes/diagram-zoom.html`: client-side diagram/image zoom behavior.
- `references.bib`: shared bibliography.
- `docs/`: generated website committed for GitHub Pages. Do not edit generated HTML directly.
- `tasks/`: private project guidance and roadmap; it is not site content.

After changing source or configuration, run `quarto render` and review both the source diff and the corresponding generated `docs/` diff.

## Environment variables

No environment variables are required, so the repository intentionally has no `.env.example`. If a future feature introduces a secret or deployment setting, document it here and keep real credentials out of Git.

## Project guide

- [Contributor instructions](AGENTS.md)
- [Architecture](tasks/architecture.md)
- [Roadmap](tasks/backlog.md)
- [First Codex task](tasks/first-task.md)

Do not commit or push changes unless that action is explicitly requested.
