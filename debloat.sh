#!/usr/bin/env bash

echo This script will remove these packages:
echo -- celluloid
echo -- ed
echo -- hexchat
echo -- hexchat-common
echo -- hypnotix
echo -- redshift
echo -- rhythmbox
echo -- thunderbird
echo -- youtube-dl
echo Double-check that you do not need any of the above packages
echo before proceeding.
echo 

read -p "Y+Enter to proceed or N+Enter to cancel." CHOICE

if [ ${CHOICE} == y ]
then
    sudo apt remove celluloid ed hexchat hexchat-common hypnotix redshift rhythmbox thunderbird youtube-dl
    sudo apt purge celluloid ed hexchat hexchat-common hypnotix redshift rhythmbox thunderbird youtube-dl
elif [ ${CHOICE} == n ]
then
    echo Debloating cancelled.
fi
