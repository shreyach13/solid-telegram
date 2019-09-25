output "public_ip" {
    description = "the public ip of the server"
    value = aws_instance.webserver.public_ip
}