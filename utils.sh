#!/usr/bin/env bash
# Utility functions for yt-auto

get_date_after() {
	# MacoOS
  	if date -v-3m +%Y%m%d >/dev/null 2>&1; then
    	date -v-3m +%Y%m%d

    # Linux & Windows
  	else
    	date -d '3 months ago' +%Y%m%d
  	fi
}

notify_complete() {
  	local msg="YouTube auto-download finished"
  	local title="yt-dlp"

	# MacOS
  	if command -v osascript >/dev/null 2>&1; then
    	osascript -e "display notification \"$msg\" with title \"$title\""

	# Linux
  	elif command -v notify-send >/dev/null 2>&1; then
    	notify-send "$title" "$msg"

	# Windows
  	elif command -v powershell.exe >/dev/null 2>&1; then
    	powershell.exe -Command "[System.Windows.Forms.MessageBox]::Show('$msg','$title')"
  	fi
}
