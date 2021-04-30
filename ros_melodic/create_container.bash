#!/bin/bash
docker build . -t melodic_ws

docker run -it \
--env="DISPLAY" \
--network="host" \
--workdir="/home/melodik/ws" \
--volume="/home/jj/ws:/home/melodik/ws:delegated" \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--device /dev/bus/usb \
--device-cgroup-rule 'a *:* rwm' \
--name melodic_ws \
melodic_ws