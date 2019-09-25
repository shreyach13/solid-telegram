provider "aws" {
    region = "eu-central-1"
}


#basic example of creating s3 bucket
resource "aws_s3_bucket" "green-terraform" {
    bucket = "green-terraform-20190919"
    region = "eu-central-1"
    tags = {
        Name = "green-terraform-bucket-20190919"
    }
    
}
