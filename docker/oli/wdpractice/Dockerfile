FROM ubuntu:18.04

WORKDIR /home/app

LABEL creator: "Oli B"

ADD vault.hcl /
ADD vault /
ADD initialize.sh /

RUN chmod +x /initialize.sh

CMD ["/vault", "server", "-config", "/vault.hcl"]
