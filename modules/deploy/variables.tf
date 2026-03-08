variable "private_subnet_id_1" {
  type = string
}

variable "private_subnet_id_2" {
  type = string
}

variable "db_sg_id" {
  type = string
}

variable "var.public_subnet_id" {
  type = string
}

variable "vpc_id" {
  description = "The ID of the VPC where resources will be created"
  type        = string
}

variable "web_sg_id" {
  description = "Security group ID for ALB and EC2 instances"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs for ALB"
  type        = list(string)
}

variable "public_subnet_id" {
  description = "Public subnet ID for EC2 instance"
  type        = string
}


