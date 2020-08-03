output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr_block" {

  value = aws_vpc.main.cidr_block
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.private_subnet.*.id
}

output "private_subnet_arns" {
  description = "List of ARNs of private subnets"
  value       = aws_subnet.private_subnet.*.arn
}

output "private_subnet_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = aws_subnet.private_subnet.*.cidr_block
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.public_subnet.*.id
}

output "public_subnet_arns" {
  description = "List of ARNs of public subnets"
  value       = aws_subnet.public_subnet.*.arn
}

output "public_subnet_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = aws_subnet.public_subnet.*.cidr_block
}
