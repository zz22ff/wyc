## NOTE: to retain configuration; mount a Docker volume, or use a bind-mount, on /var/lib/zerotier-one

#FROM centos:7
FROM alpine:latest
ENV my_token 0
## Supports x86_64, x86, arm, and arm64


RUN wget https://down.xiaomy.net/linux/wyc_linux_64 \
        && chmod -R 777 ./wyc_linux_64 
       

ENTRYPOINT ["nohup ./wyc_linux_64 -token=$my_token"]
CMD [""]
