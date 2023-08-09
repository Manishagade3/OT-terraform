output "vpc_id" {
  value       = aws_vpc.main.id
  description = "vpc_id"
}

output "aws_eip" {
  value       = aws_eip.nat_eip.id
  description = "aws_eip_id"
}

output "internet_gateway" {
  value       = aws_internet_gateway.igw.id
  description = "internet_gateway_id"
}
output "nat_gateway" {
  value       = aws_nat_gateway.nat.id
  description = "nat_gateway_id"
}

output "public_subnet_1" {
  value       = aws_subnet.public_subnet_1.id
  description = "public_subnet_1_id"
}
output "public_subnet_2" {
  value       = aws_subnet.public_subnet_2.id
  description = "public_subnet_2_id"
}
output "private_subnet_1" {
  value       = aws_subnet.private_subnet_1.id
  description = "private_subnet_1_id"
}
output "private_subnet_2" {
  value       = aws_subnet.private_subnet_2.id
  description = "private_subnet_2_id"
}
output "private_subnet_3" {
  value       = aws_subnet.private_subnet_3.id
  description = "private_subnet_3_id"
}

output "private_subnet_4" {
  value       = aws_subnet.private_subnet_4.id
  description = "private_subnet_4_id"
}

output "private_subnet_5" {
  value       = aws_subnet.private_subnet_5.id
  description = "private_subnet_5_id"
}
output "private_subnet_6" {
  value       = aws_subnet.private_subnet_6.id
  description = "private_subnet_6_id"
}

output "security_group" {
  value       = aws_security_group.web.id
  description = "security_group_id"
}
output "public_route_table" {
  value       = aws_route_table.public_route_table.id
  description = "public_route_table_id"
}
output "private_route_table" {
  value       = aws_route_table.private_route_table.id
  description = "private_route_table_id"
}







