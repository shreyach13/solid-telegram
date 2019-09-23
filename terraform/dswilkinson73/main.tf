provider "aws" {
  region  = "eu-central-1"
}

resource "aws_s3_bucket" "terraform-dswilkinson73" {
  bucket = "terraform-dswilkinson73"
  region = "eu-central-1"
  tags = {
    Name = var.name
    owner = var.owner
  }
}
