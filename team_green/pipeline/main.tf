provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "team-green-bucket" {
  bucket = "terraform-team-green"
  region = "eu-central-1"

  tags = {
    Name  = "team-green-bucket"
    owner = var.owner
  }
}
