#!/bin/bash
sed -i 's/PERISCOPE_BATCH_AT_STARTUP=0/PERISCOPE_BATCH_AT_STARTUP=1/' .env
sudo docker compose up -d periscope-batch
sed -i 's/PERISCOPE_BATCH_AT_STARTUP=1/PERISCOPE_BATCH_AT_STARTUP=0/' .env
