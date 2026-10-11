#!/usr/bin/env bash

cp -av configs/home/. ~/

nano_syntax_highlights=(
  $(find /usr/share/nano/ -type f -name *.nanorc)
)

for nano_syntax_highlight in "${nano_syntax_highlights[@]}"; do
  echo "${nano_syntax_highlight}"
  echo "include ${nano_syntax_highlight}" >> ~/.config/nano/nanorc
done
