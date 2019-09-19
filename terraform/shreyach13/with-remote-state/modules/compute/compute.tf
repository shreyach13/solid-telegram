provider "aws" {
  region = "eu-central-1"
}

# A basic vm example to show how to provision a vm
resource "aws_instance" "shreya_webserver"{
  ami = "ami-00aa4671cbf840d82"
  instance_type = "t2.micro"
  user_data = <<-EOF
            #!/bin/bash
            echo "Hello, World" >index.html
            nohup busybox httpd -f -p "${var.server_port}" &
            EOF
  #This will change the name of the instance
  security_groups = [var.security_group_id]
  tags = {
    Name = "Red Team"
    Owner = "RED"
  }
}
