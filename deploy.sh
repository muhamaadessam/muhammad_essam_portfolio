#!/bin/bash

# clean and get dependencies
#flutter clean
#flutter pub get

# Build the Flutter web app
flutter build web

# Navigate to the built files
#cp web/404.html build/web/
cd build/web

# Initialize a temporary repo and push to GitHub Pages
git init
git add .
git commit -m "Update Portfolio"
git remote add deploy git@github.com:muhamaadessam/muhamaadessam.github.io.git
git push deploy main --force

# Return to project root
cd ../..