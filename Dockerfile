FROM        ubuntu:12.10
RUN         apt-get update
RUN         apt-get -y install redis-server
ADD         ./redis.conf /etc/
EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server", "/etc/redis.conf"]
