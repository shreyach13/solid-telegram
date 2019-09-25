provider "aws" {
    region = "eu-central-1"
}

module "webserver" {
    source = "../modules/compute"
    server_port = var.server_port
    green_security_group_name = module.security.security_group_name

}

module "security" {
    source = "git::https://github.com/mhristof/security.git?ref=v3.0.0"
    from_port = var.from_port
    to_port = var.to_port
}
