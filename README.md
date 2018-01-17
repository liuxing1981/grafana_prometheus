# Usage

### This is a tutorial about how to build a monitor system with docker Grafana and docker Prometheus.

* grafana.sh: run grafana as a service which exposed host port 3000
* prometheus.sh: run prometheus as a serivce which exposed host port 9090
* node-exporter.sh: run the node-exporter as a service which exposed host port 9100

### 1 start prometheus in your host
```
	cd prometheus && vi promethues.yml
```
#### edit prometheus.yml to make sure all servers you want to monitor in the scrape_configs list
```
    ./prometheus.sh
```

#### above script will copy the prometheus directory to your home directory and then mount it to the docker container.

```
	http://localhost:9090
```
#### access the URL with brower to make sure the promethues service is started successfully.

### 2 start the node-exporter service
#### node-exporter service is running in those servers you'd like to monitor.
```
   ./node-exporter.sh
```
#### To make sure the ip address of the server which is running node-exporter service is written in the promethues.yml when prometheus service is started.

#### if the node-exporter is started
!(ALT text)[img/node-exporter.png]

#### 3 start the grafana
```
    ./grafana.sh
```

```
	http://localhost:3000
```
#### default user is "admin",password is "centling"

#### config the grafana
*  config the datasource
>   !(ALT text)[img/datasource.png]
*  download a grafana template
>   
``` https://grafana.com/dashboards/405/revisions
```

*  load the downloaded template to grafana
>   !(ALT text)[img/imoprt1]
>   !(ALT text)[img/load]
>   !(ALT text)[img/imoprt2]

