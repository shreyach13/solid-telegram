TMP_VAULT_DATA=/tmp/vault.init

SEAL_KEY=`cat $TMP_VAULT_DATA | grep ^Unseal | awk ' { print $NF } '`
ROOT_KEY=`cat $TMP_VAULT_DATA | grep "Initial Root" | awk ' { print $NF } '`

# Setup VAULT_TOKEN
export VAULT_TOKEN="$ROOT_KEY"

vault read -field=public_key ssh/config/ca > /etc/ssh/trusted-user-ca-keys.pem

echo "TrustedUserCAKeys /etc/ssh/trusted-user-ca-keys.pem" >> /etc/ssh/sshd_config
