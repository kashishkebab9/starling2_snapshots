#!/bin/bash


rsync -avz --recursive --progress --exclude '*/build/*' --exclude '*.git' --exclude '*/devel/*' --exclude '*.bag' ~/voxl2_home/ root@192.168.8.1:/home/root/kumarRobotics_devel/
