provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0ac05733838eabc06"
  instance_type = "t2.micro"
  security_groups = [
    var.my_security_group
  ]
  tags = {
    Name  = "Blue-EricEchter-WebServer"
    owner = var.owner
  }
  user_data = <<-EOF
    #!/bin/bash
    echo "Blue team says Hello World!" > index.html
    nohup busybox httpd -f -p "${var.server_port}" &
    EOF
}
