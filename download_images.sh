#!/bin/bash

# Check if folder name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <folder_name>"
  exit 1
fi

# Create folder if it doesn't exist
mkdir -p "display-photos/$1"

cat data.json | jq -c '.[]' | while read -r obj; do
  name=$(echo "$obj" | jq -r '.name')
  photo=$(echo "$obj" | jq -r '.photo')

  # Sluggify the name (convert to lowercase, replace spaces with dashes, remove special chars)
  slug=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed 's/[^a-z0-9-]//g')

  # Skip base64 encoded images
  if [[ "$photo" == data:* ]]; then
    echo "Skipping base64 image for: $name"
    continue
  fi

  # Skip if photo is not a valid URL
  if [[ "$photo" != http* ]]; then
    echo "Skipping invalid URL: $photo"
    continue
  fi

  # Download the image using curl into the specified folder
  if curl -s -L -o "display-photos/$1/${slug}.jpg" "$photo"; then
    echo "Downloaded: $1/${slug}.jpg"
  else
    echo "Failed to download: $1/${slug}.jpg"
    rm -f "display-photos/$1/${slug}.jpg"
  fi
done