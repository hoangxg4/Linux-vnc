FROM fredblgr/ubuntu-novnc:20.04

ENV RESOLUTION=461x1024

RUN apt-get update && apt-get install -y websockify

EXPOSE 6080

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
