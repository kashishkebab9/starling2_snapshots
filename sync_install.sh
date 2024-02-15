#!/bin/bash

if [[ $# -eq 0 ]] ; then
  echo 'Specify which IP Address to sync to'
else
  echo 'Syncing voxl2_home/ folder from computer to robot home directory...'
  rsync -r -a -v -e  ssh --update --delete --exclude '*.git' --exclude '*.cmake' --exclude "*/build/*" --exclude "*/logs/*"  ~/voxl2_home/ root@$1:~/kumarRobotics/
fi
