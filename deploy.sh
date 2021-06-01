#!/usr/bin/env sh
echo "Re-building site"

yarn build

sleep 1000

git init
git add .
git commit -m "new deploy"

git push