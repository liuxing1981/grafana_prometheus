#########################################################################
# File Name: node-exporter.sh
# Author: xing.liu
# mail: xing.liu@centling.com
# Created Time: 2018年01月17日 星期三 09时35分44秒
#########################################################################
#!/bin/bash
docker run -d \
  --privileged \
  --name node-exporter \
  -v /proc:/host/proc \
  -v /sys:/host/sys \
  -v /:/rootfs \
  -v /etc/hostname:/etc/host_hostname \
  --net=host \
  -e HOST_HOSTNAME=/etc/host_hostname \
  basi/node-exporter:latest 
  #--path.procfs /host/proc \
  #--path.sysfs /host/sys \
  #--collector.filesystem.ignored-mount-points "^/(sys|proc|dev|host|etc)($|/)" \
  #--collector.textfile.directory /etc/node-exporter/
