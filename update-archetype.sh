#!/bin/sh

echo "Updating Archetype-Compass..."

rm -rf stylesheets &&\
git clone https://github.com/kwaledesign/Archetype-Utilities.git stylesheets &&\
cd stylesheets &&\
rm -rf .git README.md &&\
cd ..

echo "Archetype-Utilities update complete!"

cd templates &&\
rm -rf project &&\
git clone https://github.com/kwaledesign/Archetype.git project &&\
cd project &&\
rm -rf .git .gitignore CHANGELOG.md CONTRIBUTING.md README.md archetype-setup.sh bower-integration.md config.rb &&\
cd sass &&\
cp -rf * ../ &&\
cd .. &&\
rm -rf sass &&\
cd ../..

echo "Archetype update complete!"

echo "Archetype-Compass dependencies are up to date. Please delete the current gem and edit your gemspec file to reflect these changes and bump the version number. You'll also want to add a corresponding git tag and then push your updated gem."

