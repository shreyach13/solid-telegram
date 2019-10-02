output "public_ip" {
  description = "The public ip of the server"
  value = aws_instance.webserver.public_ip
}
