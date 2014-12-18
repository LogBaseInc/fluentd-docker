FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive
ENV CONFIG_FILE file:///etc/td-agent/td-agent.conf

RUN apt-get update
RUN apt-get -y install curl
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh
ADD run.sh /run.sh
RUN chmod +x /run.sh

CMD ["./run.sh"]