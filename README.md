# docker-log-courier
log-courier as a docker container to send logs to logstash.

# Usage

Create a local file ```log-courier.conf``` with your log-courier config.

```sh
docker run -it -v $(pwd)/log-courier.conf:/etc/log-courier/log-courier.conf kitpages/log-courier
```

## With logspout (httpstream)

Run logspout container

```sh
$ docker run -v /var/run/docker.sock:/tmp/docker.sock --name logspout gliderlabs/logspout
```

Run log-courier container (pipe httpstream to log-courier stdin)

```sh
$ docker run -it -v $(pwd)/log-courier.conf:/etc/log-courier/log-courier.conf --link logspout:logspout kitpages/log-courier /bin/bash -c curl -s http://logspout:8000/logs?colors=off | log-courier -config /etc/log-courier/log-courier.conf -stdin
```
