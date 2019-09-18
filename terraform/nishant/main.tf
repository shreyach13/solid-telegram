provider "aws" {
    region = "eu-central-1"
}

#basic example od how to provision an ec2 instance
resource "aws_instance" "webserver" {
    ami = "ami-010fae13a16763bb4"
    instance_type = "t2.micro"
    #security_groups = ["${aws_security_group.allow_tls_traffic.id}"]
    tags = {
        Name = "nishant-terraform-instance"
    }
}

#basic example of creating s3 bucket
resource "aws_s3_bucket" "nishant-terraform" {
    bucket = "nishant-terraform"
    region = "eu-central-1"
    
}