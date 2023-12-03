#! /bin/bash

set -euo pipefail

rm -rf dist
npm run build

rm -rf /tmp/gh-pages
mkdir /tmp/gh-pages
cp -r index.html ./dist /tmp/gh-pages
cd /tmp/gh-pages
git init
git checkout -b gh-pages

git remote add origin git@github.com:partizanen69/goit-advancedjs-hw-05.git

git add -A
git commit -m "deploy"
git push -f --set-upstream origin gh-pages




