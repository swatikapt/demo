#!/bin/bash
<<info
backup script
info


src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r  "$dest/backup-$timestamp.zip" $src >/dev/null

aws s3 sync "$dest" s3://firstserverbucket
echo "backup done"
