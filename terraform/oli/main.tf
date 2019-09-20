provider "aws" {
        region = "eu-central-1"
}

resource "aws_s3_bucket" "state-yellow-bucket" {
	bucket = "terraform-oli-erik-yellow"
	region = "eu-central-1"

	tags = {
	Name = "team-yellow-bucket"
	owner = var.owner
}
}
