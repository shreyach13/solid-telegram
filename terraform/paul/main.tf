provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "webserver" {
  ami	= "ami-00aa4671cbf840d82"
  instance_type = "t2.micro"

  tags = {
      Name = "Pauls-Webserver"
      owner = var.ownerName
      manager = var.manager
  }
}

resource "aws_s3_bucket" "pauls-terraform-state" {
  bucket = "s3-terraform-state-paul"
  region = "eu-central-1"
  tags = {
      owner = var.ownerName
  }
}

output "public_ip" {
  value = "${aws_instance.webserver.public_ip}"
  description = "This is my public IP"
}

output "webserver" {
  value = "${aws_instance.webserver}"
  description = "This is my webserver"
}
