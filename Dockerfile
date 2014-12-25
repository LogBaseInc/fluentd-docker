FROM jamesdbloom/docker-java8-maven
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh
ADD run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]