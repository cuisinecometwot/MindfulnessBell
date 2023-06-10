#!/bin/bash

# Set the paths to your sound files.
# In this case, all the files are in the same folder.
SMALL_BELL=small.wav
BIG_BELL=big.wav
# Loop indefinitely
while true; do
  # check timestamp every minute
  sleep 1m
  # ring small bell if current minute is 15 or 45.
  if [ `expr $(date +%s) % 1800` -lt 60 ]
  then play -q $BIG_BELL vol -5dB &
  # you can adjust the volume in flag vol as well
  # ring big bell if current minute is 00 or 30.
  elif [ `expr $(date +%s) % 900` -lt 60 ]
  then play -q $SMALL_BELL vol -5dB &
  fi
done
