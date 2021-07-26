FROM osrf/ros:noetic-desktop-full
ENV DEBIAN_FRONTEND=noninteractive

# Key update
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

RUN apt-get update\
    && apt-get upgrade -y --no-install-recommends\
    && apt-get install -y --no-install-recommends\    
    nano\
    ros-noetic-joint-state-publisher*\
    ros-noetic-moveit\
    ros-noetic-move-base\
    iputils-ping\
    net-tools\    
    && apt-get update\
    && apt-get upgrade -y --no-install-recommends\
    && apt-get install -y --no-install-recommends\
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*