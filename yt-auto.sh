#!/usr/bin/env bash
# Straw Bat's YouTube Channel Auto Downloader
# Entry point script

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/download.sh"
source "$SCRIPT_DIR/utils.sh"

# Invoke utility function in utility.sh
notify_complete
