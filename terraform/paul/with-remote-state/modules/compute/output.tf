output "public_ip" {
  description="public IP of the server"
  value=aws_instance.compute.public_ip
}
