FROM ros:foxy
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