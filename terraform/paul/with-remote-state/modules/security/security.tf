provider "aws" {
  region = "eu-central-1"
}

resource "aws_security_group" "green_security_group" {
  name   = "terraform-instance-${random_id.myrandom.hex}"
  ingress {
     from_port = var.from_port
     to_port = var.to_port
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "random_id" "myrandom" {
  byte_length = 3
}
