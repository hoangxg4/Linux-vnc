FROM fredblgr/ubuntu-novnc:20.04

ENV RESOLUTION=1024x768
ENV VNC_PASSWORD=11042006

EXPOSE 5900 6080

RUN apt-get update && apt-get install -y \
    x11vnc \
    && rm -rf /var/lib/apt/lists/*

CMD ["sh", "-c", "x11vnc -forever -usepw -create && supervisord -c /etc/supervisor/supervisord.conf"]
