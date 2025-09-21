#!/bin/bash
set -e
# Backup current files if present
for f in server.js data.json; do
  if [ -f /mnt/data/$f ]; then
    cp /mnt/data/$f /mnt/data/$f.bak.$(date +%s)
  fi
done
# Install final files (copy into place)
cp /mnt/data/server_final.js /mnt/data/server.js
cp /mnt/data/data_final.json /mnt/data/data.json
echo "Final files installed. Backups (if any) created with .bak.<timestamp>"
