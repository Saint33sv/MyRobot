#!/bin/bash

xhost +local:root
docker run -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -p 8888:8888 \
    --privileged \
    --ipc=host \
    --network=bridge \
    -v /dev:/dev \
    --rm my_robot
xhost -local:root
    
