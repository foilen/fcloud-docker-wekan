FROM quay.io/wekan/wekan:v3.83

USER root

RUN export TERM=dumb ; \
  apt-get update && apt-get install -y \
    haproxy supervisor \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD /bin/bash
