provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "jenkins_server" {
  ami             = "ami-0b1e820e117e53ce9"
  instance_type   = "t2.micro"
  security_groups = [var.security_group_id]
  tags = {
    Name  = "greenteam-jenkinsserver"
    Owner = "green-team"
  }
}
