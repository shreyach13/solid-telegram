output "public_ip" {
  description = "the public ip of the server"
  value = aws_instance.web_server.public_ip
}
