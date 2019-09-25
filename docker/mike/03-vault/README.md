
1. Starting a server

```
vault server -config vault.hcl
```

2. Ensure `VAULT_ADDR` is set, for example

```
export VAULT_ADDR=http://localhost:8200
```

3. Initialize vault

```
vault operator init -key-shares 1 -key-threshold 1
```

4. Unseal vault

```
vault operator unseal E33jr9wxKxR831dqdXfq+AIsFK0jS4PNbmc576U9HhY=
```

5. Export Root token

```
export VAULT_TOKEN=s.qzfhS8qhmPX82vaYqnlEy36D
```

6. Enable K/V secrets engine

```
vault secrets enable -path secret kv
```

6. Write a simple K/V value

```
vault kv put secret/foo value=bar
```

7. Get Vault health with

```
curl http://localhost:8200/v1/sys/health
```

