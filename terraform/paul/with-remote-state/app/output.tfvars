output "public_ip" {
  description="public IP of the server"
  value=aws_instance.web_server.public_ip
}
