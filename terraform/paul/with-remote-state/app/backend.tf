terraform {
  backend "s3" {
    key = "dir/terraform.tfstate"
  }
}
