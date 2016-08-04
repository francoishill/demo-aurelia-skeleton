#!/bin/sh

wget -O skeleton.zip $ZIP_URL

unzip skeleton.zip -d .
mkdir /app
mv ./skeleton-navigation-master/$SKELETON_SUBFOLDER/* /app/
cd /app

npm install
npm install -g gulp
npm install -g jspm
jspm install -y

gulp export
gulp serve-export