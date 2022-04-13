resource "digitalocean_app" "golang-sample" {
  spec {
    name   = "golang-sample"
    region = "ams"

    service {
      name               = "go-service"
      environment_slug   = "go"
      instance_count     = 1
      instance_size_slug = "professional-xs"

      git {
        repo_clone_url = "https://github.com/digitalocean/sample-golang.git"
        branch         = "main"
      }
    }
  }
}