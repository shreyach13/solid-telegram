provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "compute" {
  ami   = "ami-00aa4671cbf840d82"
  instance_type = "t2.micro"
  security_groups = [ var.green_security_group_name_instance ]
  tags = {
     Name = "green-instance"
     Owner = "Green-Team"
    }
  user_data = <<-EOF
		#!/bin/bash
		echo "Hello world!!!" > index.html
		nohup busybox httpd -f -p "${var.server_port}" &
		EOF
}
