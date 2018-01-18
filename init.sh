#########################################################################
# File Name: a.sh
# Author: xing.liu
# mail: xing.liu@centling.com
# Created Time: 2018年01月18日 星期四 13时59分55秒
#########################################################################
#!/bin/bash
mkdir -p ~/monitor/grafana
mkdir -p ~/monitor/prometheus/config
mkdir -p ~/monitor/prometheus/data
cp prometheus/prometheus.yml ~/monitor/prometheus/config/
chmod -R 777 ~/monitor/prometheus/data
echo "init completed!"
