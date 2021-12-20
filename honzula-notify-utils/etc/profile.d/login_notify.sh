#!/bin/bash

# prepare any message you want
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"
hostn=`hostname`
# For new line I use $'\n' here
#message="New login to server `hostname`"$'\n'"$login_name"$'\n'"$login_ip"$'\n'"$login_date"
message="*SSH*%0A*User:* %60$login_name%60%0A*Server:* %60$hostn%60%0A*IP:* %60$login_ip%60%0A*Data:* %60$login_date%60"

#send it to telegram
send_telegram "$message"
