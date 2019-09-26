#We are going to download an default image alpine which has nothing in it.
FROM ubuntu:18.04

#Change the container to a default working dir for my vault
WORKDIR /home/vault

RUN apt-get update && \
    apt-get install unzip wget -y

#copy the zip file into the container
COPY vault_1.2.2_linux_amd64.zip /home/vault
COPY vault.hcl /home/vault
COPY start_vault.sh /home/vault


RUN /usr/bin/unzip /home/vault/vault_1.2.2_linux_amd64.zip && \
    rm vault_1.2.2_linux_amd64.zip && \
    chmod 755 /home/vault/start_vault.sh

CMD ["/home/vault/start_vault.sh"]
