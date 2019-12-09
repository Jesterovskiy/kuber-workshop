provider "kubernetes" {}

resource "kubernetes_pod" "test" {
  metadata {
    name = "terraform-example"
  }

  spec {
    container {
      image = "nginx:1.7.8"
      name  = "example"

      env {
        name  = "environment"
        value = "test"
      }

      env {
        name  = "blahblah"
        value = "123"
      }
    }
  }
}
