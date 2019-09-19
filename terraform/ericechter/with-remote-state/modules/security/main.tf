provider "aws" {
  region = "eu-central-1"
}

resource "aws_security_group" "blue-ericechter-instance" {
  //name = "blue-ericechter-instance-${random_id.myrandom.hex}"
  name = "blue-ericechter-instance"
  tags = {
    Name  = "blue-ericechter-instance"
    owner = var.owner
  }
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

/*resource "random_id" "myrandom" {
  byte_length = 3
}*/