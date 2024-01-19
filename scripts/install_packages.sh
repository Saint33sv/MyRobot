#!/bin/bash
# Установка библиотек и пакетов ROS
sudo apt-get update
sudo apt-get install ros-noetic-velodyne-driver ros-noetic-xsens-driver 

sudo apt update
sudo apt install ros-noetic-usb-cam ros-noetic-rviz ros-noetic-rqt ros-noetic-socketcan-bridge

git clone https://github.com/belovictor/odrive_can_ros_driver.git
