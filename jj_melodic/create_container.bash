#!/bin/bash
docker build . -t jj_melodic --no-cache

docker run -it \
--user=$(id -u $USER):$(id -g $USER) \
--env="DISPLAY" \
--env="QT_X11_NO_MITSHM=1" \
--workdir="/home/$USER/ws" \
--volume="/home/$USER:/home/$USER" \
--volume="/etc/group:/etc/group:ro" \
--volume="/etc/passwd:/etc/passwd:ro" \
--volume="/etc/shadow:/etc/shadow:ro" \
--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--privileged="true" \
--network="host" \
--device /dev/bus/usb \
--device-cgroup-rule 'a *:* rwm' \
--name jj_melodic \
jj_melodic
