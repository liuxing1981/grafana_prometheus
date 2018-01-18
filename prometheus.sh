#########################################################################
# File Name: prometheus.sh
# Author: xing.liu
# mail: xing.liu@centling.com
# Created Time: 2018年01月17日 星期三 16时46分26秒
#########################################################################
#!/bin/bash
docker rm -f prometheus 2>/dev/null
docker run -d \
  -p 9090:9090 \
  --name prometheus \
  -v ~/monitor/prometheus/config:/etc/prometheus \
  -v ~/monitor/prometheus/data:/var/lib/prometheus \
  prom/prometheus
