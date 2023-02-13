#/bin/fish
du --max-depth=2 -h "${1}" | sort -h
