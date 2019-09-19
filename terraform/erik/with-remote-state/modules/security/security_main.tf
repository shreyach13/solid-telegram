resource "aws_security_group" "mysg" {
  name = "yellow-sec-group"
  description = "Yellow team security group"
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
