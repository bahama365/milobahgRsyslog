FROM ubuntu:16.04
LABEL maintainer=milobahg
RUN mkdir /var/log/client_logs; chmod 777 -R /var/log/client_logs
VOLUME /var/log/client_logs
RUN apt-get update -y; apt-get install rsyslog -y
ADD rsyslog.conf /etc/rsyslog.conf
CMD rsyslogd -n

