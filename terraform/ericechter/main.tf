provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "blue-ericechter-terraform" {
  bucket = "blue-ericechter-terraform"
  region = "eu-central-1"
  tags = {
    Name  = "blue-ericechter-terraform"
    owner = var.owner
  }
}
