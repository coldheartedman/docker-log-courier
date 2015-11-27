FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:devel-k/log-courier
RUN apt-get update -y
RUN apt-get install log-courier
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/sbin/log-courier", "-config", "/etc/log-courier/log-courier.conf"]
