FROM codercom/code-server:3.9.3
USER 0
# Set permissions on /etc/passwd and /home to allow arbitrary users to write
RUN mkdir -p /.config && chgrp -R 0 /.config && mkdir -p /home/coder && chgrp -R 0 /home && chmod -R g=u /etc/passwd /etc/group /home

USER 10001
ENV HOME=/home/coder
WORKDIR /projects
