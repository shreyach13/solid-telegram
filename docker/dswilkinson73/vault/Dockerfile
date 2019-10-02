FROM ubuntu:18.04
  
WORKDIR /usr/bin
ADD ./vault /usr/bin/vault
ADD ./vault.hcl /etc/vault.hcl
ADD ./runvault.sh /runvault.sh
RUN chmod +x /runvault.sh
CMD ["/runvault.sh"]
