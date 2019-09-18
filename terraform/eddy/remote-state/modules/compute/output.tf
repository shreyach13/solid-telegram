output "public-ip" {
  description = "Display the public ip of the server"
  value = "this is the ip: ${aws_instance.web_server.public_ip}"
}
