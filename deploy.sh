#!/bin/sh
echo "[ Deleting old publication ]"
rm -rf public
mkdir public

echo "[ Generating Hugo website ]"
hugo --theme=casper

echo "[ Creating now alias config file ]"
echo "{
	\"name\": \"jaydson.com\",
	\"alias\": \"jaydson.com\"
}" > ./public/now.json

echo "[ Publishing to now ]"
now ./public && now alias