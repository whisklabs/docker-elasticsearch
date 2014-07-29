from whisk/java

MAINTAINER Viktor Taranenko, viktortnk@gmail.com, viktor@whisk.com

RUN apt-get update
RUN apt-get install -y wget
RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main" | tee -a /etc/apt/sources.list.d/elasticsearch.sources.list
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y elasticsearch

EXPOSE 9200 9300
CMD ["/usr/share/elasticsearch/bin/elasticsearch"]

