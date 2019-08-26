FROM registry.connect.redhat.com/bitnami/elasticsearch
USER root
RUN echo "vm.max_map_count=262144" >> /etc/sysctl.conf
RUN chgrp -R 0 /etc/sysctl.conf && chmod -R g=u /etc/sysctl.conf

