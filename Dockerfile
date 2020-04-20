FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get install -y wget gpg
RUN wget -q -O - https://workspaces-client-linux-public-key.s3-us-west-2.amazonaws.com/ADB332E7.asc | apt-key add -
RUN echo "deb [arch=amd64] https://d3nt0h4h6pmmc4.cloudfront.net/ubuntu bionic main" | tee /etc/apt/sources.list.d/amazon-workspaces-clients.list 
RUN apt-get -y update
RUN apt-get -y install workspacesclient
RUN mkdir /root/{.cache,.local}
VOLUME /root/.cache
VOLUME /root/.local
CMD /opt/workspacesclient/workspacesclient