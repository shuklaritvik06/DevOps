terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.13.0"
    }
  }
}

variable "container_name" {
  description = "Name of the Docker container"
  default     = "nginx_container"
}

variable "image_name" {
  description = "Docker image name"
  default     = "nginx:latest"
}

variable "internal_port" {
  description = "Internal port of the Docker container"
  default     = 80
}

variable "external_port" {
  description = "External port to expose on the host"
  default     = 8080
}

provider "docker" {}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = var.image_name
  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
