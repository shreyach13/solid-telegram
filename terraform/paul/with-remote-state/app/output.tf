output "public_ip" {
  value=module.compute.public_ip
}

output "green_security_group_name" {
  value = module.security.security_group_name
}
