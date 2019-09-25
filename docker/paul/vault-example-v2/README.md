```bash
.
├── Dockerfile-Vault             <- Builds the image for the main vault process
├── Dockerfile-VaultSetup        <- Builds the image for the configuring the vault server
├── README.md
├── docker-compose.yml           <- Orchestrate the environemnt
└── setup_files
    ├── configure_vault.sh       <- Steps to initialise the vault and create a secret - waits for vault server
    ├── init_vault.sh            <- Starts the vault server using base config in vault.hcl
    └── vault.hcl

1 directory, 7 files
```
