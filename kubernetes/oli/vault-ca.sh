vault secrets enable ssh
vault write ssh/config/ca generate_signing_key=true
