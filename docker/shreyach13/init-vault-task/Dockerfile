FROM ubuntu:18.04
LABEL maintainer = "Shreya_C"
LABEL version = "My Vault -v1"
COPY vault_1.2.3_linux_amd64.zip /
COPY get-install-vault.sh /
COPY vault.hcl /
RUN chmod +x /get-install-vault.sh
COPY init_vault.sh /
RUN chmod +x /init_vault.sh
RUN /get-install-vault.sh
CMD ["./vault", "server", "-config", "./vault.hcl"]
