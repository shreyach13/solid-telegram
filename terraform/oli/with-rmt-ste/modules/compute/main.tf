provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-00aa4671cbf840d82"
  instance_type = "t2.micro"
  user_data     = <<-EOF
		#!/bin/bash
		echo "Hello World" >index.html
		nohup busybox httpd -f -p "${var.server_port}" &
		EOF
  security_groups = [var.security_group_name]
  tags = {
    Name            = "yellow-team-rules"
    owner           = "yellow-team"
  }
}
