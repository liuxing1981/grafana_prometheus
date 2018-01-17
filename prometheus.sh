#########################################################################
# File Name: prometheus.sh
# Author: xing.liu
# mail: xing.liu@centling.com
# Created Time: 2018年01月17日 星期三 16时46分26秒
#########################################################################
#!/bin/bash
cp -R prometheus ~
docker run -d \
  -p 9090:9090 \
  --name prometheus \
  -v ~/prometheus:/etc/prometheus \
  quay.io/prometheus/prometheus
