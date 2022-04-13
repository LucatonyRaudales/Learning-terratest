variable "do_token" {}
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}


resource "digitalocean_ssh_key" "key" {
  name       = "key"
  public_key = file("id_rsa.pub")
}