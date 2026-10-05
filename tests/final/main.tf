terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "5.16.0"
    }
  }
}

variable "endpoint" {
    type = string
}

data "http" "index" {
    url = var.endpoint
    method = "GET"
}
