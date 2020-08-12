#########################################################################
# File Name: node-exporter.sh
# Author: xing.liu
# mail: xing.liu@centling.com
# Created Time: 2018年01月17日 星期三 09时35分44秒
#########################################################################
#!/bin/bash
#docker run -d \
#  --privileged \
#  --name node-exporter \
#  --restart=unless-stopped \
#  -p 9100:9100 \
#  -v /proc:/host/proc \
#  -v /sys:/host/sys \
#  -v /:/rootfs \
#  -v /etc/hostname:/etc/host_hostname \
#  -e HOST_HOSTNAME=/etc/host_hostname \
#  basi/node-exporter:latest 


docker run -d \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  quay.io/prometheus/node-exporter \
  --path.rootfs=/host
