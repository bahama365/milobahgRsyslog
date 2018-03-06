# Docker Rsyslog Server 

An rsyslog server listening on TCP 514 and UDP 514. Client logs are inside /var/log/client_logs and this is optionally mounted to a local Docker volume. Run with the following command:

docker run -d --name syslog -v syslog:/var/log/client_logs -p 514:514/tcp -p 514:514/udp milobahg/rsyslog:latest
