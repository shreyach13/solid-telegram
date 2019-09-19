provider "aws" {
    region = "eu-central-1"
}


#basic example of creating s3 bucket
resource "aws_s3_bucket" "nishant-terraform" {
    bucket = "nishant-terraform"
    region = "eu-central-1"
    tags = {
        owner = var.owner
    }
    
}
