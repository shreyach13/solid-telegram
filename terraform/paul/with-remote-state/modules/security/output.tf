output "green_security_group_name" {
  description="public IP of the server"
  value=aws_security_group.green_security_group.name
}
