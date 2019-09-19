provider "aws" {
    region = "eu-central-1"
}

module "webserver" {
    source = "../modules/compute"
    server_port = var.server_port
    //security_group_name = module.security.security_group_name

}

module "security" {
    source = "../modules/security"
    from_port = var.from_port
    to_port = var.to_port
}