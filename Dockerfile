FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.1
RUN sysctl -w vm.max_map_count=262144