provider "aws" {
     region = "eu-central-1"
}
resource "aws_s3_bucket" "terraform" {
      bucket = "red3-prasanth-terraform"
      region = "eu-central-1"
      tags = {
      Name = "Prasanth Bucket"      
      owner = var.owner
      }
}
