FROM alpine:3.7

WORKDIR /home/app

ADD vault_1.2.2_linux_amd64.zip /home/app/vault_1.2.2_linux_amd64.zip

ADD vault.hcl /home/app/vault.hcl

RUN chmod 777  /home/app/vault.hcl

RUN unzip  /home/app/vault_1.2.2_linux_amd64.zip

RUN cp /home/app/vault /usr/bin/vault

RUN chmod 777 /usr/bin/vault

COPY runserver.sh /home/app/runserver.sh

RUN chmod +x  /home/app/runserver.sh

CMD ["/home/app/runserver.sh"]



