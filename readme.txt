How to run this script:

1. 	Make sure yt-dlp is installed, you can find documentation here:
	https://github.com/yt-dlp/yt-dlp/wiki/Installation

2. 	Make the script executable
   	You only need to make yt-auto.sh executable

	chmod +x yt-auto/*.sh
	./yt-auto.sh

	(You can also do this in you)

3. 	Change the DOWNLOAD_DIR in config.sh as desired.
	Each channel will be saved in it's own sub-directory.

4.  Add your channels to the CHANNELS list in config.sh as desired.
	There is no limit.

5.	Run/schedule the script!
	Y
	./yt-auto.sh

Opt.
	You can schedule it so it runs automatically.
	- macOS/Linux: use 'crontab -e' or a launchd/cron job.
	- Windows (WSL): use Task Scheduler or 'bash -c "~/yt-auto.sh"'.
