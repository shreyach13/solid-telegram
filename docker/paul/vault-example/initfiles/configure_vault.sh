#!/bin/bash

sleep 10

# Create some output for later usage
vault operator init -key-shares 1 -key-threshold 1 > /tmp/vault.init

SEAL_KEY=`cat /tmp/vault.init | grep ^Unseal | awk ' { print $NF } '`
ROOT_KEY=`cat /tmp/vault.init | grep "Initial Root" | awk ' { print $NF } '`

echo "SEAL_KEY=$SEAL_KEY"
echo "ROOT_KEY=$ROOT_KEY"

# Unseal the vault
vault operator unseal "$SEAL_KEY"

export VAULT_TOKEN="$ROOT_KEY"
vault secrets enable -path secret kv

# Write a simple K/V value
vault kv put secret/foo value=bar
