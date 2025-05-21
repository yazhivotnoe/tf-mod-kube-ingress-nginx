resource "helm_release" "this" {
  name             = var.release_name
  namespace        = var.deployment_namespace
  create_namespace = var.create_namespace
  wait             = var.wait
  timeout          = var.timeout
  repository       = var.helm_repo
  chart            = var.chart_name
  version          = local.chart_version
  values = [templatefile("${path.module}/templates/values.yaml.tpl", {
    ingress_class   = var.ingress_class_name
    service_type    = var.service_type
    service_enable  = var.service_enable
    controller_kind = var.controller_kind
  })]
}
