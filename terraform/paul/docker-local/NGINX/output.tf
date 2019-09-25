output "network_details" {
  description = "the network details for the container"
  value = docker_container.nginx-server.network_data
}
