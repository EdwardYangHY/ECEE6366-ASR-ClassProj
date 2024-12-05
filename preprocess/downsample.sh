#!/bin/bash

# Input and output directories
INPUT_DIR="../Data/violin_audios/audio_clips"
OUTPUT_DIR="../Data/violin_audios/audio_clips_16K"
TARGET_SR=16000  # Target sample rate

# Ensure the output directory exists
mkdir -p "$OUTPUT_DIR"

# Iterate through all .flac files in the input directory
for file in "$INPUT_DIR"/*.flac; do
    # Extract the base name of the file
    base_name=$(basename "$file")
    output_file="$OUTPUT_DIR/$base_name"
    
    # Downsample and convert to mono using ffmpeg
    ffmpeg -i "$file" -ar "$TARGET_SR" -ac 1 "$output_file" -y
    if [ $? -eq 0 ]; then
        echo "Successfully processed: $file"
    else
        echo "Error processing: $file"
    fi
done