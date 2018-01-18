#########################################################################
# File Name: cadvisor.sh
# Author: xing.liu
# mail: xing.liu@centling.com
# Created Time: 2018年01月19日 星期五 09时27分14秒
#########################################################################
#!/bin/bash
docker rm -f cadvisor 2>/dev/null
docker run \
  --restart=unless-stopped \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --volume=/dev/disk/:/dev/disk:ro \
  --publish=9101:8080 \
  --detach=true \
  --name=cadvisor \
  google/cadvisor:latest
#  -prometheus_endpoint=192.168.208.70:9090
