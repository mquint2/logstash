FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.1
USER root
RUN echo "vm.max_map_count=262144" >> /etc/sysctl.conf
