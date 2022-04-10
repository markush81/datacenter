# Elastic Stack

Elastic stack consists of

- Elasticsearch
- Metricbeat for Stack Monitoring
- Filebeat
- Kibana
- Elastic Agent (Fleet Server and APM Integration)


References: [Elastic Stack Documentation](https://www.elastic.co/guide/index.html)

## Security

Set password for `elastic` superuser and encrypting kyes in `.env`.

Default password is `secret`.

## Connections

- [Kibana - http://localhost:5601](http://localhost:5601)
- [Elastic Agent (APM Integration) - http://localhost:8200](http://localhost:8200)
- [Elasticsearch - http://localhost:9200](http://localhost:9200)


## Logs

Want to pass your own logs?

Set `ELASTIC__LOG_FILES` in `.env` to your log file location (`*.log`) or adapt `elastic/filebeat.yml` to your needs.


## Screenshots

![Elastic Stack Monitoring](images/elastic_stack_monitoring.png)

![Elastic Stack Monitoring](images/elastic_stack_fleet_apm.png)

![Elastic Stack Logs](images/elastic_stack_logs.png)

![Elastic Stack APM](images/elastic_stack_apm.png)
