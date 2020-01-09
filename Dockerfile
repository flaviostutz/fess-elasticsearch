FROM codelibs/fess-elasticsearch:7.5.1

ENV ES_JAVA_OPTS '-Xms1g -Xmx1g'
ENV ES_PATH_CONF '/var/lib/elasticsearch/config'
ENV FESS_DICTIONARY_PATH '/var/lib/elasticsearch/config/'

RUN mkdir -p /var/lib/elasticsearch/config && \
    mv /usr/share/elasticsearch/config /var/lib/elasticsearch/

RUN ls /var/lib/elasticsearch/config

ADD /elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

VOLUME [ "/usr/share/elasticsearch/data" ]

