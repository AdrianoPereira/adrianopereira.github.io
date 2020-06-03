#!/bin/bash

# ECHO
jekyll clean
sass src/styles/main.scss assets/css/style.css
rm -rf .sass-cache
rm assets/css/style.css.map
if [ $# -gt 0 ]; then
  git add .
  git commit -m "$1"
  git push origin master
else
  echo "Make deploy with commit message..."
fi
