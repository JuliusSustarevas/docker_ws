FROM ros:humble-perception
ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update\
    && apt-get upgrade -y --no-install-recommends\
    && apt-get install -y --no-install-recommends\    
    nano\
    iputils-ping\
    net-tools\    
    && apt-get update\
    && apt-get upgrade -y --no-install-recommends\
    && apt-get install -y --no-install-recommends\
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

# Fixing humble issue
RUN apt-get update && apt-get install curl gnupg lsb-release  -y
RUN  curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN bash -c 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" |  tee /etc/apt/sources.list.d/ros2.list > /dev/null'
RUN rm /etc/apt/sources.list.d/ros2-latest.list 
