#!/bin/bash

cat data.json | jq -c '.[]' | while read -r obj; do
  name=$(echo "$obj" | jq -r '.name')
  photo=$(echo "$obj" | jq -r '.photo')

  # Sluggify the name (convert to lowercase, replace spaces with dashes, remove special chars)
  slug=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed 's/[^a-z0-9-]//g')

  # Download the image using curl
  curl -s -o "${slug}.jpg" "$photo"

  echo "Downloaded: ${slug}.jpg"
done