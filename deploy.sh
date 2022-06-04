#!/usr/bin/env sh

# navigate into the build output directory
cd dist

git init
git checkout -b gh-pages
git add -A
git commit -m 'deploy'

git push -f git@github.com:mugosagi/mugosagi.github.io.git gh-pages

cd -