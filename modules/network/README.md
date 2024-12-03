## Load Balancer Controller Module
Module for EKS network configuration

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.76.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.eks_public_eip_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.eks_public_eip_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.eks_public_eip_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.eks_igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.eks_public_ngw_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.eks_public_ngw_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.eks_public_ngw_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route.eks_pod_private_rt_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.eks_pod_private_rt_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.eks_pod_private_rt_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.eks_public_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.eks_ctp_private_rtb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.eks_dtb_private_rtb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.eks_pod_private_rtb_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.eks_pod_private_rtb_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.eks_pod_private_rtb_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.eks_public_rtb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.eks_rtb_assoc_ctp_private_sn_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_ctp_private_sn_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_ctp_private_sn_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_dtb_private_sn_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_dtb_private_sn_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_dtb_private_sn_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_pod_private_sn_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_pod_private_sn_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_pod_private_sn_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_public_sn_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_public_sn_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.eks_rtb_assoc_public_sn_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.eks_ctp_private_sn_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_ctp_private_sn_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_ctp_private_sn_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_dtb_private_sn_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_dtb_private_sn_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_dtb_private_sn_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_pod_private_sn_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_pod_private_sn_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_pod_private_sn_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_public_sn_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_public_sn_2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.eks_public_sn_3c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.eks_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | # Define a CIDR block | `string` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | # Define a common tags | `map(any)` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | # Define a project name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ctp_private_sn_1a"></a> [ctp\_private\_sn\_1a](#output\_ctp\_private\_sn\_1a) | ### CTP PRIVATE SUBNET #### |
| <a name="output_ctp_private_sn_2b"></a> [ctp\_private\_sn\_2b](#output\_ctp\_private\_sn\_2b) | n/a |
| <a name="output_ctp_private_sn_3c"></a> [ctp\_private\_sn\_3c](#output\_ctp\_private\_sn\_3c) | n/a |
| <a name="output_dtb_private_sn_1a"></a> [dtb\_private\_sn\_1a](#output\_dtb\_private\_sn\_1a) | ### DTB PRIVATE SUBNET #### |
| <a name="output_dtb_private_sn_2b"></a> [dtb\_private\_sn\_2b](#output\_dtb\_private\_sn\_2b) | n/a |
| <a name="output_dtb_private_sn_3c"></a> [dtb\_private\_sn\_3c](#output\_dtb\_private\_sn\_3c) | n/a |
| <a name="output_pod_private_sn_1a"></a> [pod\_private\_sn\_1a](#output\_pod\_private\_sn\_1a) | ### POD PRIVATE SUBNET #### |
| <a name="output_pod_private_sn_2b"></a> [pod\_private\_sn\_2b](#output\_pod\_private\_sn\_2b) | n/a |
| <a name="output_pod_private_sn_3c"></a> [pod\_private\_sn\_3c](#output\_pod\_private\_sn\_3c) | n/a |
| <a name="output_public_sn_1a"></a> [public\_sn\_1a](#output\_public\_sn\_1a) | ### PUBLIC SUBNET #### |
| <a name="output_public_sn_2b"></a> [public\_sn\_2b](#output\_public\_sn\_2b) | n/a |
| <a name="output_public_sn_3c"></a> [public\_sn\_3c](#output\_public\_sn\_3c) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
