provider "aws" {
  region = "eu-central-1"
}

#This is create a new bucket
resource "aws_s3_bucket" "shreyatfstate" {
 bucket = "shreyaspace-tfstore-readteam"
 region = "eu-central-1"
 tags = {
    Name  = "Shreya bucket"
    Owner = "ShreyaC"
  }
}