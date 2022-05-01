variable "account_id" {
  type = map(any)
  default = {
    prod = "290566818138"
    sbx  = "848169424404"
  }
}

variable "vpc_cidr" {
  type = string
}

variable "cidr_pubsubnet" {
  type = list(any)

}

variable "cidr_privsubnet" {
  type = list(any)
}

variable "cidr_database" {
  type = list(any)
}