
variable "vpc_cidr" {
  type        = string
  description = "provide the vpc cidr"
}

variable "enable_dns_support" {
  type        = bool
  description = "enable dns support"
  default = null
}
variable "enable_dns_hostnames" {
  type        = bool
  description = "enable dns hostname"
  default = null
}

variable "cidr_pubsubnet" {
  type        = list(any)
  description = "list of public cidrs"
}
variable "pub_availability_zone" {
  type        = list
  description = "provide the availability zone for public subnet"
}

variable "cidr_privsubnet" {
  type        = list(any)
  description = "list of private cidrs"
}
variable "priv_availability_zone" {
  type        = list
  description = "provide the availability zone for priv subnet"
}


variable "cidr_database" {
  type        = list(any)
  description = "list of database cidrs"
}
variable "database_availability_zone" {
  type        = list(any)
  description = "Provide the availability zone for database subnet"
}
variable "enable_natgateway" {
  type        = bool
  description = "Enable natgatway | if User says true then create but if false then ignored"
}


variable "create_vpc" {
  type        = bool
  default     = true
  description = "create vpc"
}
variable "instance_type" {
  type = string
  description = "provide the instance type"
}
variable "ami_id" {
  type = string
  description = "provide ami id"
}