#!/bin/bash

# Check if parameter is provided
if [ -z "$1" ]; then
  echo "Error: Missing parameter"
  echo "Usage: $0 <parameter>"
  exit 1
fi

PARAMETER=$1

# Transform photo URLs in data.json
jq --arg param "$PARAMETER" 'map(
  if .photo and (.photo | startswith("data:") | not) then
    .photo = "core/images/future_government_institute/\($param)/\(
      .name |
      ascii_downcase |
      gsub("[^a-z0-9]"; "-") |
      gsub("-+"; "-") |
      sub("-+$"; "")
    ).jpg"
  else
    .
  end
)' data.json > temp.json && mv temp.json data.json