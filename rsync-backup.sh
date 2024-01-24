#!/bin/sh

export PATH=/usr/local/bin:/usr/bin:/bin

# Define the source directory
SRC_DIR="$HOME/Documents"

# Define the base destination directory
BASE_DEST_DIR="/media/alemoreno991/Data/Backups"

# Get the current date
DATE=$(date "+%Y-%m-%d")

# Define the weekly and current destination directories
DEST_DIR="$BASE_DEST_DIR/$DATE"

# Use rsync to backup the source directory to the destination
rsync -av --delete "$SRC_DIR/" "$DEST_DIR/"

