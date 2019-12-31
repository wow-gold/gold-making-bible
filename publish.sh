#!/bin/bash
if [[ `git status --porcelain` ]]
then
  echo 'Please commit everything before you publish'
else
  bundle exec jekyll build
  git commit -m "Build for publish"
  git subtree push --prefix _site origin gh-pages
fi