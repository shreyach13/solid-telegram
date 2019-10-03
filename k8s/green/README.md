This example will deploy VAULT into a container then have another container perform the initilization and setup a SSH CA store in VAULT.

The vault.hcl defines the r/w dir for VAULT to /mnt/vault on container1.

configure_vault.sh is deployed (via a configMap) to /usr/local/bin on container2.

3 mounts are made, 2 which access configmaps (vault-hcl and vault-setup-script) mounted to /mnt/init (c1) and /usr/local/bin (c2), and a final r/w mount /mnt/vault of an emptyDir volume (c1). 

Current Issues
- Setup container continuously restarts - preventing this with a 3600 sleep...

```bash
.
├── README.md
├── config.yml
├── configmap
│   ├── configure_vault.sh
│   ├── ssh-dump.sh
│   └── vault.hcl
├── daemonset.yml
└── green_vault.yml

1 directory, 7 files
```

