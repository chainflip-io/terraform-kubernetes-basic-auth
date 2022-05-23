<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_external"></a> [external](#provider\_external) | 2.2.2 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.11.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_secret.basic-auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [random_string.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [external_external.htpasswd](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_annotations"></a> [annotations](#input\_annotations) | Any annotations you would like to include in the metadata. | `map(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the basic auth secret to create. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Which namespace to place the basic auth secret in once created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_password"></a> [password](#output\_password) | The htpasswd-encoded basic auth password. |
<!-- END_TF_DOCS -->