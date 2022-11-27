variable "aws_vpc_id" {
  type = string
  description = "The ID of the VPC that the subnet will be created in."
}

variable "cidr_public_subnet" {
  type = string
  description = "The CIDR block for the subnet."
}

variable "public_subnet_name" {
  type = string
  description = "The name of the subnet."
  default = "instace_public_subnet"
}

variable "igw_name" {
  type = string
  description = "The name of the Internet Gateway."
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Whether or not to assign a public IP address to instances launched into the subnet."
  default = false
}

variable "enable_dns_support" {
  type = bool
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
  default = true
}

variable "enable_dns_hostnames" {
  type = bool
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
  default = true
}

variable "internet_gateway_id" {
  type = string
  description = "The ID of the Internet Gateway."
}
