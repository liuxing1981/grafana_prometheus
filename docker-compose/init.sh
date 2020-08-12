#########################################################################
# File Name: init.sh
# Author: xing.liu
# mail: xing.liu@nokia-sbell.com
# Created Time: 2018年01月18日 星期四 13时59分55秒
#########################################################################
#!/bin/bash
mkdir -p ~/monitor/grafana
mkdir -p ~/monitor/prometheus/config
mkdir -p ~/monitor/prometheus/data
cp prometheus.yml ~/monitor/prometheus/config/
sudo chmod -R 777 ~/monitor/prometheus/data
sudo chmod -R 777 ~/monitor/grafana
echo "init completed!"
