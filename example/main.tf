

locals {
  azs = data.aws_availability_zones.available.names
}
data "aws_availability_zones" "available" {
  state = "available"
}


module "vpc" {
  source = "../" #"git::https://github.com/aminkeng78/koljitechs-vpc-module.git"

  vpc_cidr                   = var.vpc_cidr
  cidr_pubsubnet             = var.cidr_pubsubnet
  pub_availability_zone      = local.azs
  cidr_privsubnet            = var.cidr_privsubnet
  priv_availability_zone     = local.azs
  cidr_database              = var.cidr_database
  database_availability_zone = local.azs

  enable_natgateway = true

}
