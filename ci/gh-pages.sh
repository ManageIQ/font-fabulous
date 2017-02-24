#!/bin/bash
set -x
HASH=$(git rev-parse HEAD)
mv -f assets tmp
git remote add upstream https://github.com/ManageIQ/font-fabulous.git
git fetch upstream
git checkout upstream/gh-pages
mv -f preview.html index.html
rm -rf assets
mv -f tmp assets
git add index.html assets/fonts assets/stylesheets
git commit -m "GitHub pages build from ${HASH}"
set +x
echo "git push origin HEAD:gh-pages"
git push https://$GITHUB_AUTH@github.com/ManageIQ/font-fabulous.git HEAD:gh-pages > /dev/null
