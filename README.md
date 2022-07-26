This repo helps create different "development" environments for ROS1/2

The idea is to use persistent containers where you "are yourself" inside it. Togetger with vscode docker extentions this makes for a powerful workflow. 


* Install docker: https://docs.docker.com/engine/install/ubuntu/
* Install vs code docker extention and remote extention (optional)
    * https://code.visualstudio.com/docs/containers/overview
* On your host system ~/.bashrc add a line "xhost +local:root # for the lazy and reckless". This will allow GUI elements to be shown on host
* Simply run the appropriate create_container.bash to create the container.
* This container should then be visible as running on vs code docker extention. You can run/restart it as needed. Remember that it will maintain state. i.e. if you install something - it will be installed there.

* I recomend starting the container updating packages and installing vs code. (Download deb first) "sudo apt install ./<file>.deb"
    * Remember you are yourself inside the container. so just navigate to Downloads or wherever deb is saved
    * Install and run code. you should see the IDE pop up on your host OS and every terminal inside this IDE is inside the container. 


# Known bugs
* There is some weird bug where melodic container doesnt work on Ubuntu 22 host. For some reason the password cannot be inputed
* Humble container had an issue: https://github.com/osrf/docker_images/issues/621 : But a fix is implemented in dockerfile