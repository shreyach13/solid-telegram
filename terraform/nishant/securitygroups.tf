resource "aws_security_group" "allow_tls_traffic" {
  name        = "allow_tls"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}