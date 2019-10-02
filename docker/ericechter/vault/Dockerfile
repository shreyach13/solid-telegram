FROM ubuntu:18.04 AS vault

WORKDIR /home/app

# ADD https://releases.hashicorp.com/vault/1.2.2/vault_1.2.2_linux_amd64.zip .

COPY vault_1.2.2_linux_amd64.zip .

COPY vault.hcl .

RUN apt-get update && \
      apt-get install -y unzip && \
      unzip /home/app/vault_1.2.2_linux_amd64.zip && \
      rm -f vault_1.2.2_linux_amd64.zip && \
      rm -rf /var/lib/apt/lists/*

CMD /home/app/vault server -config vault.hcl
