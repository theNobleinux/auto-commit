#!/usr/bin/bash

# manually move into the project folder
cd /home/nobleinux/Desktop/auto-commit/

export SSH_AUTH_SOCK=$(find /tmp/ssh-* -type s -user nobleinux 2>/dev/null | head -n 1)
export HOME=/home/nobleinux

# pull changes from github first
/usr/bin/git pull origin main


# update the log file
echo "Auto commit: $(date)" >> local_log.txt
echo " "


#+++++++++++++++++++++++++++++
#git commands in input order
#++++++++++++++++++++++++++++++
# push changes to github

/usr/bin/git add local_log.txt
/usr/bin/git commit -m 'auto commit daily'
/usr/bin/git push origin main


