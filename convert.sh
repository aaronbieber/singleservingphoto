#!/bin/bash

die() {
  echo >&2 "$@"
  exit 1
}

if [ "$#" -ne 1 ]; then
  die "1 argument required; $# given."
fi

file="$1"

if [ ! -f "$file" ]; then
  die "Argument must be a regular file."
fi

outfile=$(mktemp)
newfile="${file%.*}.markdown"

echo -n "Processing '$file'... "

# The front matter
sed -n '/^---/,/^---/{ /^author:$/{ s#author:#author: Aaron#; p; }; /^author:/,/^author_login:/{ d; }; p; }' "$file" > "$outfile"

# Everything but the front matter
sed '/^---/,/^---/{ d; }' "$file" | pandoc -f html -t markdown | sed 's#\\\([*_]\)#\1#g' >> "$outfile"

mv "$outfile" "$newfile"

echo "Wrote $newfile."
