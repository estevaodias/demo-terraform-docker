terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "hello_world" {
  name         = var.image_name
  keep_locally = false
  
  build {
    path = "../"
  }
}

resource "docker_container" "hello_world" {
  image = docker_image.hello_world.latest
  name  = var.container_name

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
