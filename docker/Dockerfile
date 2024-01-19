# Используем официальный образ ROS Noetic
FROM ros:noetic

# Устанавливаем необходимые зависимости
RUN apt-get update && apt-get install -y \
    ros-noetic-velodyne-driver \
    ros-noetic-can-msgs \
    ros-noetic-xsens-driver 

RUN apt update && apt install -y \
    ros-noetic-usb-cam \
    ros-noetic-rqt \
    ros-noetic-rviz 

CMD [ "bash" ]
