provider "aws" {
    region = "eu-central-1"
}

resource "aws_instance" "webserver" {
    ami = "ami-010fae13a16763bb4"
    instance_type = "t2.micro"
    security_groups = [var.green_security_group_name]
    tags = {
        Name = "nishant-terraform-instance-remote"
        Owner = "green-team"
    }
    user_data = <<EOF
                #!/bin/bash
                echo "Hello, World" > index.html
                nohup busybox httpd -f -p "${var.server_port}" &
                EOF
            
}