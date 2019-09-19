provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "web_server" {
  ami             = "ami-0cdab515472ca0bac"
  instance_type   = "t2.micro"
  security_groups = [
    var.my-blue-security-group
  ]
  tags = {
    Name  = "Eddy's web server" 
    owner = var.owner
  }
  user_data = <<-EOF
    #!/bin/bash
    echo "hello world from Eddy's first security sggroup" > index.html
    nohup busybox httpd -f -p "${var.server_port} &
    EOF
}
