provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "ericechter-terraform" {
  bucket = "ericechter-terraform"
  region = "eu-central-1"
  tags = {
    owner = var.owner
  }
}
