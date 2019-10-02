#!/bin/bash
set -euox pipefail

while ! curl http://vault:8200/v1/sys/health | grep initialized; do
  echo "Waiting to see if initialized"
  sleep 2
done

/vault operator init -key-shares 1 -key-threshold 1 > vault_out.txt
UNSEALKEY=`grep "Unseal Key 1" vault_out.txt | awk '{print $NF}'`
INITKEY=`grep "Initial Root Token" vault_out.txt | awk '{print $NF}'`

echo $UNSEALKEY
echo $INITKEY

/vault operator unseal ${UNSEALKEY}
export VAULT_TOKEN=${INITKEY}
