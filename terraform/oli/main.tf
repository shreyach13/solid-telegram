provider "aws" {
        region = "eu-central-1"
}

resource "aws_s3_bucket" "stateolisbucket" {
	bucket = "terraform-oli1-bucketsdu"
	region = "eu-central-1"

	tags = {
	owner = var.owner
}
}
