resource "helm_release" "ghost" {
  name = "ghost"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "ghost"

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "ghostHost"
    value = "ghost.test"
  }
}