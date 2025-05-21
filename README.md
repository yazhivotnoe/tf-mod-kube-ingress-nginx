
           ."`".
       .-./ _=_ \.-.
      {  (,(oYo),) }}
      {{ |   "   |} }
      { { \(---)/  }}
      {{  }'-=-'{ } }
      { { }._:_.{  }}
      {{  } -:- { } }
      {_{ }`===`{  _}
     ((((\)     (/))))

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.ingress_controller_internal](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | Set internal ingress controller chart name here | `string` | `"ingress-nginx"` | no |
| <a name="input_config_context"></a> [config\_context](#input\_config\_context) | Set context name from kubeconf here | `string` | n/a | yes |
| <a name="input_config_path"></a> [config\_path](#input\_config\_path) | Set path to k8s contexts file | `string` | `"~/.kube/config"` | no |
| <a name="input_controller_kind"></a> [controller\_kind](#input\_controller\_kind) | n/a | `string` | `"Deployment"` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | n/a | `bool` | `true` | no |
| <a name="input_deployment_namespace"></a> [deployment\_namespace](#input\_deployment\_namespace) | n/a | `string` | `"ingress-nginx"` | no |
| <a name="input_helm_repo"></a> [helm\_repo](#input\_helm\_repo) | Set helm repository name or url here | `string` | `"https://kubernetes.github.io/ingress-nginx"` | no |
| <a name="input_ingress_class_name"></a> [ingress\_class\_name](#input\_ingress\_class\_name) | Set internal ingress controller chart name here | `string` | `"nginx"` | no |
| <a name="input_ingress_version"></a> [ingress\_version](#input\_ingress\_version) | Set internal ingress controller version here, last version | `string` | `"4.12.3"` | no |
| <a name="input_manual_ingress_version_set"></a> [manual\_ingress\_version\_set](#input\_manual\_ingress\_version\_set) | automatic set last ingress controller version or manualy point in ingress\_version var | `bool` | `false` | no |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | n/a | `string` | `"ingress-nginx"` | no |
| <a name="input_service_enable"></a> [service\_enable](#input\_service\_enable) | n/a | `bool` | `true` | no |
| <a name="input_service_type"></a> [service\_type](#input\_service\_type) | n/a | `string` | `"LoadBalancer"` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | wait time in second for all resource in a ready state | `number` | `300` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | n/a | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->