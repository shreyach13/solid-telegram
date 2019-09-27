1. Start a vault server

```
vault server -dev
```

2. Get the vault address and the root token from the logs and setup your environment, for example

```
You may need to set the following environment variable:

    $ export VAULT_ADDR='http://127.0.0.1:8200'

The unseal key and root token are displayed below in case you want to
seal/unseal the Vault or re-authenticate.

Unseal Key: EZQsbw/V9uObRLBHNVk45jjmJ6TMqhgZ0DpXQjhvE3c=
Root Token: s.7h9YcnWUwT4sPnVyfmVp76Ix
```

you should export

```
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN=s.7h9YcnWUwT4sPnVyfmVp76Ix
```

3. Enable a K/V backend

```
vault secrets enable -path kv kv
```


Verify that it works with

```
vault kv put kv/mike value=awesome
```


4. Create the `producer.hcl` policy file


```
path "kv/letterbox" {
    capabilities = [
        "create",
        "read",
        "update",
        "delete",
        "list",
    ]
}
```

5. Create the policy on the vault server


```
vault policy write producer producer.hcl
```

6. Create a token for that policy and test it out

```
vault token create -policy producer
Key                  Value
---                  -----
token                s.zSyi3hMpfWuyQrA6dZyGZVSe
token_accessor       oFj7UtRfT2HCG52bIvSEcRL6
token_duration       768h
token_renewable      true
token_policies       ["default" "producer"]
identity_policies    []
policies             ["default" "producer"]
```

Test it with

```
VAULT_TOKEN=s.zSyi3hMpfWuyQrA6dZyGZVSe vault kv put kv/letterbox value=producer-was-here
```


7. Create a consumer policy and upload it that will be able to do a read but not a write

```
vault kv get kv/letterbox
```

8. Modify the `producer` policy to remove extra access to the letterbox path
