variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "vpc_name" {

  description = "Variable used to define VPC's name"
  type        = string

}

variable "azs" {

  type = list


}

variable "enable_nat_gateway" {

  description = "Variable used to controle NAT GATEWAY and EIP creation"
  type        = bool
  default     = false

}


variable "vpc_cidr_block" {

  description = "VPC's CIDR block"
  type        = string


}

variable "enable_dns_hostnames" {

  description = "Enable or Disable DNS Hostname"
  type        = bool
  default     = true

}

variable "enable_dns_support" {

  description = "Enable or Disable DNS Support"

  type    = bool
  default = true

}


variable "assign_generated_ipv6_cidr_block" {

  description = "Enable or Disable IPv6 Support on VPC"

  type    = bool
  default = false

}

variable "public_subnets" {

  description = "Variable used to defined Public Subnets"
  type        = list(string)
  default     = []

}

variable "private_subnets" {

  description = "Variable used to defined Private Subnets"
  type        = list(string)
  default     = []

}

variable "public_ip_on_launch" {

  description = "Variable to control Public IP on launch"
  type        = string
  default     = false

}

# NACLS

variable "public_inbound_acl_rules" {
  description = "Public subnets inbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "public_outbound_acl_rules" {
  description = "Public subnets outbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "private_inbound_acl_rules" {
  description = "Private subnets inbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "private_outbound_acl_rules" {
  description = "Private subnets outbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "environment" {
  type = string

}