output "webserver-public-ip" {
  description = "Display the public ip of the server"
  value = aws_instance.web_server.public_ip
}
