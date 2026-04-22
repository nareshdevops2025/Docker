resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx"
    namespace = kubernetes_namespace.dev.metadata[0].name
  }
  
  depends_on = [
  kubernetes_persistent_volume_claim.app_pvc
]

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = "nginx"

          volume_mount {
            name       = "html"
            mount_path = "/usr/share/nginx/html"
          }
        }

        volume {
          name = "html"

          persistent_volume_claim {
            claim_name = kubernetes_persistent_volume_claim.app_pvc.metadata[0].name
          }
        }
      }
    }
  }
}
