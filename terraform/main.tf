terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "node-hello" {
  name          = "node-hello:latest"
  keep_locally  = true
}


resource "docker_container" "node-hello" {
  name  = "my-node-hello"
  image = docker_image.node-hello.image_id
  must_run = true
  restart = "always"

  ports {
    internal = 3000
    external = 3000
  }

  lifecycle {
    replace_triggered_by = [docker_image.node-hello]
  }
}

