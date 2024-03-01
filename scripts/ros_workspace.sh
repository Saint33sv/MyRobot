#!/bin/bash

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/ && catkin_make
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

cd ~/catkin_ws/src
git clone https://github.com/ros-drivers/velodyne.git
git clone https://github.com/ethz-asl/ethzasl_xsens_driver.git
git clone https://github.com/neomanic/odrive_ros.git
rosdep install --from-paths src --ignore-src --rosdistro noetic -y
cd ~/catkin_ws/ && catkin_make


cd || exit
source ~/.bashrc
