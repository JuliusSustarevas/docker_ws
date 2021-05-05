docker -H ssh://armstone@192.168.8.114 \
  run -it \
--user=$(id -u $USER):$(id -g $USER) \
--volume="/dev:/dev" \
--privileged="true" \
--network="host" \
--device /dev/bus/usb \
--device-cgroup-rule 'a *:* rwm' \
--name armstone_stack \
--rm \
armstone_stack
