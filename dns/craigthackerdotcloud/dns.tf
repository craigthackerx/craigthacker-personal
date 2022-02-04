resource "digitalocean_domain" "default" {
  name = "craigthacker.cloud"
}

# Add an A record to the domain for www.example.com.
resource "digitalocean_record" "www" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "www"
  value  = "192.168.1.1"
}