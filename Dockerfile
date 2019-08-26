FROM registry.connect.redhat.com/bitnami/elasticsearch
USER root
#RUN chgrp -R 0 /proc/sys/vm/max_map_count && chmod -R g=u /proc/sys/vm/max_map_count
#RUN sysctl -w vm.max_map_count=262144
#RUN chgrp -R 0 /etc/sysctl.conf && chmod -R g=u /etc/sysctl.conf
#RUN cat /etc/sysctl.conf
#RUN chmod -R g=u /proc/sys/vm/max_map_count
RUN echo "vm.max_map_count=262144" >> /etc/sysctl.conf
RUN sudo sysctl -p
#RUN echo 262144 > /proc/sys/vm/max_map_count
