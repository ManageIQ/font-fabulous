#!/bin/bash
set -x
HASH=$(git rev-parse HEAD)
mv -f assets tmp
git checkout origin/gh-pages
mv -f preview.html index.html
rm -rf assets
mv -f tmp assets
git add index.html assets/fonts assets/stylesheets
git commit -m 'GitHub pages build from ${HASH}'
git push https://$GITHUB_AUTH@github.com/ManageIQ/font-fabulous HEAD:gh-pages
set +x
