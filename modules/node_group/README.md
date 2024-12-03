## Managed Node Group Module
Module for creating and managing Node Groups

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.78.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.eks_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_node_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks_cni_node_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_ecr_node_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_worker_node_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy.eks_cni_node_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy.eks_ecr_node_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy.eks_worker_node_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy_document.node-assume-role-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | # Define a capacity type | `string` | `"ON_DEMAND"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | # Define a cluster name | `string` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | # Define a common tags | `map(any)` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | # Define a capacity type | `number` | `20` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | # Define a capacity type list | `list(string)` | <pre>[<br/>  "t3.medium"<br/>]</pre> | no |
| <a name="input_pod_private_sn_1a"></a> [pod\_private\_sn\_1a](#input\_pod\_private\_sn\_1a) | # Define a pod private sn\_1a | `string` | n/a | yes |
| <a name="input_pod_private_sn_2b"></a> [pod\_private\_sn\_2b](#input\_pod\_private\_sn\_2b) | # Define a pod private sn\_2b | `string` | n/a | yes |
| <a name="input_pod_private_sn_3c"></a> [pod\_private\_sn\_3c](#input\_pod\_private\_sn\_3c) | # Define a pod private sn\_3c | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | # Define a project name | `string` | n/a | yes |

## Outputs

No outputs.
