output "webserver-public-ip" {
  description = "Display the public ip of the server"
  value       = module.web_server.webserver-public-ip
}

output "blue-sg-group" {
  description = "Display the public ip of the server"
  value       = module.security.blue-sggroup
}
