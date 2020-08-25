# scan-from-click
To launch a scan when a mouse button is clicked.

Used with the modified mouse library on a headless server to scan automatically when clicking a mouse on a USB Scanner.

Edit the crontab(crontab -e) and add @reboot <link-to-launch.sh> to enable the file to launch at boot.
Edit the path to scanner.sh on line 4 of launch.sh to use.
Edit the scanner info on line 15 of scanner.sh to use.
