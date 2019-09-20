provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx" {
  name = "nginx:1.11-alpine"
}

# create a container
resource "docker_container" "nginx-server" {
  image = "${docker_image.nginx.latest}"
  name = "nginx-server"
  ports {
    internal = 80
    external = 80
  }
}
