resource "digitalocean_domain" "default" {
  name = "craigthacker.cloud"
}

# Add an A record to the domain for www.example.com.
resource "digitalocean_record" "dev" {
  domain = digitalocean_domain.default.id
  type   = "CNAME"
  name   = "www"
  value  = "craigthacker.dev"
}