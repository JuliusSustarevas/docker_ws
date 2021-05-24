FROM osrf/ros:melodic-desktop-full

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update\
    && apt-get upgrade -y --no-install-recommends\
    && apt-get install -y --no-install-recommends\
    python-catkin-tools\   
    nano\
    ros-melodic-joint-state-publisher*\
    ros-melodic-moveit\
    ros-melodic-move-base\
    iputils-ping\
    net-tools\    
    && apt-get update\
    && apt-get upgrade -y --no-install-recommends\
    && apt-get install -y --no-install-recommends\
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

