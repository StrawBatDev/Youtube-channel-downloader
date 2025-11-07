#!/usr/bin/env bash
# Download logic for yt-auto

source "$(dirname "$0")/config.sh"
source "$(dirname "$0")/utils.sh"

cd "$DOWNLOAD_DIR" || exit

LOGFILE="$DOWNLOAD_DIR/yt-dlp-$(date +%Y-%m-%d).log"
DATE_AFTER="$(get_date_after)"

# Notify start
echo "===== $(date) - Starting YouTube auto-download =====" >> "$LOGFILE"

for CHANNEL in "${CHANNELS[@]}"; do
  echo "[$(date)] Checking channel: $CHANNEL" >> "$LOGFILE"

  yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 \
         -ciw \
         --download-archive archive.txt \
         --dateafter "$DATE_AFTER" \
         -o "%(uploader)s/%(upload_date>%Y-%m-%d)s - %(title)s.%(ext)s" \
         "$CHANNEL" >> "$LOGFILE" 2>&1
done

echo "[$(date)] Download job completed." >> "$LOGFILE"
