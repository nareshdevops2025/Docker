resource "helm_release" "nginx_helm" {
  name       = "nginx-helm"
  namespace  = kubernetes_namespace.dev.metadata[0].name
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"

  values = [
    <<EOF
service:
  type: NodePort
EOF
  ]
}
