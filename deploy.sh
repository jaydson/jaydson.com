#!/bin/sh
if [[ git status -s ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "[ Deleting old publication ]"
rm -rf public
mkdir public

echo "[ Generating Hugo website ]"
hugo --theme=casper

echo "[ Git commit ]"
git add --all && git commit -m "Publishing to now"

echo "[ Creating now alias config file ]"
echo "{
	\"name\": \"jaydson.com\",
	\"alias\": \"jaydson.com\"
}" > ./public/now.json

echo "[ Publishing to now ]"
now ./public && now alias