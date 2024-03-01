#!/bin/bash

apt-get update
apt-get upgrade
apt-get install -y git ros-noetic-velodyne openssh-server curl vim openssh-client \
  nano ros-noetic-usb-cam ros-noetic-rviz ros-noetic-rqt ros-noetic-socketcan-bridge \
  ros-noetic-roslint ros-noetic-image-view python3-pip python python3-tf-conversions

export DEBIAN_FRONTEND=noninteractive
export DEBIAN_PRIORITY=critical
apt-get install -y ros-noetic-pcl-ros


python3 -m pip install pyserial odrive
python3 -m pip install fibre --upgrade 

curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python get-pip.py
python -m pip install pyyaml rospkg 
python -m pip install fibre --upgrade 






