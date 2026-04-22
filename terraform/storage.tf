resource "kubernetes_persistent_volume_claim" "pvc" {
  metadata {
    name      = "app-pvc"
    namespace = kubernetes_namespace.dev.metadata[0].name
  }

  spec {
    access_modes = ["ReadWriteOnce"]

    resources {
      requests = {
        storage = "1Gi"
      }
    }
  }
}
