module "web_server"{
   source = "../modules/compute"
   server_port = var.server_port
   security_group_id=module.security.security_group_name
  }
 module "security" {
  source = "git@github.com:mhristof/security.git?ref=v3.0.0"
 }
