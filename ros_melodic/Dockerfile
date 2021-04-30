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
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

######################## Create and Setup the User
ENV USER=melodik
RUN adduser --gecos "ROS Melodic Workspace User" --disabled-password $USER
RUN echo "$USER:$USER" | chpasswd
RUN usermod -a -G dialout $USER
RUN usermod -a -G sudo $USER

###### Change user
USER $USER
WORKDIR /home/$USER
ENV	HOME=/home/$USER
ENV ROS_WS=$HOME/catkin_ws
RUN mkdir -p $ROS_WS/src
RUN echo "source /opt/ros/melodic/setup.bash" >> $HOME/.bashrc
RUN echo "source $ROS_WS/devel/setup.bash" >> $HOME/.bashrc
