resource "digitalocean_domain" "default" {
  name = "craigthacker.cloud"
}

resource "digitalocean_record" "dev" {
  domain = digitalocean_domain.default.id
  type   = "CNAME"
  name   = "www"
  value  = "craigthacker.dev."
}

resource "digitalocean_record" "a" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "@"
  value  = "185.199.111.153"
}

resource "digitalocean_record" "keybase_txt" {
  domain = digitalocean_domain.default.id
  type   = "TXT"
  name   = "@"
  value  = "keybase-site-verification=lAAezlDhMT9B3ro75XIyMmhWQiUzAGP2X9XFguD7lWU"
}

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

resource "digitalocean_record" "libre_gh_txt" {
  domain = digitalocean_domain.libre_do.id
  name   = "TXT"
  type   = "_github-pages-challenge-libre-devops"
  value  = "c87317bdb28f83d7014075d686ffe3"
}
