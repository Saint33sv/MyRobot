# MyRobot


- MyRobot/
     - scripts/
         - install_packages.sh
         - setup_ssh.sh
     - docker/
         - Dockerfile
     - src/
         - my_robot_package/
             - launch/
                 - my_robot_launch_file.launch
             - CMakeLists.txt
    - README.md

## Для установки:

1. В папке с проектом вы полнить команду "docker build -t my_robot ."
2. После сборки доккер образа запустить скрипт запуска контейнера "bash scripts/docker_run.sh"
3. В доккер контейнере: создать рабочее пространство ros "bash /tmp/ros_workspace.sh"
4. Отредактировать файл ~/catkin_ws/src/odrive_ros/nodes/odrive_node 1-я строка Python изменить на Python3
4. Отредактировть файл ~/catkin_ws/src/odrive_ros/src/odrive_ros/__init__.py 1-я строка odrive_node изменить на .odrive_node  
5. Отредактировть файл ~/catkin_ws/src/odrive_ros/src/odrive_ros/odrive_node.py:
    - 1-я строка Python изменить на Python3
    - 24-я строка Queue изменить на queue
    - строки 26-28 перед odrive_interface и odrive_simulator поставить точки
6. Запустить roscore
7. В новом терминале подключиться к контейнеру docker exec -it id-контейнера /bin/bash
8. Запуск launch-файла odrive: roslaunch odrive_ros odrive.launch
