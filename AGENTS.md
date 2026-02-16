# AGENTS.md

## Purpose
This repository is a GitHub Pages blog powered by Jekyll.

## Stack
- Jekyll via the `github-pages` gem (`Gemfile`)
- Site config in `_config.yml`
- Nix development shell in `flake.nix`

## Local workflow
1. Enter the dev shell:
   ```bash
   nix develop
   ```
2. Install/update gems:
   ```bash
   bundle install
   ```
3. Run locally:
   ```bash
   bundle exec jekyll serve --livereload
   ```
4. Validate before commit:
   ```bash
   bundle exec jekyll build
   ```

## Content conventions
- Posts live in `_posts/` with filename format `YYYY-MM-DD-title.md`.
- Use valid YAML front matter on every page/post.

## Do not commit generated files
- `_site/`
- `vendor/`
- `.bundle/`

## Deployment
- Push to `main` on `ralexstokes/ralexstokes.github.io`.
- GitHub Pages serves the site from the default branch for this user site repo.
