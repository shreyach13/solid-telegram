output "public_ip" {
  description="the public ip of the server"
  value=aws_instance.shreya_webserver.public_ip
}
