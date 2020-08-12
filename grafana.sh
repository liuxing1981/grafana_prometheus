#########################################################################
# File Name: grafana.sh
# Author: xing.liu
# mail: xing.liu@centling.com
# Created Time: 2018年01月17日 星期三 16时46分45秒
#########################################################################
#!/bin/bash
sudo mkdir -p ~/docker_volumes/grafana
sudo chmod 777 -R ~/docker_volumes/grafana
docker run -d -p 3000:3000 \
        -v ~/docker_volumes/grafana:/var/lib/grafana \
        -e "GF_SECURITY_ADMIN_PASSWORD=centling" \
        grafana/grafana
