#!/bin/bash

CRATES_FILE="crates"
COMPONENTS_FILE="components"

while IFS= read -r line; do
  cargo install $line
done < "$CRATES_FILE"

while IFS= read -r line; do
  rustup component add $line
done < "$COMPONENTS_FILE"
