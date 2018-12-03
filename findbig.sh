#!/bin/bash

findbig() {
shopt -s globstar
max_s=0
for f in **; do
  if [[ -f "$f" && ! -L "$f" ]]; then
    size=$( stat -c %s -- "$f" )
    if (( size > max_s )); then
      max_s=$size
      max_f=$f
    fi
  fi
done
echo "$max_s $max_f"
}

findbig
