### 自定义监控
Prometheus也拥有像Zabbix那样的自定义key值的功能。

### 官方描述
There is varying support for collectors on each operating system. The tables below list all existing collectors and the supported systems.
Collectors are enabled by providing a --collector. flag. Collectors that are enabled by default can be disabled by providing a --no-collector. flag.

### Prometheus.sh
prometheus.sh内容是要取的数据

### key.sh
key.sh会生成一个  .prom文件，该文件记录了当前监控指标的状态，

### node_exporter
/usr/local/node_exporter/node_exporter --web.listen-address=:9100 --collector.textfile.directory=/root/
--collector.textfile.directory 指定 textfile 收集器读取文件的目录。根据官网说明， textfile 收集器会读取以 .prom 结尾的文件

### 定时任务
这样就自定义key值就完成了，放到计划任务即可。
