#!/bin/bash
sleep 10
#UNSEAL_KEY=`/usr/bin/vault operator init -key-shares 1 -key-threshold 1 |grep "Unseal Key" |awk '{print $NF}'`
/usr/bin/vault operator init -key-shares 1 -key-threshold 1 > /tmp/vault.txt
UNSEAL_KEY=`cat /tmp/vault.txt |grep "Unseal Key" |awk '{print $NF}'`
ROOT_TOKEN=`cat /tmp/vault.txt |grep "Initial Root Token" |awk '{print $NF}'`
/usr/bin/vault operator unseal "$UNSEAL_KEY"

echo "My Variables"
echo $UNSEAL_KEY
echo $ROOT_TOKEN

export VAULT_TOKEN="$ROOT_TOKEN"
/usr/bin/vault secrets enable -path secret kv
/usr/bin/vault kv put secret/foo value=bar
