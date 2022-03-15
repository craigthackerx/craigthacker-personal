variable "AZURE_BACKEND_SA_NAME" {
  type        = string
  description = "This is passed as an environment variable, it is for the state backend storage"
}

variable "AZURE_BACKEND_SA_KEY" {
  type        = string
  description = "This is passed as an environment variable, it is for the state backend storage"
}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }

  backend "azurerm" {
  }
}