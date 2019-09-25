provider "aws" {
  region = "eu-central-1"
}

module "shreya_web_server" {
  source = "../modules/compute"
  server_port = var.server_port
  security_group_id=module.security.security_group_name
}

module "security" {
  #source = "source = "../modules/security""
  source = "git@github.com:mhristof/security.git?ref=v3.0.0"
  from_port = var.server_port
  to_port = var.server_port
}
