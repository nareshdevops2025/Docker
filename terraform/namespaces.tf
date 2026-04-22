resource "kubernetes_namespace" "dev" {
  metadata {
    name = "dev"
  }

  depends_on = [
    null_resource.minikube
  ]
}
