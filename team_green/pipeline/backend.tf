terraform {
  backend "s3" {
    key = "green-core/terraform.tfstate"
  }
}
