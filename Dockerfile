FROM ubuntu:latest

RUN apt-get update -qq -y &&\
    apt-get -qq -y install software-properties-common curl rsyslog &&\
    add-apt-repository ppa:devel-k/log-courier2 &&\
    apt-get update -qq -y &&\
    apt-get -qq -y install log-courier &&\
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT service rsyslog start && service log-courier start
