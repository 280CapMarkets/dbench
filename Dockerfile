FROM docker.elastic.co/elasticsearch/elasticsearch:7.8.0
	
RUN yum install fio -y
	
VOLUME /usr/share/elasticsearch
WORKDIR /usr/share/elasticsearch
COPY ./docker-entrypoint.sh /usr/share/elasticsearch
RUN chmod -x /usr/share/elasticsearch/docker-entrypoint.sh
ENTRYPOINT ["/usr/share/elasticsearch/docker-entrypoint.sh"]
CMD ["fio"]