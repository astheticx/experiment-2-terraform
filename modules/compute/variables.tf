variable "web_count" {
  type        = number
  description = "Number of web servers"
  default     = 2
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instances"
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

variable "public_subnet_id" {
  type        = string
  description = "Public subnet ID for web servers"
}

variable "private_subnet_id" {
  type        = string
  description = "Private subnet ID for database"
}

variable "web_security_group_id" {
  type        = string
  description = "Security group ID for web servers"
}

variable "db_security_group_id" {
  type        = string
  description = "Security group ID for database"
}