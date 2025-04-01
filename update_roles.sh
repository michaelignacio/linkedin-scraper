#!/bin/bash

# Read reference.txt line by line
while IFS=, read -r name rest; do
  # Extract description as everything before URL
  description=$(echo "$rest" | sed -E 's/(.*)(https?:\/\/.*)/\1/')
  
  # Use jq to find matching name and add description
  jq --arg name "$name" --arg description "$description" \
    '(.[] | select(.name == $name)).description |= $description' \
    data.json > temp.json && mv temp.json data.json
done < reference.txt

echo "Descriptions updated successfully!"