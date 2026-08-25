default:
    @just --list

install:
    bundle install

run:
    bundle exec jekyll serve --livereload

# Run locally with draft posts included
run-drafts:
    bundle exec jekyll serve --livereload --drafts

build:
    bundle exec jekyll build

# Create a new post dated today
post title:
    bundle exec jekyll post "{{title}}"

# Create a new unpublished draft
draft title:
    bundle exec jekyll draft "{{title}}"

# Publish a draft with today's date
publish draft-path:
    bundle exec jekyll publish "{{draft-path}}"
