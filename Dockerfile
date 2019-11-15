FROM docker.elastic.co/logstash/logstash:7.3.1
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN rm -f /usr/share/logstash/config/logstash.yml
RUN /usr/share/logstash/bin/logstash-plugin install logstash-output-syslog
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/

