#!/bin/bash
# Script Name: AtoMiC SABnzbd systemd update
# Author: TommyE123
# Publisher: http://www.htpcBeginner.com
# License: MIT License (refer to README.md for more details)
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.
echo
echo -e $YELLOW"--->Updating systemd to run as $CYAN$UNAME$ENDCOLOR ..."$ENDCOLOR

sudo sed -i "s@User=ReplaceMe@User=$UNAME@g" /etc/systemd/system/plexmediaserver.service.d/override.conf || { echo -e $RED'Modifying USER in SYSTEMD file failed.'$ENDCOLOR; exit 1; }
sudo sed -i "s@Group=ReplaceMe@Group=$UGROUP@g" /etc/systemd/system/plexmediaserver.service.d/override.conf || { echo -e $RED'Modifying GROUP in SYSTEMD file failed.'$ENDCOLOR; exit 1; }
echo 'OK'
