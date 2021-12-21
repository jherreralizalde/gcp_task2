resource "kubernetes_ingress_v1" "example_ingress" {
  metadata {
    name = "ingress-nginx-ghost"
  }

  spec {
    rule {
      host = "ghost.test"
      http {
        path {
          backend {
            service {
              name = "ghost"
              port {
                number = 80
              }
            }
          }

          path = "/*"
        }
      }
    }
    rule {
      host = "nginx.test"
      http {
        path {
          backend {
            service {
              name = "nginx"
              port {
                number = 80
              }
            }
          }

          path = "/*"
        }
      }
    }
  }
}

