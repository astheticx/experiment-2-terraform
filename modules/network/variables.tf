variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR block for the private subnet"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the subnets"
}
variable "admin_cidr" {
  type        = string
  description = "Public IP allowed to SSH into the web servers"
}