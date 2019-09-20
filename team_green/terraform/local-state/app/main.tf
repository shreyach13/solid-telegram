provider "aws" {
  region = "eu-central-1"
}
module "jenkins_server"{
   source = "../modules/compute"
   server_port = var.server_port
   security_group_id = module.security.security_group_id
  }
 module "security" {
  source = "../modules/security"
 }
