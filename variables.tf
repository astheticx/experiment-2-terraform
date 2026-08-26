variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "public_subnet_cidr" {
  type        = string
  description = "Public subnet CIDR"
}

variable "private_subnet_cidr" {
  type        = string
  description = "Private subnet CIDR"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone"
}

variable "admin_cidr" {
  type        = string
  description = "Administrator public IP in CIDR notation"
}

variable "web_count" {
  type        = number
  description = "Number of web servers"
  default     = 2
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "EC2 key pair name"
}