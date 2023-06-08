#!/usr/bin/env fish
# Lee Tusman 2023
# Peer production license

# Check if pandoc is installed
if type -q pandoc
else
  echo "Program pandoc required. Exiting."
  exit
end

# Check if input file specified
if test (count $argv) -ne 1
    echo "Usage: ./make-page.fish input.md"
    exit
end

# Check if file exists in directory
if test -f $argv
else
  echo "Filename not in directory"
  exit
end

set inputfile $argv

set pagename (string split . $inputfile)[1]

set outputfile $pagename.html

# Special case if file is README.md then assume it's main site page

if test (string match README $pagename)
  set pagename "Archiving Artist-Run Spaces"
  set outputfile index.html
end

# Here's where the magic happens
pandoc -s -c assets/css/main.css -s -f markdown+smart --metadata pagetitle=$pagename --to=html5 --template template.html --include-in-header=header.html --include-after-body=footer.html $inputfile -o $outputfile --lua-filter=links-to-html.lua

