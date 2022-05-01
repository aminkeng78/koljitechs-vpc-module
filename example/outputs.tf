

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr
}

output "pub_subnet" {
  value = module.vpc.pub_subnet
}

output "pub_subne_cidr" {
  value = module.vpc.pub_subnet_cidrs
}
output "private_subnet" {
  value = module.vpc.private_subnet
}

output "database_subnet" {
  value = module.vpc.database_subnet
}

