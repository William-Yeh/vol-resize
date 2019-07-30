FROM debian:10.0-slim
LABEL author="william.pjyeh@gmail.com"

COPY voltest.sh /
RUN  chmod +x /voltest.sh

ENTRYPOINT ["/voltest.sh"]
CMD ["/mnt"]
