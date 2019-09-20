provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# create a container
resource "docker_container" "foo" {
  image = "${docker_image.ubuntu.latest}"
  name = "foo"
}

# select an image
resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}
