# brother_scan.sh
Script to automate document scanning with my Brother all-in-one printer. This uses [scanimage](https://man.archlinux.org/man/scanimage.1.en) to scan a document in the scanner, then saves it to a directory I created with the current timestamp as the file name. It also opens the document in firefox to verify it scanned properly.

# getDirSizesRecurs.sh
Script for printing the size of all directories and files within in a directory recursively. Should be ran as follows: `./getDirSizesRecurs.sh {path}`. To suppress error messages (this is useful to get rid of permission denied messages getting in the way), run as follows: `./getDirSizesRecurs.sh {path} 2> /dev/null`.

# tomatotime
Shell and python scripts for the pomodoro timing method
