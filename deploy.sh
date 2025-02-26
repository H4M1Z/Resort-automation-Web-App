#!/bin/bash

# Build Flutter web
flutter build web

# Navigate into the build/web directory
cd build/web

# Initialize git, add files, and push to the gh-pages branch
git init
git remote add origin https://github.com/H4M1Z/Resort-automation-Web-App.git
git checkout -b gh-pages
git add .
git commit -m "Deploy Flutter Web app to GitHub Pages"
git push --force origin gh-pages
