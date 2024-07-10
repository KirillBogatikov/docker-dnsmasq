# DNSmasq inside docker container
- Simple
- Lightweight
- Open source
- Only one Dockerfile

## Feature
- Just default dnsmasq server

## Build
```shell
docker build -t docker-dnsmasq ./
```

## Deploy
```shell
docker run -d --name docker-dnsmasq -p 53:53 \
  -v ./conf:/etc/dnsmasq.conf -v ./hosts:/etc/dnsmasq.hosts
```
or 
```
services:
  dns:
    image: docker-dnsmasq
    volumes:
      - ./conf:/etc/dnsmasq.conf
      - ./hosts:/etc/dnsmasq.hosts
    ports:
      - 53:53
```