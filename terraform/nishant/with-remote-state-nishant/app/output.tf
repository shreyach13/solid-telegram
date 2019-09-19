output "public_ip" {
    value = module.webserver.public_ip
}

output "security_group_name" {
    value = module.security.security_group_name
}