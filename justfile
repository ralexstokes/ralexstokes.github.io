default:
    @just --list

install:
    bundle install

run:
    bundle exec jekyll serve --livereload

build:
    bundle exec jekyll build

# Create a new post dated today
post title:
    bundle exec jekyll post "{{title}}"
