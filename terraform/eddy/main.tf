# Terraform script is being run sequentially
provider "aws" {
  region = "eu-central-1"
}
# Next we use a bucket
resource "aws_s3_bucket" "s3-bucket" {
  bucket = "s3-eddy-bucket"
  region = "eu-central-1"
  tags = {
    owner = var.owner
  }
}
