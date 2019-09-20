resource "aws_security_group" "instance" {
  name = "green-terraform-${random_id.myrandom.hex}"
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name  = "green"
    owner = "green team"
  }

  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "random_id" "myrandom" {
  byte_length = 3
}
