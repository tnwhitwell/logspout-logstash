ARG LOGSPOUT_VERSION
FROM gliderlabs/logspout:${LOGSPOUT_VERSION}
ARG VCS_REF
ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/tnwhitwell/logspout-logstash" \
      org.label-schema.docker.cmd="docker run --name="logspout" --volume=/var/run/docker.sock:/var/run/docker.sock -e ROUTE_URIS=logstash+tcp://logstash.home.local:5000 localhost/logspout-logstash:v3.1" \
      org.label-schema.schema-version="1.0" \
      maintainer="tom@whi.tw"
