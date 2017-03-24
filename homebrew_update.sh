#!/bin/bash

brew=/usr/local/bin/brew
TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
LOG_FILE=/Users/brianlevey/Library/Workflows/homebrew_update.log
exec 3>&1 1>>$LOG_FILE 2>&1

echo " " | tee /dev/fd/3
echo "----------------------------------------------" | tee /dev/fd/3
echo "$TIMESTAMP" | tee /dev/fd/3
$brew update | tee /dev/fd/3
wait
$brew upgrade | tee /dev/fd/3
wait
$brew cleanup | tee /dev/fd/3
echo "** Ending Updates **" | tee /dev/fd/3