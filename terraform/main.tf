terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "node_hello" {
  name = "node-hello:v1"
  build {
    context = ".."
  }
}

resource "docker_container" "node_hello" {
  name  = "my-node-hello"
  image = docker_image.node_hello.image_id

  ports {
    internal = 3000
    external = 3000
  }
}

