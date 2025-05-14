#!/usr/bin/env bash

# Read reference.txt and create associative array
declare -A descriptions
while IFS=, read -r name description url; do
  # Remove leading/trailing whitespace
  name=$(echo "$name" | xargs)
  description=$(echo "$description" | xargs)
  descriptions["$name"]="$description"
done < reference.txt

# Read and update data.json
json=$(cat data.json)

# Iterate through each object in JSON array
for name in "${!descriptions[@]}"; do
  json=$(echo "$json" | jq --arg name "$name" --arg desc "${descriptions[$name]}" \
    'map(if .name == $name then .description = $desc else . end)')
done

# Write updated JSON back to file
echo "$json" | jq . > data.json