provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "eriks-terraform" {
  bucket = "erik-terraform-bucket"
  region = "eu-central-1"
  tags = {
    Name = "ErikWebserver"
    owner = var.owner
  }
}
