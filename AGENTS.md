# AGENTS.md

## Purpose
This repository is a Jekyll blog deployed with Cloudflare Pages.

## Stack
- Jekyll and its plugins via Bundler (`Gemfile`)
- Site config in `_config.yml`
- Ruby version shared by Cloudflare Pages and Nix in `.ruby-version`
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
- Cloudflare Pages builds with `bundle exec jekyll build`.
- Cloudflare Pages publishes the generated `_site/` directory.
