
# Requirements

Just install yt-dlp! Documentation how to install yt-dlp on your system can be found here:

https://github.com/yt-dlp/yt-dlp/wiki/Installation

# How to run this script:

## Make sure yt-dlp is installed, 
You can find documentation here: https://github.com/yt-dlp/yt-dlp/wiki/Installation

## Make the script executable. 
You only need to make `yt-auto.sh` executable.
  
`chmod +x yt-auto/*.sh`
`./yt-auto.sh`

## Change the download directory as desired
Change the `DOWNLOAD_DIR` in `config.sh` as desired. 
Each channel will be saved in it's own sub-directory.

## Add youtube channels as desired
Add your channels to the `CHANNELS` list in `config.sh` as desired. 
There is no limit.

## Run the script!

`./yt-auto.sh`

You can schedule it so it runs automatically.
  - macOS/Linux: use 'crontab -e' or a launchd/cron job.
  - Windows (WSL): use Task Scheduler or 'bash -c "~/yt-auto.sh"'.
