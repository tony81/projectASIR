#!/bin/bash

date=$(date +%Y%m%d_%H%M%S)
directory="/home/antonio/HAProjectASIR/backups/bkp-db/"
fileForBackup="bkp-db_$date.sql"
fileFinalBackup="bkp-db_$date.tar.gz"

if [ ! -d "$directory" ]; then
 mkdir $directory
fi

echo "$directory$fileFinalBackup"
echo "$directory$fileForBackup"

mysqldump -h172.20.128.7 -uroot -pmysql_backup --routines haproject_asir > "$directory$fileForBackup"
tar -czvf "$directory$fileFinalBackup" "$directory$fileForBackup"
rm -f "$directory$fileForBackup"
