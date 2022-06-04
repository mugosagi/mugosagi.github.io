#!/usr/bin/env sh

# navigate into the build output directory
cd dist

git init
git checkout -b master
git add -A
git commit -m 'deploy'

git push -f git@github.com:mugosagi/mugosagi.github.io.git master

cd -