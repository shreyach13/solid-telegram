This example will deploy VAULT into a container then have another container perform the initilization and setup a SSH CA store in VAULT.

The vault.hcl defines the r/w dir for VAULT to /mnt/vault on container green-vault.

configure_vault.sh is deployed (via a configMap) to /usr/local/bin by container green-vault-setup, and sets up the SSH CA store, generating a public SSH key on the main Vault container (green-vault). 

A hostPath based volume is used to store output generated during the Vault setup (in order to persist the VAULT_TOKEN) and is in turn mounted by the DaemonSet container green-vault-ssh. This runs a vault command to get the public SSH key from green-vault and write it to a PEM file in /etc/ssh on the EC2 EKS node. The node is accessed via another hostPath volume (host) mounted to /etc/ssh in the green-vault-ssh container. The /etc/ssh/sshd_config file is also updated to reference the added PEM file.    

Note : nodeSelector statements are needed in both green_vault and daemonset files in order to force a specific AWS EKS host - otherwise, the hostPath volume cannot be guaranteed...

How to run...
1. $ kubectl apply -f config.yml
2. $ kubectl apply -f green_vault.yml
3. $ kubectl apply -f daemonset.yml

Current Issues
- Setup/ssh containers continuously restart - preventing this with a 3600 sleep...
  (should convert to use initContainers)
- For single file triggering

Layout
```bash
.
├── README.md
├── config.yml                <- could be added to main yml file
├── configmap
│   ├── configure_vault.sh    <- script used to create confiMap run by green-vault-setup
│   ├── ssh-dump.sh           <- script used to create configMap run by green-vault-ssh
│   └── vault.hcl             <- initial config used to create configMap run by DaemonSet green-vault-ssh
├── daemonset.yml             <- Get Vault public SSH key and add to AWS EKS host (host requires restart)
└── green_vault.yml           <- Setup Vault

1 directory, 7 files
```
