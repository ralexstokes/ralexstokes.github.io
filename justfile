default:
    @just --list

install:
    bundle install

run:
    bundle exec jekyll serve --livereload

build:
    bundle exec jekyll build
