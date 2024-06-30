FROM fredblgr/ubuntu-novnc:20.04

ENV RESOLUTION=461x1024

EXPOSE 80

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
