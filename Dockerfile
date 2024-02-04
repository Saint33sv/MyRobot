# Используем официальный образ ROS Noetic
FROM ros:noetic


COPY ./scripts/install_packages.sh /tmp/install_packages.sh 
RUN bash /tmp/install_packages.sh  

COPY ./scripts/install_Container_Toolkit.sh /tmp/install_Container_Toolkit.sh
RUN bash /tmp/install_Container_Toolkit.sh

COPY ./scripts/ros_workspace.sh /tmp/ros_workspace.sh

CMD [ "bash" ]
