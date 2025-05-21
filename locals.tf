locals {
  chart_version = var.manual_ingress_version_set ? var.ingress_version : ""
}
