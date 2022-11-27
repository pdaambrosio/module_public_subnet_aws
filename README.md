# module_public_subnet_aws
Terraform module to create public subnet on AWS

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Required variables
	 aws_vpc_id  = 
	 cidr_public_subnet  = 
	 igw_name  = 
	 internet_gateway_id  = 

	 # Optional variables
	 enable_dns_hostnames  = true
	 enable_dns_support  = true
	 map_public_ip_on_launch  = false
	 public_subnet_name  = "instace_public_subnet"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_route_table.route_table_instances](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.associate_igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.public_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_vpc_id"></a> [aws\_vpc\_id](#input\_aws\_vpc\_id) | The ID of the VPC that the subnet will be created in. | `string` | n/a | yes |
| <a name="input_cidr_public_subnet"></a> [cidr\_public\_subnet](#input\_cidr\_public\_subnet) | The CIDR block for the subnet. | `string` | n/a | yes |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false. | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | A boolean flag to enable/disable DNS support in the VPC. Defaults true. | `bool` | `true` | no |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | The name of the Internet Gateway. | `string` | n/a | yes |
| <a name="input_internet_gateway_id"></a> [internet\_gateway\_id](#input\_internet\_gateway\_id) | The ID of the Internet Gateway. | `string` | n/a | yes |
| <a name="input_map_public_ip_on_launch"></a> [map\_public\_ip\_on\_launch](#input\_map\_public\_ip\_on\_launch) | Whether or not to assign a public IP address to instances launched into the subnet. | `bool` | `false` | no |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | The name of the subnet. | `string` | `"instace_public_subnet"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | The ID of the subnet. |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->