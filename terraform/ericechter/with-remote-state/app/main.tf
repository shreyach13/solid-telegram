provider "aws" {
  region = "eu-central-1"
}

module "security" {
  source    = "../modules/security"
  from_port = var.server_port
  to_port   = var.server_port
}

module "web_server" {
  source            = "../modules/compute"
  server_port       = var.server_port
  my_security_group = module.security.security_group_name
}
