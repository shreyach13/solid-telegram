This example will deploy VAULT into a container then have another container perform the initilization and setup a SSH CA store in VAULT. A daemonSet starts a third container that will get the public SSH key from vault and write it as a PEM file to the AWS EKS host's local /etc/ssh dir and update the /etc/ssh/sshd_config to reference the key (EKS host needs to be restarted to take effect)... 

If we had more than one EKS host, the daemonSet would be run on all hosts (but we would need a method to reference the vault TOKEN as currently details only written to one host's local dir - using a S3 bucket could be one sol'n)...

- The vault.hcl defines the r/w dir for VAULT to /mnt/vault on container1.

- configure_vault.sh is deployed (via a configMap) to /usr/local/bin on container2.

- setup-ssh.sh is also deployed (via a condfigMap) to contaner 3.

All setup combined into single yml file, so sol'n can be deployed with single command ie.

- $ kubectl apply -f green-oneshot-vault.yml

Note : the deployment is hard-coded to run in the green-oneshot namespace, so this needs to exist beforehand...

  $ kubectl create namespace green-oneshot


Current Issues
- Setup vault/ssh containers continuously restarts (workaroud with a 3600 sleep)

```bash
.
├── README.md
└── green-oneshot-vault.yml

0 directories, 2 files
```
