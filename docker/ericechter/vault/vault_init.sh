ikey=$(/home/app/vault operator init -key-shares 1 -key-threshold 1 | awk -F"Unseal Key 1: " '{print $2}')
# Example Token out = Root Token:
#/home/app/vault operator init -key-shares 1 -key-threshold 1
/home/app/vault operator unseal "$ikey"

sleep 1000
