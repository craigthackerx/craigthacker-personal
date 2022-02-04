variable "DO_TOKEN" {
  description = "This is passed as a environment variable, it is needed to access the DO API"
}

provider "digitalocean" {
  token = var.DO_TOKEN
}
