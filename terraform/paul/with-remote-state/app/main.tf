provider "aws" {
  region = "eu-central-1"
}

module "web_server" {
  source = "../modules/compute"
  server_port = var.server_port
}

module "security" {
  source = "../modules/security"
//  from_port = var.server_port
//  to_port = var.server_port
}
// output "public_ip" {
//   value = "${aws_instance.webserver.public_ip}"
//   description = "This is my public IP"
// }

// output "webserver" {
//   value = "${aws_instance.webserver}"
//   description = "This is my webserver"
// }
