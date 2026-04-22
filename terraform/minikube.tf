resource "null_resource" "minikube" {
  provisioner "local-exec" {
    interpreter = ["cmd", "/C"]
    command     = "minikube start --driver=docker --cpus=2 --memory=4096 --cni=calico --addons=ingress"
  }

  triggers = {
    always_run = timestamp()
  }
}
