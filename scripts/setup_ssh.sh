#!/bin/bash
# Настройка удаленного доступа по SSH
sudo apt-get install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
