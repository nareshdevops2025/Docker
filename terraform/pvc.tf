resource "kubernetes_persistent_volume" "local_pv" {
  metadata {
    name = "local-pv"
  }

  depends_on = [
    null_resource.minikube
  ]

  spec {
    capacity = {
      storage = "5Gi"
    }

    access_modes = ["ReadWriteOnce"]

    persistent_volume_source {
      host_path {
        path = "/mnt/data"
      }
    }
  }
}
