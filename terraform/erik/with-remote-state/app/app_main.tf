provider "aws" {
  region = "eu-central-1"
}
module "web_server" {
  source = "../modules/compute"
  server_port = var.server_port
  security_group_name = module.security.security_group_name
}

module "security" {
  source = "git::https://github.com/mhristof/security.git"
  from_port = var.server_port
  to_port = var.server_port
}
