#!/bin/sh
for i in `seq 0 3`; do
  my_current_date=`date +%Y_%m_%d`
  my_current_time=`date +%H_%M_%S`
  if [ ! -d  /mnt/sdcard/pic/$my_current_date ]
  then
    mkdir /mnt/sdcard/pic/$my_current_date
  fi
  wget  "http://192.168.8.1:8080/?action=snapshot" -O /mnt/sdcard/pic/$my_current_date/$my_current_time.jpg
  echo $i
  sleep 12
done
