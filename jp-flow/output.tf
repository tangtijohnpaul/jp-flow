output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.customthreads_vpc.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public_subnets[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private_subnets[*].id
}

output "web_server_public_ips" {
  description = "Public IP addresses of the web servers"
  value       = aws_instance.web_servers[*].public_ip
}

output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = aws_lb.web_lb.dns_name
}

output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = aws_db_instance.customthreads_db.endpoint
}