variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "web_server_count" {
  description = "Number of web servers to deploy"
  type        = number
  default     = 2
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-06b21ccaeff8cd686" # Amazon Linux 2 AMI (HVM), SSD Volume Type
}

variable "instance_type_map" {
  description = "Map of environment to instance type"
  type        = map(string)
  default = {
    development = "t2.micro"
    production  = "t2.small"
  }
}

variable "db_instance_type_map" {
  description = "Map of environment to DB instance type"
  type        = map(string)
  default = {
    development = "db.t3.micro"
    production  = "db.t3.small"
  }
}

variable "environment" {
  description = "Deployment environment (development or production)"
  type        = string
  default     = "development"
}

variable "db_username"  {
  description = "Username for the database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}