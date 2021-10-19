## NOTE: to retain configuration; mount a Docker volume, or use a bind-mount, on /var/lib/zerotier-one

#FROM centos:7
FROM alpine:latest
ENV my_token 0
## Supports x86_64, x86, arm, and arm64


RUN mkdir /wyc \
        && cd /wyc \
        && wget -P /wyc https://down.xiaomy.net/linux/wyc_linux_64 \
        && chmod -R 777 ./wyc_linux_64
COPY ./docker-entrypoint.sh ./wyc/
       
       

ENTRYPOINT ["./wyc/docker-entrypoint.sh"]

