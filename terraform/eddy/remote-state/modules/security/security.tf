// file: security/security.tf

resource "aws_security_group" "blue-instance-eddy" {
  name = "blue-terraform-instance-eddy"
  tags = {
    name = "blue sggroup Eddy"
  }
  ingress {
    from_port = var.from_port
    to_port = var.to_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# resource "random_id" "myrandom" {
#   byte_length = 3
# }
