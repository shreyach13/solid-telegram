provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "webserver" {
  ami = "ami-0ac05733838eabc06"
  instance_type = "t2.micro"
  tags = {
    Name = "EricEchter-WebServer"
  }
}

resource "aws_s3_bucket" "ericechter-terraform" {
  bucket = "ericechter-terraform"
  region = "eu-central-1"
}
