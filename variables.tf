variable "config_context" {
  description = "Set context name from kubeconf here"
  type        = string
}

variable "config_path" {
  default     = "~/.kube/config"
  description = "Set path to k8s contexts file"
  type        = string
}

variable "helm_repo" {
  default     = "https://kubernetes.github.io/ingress-nginx"
  description = "Set helm repository name or url here"
  type        = string
}

variable "chart_name" {
  default     = "ingress-nginx"
  description = "Set internal ingress controller chart name here"
  type        = string
}

variable "ingress_class_name" {
  default     = "nginx"
  description = "Set internal ingress controller chart name here"
  type        = string
}

variable "create_namespace" {
  default = true
  type    = bool
}

variable "release_name" {
  default = "ingress-nginx"
  type    = string
}

variable "deployment_namespace" {
  default = "ingress-nginx"
  type    = string
}

variable "manual_ingress_version_set" {
  type        = bool
  description = "automatic set last ingress controller version or manualy point in ingress_version var"
  default     = false
}

variable "ingress_version" {
  default     = "4.12.3"
  description = "Set internal ingress controller version here, last version"
  type        = string
}

variable "wait" {
  type    = bool
  default = true
}

variable "timeout" {
  type        = number
  description = "wait time in second for all resource in a ready state"
  default     = 300
}

variable "service_type" {
  default = "LoadBalancer"
  type    = string
}

variable "service_enable" {
  default = true
  type    = bool
}

variable "controller_kind" {
  default = "Deployment"
  type    = string
  validation {
    condition     = contains(["Deployment", "DaemonSet"], var.controller_kind)
    error_message = "Values can be equal only Deployment or DaemonSet"
  }
}
