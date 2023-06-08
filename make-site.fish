#!/usr/bin/env fish
# Lee Tusman 2023
# Peer production license

# Loops through all markdown files in directory
for file in *.md
  ./make-page.fish $file
end
