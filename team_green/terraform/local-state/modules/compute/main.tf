provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "jenkins_server" {
     ami            = "ami-0d01b4444599bbd02"
     instance_type  = "t2.micro"
     security_groups = [var.security_group_id]
     tags = {
          Name = "greenteam-jenkinsserver"
          Owner = "green-team"
     }
}
