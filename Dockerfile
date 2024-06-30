# Use the base image with noVNC and supervisord
FROM fredblgr/ubuntu-novnc:20.04

# Set the default screen resolution
ENV RESOLUTION=1024x768

# Install necessary packages
RUN apt-get update && apt-get install -y \
    x11vnc \
    xvfb \
    fluxbox \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables for VNC
ENV DISPLAY=:1
ENV X11VNC_PASSWORD=11042006

# Expose VNC port
EXPOSE 5901

# Start the VNC server
CMD ["sh", "-c", "Xvfb :1 -screen 0 ${RESOLUTION}x24 & fluxbox & x11vnc -display :1 -usepw -forever"]
