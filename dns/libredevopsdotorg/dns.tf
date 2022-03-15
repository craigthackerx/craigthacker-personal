resource "digitalocean_domain" "libre_do" {
  name = "libredevops.org"
}

resource "digitalocean_record" "libre_dev_cname" {
  domain = digitalocean_domain.libre_do.id
  type   = "CNAME"
  name   = "www"
  value  = "craigthacker.dev."
}

resource "digitalocean_record" "libre_do_a" {
  domain = digitalocean_domain.libre_do.id
  type   = "A"
  name   = "@"
  value  = "185.199.111.153"
}

resource "digitalocean_record" "libre_keybase_txt" {
  domain = digitalocean_domain.libre_do.id
  type   = "TXT"
  name   = "@"
  value  = "keybase-site-verification=LWdswVMuFo5osmODfBULUZkUGDi9pZZMWc8xnwJJy8g"
}
