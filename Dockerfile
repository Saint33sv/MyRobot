# Используем официальный образ ROS Noetic
FROM ros:noetic


COPY ./scripts/install_packages.sh /tmp/install_packages.sh 
RUN bash /tmp/install_packages.sh  

COPY ./scripts/install_Container_Toolkit.sh /tmp/install_Container_Toolkit.sh
RUN bash /tmp/install_Container_Toolkit.sh

COPY ./scripts/ros_workspace.sh /tmp/ros_workspace.sh
COPY ./src/my_robot_package /tmp/my_robot_package

CMD [ "bash" ]
