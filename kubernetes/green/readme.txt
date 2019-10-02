1. Create EKS
   we will use the existing one.

2. Decide naming convention for namespaces
   Create namespace
   Create a namespace for the non Vault application
   KISS - one namespace for all stuff
3. Use the existing Vault hashicorp image
4. Create k8s service/deployment
   Container list
     Vault
     Create a persistent disk
     Vault initialiser (root key/unseal key)
     Vault configurer (enable ssh CA)
     Ssh-ca-dumper (gets the ssh CA and dumps it to disk)
5.  Initialize Vault and get the unseal/root stuff
      Store it somewhere where it can be shared (volume)
6. Setup vault with the backends/etc

7. Create the ssh CA (mike TODO)
     Change the TTL for the certificate (mike TODO)
8. Create Vault policies for ssh CA access
9. Create an EC2 instance to deploy the public CA

Each team gets a k8s node to work on
Deploy your CA public key to the ec2 instance (k8s node)
Mike TODO
10. DaemonSet with nodeSelector
11. Test that the CA works

Mike TODO
------------------------------------------------------------------------------------------------------------------------
nodeSelector:
  failure-domain.beta.kubernetes.io/zone: <see region/AZ below>
Red Team: eu-central-1a
Blue Team: eu-central-1b
Green Team: eu-central-1c
