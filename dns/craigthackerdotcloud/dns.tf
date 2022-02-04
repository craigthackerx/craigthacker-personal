resource "digitalocean_domain" "default" {
  name = "craigthacker.cloud"
}

resource "digitalocean_record" "dev" {
  domain = digitalocean_domain.default.id
  type   = "CNAME"
  name   = "www"
  value  = "craigthacker.dev"
}

resource "digitalocean_record" "a" {
  domain = digitalocean_domain.default.id
  type   = "CNAME"
  name   = "www"
  value  = "185.199.111.153"
}