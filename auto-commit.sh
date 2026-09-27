#!/usr/bin/bash

# manually move into the project folder
cd ~/Desktop/auto-commit/ 


# update the log file
echo "Auto commit: $(date)" >> local_log.txt
echo " "


#+++++++++++++++++++++++++++++
#git commands in input order
#++++++++++++++++++++++++++++++
# push changes to github

git add local_log.txt
git commit -m 'auto commit daily'
git push origin main


