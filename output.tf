output "vpc_id" {
    value = local.vpc_id
}

output "vpc_cidr" {
    value = aws_vpc.Kojitechs[0].cidr_block
}


output "pub_subnet" {
  value = aws_subnet.public_subnet[*].id
}

output "pub_subnet_cidrs" {
  value = aws_subnet.public_subnet[*].cidr_block
}

# Deprecated
output "private_subnet" {
  value = aws_subnet.priv_sub.*.id
}

# for loop
output "database_subnet" {
  value = [for ids in aws_subnet.database_sub : ids.id]
 }