provider "aws" {
     region = "eu-central-1"
}
resource "aws_s3_bucket" "terraform" {
      bucket = "prasanth-terraform"
      region = "eu-central-1"
      tags = {
      owner = var.owner
      }
}
