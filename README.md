#一个新手从0开始搭建Prometheus监控系统和一些配置文件
Prometheus监控系统四大组件：
1.Exporter
2.Prometheus server
3.Alertmanager
4.Grafana

Exporter：采集数据并且向Prometheus server提供数据的一个程序
Prometheus server：核心组件，负责对数据的收集查询以及存储，本身是一个时序数据库
Alertmanager：报警
Grafana：UI展示
