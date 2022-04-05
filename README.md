# docker-interval-curl
Simple contain which does a curl every n minute.

Simple use
```
docker run -it -e URL=https:/someurl.com -e INTERVAL=10 maltegrosse/docker-interval-curl:latest
```
where two environments variables are required:
- URL (some https....)
- INTER (int for minutes)

Available on Dockerhub: https://hub.docker.com/r/maltegrosse/docker-interval-curl
