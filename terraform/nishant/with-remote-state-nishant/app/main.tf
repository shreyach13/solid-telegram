provider "aws" {
    region = "eu-central-1"
}

module "webserver" {
    source = "../modules/compute"
    server_port = var.server_port
}

module "security" {
    source = "../modules/security"
    from_port = var.from_port
    to_port = var.to_port
}

