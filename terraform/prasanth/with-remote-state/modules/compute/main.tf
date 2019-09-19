provider "aws" {
     region = "eu-central-1"
}
resource "aws_instance" "webserver" {
     ami            = "ami-0ac05733838eabc06"
     instance_type  = "t2.micro"
     user_data= <<-EOF
     #!/bin/bash
     echo "Hello, World" > index.html
     nohup busybox httpd -f -p "${var.server_port}" &
     EOF
     tags = {
          Name = "Red3"
     }
     }
