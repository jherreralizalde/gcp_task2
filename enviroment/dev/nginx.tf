resource "helm_release" "nginx_ingress" {
  name = "nginx"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"

  set {
    name  = "service.type"
    value = "NodePort"
  }
  set {
    name  = "ingress.hostname"
    value = "nginx.test"
  }
  set {
    name  = "ingress.path"
    value = "/*"
  }
  set {
    name  = "replicaCount"
    value = 3
  }
}