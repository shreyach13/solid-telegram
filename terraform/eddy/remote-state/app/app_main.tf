provider "aws" {
  region = "eu-central-1"
}

module "web_server" {
  source = "../modules/compute"
  server_port = var.server_port
  //my-blue-security-group = module.security.blue-sggroup
  my-blue-security-group = module.security.security_group_name
}

module "security" {
  //source = "../modules/security"
  source = "git::https://github.com/mhristof/security"
  from_port = var.server_port
  to_port   = var.server_port
}
