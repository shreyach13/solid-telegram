FROM alpine:3.10

WORKDIR /home/vault

ADD vault_1.2.2_linux_amd64.zip /home/vault/
ADD vault.hcl /home/vault/vault.hcl
RUN chmod 777 /home/vault/vault.hcl
RUN unzip /home/vault/vault_1.2.2_linux_amd64.zip
ADD run_server.sh /home/vault/run_server.sh
RUN chmod +x /home/vault/run_server.sh
RUN cp /home/vault/vault /usr/bin/vault
RUN chmod +x /usr/bin/vault

CMD ["/home/vault/run_server.sh"]

