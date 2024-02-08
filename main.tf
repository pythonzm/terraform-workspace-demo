resource "kubernetes_config_map" "master" {
  metadata {
    name      = "master"
    namespace = "master"
  }

  data = {
    branch = "master"
  }
}
