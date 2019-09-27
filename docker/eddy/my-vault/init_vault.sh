#!/bin/bash


sleep 5
/home/vault/vault operator init -key-shares 1 -key-threshold 1 > /home/vault/tmp.txt
unseal=$(cat /home/vault/tmp.txt | grep Unseal | awk '{print $NF}')
echo "Trying to unseal now... using key "$unseal
/home/vault/vault operator unseal $unseal

root_token=$(cat /home/vault/tmp.txt | grep Root | awk '{print $NF}')
echo "Trying to unseal now... using key "$root_token
export VAULT_TOKEN=$root_token

rm /home/vault/tmp.txt

#Enable K/V secrets engine
/home/vault/vault secrets enable -path secret kv

#yeah
/home/vault/vault kv put secret/foo value=bar
