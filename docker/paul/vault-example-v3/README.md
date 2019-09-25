This docker-compose example will deploy 2 vault containers, one (my_vault) will run the main vault server, and once initialsed, the other (vault_setup) will configure the vault and create a new secret... 

This version uses a single configuration script that is called by the setup container, after the main server container has started using the default CMD.
```bash
.
├── Dockerfile
├── README.md
├── docker-compose.yml
└── setup_files
    ├── configure_vault.sh
    └── vault.hcl

1 directory, 5 files
```
