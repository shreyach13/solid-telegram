provider "aws" {
  region = "eu-central-1"
}

module "security" {
  source = "../modules/security"
//  from_port = var.server_port
//  to_port = var.server_port
}

module "compute" {
  source = "../modules/compute"
  server_port = var.server_port
  green_security_group_name_instance = module.security.green_security_group_name
}
