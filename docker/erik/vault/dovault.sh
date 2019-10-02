#!/usr/bin/env bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
apt-get update
apt-get install -y curl
while ! curl http://my-vault:8200/v1/sys/health | grep initialized; do
    echo "Waiting for vault to become available"
    sleep 1;
done

./vault operator init -key-shares 1 -key-threshold 1 > vault_out.txt
UNSEALKEY=`grep "Unseal Key 1" vault_out.txt | awk '{print $NF}'`
INITKEY=`grep "Initial Root Token" vault_out.txt | awk '{print $NF}'`
echo $UNSEALKEY
echo $INITKEY
./vault operator unseal ${UNSEALKEY}
export VAULT_TOKEN=${INITKEY}
./vault secrets enable -path secret kv
