#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null
then
    echo "ImageMagick could not be found"
    exit
fi

# Check if an image file was provided as an argument
if [ $# -eq 0 ]
then
    echo "Please provide an image file"
    exit
fi

# Get the original dimensions of the image
width=$(identify -format "%w" "$1")
height=$(identify -format "%h" "$1")

# Get the desired dimensions for the resized image
new_width=$2
new_height=$3

# Calculate the aspect ratios for the original and desired sizes
original_ratio=$(echo "scale=5; $width / $height" | bc)
new_ratio=$(echo "scale=5; $new_width / $new_height" | bc)

# Calculate the new dimensions while maintaining the aspect ratio
if [ $(echo "$original_ratio > $new_ratio" | bc) -eq 1 ]
then
    new_height=$(echo "scale=0; $new_width / $original_ratio" | bc)
else
    new_width=$(echo "scale=0; $new_height * $original_ratio" | bc)
fi

# Resize and crop the image while maintaining its center
convert "$1" -resize "${new_width}x${new_height}^" -gravity center -extent "${new_width}x${new_height}" resized_$1
