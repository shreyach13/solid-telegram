vault read -field=public_key ssh/config/ca > /etc/ssh/trusted-user-ca-keys.pem

/etc/ssh/sshd_config

TrustedUserCAKeys /etc/ssh/trusted-user-ca-keys.pem
