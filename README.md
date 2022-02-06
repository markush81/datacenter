# Dockerized Datacenter

This is playground of `docker-compose.*.yml` files for several parts, you usually use when creating your datacenter.

## Usage

```
./bin/start
start [-h] [-w elastic,confluent,...] [-a]
  -w		list of comma separated apps
  -a		start all
  -h		prints this help
```

```
./bin/stop
stop [-h] [-w] [-v]
  -w		list of comma separated apps
  -v		remove volumes
  -h		prints this help
```

```
./bin/logs
logs [-h] [-w elastic,confluent,...] [-f]
  -w		list of comma separated apps
  -f		follow
  -h		prints this help
```

## Elastic Stack

[Elastic](docs/elastic.md)


## Confluent

[Confluent](docs/confluent.md)
