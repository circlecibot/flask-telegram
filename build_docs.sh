#!/bin/sh

cd ./docs
make html

git checkout gh-pages

mv ./_build/html/* ../*

git add *.html searchindex.js objects.inv .buildinfo _static/ _sources/
git checkout -m "updated docs html build."
git push origin gh-pages

git checkout -f master