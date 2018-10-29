#!/bin/bash

date=$(date +%Y%m%d_%H%M%S)
directory="/home/antonio/HAProjectASIR/backups/bkp-filesystem"
directoryToBackup="/home/antonio/HAProjectASIR/code/src"

if [ ! -d "$directory" ]; then
 mkdir $directory
fi

tar -czvf "$directory/bkp-filesystem_$date.tar.gz" $directoryToBackup
