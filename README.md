# Jekyll Blog

This repository contains a Jekyll blog deployed with Cloudflare Pages. The Ruby version in `.ruby-version` is shared by Cloudflare Pages and the Nix development shell.

## Local development with Nix

1. Enter the development shell:

   ```bash
   nix develop
   ```

2. Install Ruby gems:

   ```bash
   bundle install
   ```

3. Run the site:

   ```bash
   bundle exec jekyll serve --livereload
   ```

4. Open <http://127.0.0.1:4000>.

## Deploy on Cloudflare Pages

Cloudflare Pages deploys the `main` branch with these settings:

- Build command: `bundle exec jekyll build`
- Build output directory: `_site`

Cloudflare installs the dependencies from `Gemfile.lock` and selects the Ruby version from `.ruby-version`.
