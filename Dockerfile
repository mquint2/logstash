FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.1
COPY ./60-elasticsearch.conf /etc/sysctl.d/
