FROM docker.infra.xively.com/xively_nodejs_base:1.0.2

RUN npm install -g private-bower
RUN mkdir /opt/bower

COPY bower.conf.json /opt/bower/myBowerConfig.json
COPY entry_point.sh /opt/bin/entry_point.sh


CMD ["/opt/bin/entry_point.sh"]