FROM ubuntu:18.04
LABEL Maintainer = "Erik Vermeer"
LABEL Version = "1.1 - Install vault and start vault server"
COPY ./vault /vault
COPY ./vault.hcl /vault.hcl
CMD ["/vault", "server" ,"-config", "/vault.hcl"]
