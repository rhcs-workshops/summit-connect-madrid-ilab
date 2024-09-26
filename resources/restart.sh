#!/bin/bash

FOLDERS=(
  "$HOME/ilab/data"
  "$HOME/ilab/models"
  "$HOME/ilab/taxonomy"
)

FILES=(
  "$HOME/ilab/config.yaml"
)

for folder in "${FOLDERS[@]}"; do
  if [ -d "$folder" ]; then
    rm -rf "$folder"
    echo "$folder borrado."
  else
    echo "$folder no existe."
  fi
done

for file in "${FILES[@]}"; do
  if [ -f "$file" ]; then
    rm -f "$file"
    echo "$file borrado."
  else
    echo "$file no existe."
  fi
done

echo "Completado!"

