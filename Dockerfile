# Certbot image to build on (e.g. certbot/certbot:amd64-v0.35.0)
ARG BASE_IMAGE
FROM certbot/certbot:v2.4.0

# Copy Certbot DNS plugin code
COPY . /opt/certbot/src/plugin

# Install the DNS plugin
RUN python tools/pip_install.py --no-cache-dir --editable /opt/certbot/src/plugin
