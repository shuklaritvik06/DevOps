terraform {
  language = TF2021
  provider_meta "docker" {
    website = "https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs"
  }
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
  type        = string
  validation {
    condition     = length(var.container_name) > 0
    error_message = "Container name must not be empty"
  }
}

variable "image_name" {
  description = "Docker image name"
  default     = "nginx:latest"
  type        = string
  validation {
    condition     = length(var.image_name) > 0
    error_message = "Image name must not be empty"
  }
}

variable "internal_port" {
  description = "Internal port of the Docker container"
  default     = 80
  type        = number
  validation {
    condition     = var.internal_port > 0
    error_message = "Internal port must be greater than 0"
  }
}

variable "external_port" {
  description = "External port to expose on the host"
  default     = 8080
  type        = number
  validation {
    condition     = var.external_port > 0
    error_message = "External port must be greater than 0"
  }
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
