# docker-log-courier
log-courier 2 as a docker container to send logs to logstash.

# Usage

Create a local file ```log-courier.conf``` with your log-courier config.

```sh
docker run -it -v $(pwd)/log-courier.conf:/etc/log-courier/log-courier.conf coldheartedman/log-courier
```
