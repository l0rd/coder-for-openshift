FROM codercom/code-server:3.9.3
USER 0
# Set permissions on /etc/passwd and /home to allow arbitrary users to write
RUN mkdir -p /home/coder && chgrp -R 0 /home && mkdir -p /home/coder/.config && chgrp -R 0 /home/coder/.config && chmod -R g=u /etc/passwd /etc/group /home

COPY code-server-config.yaml /home/coder/.config/code-server/config.yaml

USER 10001
ENV HOME=/home/coder
WORKDIR /projects
