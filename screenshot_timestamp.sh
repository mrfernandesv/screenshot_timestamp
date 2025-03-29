#!/bin/bash

# Check if the required packages are installed
for cmd in flameshot convert xclip; do
    if ! command -v $cmd &> /dev/null; then
        echo "Error: '$cmd' not found. Install with:"
        echo "    sudo apt install flameshot imagemagick xclip"
        exit 1
    fi
done

# Directory to store screenshots (inside the user's home)
screenshot_dir="$HOME/Pictures/Screenshot Timestamp"

# Create the directory if it does not exist
mkdir -p "$screenshot_dir"

# File name: screenshot_YYYYMMDD_HHMMSS.png
timestamp=$(date '+%Y%m%d_%H%M%S')
screenshot_file="$screenshot_dir/screenshot_$timestamp.png"

# Capture screenshot with Flameshot (area selection)
flameshot gui -r > "$screenshot_file"

# Check if the capture was successful
if [[ ! -s "$screenshot_file" ]]; then
    echo "Capture canceled or failed. Exiting..."
    rm -f "$screenshot_file"
    exit 1
fi

# Add timestamp to the image
convert "$screenshot_file" -gravity southeast -pointsize 36 -fill white -undercolor black \
    -annotate +10+10 "$(date '+%Y-%m-%d %H:%M:%S')" "$screenshot_file"

# Copy the image to the clipboard
xclip -selection clipboard -t image/png -i "$screenshot_file"

echo "Screenshot saved at: $screenshot_file"
echo "Image copied to clipboard!"
