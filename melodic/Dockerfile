FROM osrf/ros:melodic-desktop-full
ENV DEBIAN_FRONTEND=noninteractive

# Key update
# RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -


RUN apt-get update\
    && apt-get upgrade -y --no-install-recommends\
    && apt-get install -y --no-install-recommends\
    python-catkin-tools\   
    nano\
    ros-melodic-joint-state-publisher*\
    iputils-ping\
    net-tools\    
    && apt-get update\
    && apt-get upgrade -y --no-install-recommends\
    && apt-get install -y --no-install-recommends\
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

