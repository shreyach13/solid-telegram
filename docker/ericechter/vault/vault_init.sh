#!/bin/bash

read KEY TOKEN <<< \
  $(/home/app/vault operator init -key-shares 1 -key-threshold 1 | \
  awk -F"1: | Token: " '$2 != "" {ORS=" "; print $2}')
/home/app/vault operator unseal ${KEY}
export VAULT_TOKEN=${TOKEN}
/home/app/vault secrets enable -path secret kv
/home/app/vault kv put secret/foo value=bar

sleep 1000
