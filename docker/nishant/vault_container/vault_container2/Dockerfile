FROM alpine:3.10

WORKDIR /home/vault

ADD vault_1.2.2_linux_amd64.zip /home/vault/
RUN unzip /home/vault/vault_1.2.2_linux_amd64.zip
RUN cp /home/vault/vault /usr/bin/vault
RUN chmod +x /usr/bin/vault
ADD run_script.sh /run_script.sh
RUN chmod +x /run_script.sh

CMD ["/run_script.sh"]



