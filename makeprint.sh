makeprint () {
#sed -i 's/[^[:print:]]//' FILENAME
sed -i 's/[^[:print:]]//g' | { a="$(</dev/stdin)";  echo "$a"; echo "$a"; }

}

makeprint
