# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:5.6.3

RUN logstash-plugin install logstash-output-exec
COPY config/logstash.yml /usr/share/logstash/config/logstash.yml
COPY pipeline/logstash.conf /usr/share/logstash/pipeline/
# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
