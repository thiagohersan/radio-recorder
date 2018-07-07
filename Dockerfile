FROM debian:stretch

RUN apt-get update
RUN apt-get install -y python python-pip wget streamripper > /dev/null 2>&1

RUN pip install awscli

RUN mkdir -p /opt/radio-recorder/out
WORKDIR /opt/radio-recorder

ADD https://api.github.com/repos/thiagohersan/radio-recorder/git/refs/heads/master /tmp/version.json

RUN wget https://raw.githubusercontent.com/thiagohersan/radio-recorder/master/record.sh
RUN chmod 700 record.sh

CMD ["./record.sh"]
