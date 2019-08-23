FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.1
USER root
RUN chgrp -R 0 /etc/sysctl.conf && chmod -R g=u /etc/sysctl.conf
RUN chgrp -R 0 /proc/sys/vm/max_map_count && chmod -R g=u /proc/sys/vm/max_map_count
RUN echo "vm.max_map_count=262144" >> /etc/sysctl.conf
RUN echo 262144 > /proc/sys/vm/max_map_count
