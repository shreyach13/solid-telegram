TMP_VAULT_DATA=/tmp/vault.init

apk --no-cache add \
      bash \
      ca-certificates \
      curl

echo "VAULT_ADDR=$VAULT_ADDR"

# Simple wait loop for vault server
set -euo pipefail

while ! curl $VAULT_ADRRESS/v1/sys/health | grep initialized; do
    echo "Waiting for vault to accept connections"
    sleep 1;
done

# Save the output text to get the SEAL_KEY and ROOT_KEY
vault operator init -key-shares 1 -key-threshold 1 >  $TMP_VAULT_DATA

SEAL_KEY=`cat $TMP_VAULT_DATA | grep ^Unseal | awk ' { print $NF } '`
ROOT_KEY=`cat $TMP_VAULT_DATA | grep "Initial Root" | awk ' { print $NF } '`

# Remove TMP_VALUE_DATA
rm -f $TMP_VAULT_DATA

# echo details (for debugging)
echo "SEAL_KEY=$SEAL_KEY"
echo "ROOT_KEY=$ROOT_KEY"

# Setup VAULT_TOKEN
export VAULT_TOKEN="$ROOT_KEY"

# Unseal the vault
vault operator unseal "$SEAL_KEY"

# Setup a new secrets area
#vault secrets enable -path secret kv

# Write a simple K/V value
#vault kv put secret/foo value=bar

# Setup SSH CA
vault secrets enable ssh
vault write ssh/config/ca generate_signing_key=true
