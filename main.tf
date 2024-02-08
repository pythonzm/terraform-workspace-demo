resource "kubernetes_config_map" "test" {
  metadata {
    name      = "test"
    namespace = "test"
  }

  data = {
    branch = "test"
  }
}
