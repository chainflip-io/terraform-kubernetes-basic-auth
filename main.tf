resource "random_string" "password" {
  length  = 48
  special = false
  upper   = false
}

data "external" "htpasswd" {
  program = ["/bin/sh", "${path.module}/htpasswd.sh"]
  query = {
    pass = random_string.password.result
  }
}

resource "kubernetes_secret" "basic-auth" {
  metadata {
    name        = var.name
    namespace   = var.namespace
    annotations = var.annotations
  }
  data = {
    auth = data.external.htpasswd.result.file
  }
  lifecycle {
    ignore_changes = [data]
  }
}

