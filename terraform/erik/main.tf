provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "webserver" {
  ami = "ami-0ac05733838eabc06"
  instance_type = "t2.micro"

  tags = {
    Name = "ErikWebserver"
  }
}

resource "aws_s3_bucket" "eriks-terraform" {
  bucket = "erik-terraform-bucket"
  region = "eu-central-1"
}
