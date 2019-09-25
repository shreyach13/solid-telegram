FROM ubuntu:18.04
LABEL Maintainer = "Erik Vermeer"
LABEL Version = "1.1 - Install vault and start vault server"
COPY ./vault /vault
COPY ./vault.hcl /vault.hcl
COPY ./dovault.sh /dovault.sh
RUN chmod +x /dovault.sh
CMD ["/vault", "server" ,"-config", "/vault.hcl"]
