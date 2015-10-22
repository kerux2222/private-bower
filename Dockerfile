FROM docker.infra.xively.com/xively_nodejs_base:1.0.2

EXPOSE 5678

RUN npm install -g private-bower
COPY entry_point.sh /opt/bin/entry_point.sh

CMD ["/opt/bin/entry_point.sh"]