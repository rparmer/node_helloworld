provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "testing" {
  image = "${docker_image.helloworld.latest}"
  name  = "testing"
  ports {
      internal = 5000
      external = 5000
  }
}

resource "docker_image" "helloworld" {
  name = "parmernas:8000/node_helloworld:v1"
}
