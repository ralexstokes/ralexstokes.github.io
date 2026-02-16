# GitHub Pages Blog

This repository uses the default GitHub Pages blog stack: Jekyll via the `github-pages` gem.

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

## Deploy on GitHub Pages

For a user/organization site (`<username>.github.io`), push to `main` and enable Pages to deploy from the branch.
